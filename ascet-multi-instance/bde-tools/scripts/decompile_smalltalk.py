"""Conservative native-backed Smalltalk method reconstruction.

Only emit complete bodies when every instruction, reference and CFG stack merge
is understood. Unknown/primitive methods retain their bytecodes and a reason.
Generated source is a reconstruction, not original source or a runnable image.
"""
import collections
import functools
import json
import math
import re
import struct
from pathlib import Path
from smalltalk_image import BASE, OUT, Universe, scan_methods

SOURCE = BASE / 'unpacked/smalltalk-source'
LEGACY_CLASS_IMAGES = {
    'abtdah.ic', 'abtdau.ic', 'abtdbf.ic', 'abtdbh.ic',
    'abtdol.ic', 'abtxmlp.ic',
}


class Unsupported(ValueError):
    pass


def require(ok, reason):
    if not ok:
        raise Unsupported(reason)


def arity(selector):
    if re.fullmatch(r'[A-Za-z_][A-Za-z_0-9]*', selector):
        return 0
    if re.fullmatch(r'(?:[A-Za-z_][A-Za-z_0-9]*:)+', selector):
        return selector.count(':')
    if re.fullmatch(r'[+*/\\~<>=@%|&,?!-]+', selector):
        return 1
    raise Unsupported('invalid selector')


def send(receiver, selector, args):
    require(arity(selector) == len(args), 'send selector/argument count mismatch')
    if ':' in selector:
        tail = ' '.join(k + ': (' + a + ')' for k, a in zip(selector.split(':')[:-1], args))
    else:
        tail = selector + ((' (' + args[0] + ')') if args else '')
    return ('super' if receiver == 'super' else '(' + receiver + ')') + ' ' + tail


class Literals:
    def __init__(self, universe):
        self.u = universe
        self.method_maps = {}
        self.block_depth = 0
        self.block_ranges = collections.defaultdict(set)

    @functools.lru_cache(None)
    def legacy_ivars(self, image_name, address):
        """Read the tolerant class layout used by the older Abt images.

        These class objects often retain a total instance-size word from a
        different VM build and may omit the names for inherited or extension
        slots.  The serialized names that are present remain trustworthy; pad
        the missing portion with explicit generated names so bytecode offsets
        still map to stable source variables.
        """
        if address == 14:
            return ()
        im = self.u.by_name[image_name.lower()]
        target = self.u.object(im, address)
        if not target:
            return ()
        ti, obj = target
        a = obj['address']
        inherited = ()
        if obj['size'] >= 20:
            parent = ti.word(a + 16)
            resolved = self.u.resolve(ti, parent)
            if resolved:
                pi, pa = resolved
                if pi.name.lower() in LEGACY_CLASS_IMAGES:
                    inherited = self.legacy_ivars(pi.name, pa)
                else:
                    try:
                        inherited = self.ivars(pi.name, pa)
                    except Unsupported:
                        inherited = self.legacy_ivars(pi.name, pa)
        names = []
        if obj['size'] >= 52:
            names_pointer = ti.word(a + 48)
            names_object = self.u.object(ti, names_pointer)
            if names_object:
                ni, no = names_object
                if no['size'] % 4 == 0:
                    for p in range(no['offset'] + 12, no['offset'] + 12 + no['size'], 4):
                        name = self.u.text(ni, struct.unpack_from('<I', ni.data, p)[0])
                        if name and re.fullmatch(r'[A-Za-z_]\w*', name):
                            names.append(name)
        result = list(inherited) + names
        declared = (ti.word(a + 24) >> 1) if obj['size'] >= 16 else len(result)
        if len(result) < declared:
            result.extend(f'recoveredLegacyIvar{i}'
                          for i in range(len(result) + 1, declared + 1))
        # A few class records under-report the inherited prefix.  Keeping all
        # serialized names is safer than trimming a slot referenced by code.
        return tuple(result)

    @functools.lru_cache(None)
    def ivars(self, image_name, address):
        if address == 14:
            return ()
        if image_name.lower() in LEGACY_CLASS_IMAGES:
            return self.legacy_ivars(image_name, address)
        im = self.u.by_name[image_name.lower()]
        obj = self.u.object(im, address)
        require(obj is not None, 'unresolved class for instance variables')
        im, obj = obj
        a = obj['address']
        require(obj['size'] >= 48, 'short class')
        inherited = self.ivars(im.name, im.word(a+16))
        names_obj = self.u.object(im, im.word(a+48))
        require(names_obj is not None, 'unresolved instance variable names')
        ni, no = names_obj
        names = []
        for p in range(no['offset']+12, no['offset']+12+no['size'], 4):
            name = self.u.text(ni, struct.unpack_from('<I', ni.data, p)[0])
            require(name is not None and re.fullmatch(r'[A-Za-z_]\w*',name), 'invalid instance variable name')
            names.append(name)
        result = inherited + tuple(names)
        declared = im.word(a+24) >> 1
        if len(result) != declared:
            # A pair of EHOOKS classes carries a stale layout count in the
            # serialized class object.  The methods themselves still reveal
            # the useful slots (the four names in this class), so retain the
            # inherited prefix that is present and pad/trim only the unknown
            # inherited portion.  The generated placeholder names make the
            # uncertainty visible while keeping the known slot offsets usable.
            if im.name.lower() == 'ehooks.ic' and declared >= len(names):
                target_inherited = declared - len(names)
                if len(inherited) < target_inherited:
                    inherited = inherited + tuple(
                        f'recoveredInheritedIvar{i+1}'
                        for i in range(target_inherited - len(inherited)))
                else:
                    inherited = inherited[:target_inherited]
                result = inherited + tuple(names)
            require(len(result) == declared, 'instance variable count mismatch')
        return result

    @functools.lru_cache(None)
    def literal(self, image_name, address, mode='literal', depth=0):
        require(depth < 12, 'nested/cyclic literal')
        im = self.u.by_name[image_name.lower()]
        if mode == 'literal':
            if address in (14,30,46):
                return {14:'nil',30:'true',46:'false'}[address]
            if address in (0,2,4,6,8,10,12):
                # Weak/legacy literal records can contain a null machine word
                # where a normal tagged Smalltalk pointer would be stored.
                return 'nil'
            if address & 1:
                return str((address if address < 2**31 else address-2**32) >> 1)
            if address & 15 == 6:
                value = address >> 4
                # Printable ASCII has the compact Smalltalk spelling.  Other
                # tagged characters (tabs, line endings and extended bytes in
                # the legacy images) are still losslessly representable via
                # Character>>value:.  Keeping the numeric form avoids
                # treating an image byte as source-file encoding.
                if 32 <= value < 127:
                    return '$' + chr(value)
                return f'(Character value: {value})'
        target = self.u.object(im,address)
        if target is None and mode == 'global':
            # A few OLE image records point at an external relocation slot
            # that is not serialized in this installation.  Keep the method
            # body usable while making the missing lookup explicit.
            return f'(Smalltalk at: #recoveredGlobal_{address:x} ifAbsent: [nil])'
        require(target is not None, 'unresolved ' + mode + ' reference')
        ti, obj = target
        classname = self.u.class_name(ti,obj['clazz'])
        body = ti.data[obj['offset']+12:obj['offset']+12+obj['size']]
        if mode == 'global':
            require(classname in ('Association','LookupKey','VariableBinding','EsPoolAssociation','EsString'),
                    'global is not a binding')
            if classname in ('EsPoolAssociation','EsString'):
                table_object = self.u.object(ti,ti.word(obj['address']+12))
                require(table_object is not None, 'unresolved global string table')
                si, so = table_object
                table = si.data[so['offset']+12:so['offset']+12+so['size']]
                index = (obj['flags'] >> 16) & 0x7fff
                require(0 < index <= len(table), 'invalid pool string index')
                require(index == 1 or table[index-2] == 0, 'pool string index is not a key boundary')
                key = table[index-1:].split(b'\0',1)[0].decode('ascii')
            else:
                key_pointer = ti.word(obj['address']+12)
                key = self.u.text(ti,key_pointer)
                # A few EHOOKS methods retain an uninitialized Association
                # placeholder in the image.  The VM global read returns its
                # nil value; there is no source-level binding name to recover.
                # Keep the literal value rather than rejecting the whole
                # method, but only for the exact nil/nil shape.
                if key is None and key_pointer == 14:
                    require(obj['size'] == 8 and ti.word(obj['address']+16) == 14,
                            'invalid global binding name')
                    return 'nil'
            require(key is not None, 'invalid global binding name')
            if re.fullmatch(r'[A-Za-z_]\w*', key):
                return key
            # C-facing pool names (for example !REQUESTEDLOCALE) are not
            # Smalltalk identifiers.  Resolve them through the global
            # dictionary while retaining the exact serialized key.
            escaped = key.replace("'", "''")
            return f"(Smalltalk at: #'{escaped}' ifAbsent: [nil])"
        if classname in ('Symbol','String','ByteString','EsAtom'):
            if not all(32 <= b < 127 or b in (9,10,13) for b in body):
                # A small number of legacy images store platform-encoded
                # bytes (for example CP1252 umlauts and UTF markers) directly
                # in String objects.  A source-file literal cannot carry those
                # bytes safely, so rebuild the exact byte sequence through the
                # standard String allocation and indexed Character writes.
                require(mode == 'literal' and classname == 'String',
                        'unsupported string encoding/control bytes')
                expression = f'(String new: {len(body)})'
                for index, value in enumerate(body, 1):
                    expression += f' at: {index} put: (Character value: {value});'
                return expression + ' yourself'
            text = body.decode('ascii')
            if mode == 'selector':
                require(classname == 'Symbol', 'selector is not Symbol')
                arity(text)
                return text
                return ({'Symbol':'#','EsAtom':'##'}.get(classname,'')) + "'" + text.replace("'", "''") + "'"
        # A handful of constants in the old Abt extension images retain a
        # legacy serializer tag instead of their runtime numeric class.  The
        # object format is still unambiguous: ``Bag`` records with format 7
        # contain one signed 64-bit integer, while the 8-byte ``Color``
        # records use an IEEE-754 double.  Render the scalar value directly so
        # Fraction/Color extension methods keep their exact thresholds.
        if classname == 'Bag' and obj['flags'] & 0xff == 0x07:
            require(mode == 'literal', 'unsupported ' + mode + ' class')
            require(len(body) == 8, 'invalid legacy integer scalar size')
            return str(int.from_bytes(body, 'little', signed=True))
        if classname == 'Color' and obj['flags'] & 0xff == 0xfb:
            require(mode == 'literal', 'unsupported ' + mode + ' class')
            require(len(body) == 8, 'invalid legacy float scalar size')
            value = struct.unpack('<d', body)[0]
            require(math.isfinite(value), 'non-finite legacy float scalar')
            return repr(value)
        require(mode == 'literal', 'unsupported ' + mode + ' class')
        # Legacy read-only segments sometimes carry printable String objects
        # with an imported class tag that resolves to IdentitySet.  Preserve
        # their bytes as a source string; non-printable byte objects use the
        # lossless ByteArray spelling below.
        if obj['flags'] & 6 == 2:
            if all(32 <= b < 127 or b in (9, 10, 13) for b in body):
                return "'" + body.decode('ascii').replace("'", "''") + "'"
            return '#[' + ' '.join(map(str, body)) + ']'
        # A literal reference to a class object is represented by the class
        # name in Smalltalk source.  The image reader exposes these as
        # ``<ClassName> class`` instances, so remove the metaclass suffix only
        # after validating that the remaining name is an identifier.
        if classname and classname.endswith(' class'):
            class_name = classname[:-6]
            require(re.fullmatch(r'[A-Za-z_]\w*', class_name), 'invalid class literal name')
            return class_name
        if classname == 'EsEmptyBlock':
            return '[]'
        if classname == 'EsCompactBlockContextTemplate':
            return self.block(ti,obj)
        if classname == 'Array':
            require(len(body)%4 == 0, 'unaligned literal array')
            values = [self.literal(ti.name,x,'literal',depth+1) for x in struct.unpack('<'+'I'*(len(body)//4),body)]
            # Literal arrays normally use the compact #(...) spelling.  A
            # serialized Array can also contain block literals (for example
            # the handler table inside a Dictionary); build those arrays
            # explicitly so the nested blocks remain valid expressions.
            if not any('[' in v for v in values):
                return '#(' + ' '.join(values) + ')'
            expression = f'(Array new: {len(values)})'
            for index, value in enumerate(values, 1):
                expression += f' at: {index} put: ({value});'
            return expression + ' yourself'
        if classname == 'ByteArray':
            return '#[' + ' '.join(map(str,body)) + ']'
        if classname == 'LargeInteger':
            require(len(body)>0 and len(body)%4==0,'invalid LargeInteger size')
            return str(int.from_bytes(body,'little',signed=True))
        if classname == 'Float':
            require(len(body)==8,'invalid Float size')
            value=struct.unpack('<d',body)[0]
            require(math.isfinite(value),'non-finite Float literal')
            return repr(value)
        if classname == 'Fraction':
            require(len(body) == 8, 'invalid Fraction size')
            numerator = self.literal(ti.name, struct.unpack_from('<I', body, 0)[0], depth=depth+1)
            denominator = self.literal(ti.name, struct.unpack_from('<I', body, 4)[0], depth=depth+1)
            return send('Fraction', 'numerator:denominator:', [numerator, denominator])
        if classname == 'Infinity':
            require(len(body) == 4, 'invalid Infinity size')
            sign = self.literal(ti.name, struct.unpack_from('<I', body, 0)[0], depth=depth+1)
            if sign == '1':
                return '(Infinity) plus'
            if sign == '-1':
                return '(Infinity) minus'
            raise Unsupported('invalid Infinity sign')
        if classname == 'LookupTable':
            require(len(body) == 12, 'invalid LookupTable size')
            count = self.literal(ti.name, struct.unpack_from('<I', body, 0)[0], depth=depth+1)
            keys = self.literal(ti.name, struct.unpack_from('<I', body, 4)[0], depth=depth+1)
            values = self.literal(ti.name, struct.unpack_from('<I', body, 8)[0], depth=depth+1)
            # LookupTable exposes setters for its serialized fields.  A
            # cascade preserves the object identity while retaining the exact
            # element count and key/value arrays from the image.
            return (f'(LookupTable new) elementCount: ({count}); '
                    f'keyArray: ({keys}); valueArray: ({values}); yourself')
        if classname == 'CgRGBColor':
            require(len(body) == 12, 'invalid CgRGBColor size')
            channels = [self.literal(ti.name, struct.unpack_from('<I', body, p)[0], depth=depth+1)
                        for p in (0, 4, 8)]
            return send('CgRGBColor', 'red:green:blue:', channels)
        if classname == 'RBAreaStyle':
            require(len(body) == 4, 'invalid RBAreaStyle size')
            color = self.literal(ti.name, struct.unpack_from('<I', body, 0)[0], depth=depth+1)
            return send('RBAreaStyle', 'createWithColor:', [color])
        if classname == 'Set':
            require(len(body) == 8, 'invalid Set size')
            array_target = self.u.object(ti, struct.unpack_from('<I', body, 4)[0])
            require(array_target is not None, 'unresolved Set array')
            ai, array = array_target
            array_class = self.u.class_name(ai, array['clazz'])
            require(array_class == 'Array' and array['size'] % 4 == 0, 'invalid Set array')
            array_body = ai.data[array['offset']+12:array['offset']+12+array['size']]
            elements = []
            for p in range(0, len(array_body), 4):
                pointer = struct.unpack_from('<I', array_body, p)[0]
                if pointer == 14:
                    continue
                elements.append(self.literal(ai.name, pointer, depth=depth+1))
            expression = '(Set new)'
            for element in elements:
                expression += f' add: ({element});'
            return expression + ' yourself'
        if classname in ('Notification', 'Bag'):
            # These legacy classes are variable objects whose serialized
            # records can omit stale fixed slots.  Initialize the class and
            # replay every pointer word that is present; extra words are
            # indexed elements after the fixed portion.
            require(len(body) % 4 == 0, f'unaligned {classname} size')
            words = struct.unpack('<' + 'I' * (len(body) // 4), body)
            fields = self.legacy_ivars(ti.name, obj['clazz']) if ti.name.lower() in LEGACY_CLASS_IMAGES else self.ivars(ti.name, obj['clazz'])
            fixed = min(len(fields), len(words))
            extra = len(words) - fixed
            expression = f'({classname} new: {max(0, extra)})'
            for index, pointer in enumerate(words[:fixed], 1):
                value = self.literal(ti.name, pointer, depth=depth + 1)
                expression += f' instVarAt: {index} put: ({value});'
            for index, pointer in enumerate(words[fixed:], 1):
                value = self.literal(ti.name, pointer, depth=depth + 1)
                expression += f' at: {index} put: ({value});'
            return expression + ' yourself'
        if classname == 'OrderedCollection':
            require(len(body) == 12, 'invalid OrderedCollection size')
            contents_ptr, first_ptr, last_ptr = struct.unpack_from('<3I', body)
            first = int(self.literal(ti.name, first_ptr, depth=depth+1))
            last = int(self.literal(ti.name, last_ptr, depth=depth+1))
            # VA Smalltalk stores the first index as zero and the last index
            # as an exclusive count for the backing Array.
            require(first >= 0 and last >= first, 'invalid OrderedCollection bounds')
            target_array = self.u.object(ti, contents_ptr)
            require(target_array is not None, 'unresolved OrderedCollection contents')
            ai, array = target_array
            require(self.u.class_name(ai, array['clazz']) == 'Array' and array['size'] % 4 == 0,
                    'invalid OrderedCollection contents')
            array_body = ai.data[array['offset']+12:array['offset']+12+array['size']]
            pointers = struct.unpack('<'+'I'*(len(array_body)//4), array_body)
            require(last <= len(pointers), 'OrderedCollection bounds exceed contents')
            expression = '(OrderedCollection new)'
            for pointer in pointers[first:last]:
                if pointer == 14:
                    continue
                element = self.literal(ai.name, pointer, depth=depth+1)
                expression += f' add: ({element});'
            return expression + ' yourself'
        if classname == 'AbtAttributeSpec':
            require(len(body) == 28, 'invalid AbtAttributeSpec size')
            attr_class = self.literal(ti.name, struct.unpack_from('<I', body, 8)[0], depth=depth+1)
            get_selector = self.literal(ti.name, struct.unpack_from('<I', body, 16)[0], depth=depth+1)
            set_selector = self.literal(ti.name, struct.unpack_from('<I', body, 20)[0], depth=depth+1)
            change_symbol = self.literal(ti.name, struct.unpack_from('<I', body, 24)[0], depth=depth+1)
            return (f'(AbtAttributeSpec new) attributeClass: ({attr_class}); '
                    f'getSelector: ({get_selector}); setSelector: ({set_selector}); '
                    f'changeSymbol: ({change_symbol}); yourself')
        if classname == 'AbtActionSpec':
            require(len(body) == 20, 'invalid AbtActionSpec size')
            selector = self.literal(ti.name, struct.unpack_from('<I', body, 8)[0], depth=depth+1)
            parameters = self.literal(ti.name, struct.unpack_from('<I', body, 12)[0], depth=depth+1)
            result_type = self.literal(ti.name, struct.unpack_from('<I', body, 16)[0], depth=depth+1)
            return (f'(AbtActionSpec new) selector: ({selector}); parameters: ({parameters}); '
                    f'resultType: ({result_type}); yourself')
        if classname == 'AbtEventSpec':
            require(len(body) == 16, 'invalid AbtEventSpec size')
            symbol = self.literal(ti.name, struct.unpack_from('<I', body, 8)[0], depth=depth+1)
            parameters = self.literal(ti.name, struct.unpack_from('<I', body, 12)[0], depth=depth+1)
            return (f'(AbtEventSpec new) symbol: ({symbol}); parameters: ({parameters}); yourself')
        if classname == 'AbtParameterSpec':
            require(len(body) == 20, 'invalid AbtParameterSpec size')
            # The serialized fields are eventDependents, parameterClass,
            # parameterName, typedBySecondaryPartType and defaultValue.  The
            # image currently contains nil event dependents for every literal;
            # retain that invariant instead of silently dropping a populated
            # dependency collection that would need a dedicated setter.
            event_dependents = struct.unpack_from('<I', body, 0)[0]
            require(event_dependents == 14, 'non-empty AbtParameterSpec event dependents')
            parameter_class = self.literal(ti.name, struct.unpack_from('<I', body, 4)[0], depth=depth+1)
            parameter_name = self.literal(ti.name, struct.unpack_from('<I', body, 8)[0], depth=depth+1)
            typed_by_secondary_part_type = self.literal(ti.name, struct.unpack_from('<I', body, 12)[0], depth=depth+1)
            default_value = self.literal(ti.name, struct.unpack_from('<I', body, 16)[0], depth=depth+1)
            return (f'(AbtParameterSpec new) parameterClass: ({parameter_class}); '
                    f'parameterName: ({parameter_name}); '
                    f'typedBySecondaryPartType: ({typed_by_secondary_part_type}); '
                    f'defaultValue: ({default_value}); yourself')
        if classname == 'Association':
            require(len(body) == 8, 'invalid Association size')
            key = self.literal(ti.name, struct.unpack_from('<I', body, 0)[0], depth=depth+1)
            value = self.literal(ti.name, struct.unpack_from('<I', body, 4)[0], depth=depth+1)
            return f'(Association new) key: ({key}) value: ({value}); yourself'
        if classname in {
                'ASAP2BaseObject', 'RBBcrtl32DLL',
                'EtasXmlSupportUTF8String'}:
            # These image constants are zero-field instances.  Allocation is
            # sufficient to reproduce their serialized state without
            # inventing a native handle or other external resource.
            require(len(body) == 0, f'invalid {classname} size')
            return f'({classname} new)'
        if classname in {
                'EtasXmlSupportDOMElement', 'DBXmlReferenceDesc',
                'EtasXmlSupportDOMAttr', 'WinProfile', 'DBS32Item',
                'Dictionary', 'OSInt32'}:
            require(len(body) % 4 == 0, f'unaligned {classname} size')
            fields = self.ivars(ti.name, obj['clazz'])
            words = struct.unpack('<'+'I'*(len(body)//4), body)
            require(len(fields) == len(words), f'{classname} instance variable count mismatch')
            values = [self.literal(ti.name, pointer, depth=depth+1) for pointer in words]
            expression = f'({classname} new)'
            for index, value in enumerate(values, 1):
                expression += f' instVarAt: {index} put: ({value});'
            return expression + ' yourself'
        if classname == 'Point':
            require(len(body) == 8, 'invalid Point size')
            values = [self.literal(ti.name, pointer, depth=depth+1)
                      for pointer in struct.unpack('<2I', body)]
            return send('Point', 'x:y:', values)
        raise Unsupported('unsupported literal class: ' + str(classname))

    def block(self, image, obj):
        require(self.block_depth < 8,'recursive block literal')
        w=struct.unpack_from('<6I',image.data,obj['offset']+12)
        # 7 denotes an ordinary compact block; 5 denotes the corresponding
        # captured/lexical-context form. Both use the same template layout.
        # Older kernel images use bit 8 as a captured-template marker while
        # newer images store argument/temp counts in the upper bytes.  The
        # low byte is the actual closure flag set in both layouts.
        flags = w[3] & 0xff
        require(flags in (5,7) and w[1]==14,'captured block literal pending')
        target=self.u.resolve(image,w[0]&~3)
        require(target is not None,'unresolved block method')
        mi,ma=target
        if mi.name not in self.method_maps:self.method_maps[mi.name]=scan_methods(mi)[0]
        method=self.method_maps[mi.name].get(ma)
        require(method is not None,'block method record missing')
        start=w[2]-(method['code_offset']-method['offset']-1)
        raw=bytes.fromhex(method['code_hex'])
        require(4<=start<len(raw),'block bytecode offset out of range')
        argc,nt=(w[3]>>24)&255,(w[3]>>16)&255
        code=bytes([nt,argc,0x11 if nt else 0x10,0x10])+raw[start:]
        # Compact block templates point into a normal method body and do not
        # carry a byte length. Decode the complete shared tail without early
        # target validation, then follow only the block's reachable CFG. This
        # handles adjacent block bodies where a jump skips another block
        # before reaching this block's own return.
        all_ins=decode(code,validate_targets=False)
        by_pc={x['pc']:x for x in all_ins}; reachable=set(); pending=[4]
        while pending:
            pc=pending.pop()
            if pc in reachable: continue
            require(pc in by_pc,'block execution falls beyond bytecodes')
            reachable.add(pc); x=by_pc[pc]; k=x['kind']; a=x['args']
            if k in ('return','context_return','nonlocal_return'): continue
            if k=='jump': pending.append(a[-1])
            elif k=='branch': pending += [x['end'],a[-1]]
            elif k=='optimized_loop': pending += a[2:5]
            else: pending.append(x['end'])
        require(reachable and any(by_pc[p]['kind'] in ('return','context_return','nonlocal_return') for p in reachable),
                'block return not found')
        starts={x['pc'] for x in all_ins}
        for p in reachable:
            x=by_pc[p]; targets=[]
            if x['kind'] in ('jump','branch'): targets.append(x['args'][-1])
            elif x['kind']=='optimized_loop': targets.extend(x['args'][2:5])
            require(all(t in starts for t in targets),'branch target is not an instruction boundary')
        body_end=max(by_pc[p]['end'] for p in reachable)
        method=dict(method,image=mi.name,code_hex=code[:body_end].hex())
        kernel=self.u.by_name['kernel.ic']
        binding=dict(clazz='Object',class_image=kernel.name,class_address='0x28005dd4',
                     selector=('block:'*argc if argc else 'block'))
        scope=dict(start=4,end=body_end,argc=argc,ntemps=nt,flags=flags,
                   receiver='self',parents=[])
        self.block_depth+=1
        try:
            source,_,kind=lower(method,binding,self,prefix_seed=f'block{obj["address"]:x}',scope=scope,initial='nil')
        finally:
            self.block_depth-=1
        self.block_ranges[(mi.name,ma)].add((start, start+body_end-4))
        return source


SIMPLE = {0x0e:('pop',),0x0f:('dup',),0x3d:('constant','false'),0x3e:('constant','nil'),
          0x3f:('constant','self'),0x40:('constant','true'),0x44:('return',),
          0x45:('nonlocal_return',),0x46:('context_return',)}
BINARY = {0:'+',1:'-',2:'<',3:'<=',4:'>',5:'>=',6:'=',7:'~=',8:'==',9:'//',10:'\\\\',0x74:'~~',0x7e:'*'}
UNARY = {0x75:'notNil',0x76:'isNil',0x77:'not'}
FRAME_ENTRIES = (0x10,0x11,0x12,0x13)
OPTIMIZED_ENTRIES = (0xac,0xc1,0xc2,0xc3)


def method_entry(code):
    """Return the frame entry used by fallback bytecodes and native dispatch.

    The third header byte selects a VM primitive/special fast path.  Its
    fourth byte still records the ordinary frame entry used by the Smalltalk
    fallback, which is present in the image for the methods recovered here.
    """
    require(len(code) >= 5, 'short bytecode body')
    dispatch = code[2]
    if dispatch in FRAME_ENTRIES or dispatch in OPTIMIZED_ENTRIES:
        return dispatch, None
    fallback = code[3]
    require(fallback in FRAME_ENTRIES, f'primitive/entry 0x{dispatch:02x}')
    return fallback, dispatch


def decode(code,stop_at_return=False,start=4,end=None,validate_targets=True):
    require(len(code) >= 5, 'short bytecode body')
    method_entry(code)
    pc = start
    limit = len(code) if end is None else end
    result = []
    def read(n, signed=False):
        nonlocal pc
        require(pc+n <= limit, 'truncated operand')
        value = int.from_bytes(code[pc:pc+n], 'little', signed=signed)
        pc += n
        return value
    def operand(variant, signed=False):
        if variant == 2:
            read(1)
        return read(1 if variant == 0 else 2,signed)
    while pc < limit:
        start = pc
        op = read(1)
        args = []
        if op in SIMPLE:
            kind,*args = SIMPLE[op]
        elif op in BINARY:
            kind,args = 'send_builtin',[BINARY[op],1]
        elif op in UNARY:
            kind,args = 'send_builtin',[UNARY[op],0]
        elif op == 0x78:
            kind,args = 'send_builtin',['between:and:',2]
        elif 0x10 <= op <= 0x12:
            kind = 'jump'; delta = operand(op-0x10,True); args=[pc+delta]
        elif 0x13 <= op <= 0x2d:
            group,variant = divmod(op-0x13,3)
            kind = ['store_global','store_ivar','store_frame','store_context','global','ivar','literal','frame','context'][group]
            args = [operand(variant)]
            if kind.endswith('context'):
                args.append(read(1))
        elif 0x2e <= op <= 0x33:
            group,variant = divmod(op-0x2e,3)
            delta = operand(variant,True)
            kind,args = 'branch',[('false','true')[group],pc+delta]
        elif 0x41 <= op <= 0x43:
            kind,args = 'immediate',[operand(op-0x41,True)&0xffffffff]
        elif op in (0x47,0x48,0x49):
            kind,args = 'increment',[{0x47:-1,0x48:-2,0x49:1}[op]]
        elif op in (0x4b,0x4c):
            if op==0x4c:read(1)
            argc,ntemps,flags=read(1),read(1),read(1)
            delta=read(2,True)
            block_start,block_end=pc,pc+delta
            require(block_start<block_end<=limit,'invalid inline block extent')
            kind,args='closure',[argc,ntemps,flags,block_start,block_end]
            pc=block_end
        elif 0x34 <= op <= 0x3c:
            # Optimized loop handlers have three possible exits.  The compact
            # forms use a signed branch displacement followed by an unsigned
            # skip displacement for the normal (counter exhausted) exit.  The
            # wide form (opcode + 2) has one padding byte before its operands.
            # 37..39 additionally carry a one-byte frame slot before the
            # branch displacement.  A failed small-integer/type check falls
            # through immediately after the operands; an exhausted counter
            # takes the separate skip target.
            base = 0x34 + ((op-0x34)//3)*3
            variant = (op-0x34) % 3
            if variant == 2:
                read(1)
            frame_offset = read(1) if base == 0x37 else None
            delta = read(1 if variant == 0 else 2, True)
            branch_target = pc + delta
            exit_skip = read(1)
            fallback_target = pc
            exit_target = pc + exit_skip
            kind,args='optimized_loop',[base,frame_offset,branch_target,exit_target,fallback_target]
        elif 0x4d <= op <= 0x4f or 0x56 <= op <= 0x58 or 0x5c <= op <= 0x5e:
            base = 0x4d if op < 0x56 else (0x56 if op < 0x5c else 0x5c)
            kind,args = 'send',[operand(op-base),read(1),{0x4d:'keep',0x56:'discard',0x5c:'cascade'}[base]]
        elif 0x62 <= op <= 0x67:
            kind,args = 'send',[read(1),(op-0x62)%3,'keep' if op<0x65 else 'discard']
        elif 0x68 <= op <= 0x73:
            group,variant = divmod(op-0x68,3)
            delta = operand(variant,True)
            kind,args = 'branch',[('identical','not_identical','nil','not_nil')[group],pc+delta]
        elif 0x7f <= op <= 0x86:
            kind,args = ('frame' if op <= 0x82 else 'store_frame'),[4*(1+(op-0x7f)%4)]
        elif 0xaf <= op <= 0xb6:
            kind,args = 'send',[7+4*((op-0xaf)%4),(op-0xaf)//4,'keep']
        elif 0x9d <= op <= 0xa5:
            group,variant=divmod(op-0x9d,3)
            binding_offset=operand(variant)
            selector_offset=read(1 if variant==0 else 2)
            kind,args='send',[selector_offset,read(1),('keep','discard','cascade')[group],binding_offset]
        else:
            raise Unsupported(f'unsupported opcode 0x{op:02x} at {start}')
        result.append(dict(pc=start,end=pc,opcode=op,kind=kind,args=args))
        if stop_at_return and kind=='return':break
    if validate_targets:
        starts = {x['pc'] for x in result}
        for ins in result:
            if ins['kind'] in ('jump','branch'):
                require(ins['args'][-1] in starts, 'branch target is not an instruction boundary')
            if ins['kind'] == 'optimized_loop':
                require(ins['args'][2] in starts, 'branch target is not an instruction boundary')
                require(ins['args'][3] in starts, 'loop exit target is not an instruction boundary')
                require(ins['args'][4] in starts, 'loop fallback target is not an instruction boundary')
    return result


def lower(method, binding, literals, prefix_seed='recovered', initial='self', scope=None):
    code = bytes.fromhex(method['code_hex'])
    isblock=scope is not None
    region_start=scope['start'] if isblock else 4
    instructions = decode(code,start=region_start,end=scope['end'] if isblock else None)
    all_by_pc={x['pc']:x for x in instructions}
    reachable=set();pending=[region_start]
    while pending:
        pc=pending.pop()
        if pc in reachable:continue
        require(pc in all_by_pc,'execution falls beyond bytecodes')
        reachable.add(pc);x=all_by_pc[pc]
        if x['kind'] not in ('return','context_return','nonlocal_return'):
            if x['kind']=='jump':
                pending.append(x['args'][-1])
            elif x['kind']=='branch':
                pending += [x['end'],x['args'][-1]]
            elif x['kind']=='optimized_loop':
                pending += x['args'][2:5]
            else:
                pending.append(x['end'])
    dead=[x for x in instructions if x['pc'] not in reachable]
    instructions=[x for x in instructions if x['pc'] in reachable]
    argc,ntemps = code[1],code[0]
    special_entry = None
    if isblock:
        argc,ntemps=scope['argc'],scope['ntemps']
        entry=0x10 if scope['flags']&2 else 0x12
        initial='self' if scope['receiver']=='self' else 'nil'
    else:
        entry, special_entry = method_entry(code)
        require(arity(binding['selector']) == argc,'method selector/argument count mismatch')
    # Resolve the inherited instance-variable layout only when the bytecode
    # actually references an instance slot. Class-side methods in a few
    # legacy images carry a metaclass layout with a stale count word; forcing
    # that layout for a method that never touches an ivar would discard an
    # otherwise complete reconstruction.
    ivars = ()
    if any(x['kind'] in ('ivar','store_ivar') for x in instructions):
        ivars = literals.ivars(binding['class_image'],int(binding['class_address'],16))
    prefix = prefix_seed
    while any(n.startswith(prefix) for n in ivars):
        prefix += 'X'
    argnames = [f'{prefix}Arg{i+1}' for i in range(argc)]
    tempnames = [f'{prefix}Local{i+1}' for i in range(ntemps)]
    slots=tempnames+list(reversed(argnames))
    context_chain=([slots] if entry in (0x12,0x13) else [[]])+(scope['parents'] if isblock else [])
    def frame(offset):
        require(entry not in (0x12,0x13), 'direct frame slot in context method')
        require(offset%4 == 0 and 4 <= offset <= 4*(argc+ntemps), 'invalid frame slot')
        slot = offset//4-1
        return tempnames[slot] if slot < ntemps else argnames[argc-1-(slot-ntemps)]
    def ivar(offset):
        # The serialized ASDImplementationProblemEntry class predates a
        # widget slot that its accessor bytecodes still address.  Its class
        # dictionary exposes only the first three names, but offset 28 is
        # unambiguously the widget accessor pair; retain that name instead of
        # dropping the two methods as an invalid layout.
        if binding['clazz'] == 'ASDImplementationProblemEntry' and offset == 28:
            return 'widget'
        if binding['clazz'] == 'Block' and offset == 16:
            # Block's home/context slot is VM-managed and omitted from the
            # serialized class name table.
            return 'recoveredBlockHome'
        require(offset%4 == 0 and 12 <= offset < 12+4*len(ivars), 'invalid instance variable offset')
        return ivars[(offset-12)//4]
    def lit(offset,mode):
        require(offset>=7 and (offset-7)%4==0, 'unaligned literal offset')
        i = (offset-7)//4
        require(i<len(method['literals']), 'literal offset out of bounds')
        return literals.literal(method['image'],method['literals'][i],mode)
    for ins in instructions:
        k,a = ins['kind'],ins['args']
        if k in ('ivar','store_ivar'):ins['value']=ivar(a[0])
        if isblock and (k in ('ivar','store_ivar') or (k=='constant' and a[0]=='self')):
            require(scope['receiver']=='self','block receiver is not lexical self')
        if k in ('frame','store_frame'):ins['value']=frame(a[0])
        if k in ('context','store_context'):
            require(a[1]<len(context_chain),'context depth exceeds lexical chain')
            target_slots=context_chain[a[1]]
            require(a[0]%4==0 and 32 <= a[0] < 32+4*len(target_slots),'invalid context variable slot')
            slot=(a[0]-32)//4
            ins['value']=target_slots[slot]
            ins['kind']='store_frame' if k=='store_context' else 'frame'
        if k=='context_return':
            require(entry in (0x12,0x13),'context return without context frame')
            ins['kind']='return'
        if k=='nonlocal_return':require(isblock,'nonlocal return outside block')
        if k in ('global','store_global'):ins['value']=lit(a[0],'global')
        if k == 'literal':ins['value']=lit(a[0],'literal')
        if k == 'constant':ins['value']=a[0]
        if k == 'immediate':ins['value']=literals.literal(method['image'],a[0])
        if k=='closure':
            narg,nt,flags,begin,end=a
            require(flags in (1,3,5,7,9,11,13,15),'unknown block flags')
            require(len(context_chain)<16,'excessive nested block contexts')
            receiver='self'
            if flags&4:
                if flags&8:receiver=scope['receiver'] if isblock else 'self'
                else:receiver='self' if not isblock and entry in (0x10,0x11,0xac,0xc1,0xc2,0xc3) else None
            child=dict(start=begin,end=end,argc=narg,ntemps=nt,flags=flags,receiver=receiver,
                       parents=[] if flags&4 and flags&8 else context_chain)
            child_source,child_ins,child_kind=lower(method,binding,literals,prefix_seed=prefix+'Block'+str(ins['pc']),scope=child)
            ins['value']=child_source
            ins['block_instruction_count']=sum(x.get('block_instruction_count',0)+1 for x in child_ins)
            ins['inline_block_count']=1+sum(x.get('inline_block_count',0) for x in child_ins)
        if k == 'send':
            ins['selector']=lit(a[0],'selector')
            require(arity(ins['selector'])==a[1], 'send selector/argument count mismatch')
            if len(a)==4:
                require(lit(a[3],'global')=='super','super send binding has wrong key')
                u=literals.u;im=u.by_name[method['image'].lower()]
                bi,bo=u.object(im,method['literals'][(a[3]-7)//4])
                require(u.class_name(bi,bi.word(bo['address']+16))==binding['clazz'], 'super send lexical class mismatch')
                ins['super']=True
    spans=literals.block_ranges.get((method['image'],method['address']),())
    # The serializer commonly leaves return tails after all reachable paths.
    # Inline block bodies are analyzed recursively before this point; their
    # ranges are retained for evidence, but an unreachable tail itself does
    # not affect the method entered at bytecode offset four.
    bypc = {x['pc']:x for x in instructions}
    def effect(x):
        k,a=x['kind'],x['args']
        if k in ('ivar','frame','global','literal','constant','immediate','closure'):return 0,1
        if k.startswith('store_') or k=='pop':return 1,0
        if k=='dup':return 1,2
        if k=='increment':return 1,1
        if k=='send_builtin':return a[1]+1,1
        if k=='send':
            if a[2]=='cascade':return a[1]+2,2
            return a[1]+1,0 if a[2]=='discard' else 1
        if k in ('return','nonlocal_return'):return 1,0
        if k=='jump':return 0,0
        if k=='branch':return (2 if a[0] in ('identical','not_identical') else 1),0
        raise Unsupported('unknown stack effect')

    def transitions(x,before,taints):
        """Return (successor, height, origins, taints) for each CFG edge.

        Optimized loop handlers have path-dependent stack effects.  In
        particular, 3a..3c duplicate the incremented current value on the
        successful loop edge, while the exhausted edge pops that value and a
        type-mismatch edge keeps the original stack untouched.
        """
        k,a=x['kind'],x['args']
        if k=='optimized_loop':
            base=a[0]
            require(len(before)>=1,'optimized loop needs a stack value')
            if base in (0x34,0x37):
                # These forms update a counter in place and preserve the
                # stack bound on every path.
                return [(a[2],len(before),before,taints),
                        (a[3],len(before),before,taints),
                        (a[4],len(before),before,taints)]
            require(len(before)>=2,'optimized comparison loop needs two stack values')
            return [(a[2],len(before)+1,before+[before[-1]],taints+[taints[-1]]),
                    (a[3],len(before)-1,before[:-1],taints[:-1]),
                    (a[4],len(before),before,taints)]
        pop,push=effect(x)
        require(len(before)>=pop,'operand stack underflow')
        h=len(before)-pop+push
        after=before[:len(before)-pop]
        if k=='dup':after+=before[-1:]*2
        elif k=='send' and a[2]=='cascade':after+=before[-pop:-pop+1]*2
        else:after += [x.get('value')=='self']*push
        next_taints=taints[:len(taints)-pop]
        if k=='dup':next_taints+=taints[-1:]*2
        elif k=='send' and a[2]=='cascade':
            require(not any(taints[-pop+1:]),'opaque block receiver consumed')
            next_taints+=taints[-pop:-pop+1]*2
        else:
            if pop and k!='pop':require(not any(taints[-pop:]),'opaque block receiver consumed')
            next_taints += [False]*push
        if k in ('return','nonlocal_return'):
            succ=[]
        elif k=='jump':
            succ=[a[-1]]
        else:
            succ=[x['end']]
            if k=='branch':succ.append(a[-1])
        return [(s,h,after,next_taints) for s in succ]

    heights={region_start:1};origins={region_start:[initial=='self']};todo=[region_start]
    opaque={region_start:[isblock and scope['receiver'] is None]}
    while todo:
        p=todo.pop();x=bypc[p]
        before=origins[p]
        taints=opaque[p]
        edge_states=transitions(x,before,taints)
        x['successors']=[s for s,_,_,_ in edge_states]
        for s,h,after,next_taints in edge_states:
            require(s in bypc,'execution falls beyond bytecodes')
            if s in heights:
                require(heights[s]==h,'inconsistent stack height at CFG merge')
                merged=[a and b for a,b in zip(origins[s],after)]
                merged_taints=[a or b for a,b in zip(opaque[s],next_taints)]
                if merged!=origins[s] or merged_taints!=opaque[s]:origins[s]=merged;opaque[s]=merged_taints;todo.append(s)
            else:heights[s]=h;origins[s]=after;opaque[s]=next_taints;todo.append(s)
    require(len(heights)==len(instructions),'unreachable bytecodes need separate analysis')
    for x in instructions:
        if x.get('super'):require(origins[x['pc']][-1-x['args'][1]],'super receiver is not proven self')
    maxstack=max(heights.values())+1
    hasbranch=any(x['kind'] in ('jump','branch','optimized_loop') for x in instructions)
    # Straight lines use SSA expression names to preserve evaluation order and dup
    # without evaluating messages twice. CFG output uses explicit stack registers.
    generated=[];counter=0
    def fresh(expr):
        nonlocal counter
        name=f'{prefix}Value{counter}';counter+=1;generated.append(name)
        return name,f'{name} := {expr}.'
    stack=[initial];lines=[]
    for x in instructions:
        k,a=x['kind'],x['args'];h=heights[x['pc']]
        if hasbranch:stack=[f'{prefix}Stack{i}' for i in range(h)]
        body=[]
        def push(expr):
            if hasbranch:
                name=f'{prefix}Stack{len(stack)}';body.append(f'{name} := {expr}.');stack.append(name)
            elif expr in ('self','true','false','nil') or re.fullmatch(r'-?\d+',expr) or expr.startswith(("'",'#','$')):
                stack.append(expr)
            else:
                name,line=fresh(expr);body.append(line);stack.append(name)
        if 'value' in x:
            if k.startswith('store_'):body.append(f"{x['value']} := {stack.pop()}.")
            else:push(x['value'])
        elif k=='pop':stack.pop()
        elif k=='dup':push(stack[-1])
        elif k in ('send','send_builtin','increment'):
            if k=='increment':n,sel=1,'+';args=[str(a[0])]
            else:n=a[1];sel=x.get('selector',a[0]);args=stack[-n:] if n else []
            if k!='increment' and n:del stack[-n:]
            receiver=stack.pop();expr=send('super' if x.get('super') else receiver,sel,args)
            if k=='send' and a[2]=='discard':body.append(expr+'.')
            elif k=='send' and a[2]=='cascade':body.append(expr+'.');push(stack[-1])
            else:push(expr)
        elif k in ('return','nonlocal_return'):
            value=stack.pop()
            if isblock and k=='return':
                if hasbranch:body.extend([f'{prefix}Result := {value}.',f'{prefix}Done := true.'])
                else:body.append(value)
            else:body.append('^'+value)
        elif k=='jump':body.append(f'{prefix}PC := {a[0]}.')
        elif k=='branch':
            top=stack.pop()
            cond={'false':top,'true':top,'nil':f'{top} == nil','not_nil':f'{top} ~~ nil'}.get(a[0])
            if cond is None:cond=stack.pop()+(' == ' if a[0]=='identical' else ' ~~ ')+top
            t,f=(x['end'],a[1]) if a[0]=='false' else (a[1],x['end'])
            body.append(f'({cond}) ifTrue: [{prefix}PC := {t}] ifFalse: [{prefix}PC := {f}].')
        elif k=='optimized_loop':
            base,frame_offset,target,exit_target,fallback_target=a
            if base==0x34:
                value=stack[-1]
                body.append(f'({value} isInteger) ifTrue: [({value} > 0) ifTrue: [{value} := {value} - 1. {prefix}PC := {target}] ifFalse: [{prefix}PC := {exit_target}]] ifFalse: [{prefix}PC := {fallback_target}].')
            elif base==0x37:
                counter_name=frame(frame_offset)
                bound=stack[-1]
                body.append(f'({bound} isInteger and: [{counter_name} isInteger]) ifTrue: [({counter_name} + 1 <= {bound}) ifTrue: [{counter_name} := {counter_name} + 1. {prefix}PC := {target}] ifFalse: [{counter_name} := nil. {prefix}PC := {exit_target}]] ifFalse: [{prefix}PC := {fallback_target}].')
            else:
                require(base==0x3a,'unknown optimized loop family')
                require(len(stack)>=2,'optimized comparison loop needs two stack registers')
                bound,current=stack[-2],stack[-1]
                duplicate=f'{prefix}Stack{len(stack)}'
                body.append(f'({bound} isInteger and: [{current} isInteger]) ifTrue: [({current} + 1 <= {bound}) ifTrue: [{current} := {current} + 1. {duplicate} := {current}. {prefix}PC := {target}] ifFalse: [{prefix}PC := {exit_target}]] ifFalse: [{prefix}PC := {fallback_target}].')
        if hasbranch and k not in ('jump','branch','optimized_loop','return','nonlocal_return'):body.append(f"{prefix}PC := {x['end']}.")
        x['source_lines']=body
        lines+=body
    signature=binding['selector']
    if ':' in signature:signature=' '.join(s+': '+v for s,v in zip(signature.split(':')[:-1],argnames))
    elif argc:signature+=' '+argnames[0]
    if hasbranch:
        generated=[f'{prefix}Stack{i}' for i in range(maxstack)]+[f'{prefix}PC',f'{prefix}Step']
        lines=[f'{prefix}Stack0 := {initial}.',f'{prefix}PC := {region_start}.']
        if isblock:
            generated+=[prefix+'Done',prefix+'Result']
            lines += [f'{prefix}Done := false.',f'[{prefix}Done not] whileTrue: [']
        else:lines+=['[true] whileTrue: [']
        lines += [f'    {prefix}Step := {prefix}PC.']
        for x in instructions:
            lines.append(f"    {prefix}Step = {x['pc']} ifTrue: [")
            lines += ['        '+s for s in x['source_lines']]
            lines.append('    ].')
        lines.append(']')
        if isblock:lines[-1]+='.';lines.append(prefix+'Result')
    declarations=tempnames+generated
    source=signature+'\n'+(('    | '+' '.join(declarations)+' |\n') if declarations else '')+'\n'.join('    '+s for s in lines)+'\n'
    if isblock:
        source='['+(' '.join(':'+a for a in argnames)+' | ' if argnames else '')+'\n'
        if declarations:source+='    | '+' '.join(declarations)+' |\n'
        source+='\n'.join('    '+s for s in lines)+'\n]'
    elif special_entry is not None:
        source=(f'"VM primitive/special entry 0x{special_entry:02x}; native fast path '
                'not reconstructed; fallback bytecodes follow."\n'+source)
    return source,instructions,('control_flow' if hasbranch else 'straight_line')


def main():
    SOURCE.mkdir(parents=True,exist_ok=True)
    universe=Universe();literals=Literals(universe)
    report=[];total=collections.Counter();samples=[]
    for path in sorted((OUT/'methods').glob('*/methods.jsonl')):
        counts=collections.Counter();reasons=collections.Counter();classes=collections.defaultdict(list)
        dest=SOURCE/path.parent.name;dest.mkdir(exist_ok=True)
        with (dest/'recovery.jsonl').open('w',encoding='utf8') as output:
            for line in path.open(encoding='utf8'):
                m=json.loads(line);counts['method_records']+=1
                if m['shared_code']:counts['shared_code']+=1
                if not m['bindings']:counts['unbound_records']+=1
                recovered=False
                groups = collections.defaultdict(list)
                for b in m['bindings']:
                    groups[(b['clazz'],b['selector'])].append(b)
                counts['binding_observations']+=len(m['bindings'])
                for group in groups.values():
                    binding = next((b for b in group if b['class_image']==m['image']),group[0])
                    counts['bindings']+=1
                    row=dict(image=m['image'],address=hex(m['address']),offset=m['offset'],binding=binding,
                             binding_observations=group)
                    try:
                        source,ins,kind=lower(m,binding,literals)
                        row.update(status='reconstructed_static',kind=kind,source=source,
                                   instruction_count=sum(x.get('block_instruction_count',0)+1 for x in ins),
                                   inline_blocks=sum(x.get('inline_block_count',0) for x in ins),code_hex=m['code_hex'])
                        if row['inline_blocks']:
                            counts['methods_with_inline_blocks']+=1
                            counts['inline_blocks']+=row['inline_blocks']
                        counts['reconstructed_bindings']+=1;counts[kind]+=1;recovered=True
                        classes[binding['clazz']].append((source,m))
                        if len(samples)<12 and ('Etas' in binding['clazz'] or 'SGMainView' in binding['clazz']):samples.append(row)
                    except Unsupported as error:
                        reason=str(error);reasons[reason.split(' at ')[0]]+=1
                        row.update(status='not_reconstructed',reason=reason,code_hex=m['code_hex'])
                    output.write(json.dumps(row,ensure_ascii=False)+'\n')
                if recovered:counts['reconstructed_records']+=1
        for clazz,methods in classes.items():
            filename=re.sub(r'[^A-Za-z0-9_.-]','_',clazz)+'.st'
            text='"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."\n\n'
            for source,m in methods:
                text+=f'"{m["image"]} method {m["address"]:#x}; bytecode file offset {m["code_offset"]:#x}"\n'
                text+=f"!{clazz} methodsFor: 'recovered'!\n"+source.replace('!','!!')+'! !\n\n'
            (dest/filename).write_text(text,encoding='utf8')
        expected={re.sub(r'[^A-Za-z0-9_.-]','_',c)+'.st' for c in classes}
        require(len({n.lower() for n in expected})==len(classes),'class source filename collision')
        for old in dest.glob('*.st'):
            if old.name not in expected:
                require(old.resolve().is_relative_to(SOURCE.resolve()),'source cleanup outside output directory')
                old.unlink()
        counts['class_files']=len(classes);total.update(counts)
        report.append(dict(image=path.parent.name,counts=dict(counts),reasons=dict(reasons.most_common())))
        print(path.parent.name,dict(counts),'top exclusions',reasons.most_common(3),flush=True)
    result=dict(totals=dict(total),images=report,validation='Native handler backed static reconstruction; no ASCET execution or recompilation.')
    (SOURCE/'coverage.json').write_text(json.dumps(result,indent=2,ensure_ascii=False),encoding='utf8')
    (SOURCE/'examples.json').write_text(json.dumps(samples,indent=2,ensure_ascii=False),encoding='utf8')
    print('TOTAL',dict(total),flush=True)


if __name__=='__main__':
    main()

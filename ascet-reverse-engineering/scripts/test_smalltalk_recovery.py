"""Regression and independent x86-handler checks for Smalltalk reconstruction.

Unicorn executes copied instruction bytes in isolated emulated memory. ASCET and
the DLL are never loaded into the host process or started as applications.
"""
import json
import struct
import sys
import unittest
from pathlib import Path
from smalltalk_image import BASE, OUT, Universe, scan_methods
from decompile_smalltalk import Literals, Unsupported, decode, lower
from inspect_ascet import pe_info

sys.path.insert(0,str(BASE/'tools/python'))
from unicorn import Uc, UC_ARCH_X86, UC_MODE_32, UC_HOOK_CODE
from unicorn.x86_const import UC_X86_REG_EAX, UC_X86_REG_EBX, UC_X86_REG_ECX, UC_X86_REG_EDX, UC_X86_REG_ESI, UC_X86_REG_EDI, UC_X86_REG_ESP, UC_X86_REG_EBP


def tagged(n):
    return (n*2+1)&0xffffffff


class NativeEvidence(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.data=(BASE/'unpacked/installation/esvm40.dll').read_bytes()
        cls.info=pe_info(cls.data)
        cls.dispatch=json.loads((OUT/'dispatch-table.json').read_text())

    def machine(self,stack=(),code=b'\x0b'):
        uc=Uc(UC_ARCH_X86,UC_MODE_32)
        uc.mem_map(0x420000,0x200000)
        for s in self.info['sections']:
            uc.mem_write(0x420000+s['rva'],self.data[s['raw_offset']:s['raw_offset']+s['raw_size']])
        uc.mem_map(0x1000000,0x20000)
        uc.reg_write(UC_X86_REG_EBP,0x1005000)
        uc.reg_write(UC_X86_REG_EDX,0x1008000)
        uc.reg_write(UC_X86_REG_ESI,0x1000100)
        uc.reg_write(UC_X86_REG_ESP,0x1010000)
        uc.mem_write(0x1005024,struct.pack('<I',1))
        uc.mem_write(0x1000100,code)
        if stack:uc.mem_write(0x1010000,struct.pack('<'+'I'*len(stack),*reversed(stack)))
        stopped=[]
        def hook(machine,address,size,user):
            if address==0x43d5bc:
                stopped.append(True);machine.emu_stop()
        uc.hook_add(UC_HOOK_CODE,hook)
        return uc,stopped

    def run_handler(self,opcode,stack,code=b'\x0b'):
        uc,stopped=self.machine(stack,code)
        uc.emu_start(int(self.dispatch[opcode]['handler'],16),0,count=300)
        self.assertTrue(stopped,'handler did not reach bytecode dispatch')
        return uc

    def test_integer_binary_handlers(self):
        ops={0:lambda a,b:a+b,1:lambda a,b:a-b,2:lambda a,b:a<b,3:lambda a,b:a<=b,
             4:lambda a,b:a>b,5:lambda a,b:a>=b,6:lambda a,b:a==b,7:lambda a,b:a!=b,
             9:lambda a,b:a//b,10:lambda a,b:a%b,0x7e:lambda a,b:a*b}
        for opcode,fn in ops.items():
            for a,b in [(-7,3),(7,-3),(-7,-3),(6,3),(0,1),(5,5)]:
                with self.subTest(opcode=opcode,a=a,b=b):
                    uc=self.run_handler(opcode,[tagged(a),tagged(b)])
                    self.assertEqual(uc.reg_read(UC_X86_REG_ESP),0x1010004)
                    actual=struct.unpack('<I',uc.mem_read(0x1010004,4))[0]
                    expected=fn(a,b)
                    self.assertEqual(actual,(30 if expected else 46) if isinstance(expected,bool) else tagged(expected))

    def test_between_handler(self):
        for value in [2,3,4,5,6]:
            uc=self.run_handler(0x78,list(map(tagged,[value,3,5])))
            self.assertEqual(struct.unpack('<I',uc.mem_read(0x1010008,4))[0],30 if 3<=value<=5 else 46)

    def test_false_and_true_branches(self):
        for opcode in [0x2e,0x31]:
            for condition in [30,46]:
                uc=self.run_handler(opcode,[condition],b'\x05\x0b\0\0\0\0\x0b')
                jumped=(condition==46 if opcode==0x2e else condition==30)
                self.assertEqual(uc.reg_read(UC_X86_REG_ESI),0x1000107 if jumped else 0x1000102)
                self.assertEqual(uc.reg_read(UC_X86_REG_ESP),0x1010004)

    def test_return_modes(self):
        # 0x20 keeps result, 0x24 discards it, 0x28 duplicates the lower stack
        # entry. The last is not a tail send and does not preserve its receiver.
        for native,expected_sp,expected_top in [(0x45bda4,0x100a000,111),
                                                (0x45da44,0x100a004,333),
                                                (0x45da60,0x100a000,333)]:
            uc,stopped=self.machine([111])
            for address,value in [(0x1007ff8,0),(0x1007ffc,0x1000100),(0x1007fec,0x100a000),
                                  (0x1008000,0),(0x100a000,222),(0x100a004,333)]:
                uc.mem_write(address,struct.pack('<I',value))
            uc.emu_start(native,0,count=100)
            self.assertTrue(stopped)
            self.assertEqual(uc.reg_read(UC_X86_REG_ESP),expected_sp)
            self.assertEqual(struct.unpack('<I',uc.mem_read(expected_sp,4))[0],expected_top)

    def test_method_entry_argument_order_and_initial_self(self):
        for entry,temps in [(0x45ff38,0),(0x460204,2)]:
            uc,stopped=self.machine([0x2000200,tagged(11),tagged(22)])
            method=0x100c001;cache=0x100b000
            uc.mem_write(cache+4,struct.pack('<I',method))
            uc.mem_write(method-1,struct.pack('<II',0,5<<16)+bytes([temps,2,0x11 if temps else 0x10,0x10,0x0b]))
            uc.reg_write(UC_X86_REG_EAX,cache);uc.reg_write(UC_X86_REG_EDI,2)
            uc.reg_write(UC_X86_REG_ECX,0x20)
            uc.emu_start(entry,0,count=150)
            self.assertTrue(stopped)
            fp=uc.reg_read(UC_X86_REG_EDX)
            self.assertEqual(struct.unpack('<I',uc.mem_read(fp+4+temps*4,4))[0],tagged(22))
            self.assertEqual(struct.unpack('<I',uc.mem_read(fp+8+temps*4,4))[0],tagged(11))
            self.assertEqual(struct.unpack('<I',uc.mem_read(uc.reg_read(UC_X86_REG_ESP),4))[0],0x2000200)

    def block_machine(self,flags,stack=(),code=b'\x0b'):
        uc,stopped=self.machine(stack,code)
        def word(address,value):uc.mem_write(address,struct.pack('<I',value))
        for address,value in [(0x100504c,0x1006000),(0x1006014,0x100d000),(0x1006010,0x100e000),
                              (0x1005038,0x1004000),(0x10040f0,0x1004100),(0x1004034,0x1004100),
                              (0x1004110,0x1004200),(0x10050a0,0x100f000),(0x1007fe8,0x1009000),
                              (0x1007ff4,0x1009300),(0x100900c,0x1009200),(0x1009210,0x1009300),
                              (0x1009214,0x100c001),(0x1005068,0x1007000),(0x100704c,0x1007200)]:word(address,value)
        uc.reg_write(UC_X86_REG_EBX,0x100c001)
        return uc,stopped

    def test_inline_block_creation_fields_and_jump(self):
        for opcode in [0x4b,0x4c]:
            for flags in [1,3,7,15]:
                with self.subTest(opcode=opcode,flags=flags):
                    padding=b'\x00' if opcode==0x4c else b''
                    operands=padding+bytes([2,3,flags])+b'\x03\x00'
                    uc,stopped=self.block_machine(flags,[tagged(5)],operands+b'\0\0\0\x0b')
                    uc.emu_start(int(self.dispatch[opcode]['handler'],16),0,count=220)
                    self.assertTrue(stopped)
                    obj=struct.unpack('<I',uc.mem_read(uc.reg_read(UC_X86_REG_ESP),4))[0]
                    self.assertEqual(obj,0x100d000)
                    fields=struct.unpack('<6I',uc.mem_read(obj+12,24))
                    self.assertEqual(fields[0],0x100c001 if flags&4 else 0x1009200)
                    self.assertEqual(fields[1],0x1009300 if flags&4 and flags&8 else 0x1009000)
                    self.assertEqual(fields[2],(0x1000100+len(operands)-0x100c001)&0xffffffff)
                    self.assertEqual(fields[3],0x02030000|flags)
                    self.assertEqual(uc.reg_read(UC_X86_REG_ESI),0x1000100+len(operands)+4)

    def test_block_activation_stack_and_context_locals(self):
        for flags in [1,3,13,15]:
            with self.subTest(flags=flags):
                template=0x1009400
                uc,stopped=self.block_machine(flags,[template,tagged(11),tagged(22)])
                fields=[0x100c001 if flags&4 else 0x1009200,0x1009300 if flags&4 else 0x1009000,0x100,
                        0x02010000|flags,14,1]
                uc.mem_write(template+12,struct.pack('<6I',*fields))
                uc.reg_write(UC_X86_REG_EDI,2);uc.reg_write(UC_X86_REG_ECX,0x20)
                uc.reg_write(UC_X86_REG_EAX,0x100b000)
                reached=[]
                def hook(machine,address,size,user):
                    if address==0x431ba9:reached.append(True);machine.emu_stop()
                uc.hook_add(UC_HOOK_CODE,hook)
                uc.emu_start(0x431aec,0,count=400)
                self.assertTrue(reached)
                fp=struct.unpack('<I',uc.mem_read(0x100502c,4))[0]
                active=struct.unpack('<I',uc.mem_read(fp-24,4))[0]
                if flags&2:
                    self.assertEqual(active,template)
                    variables=struct.unpack('<3I',uc.mem_read(fp+4,12))
                else:
                    self.assertEqual(active,0x100d000)
                    variables=struct.unpack('<3I',uc.mem_read(active+32,12))
                    self.assertEqual(struct.unpack('<I',uc.mem_read(active+16,4))[0],fields[1])
                self.assertEqual(variables,(14,tagged(22),tagged(11)))
                self.assertEqual(struct.unpack('<I',uc.mem_read(uc.reg_read(UC_X86_REG_ESP),4))[0],0x1009300)

    def test_captured_variable_chain_read_and_write(self):
        for depth in [0,1,2]:
            uc,stopped=self.machine([tagged(99)],bytes([32,depth,0x0b]))
            uc.mem_write(0x1007fe8,struct.pack('<I',0x1009000))
            for n in range(3):
                uc.mem_write(0x1009010+n*0x100,struct.pack('<I',0x1009100+n*0x100))
                uc.mem_write(0x1009020+n*0x100,struct.pack('<I',tagged(n+10)))
            uc.emu_start(int(self.dispatch[0x2b]['handler'],16),0,count=100)
            self.assertTrue(stopped)
            self.assertEqual(struct.unpack('<I',uc.mem_read(uc.reg_read(UC_X86_REG_ESP),4))[0],tagged(depth+10))
            uc.reg_write(UC_X86_REG_ESP,0x1010000);uc.reg_write(UC_X86_REG_ESI,0x1000100)
            uc.emu_start(int(self.dispatch[0x1c]['handler'],16),0,count=100)
            self.assertEqual(struct.unpack('<I',uc.mem_read(0x1009020+depth*0x100,4))[0],tagged(99))

    def test_nonlocal_return_finds_home_method_frame(self):
        uc,stopped=self.machine([tagged(99)])
        for address,value in [(0x1007fe8,0x1009100),(0x100910c,0x1009000),(0x100901c,0x1009200),
                              (0x100505c,0x1009200),(0x1005020,0x100a000),(0x100a008,0x1000),
                              (0x1009018,0x100b00d-0x1008100)]:uc.mem_write(address,struct.pack('<I',value))
        reached=[]
        def hook(machine,address,size,user):
            if address==0x42a6a4:reached.append(True);machine.emu_stop()
        uc.hook_add(UC_HOOK_CODE,hook)
        uc.emu_start(int(self.dispatch[0x45]['handler'],16),0,count=120)
        self.assertTrue(reached)
        self.assertEqual(struct.unpack('<I',uc.mem_read(0x10050f4,4))[0],0x1008100)


class RecoveryChecks(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.u=Universe();cls.literals=Literals(cls.u)

    def test_all_layouts_and_shared_code_targets(self):
        total=shared=0
        for im in self.u.images:
            self.assertFalse(im.object_errors);self.assertEqual(im.data_end,len(im.data))
            methods,errors=scan_methods(im);self.assertFalse(errors)
            for m in methods.values():
                total+=1;shared+=m['shared_code']
                self.assertEqual(len(bytes.fromhex(m['code_hex'])),m['code_bytes'])
                if m['shared_code']:
                    owner=methods[m['code_owner_address']]
                    self.assertEqual(m['code_hex'],owner['code_hex'])
        self.assertEqual((total,shared),(179893,105925))

    def test_snapshot_class_references_and_no_dynamic_compiled_methods(self):
        im=self.u.by_name['ascet.icx']
        names=[self.u.class_name(im,o['clazz']) for o in im.objects.values()]
        self.assertEqual(len(names),88725);self.assertNotIn(None,names)
        self.assertNotIn('CompiledMethod',names)

    def test_loaded_discards_result_and_returns_self(self):
        methods=[json.loads(x) for x in (OUT/'methods/ASDStartup.ic/methods.jsonl').read_text(encoding='utf8').splitlines()]
        m=next(m for m in methods if any(b['selector']=='loaded' for b in m['bindings']))
        b=next(b for b in m['bindings'] if b['class_image']=='ASDStartup.ic')
        source,ins,kind=lower(m,b,self.literals)
        self.assertIn('checkDBInterface.',source);self.assertTrue(source.rstrip().endswith('^self'))
        self.assertEqual([x['kind'] for x in ins],['global','send','return'])

    def test_pool_key_is_one_based_and_hash_masked(self):
        self.assertEqual(self.literals.literal('ASDBase.ic',0x10024c48,'global'),'MainController')
        self.assertEqual(self.literals.literal('ASDBase.ic',0x1001c3b8,'global'),'SCFormulaTypeLabelTabNoIntP')

    def test_structured_parameter_spec_literal(self):
        image = self.u.by_name['ascet.icx']
        address = next(address for address, obj in image.objects.items()
                       if self.u.class_name(image, obj['clazz']) == 'AbtParameterSpec')
        source = self.literals.literal('ascet.icx', address)
        self.assertIn('(AbtParameterSpec new) parameterClass:', source)
        self.assertIn("parameterName: ('", source)
        self.assertIn('typedBySecondaryPartType: (nil)', source)

    def test_legacy_string_literal_preserves_raw_bytes(self):
        source = self.literals.literal('ASDBase.ic', 0x122ab054)
        self.assertTrue(source.startswith('(String new: 12)'))
        self.assertIn('(Character value: 9)', source)
        self.assertIn('(Character value: 167)', source)

    def test_structured_native_object_literals(self):
        point = self.literals.literal('ASDBase.ic', 0x123b97d8)
        self.assertEqual(point, '(Point) x: (-1) y: (-1)')
        profile = self.literals.literal('ASDBase.ic', 0x12358c2c)
        self.assertIn('(WinProfile new) instVarAt: 1 put:', profile)
        dictionary = self.literals.literal('ASDBase.ic', 0x122b3624)
        self.assertIn('(Dictionary new) instVarAt: 1 put: (9)', dictionary)
        self.assertIn('(Association new) key: (\'Parameter\')', dictionary)
        dom_attr = self.literals.literal('ASDBase.ic', 0x28156bd0)
        self.assertIn('(EtasXmlSupportDOMAttr new) instVarAt: 1 put:', dom_attr)

    def test_legacy_scalar_literals(self):
        # The old Abt images serialize these numeric constants with stale Bag
        # and Color class tags.  Their raw payloads are the authoritative
        # signed 64-bit integer and IEEE-754 values.
        self.assertEqual(
            self.literals.literal('abtdbh.ic', 0x12003360),
            '(Fraction) numerator: (1) denominator: (1000000000000000000)')
        self.assertEqual(self.literals.literal('abtdbh.ic', 0x120018c0),
                         '(Fraction) numerator: (1) denominator: (1000000000000)')
        self.assertEqual(self.literals.literal('abtdbh.ic', 0x12002f78), '10.0')
        self.assertEqual(self.literals.literal('abtdbh.ic', 0x12001918), '1.0')
        self.assertEqual(self.literals.literal('abtdah.ic', 0x12004a80), '0.01')

    def test_legacy_esmethodarray_binding(self):
        rows = [json.loads(line) for line in
                (OUT/'methods/abtdbh.ic/methods.jsonl').read_text(encoding='utf8').splitlines()]
        method = next(row for row in rows if row['address'] == 0x20007194)
        binding = next(item for item in method['bindings']
                       if item['clazz'] == 'Fraction' and
                       item['selector'] == 'abrWithIntegerAndScaleDo:')
        self.assertEqual(binding['provenance']['kind'], 'legacy_extension_table')
        self.assertEqual(binding['provenance']['table_address'], '0x34000f90')

    def test_type9_relocation_dereferences_dependency_slot(self):
        image = self.u.by_name['abtdbh.ic']
        relocation = next(item for item in image.relocations
                          if item['flags'] >> 16 == 9)
        resolved = self.u.resolve(image, relocation['start'])
        self.assertIsNotNone(resolved)
        self.assertEqual((resolved[0].name, resolved[1]), ('kernel.ic', 0x28001c50))

    def test_esstring_global_literal(self):
        self.assertEqual(self.literals.literal('abtdah.ic', 0x10000078, 'global'),
                         'MsgThreadNoStaticFuture')

    def test_all_bound_records_are_reconstructed(self):
        source_root = BASE / 'unpacked/smalltalk-source'
        unresolved = []
        for path in source_root.glob('*/recovery.jsonl'):
            with path.open(encoding='utf8') as stream:
                for line in stream:
                    row = json.loads(line)
                    if row.get('binding') and row.get('status') != 'reconstructed_static':
                        unresolved.append((path.name, row.get('reason')))
        self.assertEqual(unresolved, [])

    def test_unbound_method_has_only_block_template_references(self):
        from audit_smalltalk_orphans import method_references

        image = self.u.by_name['asdbase.ic']
        candidates, references = method_references(self.u, image, 0x204c8f64)
        self.assertEqual(set(candidates), {'ASDBase.ic', 'ascet.icx'})
        self.assertEqual({name: len([r for r in references if r['image'] == name])
                          for name in candidates}, {'ASDBase.ic': 9, 'ascet.icx': 9})
        self.assertEqual({r['object_class'] for r in references},
                         {'EsCompactBlockContextTemplate'})
        with (OUT/'methods/ASDBase.ic/methods.jsonl').open(encoding='utf8') as stream:
            method = next(row for line in stream
                          if (row := json.loads(line))['address'] == 0x204c8f64)
        self.assertEqual(method['bindings'], [])
        self.assertEqual({r['object_address'] for r in references
                          if r['image'] == 'ASDBase.ic'},
                         {hex(pointer) for pointer in method['literals']
                          if (obj := self.u.object(image, pointer)) and
                          self.u.class_name(obj[0], obj[1]['clazz']) ==
                          'EsCompactBlockContextTemplate'})
        audit = json.loads((OUT/'orphan-method-audit.json').read_text(encoding='utf8'))
        self.assertEqual(len(audit), 1)
        body = (OUT/audit[0]['body_source']).read_text(encoding='utf8')
        self.assertEqual(audit[0]['body_instruction_count'], 50)
        self.assertIn('Dictionary.', body)
        self.assertIn('interrunnableVariableString.', body)
        self.assertIn('isInterrunnable.', body)
        self.assertIn('^recoveredStack1', body)
        self.assertNotIn('anonymous', body)

    def test_special_entry_uses_declared_fallback_frame(self):
        methods = [json.loads(x) for x in
                   (OUT/'methods/kernel.ic/methods.jsonl').read_text(encoding='utf8').splitlines()]
        method = next(m for m in methods if m['address'] == 0x20000808)
        binding = next(b for b in method['bindings'] if b['class_image'] == 'kernel.ic')
        source, _, _ = lower(method, binding, self.literals)
        self.assertIn('VM primitive/special entry 0x3c', source)
        self.assertIn('primitiveFailed.', source)

    def test_reject_invalid_branch_and_unknown_opcode(self):
        with self.assertRaisesRegex(Unsupported,'branch target'):
            decode(bytes.fromhex('000010103f1001410144'))
        with self.assertRaisesRegex(Unsupported,'unsupported opcode'):
            decode(bytes.fromhex('00001010ff44'))

    def synthetic(self,code,literals=(),selector='sample'):
        method=dict(image='kernel.ic',address=0,code_hex=code.hex(),literals=list(literals))
        binding=dict(clazz='Object',class_image='kernel.ic',class_address='0x28005dd4',selector=selector)
        return lower(method,binding,self.literals)

    def test_inline_capture_write_uses_outer_local(self):
        # | x | x := 5. [x := x + 1] (block returned, not executed here).
        block=bytes.fromhex('2b20014103000f1c200144')
        code=bytes.fromhex('01001313410b1c2000')+bytes([0x4b,0,0,3])+struct.pack('<h',len(block))+block+bytes([0x46])
        source,ins,_=self.synthetic(code)
        self.assertIn('recoveredLocal1 :=',source)
        blocksource=next(x['value'] for x in ins if x['kind']=='closure')
        self.assertIn(':= recoveredLocal1.',blocksource)
        self.assertIn('recoveredLocal1 :=',blocksource)
        self.assertNotIn('^',blocksource)

    def test_inline_nonlocal_return_remains_method_return(self):
        block=bytes.fromhex('410b45')
        code=bytes.fromhex('00001212')+bytes([0x4b,0,0,3])+struct.pack('<h',len(block))+block+bytes([0x46])
        source,ins,_=self.synthetic(code)
        self.assertIn('^5',next(x['value'] for x in ins if x['kind']=='closure'))

    def test_invalid_capture_depth_and_block_extent_rejected(self):
        block=bytes.fromhex('2b200344')
        code=bytes.fromhex('01001313')+bytes([0x4b,0,0,3])+struct.pack('<h',len(block))+block+bytes([0x46])
        with self.assertRaisesRegex(Unsupported,'context depth'):self.synthetic(code)
        with self.assertRaisesRegex(Unsupported,'inline block extent'):
            decode(bytes.fromhex('000010104b00000fff7f44'))


if __name__=='__main__':
    unittest.main(verbosity=2)

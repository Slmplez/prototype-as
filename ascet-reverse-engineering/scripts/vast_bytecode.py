"""Conservative decoder for the observed esvm40.dll interpreter instruction set.

Evidence: analysis/smalltalk-deep/opcode-table.json and opcode-handlers.txt.
Unknown instructions stop decoding; operand bytes are never scanned as opcodes.
Flat output includes inline block bodies and labels their creation boundaries.
Straight-line translations are bytecode-level reconstructions, not original sources.
"""
import collections
import json
import re
from pathlib import Path

BASE = Path(__file__).resolve().parents[1]
RECOVERED = BASE / 'unpacked/smalltalk-recovered'


class Unsupported(ValueError):
    pass


def decode(method):
    code = bytes.fromhex(method['bytecodes_hex'])
    literals = method['literals']
    pos = 0
    instructions = []

    def integer(size=1, signed=False):
        nonlocal pos
        if pos + size > len(code):
            raise Unsupported('truncated operand')
        result = int.from_bytes(code[pos:pos + size], 'little', signed=signed)
        pos += size
        return result

    def operand_variant(opcode, base, signed=False):
        if opcode == base + 2:
            integer()  # Padded wide form skips one byte in the interpreter.
        return integer(1 if opcode == base else 2, signed)

    def literal(offset):
        # EBX is the compact method pointer (record address | 1).
        if offset < 7 or (offset - 7) % 4:
            raise Unsupported(f'non-compact literal offset {offset}')
        index = (offset - 7) // 4
        if index >= len(literals):
            raise Unsupported(f'literal index {index} out of range')
        return index

    def send(index, argc, disposition='value', **extra):
        selector = literals[index].get('text') if isinstance(literals[index], dict) else None
        if not selector or not re.fullmatch(r'[A-Za-z_]\w*(?::[A-Za-z_]\w*)*:?|[+*/\\~<>=@%|&?,!-]+', selector):
            raise Unsupported(f'literal {index} is not an identified selector')
        expected = selector.count(':') if ':' in selector else (0 if selector[0].isalnum() or selector[0] == '_' else 1)
        if expected != argc:
            raise Unsupported(f'selector argument mismatch: {selector}, {argc}')
        return dict(op='send', literal=index, selector=selector, argc=argc, disposition=disposition, **extra)

    error = None
    try:
        while pos < len(code):
            start = pos
            opcode = integer()
            item = None
            binary = {0x00: '+', 0x01: '-', 0x02: '<', 0x03: '<=', 0x04: '>', 0x05: '>=',
                      0x06: '=', 0x07: '~=', 0x08: '==', 0x09: '//', 0x0a: '\\\\', 0x74: '~~', 0x7e: '*'}
            if opcode in binary:
                item = dict(op='binary', selector=binary[opcode])
            elif opcode in {0x0e, 0x0f}:
                item = dict(op='pop' if opcode == 0x0e else 'dup')
            elif opcode in {0x3d, 0x3e, 0x3f, 0x40}:
                item = dict(op='push_constant', value={0x3d: 'false', 0x3e: 'nil', 0x3f: 'self', 0x40: 'true'}[opcode])
            elif 0x41 <= opcode <= 0x43:
                raw = operand_variant(opcode, 0x41, True)
                item = dict(op='push_immediate', raw=raw, value=raw >> 1 if raw & 1 else {14:'nil',30:'true',46:'false'}.get(raw))
            elif opcode in {0x44, 0x45, 0x46}:
                item = dict(op={0x44:'return', 0x45:'return_checked', 0x46:'return_nonlocal'}[opcode])
            elif opcode in {0x47, 0x48, 0x49}:
                item = dict(op='add_small_integer', value={0x47:-1, 0x48:-2, 0x49:1}[opcode])
            elif opcode in {0x75, 0x76, 0x77}:
                item = dict(op='unary', selector={0x75:'notNil', 0x76:'isNil', 0x77:'not'}[opcode])
            elif opcode == 0x78:
                item = dict(op='between', selector='between:and:')
            elif 0x7f <= opcode <= 0x86:
                item = dict(op='push_frame' if opcode < 0x83 else 'store_frame', offset=4*(1+(opcode-0x7f)%4))
            elif 0xaf <= opcode <= 0xb6:
                item = send((opcode-0xaf)%4, 0 if opcode < 0xb3 else 1)
            elif 0x62 <= opcode <= 0x67:
                item = send(literal(integer()), (opcode-0x62)%3, 'value' if opcode < 0x65 else 'discard')
            elif any(base <= opcode <= base+2 for base in [0x4d, 0x5c, 0x56]):
                base = next(base for base in [0x4d, 0x5c, 0x56] if base <= opcode <= base+2)
                index = literal(operand_variant(opcode, base))
                item = send(index, integer(), {0x4d:'value',0x5c:'discard',0x56:'special_return'}[base])
            elif any(base <= opcode <= base+2 for base in [0x9d, 0xa0, 0xa3]):
                base = next(base for base in [0x9d, 0xa0, 0xa3] if base <= opcode <= base+2)
                if opcode == base+2:
                    integer()
                width = 1 if opcode == base else 2
                superclass = literal(integer(width))
                index = literal(integer(width))
                item = send(index, integer(), {0x9d:'value',0xa0:'discard',0xa3:'special_return'}[base], superclass_literal=superclass)
            elif any(base <= opcode <= base+2 for base in [0x10,0x2e,0x31,0x68,0x6b,0x6e,0x71]):
                base = next(base for base in [0x10,0x2e,0x31,0x68,0x6b,0x6e,0x71] if base <= opcode <= base+2)
                delta = operand_variant(opcode, base, True)
                item = dict(op='jump', condition={0x10:'always',0x2e:'false',0x31:'true',0x68:'equal',0x6b:'not_equal',0x6e:'nil',0x71:'not_nil'}[base], target=pos+delta)
            elif 0x34 <= opcode <= 0x3c:
                base = 0x34 + ((opcode-0x34)//3)*3
                if opcode == base+2:
                    integer()
                frame_offset = integer() if base==0x37 else None
                delta = integer(1 if opcode==base else 2, True)
                target = pos+delta
                exit_skip = integer()
                item = dict(op='optimized_loop', kind={0x34:'decrement_stack_counter',0x37:'increment_frame_counter',0x3a:'increment_stack_counter'}[base],
                            target=target, exit_target=pos+exit_skip, fallback_target=pos)
                if frame_offset is not None:
                    item['frame_offset'] = frame_offset
            elif any(base <= opcode <= base+2 for base in [0x13,0x16,0x19,0x1c,0x1f,0x22,0x25,0x28,0x2b]):
                base = next(base for base in [0x13,0x16,0x19,0x1c,0x1f,0x22,0x25,0x28,0x2b] if base <= opcode <= base+2)
                offset = operand_variant(opcode, base)
                names = {0x13:'store_binding',0x16:'store_instvar',0x19:'store_frame',0x1c:'store_context',0x1f:'push_binding',0x22:'push_instvar',0x25:'push_literal',0x28:'push_frame',0x2b:'push_context'}
                item = dict(op=names[base], offset=offset)
                if base in {0x13,0x1f,0x25}:
                    item['literal'] = literal(offset)
                if base in {0x1c,0x2b}:
                    item['depth'] = integer()
            elif opcode in {0x4b,0x4c}:
                if opcode == 0x4c:
                    integer()
                argc, temps, flags = integer(), integer(), integer()
                span = integer(2, True)
                item = dict(op='make_block', argc=argc, temps=temps, flags=flags, body_start=pos, body_end=pos+span)
            else:
                raise Unsupported(f'opcode 0x{opcode:02x} not implemented')
            item.update(pc=start, opcode=f'{opcode:02x}', raw=code[start:pos].hex(), next_pc=pos)
            instructions.append(item)
    except Unsupported as exc:
        error = dict(pc=start, reason=str(exc), remaining_hex=code[start:].hex())
    boundaries = {i['pc'] for i in instructions} | {len(code)}
    if error is None:
        for item in instructions:
            targets = [item[k] for k in ['target','exit_target','fallback_target','body_start','body_end'] if k in item]
            if any(t not in boundaries for t in targets):
                error = dict(pc=item['pc'], reason='control-flow target is not an instruction boundary')
                break
    return dict(instructions=instructions, error=error)


def format_literal(lit):
    if isinstance(lit, int):
        return str(lit)
    if isinstance(lit, str):
        return lit
    if 'association' in lit:
        return lit['association']
    if 'text' in lit:
        value = "'" + lit['text'].replace("'", "''") + "'"
        return '#'+value if lit.get('kind') == 'Symbol' else value
    if 'class' in lit:
        return lit['class']
    if 'array' in lit and not lit['array']:
        return '#()'
    raise Unsupported('literal needs further object recovery')


def straight_line(method, decoded):
    if decoded['error']:
        raise Unsupported('partial bytecode decode')
    if int.from_bytes(bytes.fromhex(method['code_header_hex'])[2:4], 'little') & 0xfff not in {16,17,18,19}:
        raise Unsupported('VM primitive/special entry: bytecodes are fallback only')
    stack = ['self']
    statements = []
    nargs, temps = method['argument_count'], method['temporary_count']

    def frame(offset):
        index = offset//4
        if offset%4 or index < 1 or index > nargs+temps:
            raise Unsupported('frame layout outside named argument/temporary slots')
        return 'tmp'+str(index) if index <= temps else 'arg'+str(nargs+temps-index+1)

    def message(receiver, selector, args):
        if not args:
            return f'({receiver} {selector})'
        if ':' in selector:
            return '('+receiver+' '+ ' '.join(k+': '+v for k,v in zip(selector.split(':')[:-1], args))+')'
        return f'({receiver} {selector} {args[0]})'

    for item in decoded['instructions']:
        op = item['op']
        if op in {'push_literal','push_binding'}:
            lit = method['literals'][item['literal']]
            if op=='push_binding' and not (isinstance(lit,dict) and 'association' in lit):
                raise Unsupported('unresolved binding')
            stack.append(format_literal(lit))
        elif op in {'push_constant','push_immediate'} and item['value'] is not None:
            stack.append(str(item['value']))
        elif op == 'push_frame':
            stack.append(frame(item['offset']))
        elif op == 'store_frame':
            statements.append(frame(item['offset'])+' := '+stack.pop()+'.')
        elif op == 'push_instvar':
            if item['offset'] < 12 or item['offset']%4:
                raise Unsupported('unaligned instance variable')
            stack.append(f'(self instVarAt: {(item["offset"]-12)//4+1})')
        elif op == 'pop':
            statements.append(stack.pop()+'.')
        elif op == 'dup':
            # Materialize expressions once: duplication must not repeat side effects.
            raise Unsupported('dup needs expression materialization')
        elif op == 'binary':
            rhs, lhs = stack.pop(), stack.pop()
            stack.append(message(lhs,item['selector'],[rhs]))
        elif op == 'between':
            high, low, value = stack.pop(), stack.pop(), stack.pop()
            stack.append(message(value,item['selector'],[low,high]))
        elif op == 'unary':
            stack.append(message(stack.pop(),item['selector'],[]))
        elif op == 'add_small_integer':
            stack.append(message(stack.pop(),'+' if item['value']>0 else '-', [str(abs(item['value']))]))
        elif op == 'send':
            if 'superclass_literal' in item or item['disposition']=='special_return':
                raise Unsupported('special send needs full frame analysis')
            args = [stack.pop() for _ in range(item['argc'])][::-1]
            expression = message(stack.pop(),item['selector'],args)
            if item['disposition']=='discard':
                statements.append(expression+'.')
            else:
                stack.append(expression)
        elif op == 'return' and item['next_pc']==len(bytes.fromhex(method['bytecodes_hex'])):
            result = stack.pop()
            if stack not in [[],['self']]:
                raise Unsupported('unused stack values need full frame analysis')
            statements.append('^'+result)
        else:
            raise Unsupported('control flow or opcode needs further source recovery')
    if not statements or not statements[-1].startswith('^'):
        raise Unsupported('no final return')
    return statements


def main():
    summaries = []
    targets = []
    for folder in sorted(RECOVERED.iterdir()):
        if not folder.is_dir() or not (folder/'methods.jsonl').exists():
            continue
        counts = collections.Counter()
        errors = collections.Counter()
        with (folder/'bytecode-ir.jsonl').open('w',encoding='utf-8') as output, (folder/'straight-line.st.txt').open('w',encoding='utf-8') as source:
            source.write('"Bytecode-derived straight-line reconstructions. Synthetic argument/temporary names; instance slots use instVarAt:. Not original source and not runtime-validated."\n\n')
            for line in (folder/'methods.jsonl').open(encoding='utf-8'):
                method = json.loads(line)
                decoded = decode(method)
                counts['methods'] += 1
                counts['fully_decoded' if decoded['error'] is None else 'partially_decoded'] += 1
                if decoded['error']:
                    errors[decoded['error']['reason']] += 1
                record = dict(address=method['address'], owners=method['owners'], **decoded)
                try:
                    body = straight_line(method, decoded)
                    if not method['owners']:
                        raise Unsupported('owner missing')
                    counts['straight_line_translations'] += 1
                    for owner in method['owners']:
                        selector = owner['selector']
                        if ':' in selector:
                            signature = ' '.join(k+': arg'+str(i+1) for i,k in enumerate(selector.split(':')[:-1]))
                        elif method['argument_count']:
                            signature = selector+' arg1'
                        else:
                            signature = selector
                        source.write(f'"{owner["class"]} {owner["side"]}, method {method["address"]:#x}"\n{signature}\n')
                        if method['temporary_count']:
                            source.write('    | '+' '.join('tmp'+str(i+1) for i in range(method['temporary_count']))+' |\n')
                        source.write('\n'.join('    '+s for s in body)+'\n\n')
                    record['straight_line_translation'] = body
                except (Unsupported,IndexError) as exc:
                    record['source_limitation'] = str(exc)
                output.write(json.dumps(record,ensure_ascii=False)+'\n')
                if any(o['class'] in {'ASDXMLImportControllerBase','EtasZipToolController','ASDXMLImportStep','EtasXmlSupportNative','EtasXmlSupportDoc','EtasXmlSupportCatalog','ASDXMLImportStepXMLBase'} for o in method['owners']):
                    targets.append(dict(method=method, decoded=decoded))
        summary = dict(image=folder.name, **counts, errors=dict(errors))
        summaries.append(summary)
        print({k:v for k,v in summary.items() if k!='errors'},flush=True)
    (RECOVERED/'bytecode-summary.json').write_text(json.dumps(summaries,indent=2),encoding='utf-8')
    (BASE/'analysis/smalltalk-deep/axl-import-decoded.json').write_text(json.dumps(targets,ensure_ascii=False,indent=2),encoding='utf-8')


if __name__ == '__main__':
    main()

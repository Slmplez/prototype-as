"""Validate recovered methods against image bounds and known ASCET import behavior."""
import hashlib
import json
from pathlib import Path
from vast_image import BASE, ROOT, Image
from vast_bytecode import decode, straight_line


def main():
    output = BASE/'unpacked/smalltalk-recovered'
    checks = []
    for path in sorted(p for p in ROOT.rglob('*') if p.suffix.lower() in {'.ic','.icx'}):
        image = Image(path)
        assert not image.errors, (path, image.errors)
        records = [json.loads(line) for line in (output/path.name/'methods.jsonl').open(encoding='utf-8')]
        assert len(records)==len(image.methods)
        for m in records:
            assert len(bytes.fromhex(m['bytecodes_hex']))+4<=len(image.data)-m['code_offset']
            raw = image.data[m['code_offset']:m['code_offset']+4]
            assert raw.hex()==m['code_header_hex']
            code = bytes.fromhex(m['bytecodes_hex'])
            assert image.data[m['code_offset']+4:m['code_offset']+4+len(code)]==code
            assert decode(m)['error'] is None, (path,m['address'])
        checks.append(dict(image=path.name,sha256=hashlib.sha256(image.data).hexdigest(),
                           objects=len(image.objects),methods=len(records),bounds_errors=0,decode_errors=0))

    methods = {}
    for line in (output/'ASDBase.ic/methods.jsonl').open(encoding='utf-8'):
        m=json.loads(line)
        for owner in m['owners']:
            methods[(owner['class'],owner['side'],owner['selector'])]=m
    get_name=methods[('EtasXmlSupportNative','class','getName')]
    assert straight_line(get_name,decode(get_name))==["^'stXmlSec'"]
    entry=methods[('SGImportManager','instance','amdImportControllerClass')]
    assert straight_line(entry,decode(entry))==['^ASDXMLImportControllerUI']
    wrapper=methods[('ASDXMLImportStep','instance','readDOMTree:schema:')]
    assert straight_line(wrapper,decode(wrapper))==['^(self readDOMTree: arg1 schema: arg2 verify: true)']
    import_method=methods[('ASDXMLImportControllerBase','instance','importFromAXLFiles:components:importFolder:')]
    assert any(l.get('array')==[{'text':'zip','kind':'String'},{'text':'axl','kind':'String'}] for l in import_method['literals'] if isinstance(l,dict))
    calls=[i['selector'] for i in decode(import_method)['instructions'] if i['op']=='send']
    assert calls.index('makeTempDir:')<calls.index('unzip:into:')<calls.index('findFileNames:in:')<calls.index('importFromFiles:components:importFolder:')
    xml=methods[('ASDXMLImportStep','instance','readDOMTreeFromFile:schema:verify:')]
    xml_calls=[i['selector'] for i in decode(xml)['instructions'] if i['op']=='send']
    assert xml_calls.index('initFromFile:')<xml_calls.index('verify')<xml_calls.index('decrypt:')<xml_calls.index('bringToCurrent:type:from:')<xml_calls.index('validate:')
    report=dict(images=checks,checks=['all container boundaries','all shared and owned bytecode bytes',
                                    'all instruction/branch/block boundaries','send selector argument counts',
                                    'native DLL name translation','import controller translation',
                                    'two-argument frame ordering','ZIP/AXL array literal types','import call order',
                                    'XML read/verify/decrypt/convert/validate call order'],
                limitation='Static checks only. No ASCET runtime execution or complete high-level source equivalence proof.')
    (BASE/'analysis/smalltalk-deep/verification.json').write_text(json.dumps(report,indent=2),encoding='utf-8')
    print(json.dumps(dict(images=len(checks),methods=sum(c['methods'] for c in checks),checks=len(report['checks']),status='passed')))


if __name__=='__main__':
    main()

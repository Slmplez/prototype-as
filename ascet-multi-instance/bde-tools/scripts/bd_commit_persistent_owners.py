"""Strict original component/spec-source persistent-owner captures for v6.

These functions validate retained before evidence only. They neither read a
current DBObject nor authorize persistence/inverse. Raw object-record headers
are not guessed from the different variable-attribute reference-record format.
"""
from copy import deepcopy
import re

from bd_persistent_references import decode


SUMMARY_PROFILE = 'native_persistent_owners_capture_v1'
CAPTURE_PROFILE = 'native_persistent_owners_records_v1'
SUMMARY_KEYS = frozenset(('profile phase native_token component_oid generation owners original_material_held '
    'same_native_dispatch model_setters_called store_called commit_called write_authorized inverse_authorized').split())
CAPTURE_KEYS = frozenset(('profile native_token component_oid generation summary owners').split())
OWNER_SUMMARY_KEYS = frozenset(('role model_class model_ref db_ref oid key records').split())
OWNER_KEYS = frozenset(('role model_binding db_binding oid key db_before db_after records').split())
ROLES = ('component', 'spec_source')
RECORD_ROLES = ('owner', 'owner_references', 'owner_referenced_by')
RECORD_KEYS = frozenset(('actual_file_key allocated_bytes allocated_size attribute blob_size bytes ctree_after '
    'ctree_before file_class fixed_size global_id leaf_class logical_size query_key read_status record_attribute '
    'record_class record_class_requested role route').split())
DB_FIELDS = ('istate', 'globalId', 'interface', 'firstVersionId', 'className', 'name', 'version',
             'objectState', 'referenceState')
CTREE_FIELDS = ('ctInstance', 'ctIFIL', 'ctLockingIFIL', 'ctKey', 'ctSegments', 'uniqueIndex',
                'fixedRecord', 'pathNames', 'ctTransaction', 'ctSavePoint', 'defName')
BOUNDARY_CLASSES = frozenset(('DBObject DBReferenceInterface32 CTreeLocalSearchInterface '
    'CTreeLocalVariableAttributeInterface CTGVCTreestdFputFget CTSpaceCheckingIFil CTIFil '
    'CTIIdxArray Dictionary DBTriple LookupTable OrderedCollection').split())
VALUE_CLASSES = frozenset(('String', 'ByteArray', 'CTreeSearchObjectRecord', 'CTreeVariableAttributeRecord'))


def _text(value, label):
    if not isinstance(value, str) or not value:
        raise ValueError('Exact nonempty persistent-owner text required: ' + label)
    return value


def _int(value, label, minimum, maximum):
    if type(value) is not int or not minimum <= value <= maximum:
        raise ValueError('Exact bounded persistent-owner integer required: ' + label)
    return value


def _bytes(value, label, length=None):
    if (not isinstance(value, list) or len(value)>4194304 or (length is not None and len(value)!=length)
            or any(type(byte) is not int or not 0<=byte<=255 for byte in value)):
        raise ValueError('Complete exact original byte array required: ' + label)
    return value


def _namespace(token, component_oid, generation):
    if not isinstance(token, str) or re.fullmatch(r'edit_[0-9a-f]{64}', token) is None:
        raise ValueError('Original persistent-owner preparation token required')
    _text(component_oid, 'component_oid'); _int(generation, 'generation', 1, 2147483647)


def _owner_class(role, name):
    if name not in (('SGClass','SGModule') if role=='component' else ('SGTopGraphicsBlockDB',)):
        raise ValueError('Unsupported original persistent-owner model class: ' + str(name))


def _summaries(records):
    if not isinstance(records,list) or len(records)!=3:
        raise ValueError('All three ordered original persistent records required')
    for role,row in zip(RECORD_ROLES,records):
        if not isinstance(row,dict) or set(row)!={'role','logical_size','allocated_size'} or row['role']!=role:
            raise ValueError('Exact ordered original persistent-record summary required')
        _int(row['logical_size'],'logical_size',0,4194304)
        _int(row['allocated_size'],'allocated_size',row['logical_size'],4194304)
        if row['logical_size'] == 0 and row['allocated_size'] != 0:
            raise ValueError('Absent original record must have zero allocated bytes')


def validate_summary(value, *, token, component_oid, generation):
    """Return the exact compact original two-owner capture, without authority."""
    _namespace(token,component_oid,generation)
    if (not isinstance(value,dict) or set(value)!=SUMMARY_KEYS or value['profile']!=SUMMARY_PROFILE
            or value['phase']!='captured' or value['native_token']!=token or value['component_oid']!=component_oid
            or type(value['generation']) is not int or value['generation']!=generation):
        raise ValueError('Complete original persistent-owner capture summary required')
    for field in ('original_material_held','same_native_dispatch'):
        if value[field] is not True: raise ValueError('Original same-dispatch persistent-owner material required')
    for field in ('store_called','commit_called','write_authorized','inverse_authorized'):
        if value[field] is not False: raise ValueError('Persistent-owner capture cannot authorize writes or inverse')
    _int(value['model_setters_called'],'model_setters_called',0,0)
    owners=value['owners']
    if not isinstance(owners,list) or len(owners)!=2:
        raise ValueError('Both original component and spec-source owners required')
    for role,row in zip(ROLES,owners):
        if not isinstance(row,dict) or set(row)!=OWNER_SUMMARY_KEYS or row['role']!=role:
            raise ValueError('Exact ordered original persistent-owner summary required')
        _owner_class(role,row['model_class'])
        for field in ('model_ref','db_ref','oid'): _text(row[field],field)
        _bytes(row['key'],'owner key',20); _summaries(row['records'])
    if (owners[0]['oid']!=component_oid or owners[0]['db_ref']==owners[1]['db_ref']
            or owners[0]['key']==owners[1]['key'] or owners[0]['oid']==owners[1]['oid']
            or owners[0]['model_ref']==owners[1]['model_ref']):
        raise ValueError('Two distinct original model/DBObject/key identities and exact component OID required')
    if set(row['model_ref'] for row in owners) & set(row['db_ref'] for row in owners):
        raise ValueError('Original model and DBObject identity classes cannot share a ref')
    return deepcopy(value)


def _binding(value, expected_class, classes, *, descriptor=False):
    keys={'class','ref','kind'} if descriptor else {'class','ref'}
    if not isinstance(value,dict) or set(value)!=keys or value['class']!=expected_class:
        raise ValueError('Exact original persistent identity/class required')
    if descriptor and value['kind']!='boundary':
        raise ValueError('Original direct field binding must be a boundary identity')
    ref=_text(value['ref'],'ref')
    if ref in classes and classes[ref]!=expected_class:
        raise ValueError('Retained identity ref has contradictory classes')
    classes[ref]=expected_class


def _descriptor(value,classes):
    if not isinstance(value,dict): raise ValueError('Complete original typed field descriptor required')
    name=value.get('class');kind=value.get('kind')
    if kind=='boundary':
        if name not in BOUNDARY_CLASSES: raise ValueError('Unaudited boundary field class: '+str(name))
        _binding(value,name,classes,descriptor=True)
    elif kind=='value':
        if set(value)!={'class','kind','ref','value'} or name not in VALUE_CLASSES:
            raise ValueError('Unaudited retained field byte-value class')
        ref=_text(value['ref'],'value ref');_bytes(value['value'],'field bytes')
        if ref in classes and classes[ref]!=name: raise ValueError('Retained byte-value identity changed class')
        classes[ref]=name
    elif kind=='atom':
        if set(value)!={'class','kind','value'} or not isinstance(value['value'],str):
            raise ValueError('Complete typed original field atom required')
        atom=value['value']
        if name in ('SmallInteger','LargePositiveInteger','LargeNegativeInteger'):
            if re.fullmatch(r'-?\d+',atom) is None: raise ValueError('Exact original integer field atom required')
        elif (name,atom) not in (('UndefinedObject','nil'),('True','true'),('False','false')):
            raise ValueError('Unaudited original field atom class/value')
    else:
        raise ValueError('Unknown original persistent field descriptor kind')


def _image(value, expected_class, names, classes):
    if not isinstance(value,dict) or set(value)!={'binding','field_names','fields'}:
        raise ValueError('Complete original direct field image required')
    _binding(value['binding'],expected_class,classes,descriptor=True)
    if value['field_names']!=list(names) or not isinstance(value['fields'],list) or len(value['fields'])!=len(names):
        raise ValueError('Exact audited original direct field schema required')
    values={}
    for slot,(name,row) in enumerate(zip(names,value['fields']),1):
        if (not isinstance(row,dict) or set(row)!={'slot','name','value'} or type(row['slot']) is not int
                or row['slot']!=slot or row['name']!=name):
            raise ValueError('Exact original ordered direct field slot required')
        _descriptor(row['value'],classes); values[name]=row['value']
    return values


def _db_image(value, owner, classes):
    fields=_image(value,'DBObject',DB_FIELDS,classes)
    if value['binding']['ref']!=owner['db_binding']['ref']:
        raise ValueError('Original DBObject field image rebound')
    for field in ('istate','version','objectState','referenceState'):
        if fields[field]['class']!='SmallInteger' or fields[field]['kind']!='atom':
            raise ValueError('Audited DBObject integer state field required')
    if (fields['globalId']['class']!='ByteArray' or fields['globalId']['kind']!='value'
            or fields['globalId']['value']!=owner['key']):
        raise ValueError('Original DBObject globalId differs from its owner key')
    if (fields['firstVersionId']['class']!='ByteArray' or fields['firstVersionId']['kind']!='value'
            or len(fields['firstVersionId']['value'])!=18):
        raise ValueError('Original DBObject first-version identity must retain eighteen bytes')
    if (fields['interface']['class']!='DBReferenceInterface32' or fields['interface']['kind']!='boundary'):
        raise ValueError('Audited original DBReferenceInterface32 binding required')
    for field in ('className','name'):
        if fields[field]['class']!='String' or fields[field]['kind']!='value':
            raise ValueError('Original DBObject class/name String bytes required')
    if fields['className']['value']!=list(owner['model_binding']['class'].encode('ascii')):
        raise ValueError('Original DBObject className differs from bound model class')


def _record(row,role,key,classes):
    reference=role!='owner'; expected_keys=RECORD_KEYS|({'length_profile','declared_size'} if reference else set())
    absent_keys=expected_keys|({'error_number','error_class','error_text'} if reference else set())
    if (not isinstance(row,dict) or set(row) not in (expected_keys,absent_keys)
            or row['role']!=role or row['read_status'] not in ('record','absent')):
        raise ValueError('Complete original successful persistent-record schema required')
    expected_class='CTreeVariableAttributeRecord' if reference else 'CTreeSearchObjectRecord'
    leaf='CTreeLocalVariableAttributeInterface' if reference else 'CTreeLocalSearchInterface'
    if (row['record_class']!=expected_class or row['record_class_requested']!=expected_class
            or row['leaf_class']!=leaf or row['file_class']!='CTSpaceCheckingIFil'
            or row['route']!=('referenceInterface' if reference else 'getInterfaceForProxy:')):
        raise ValueError('Original persistent-record class or route changed')
    for field in ('fixed_size','blob_size','logical_size','allocated_size'):
        _int(row[field],field,0,4194304)
    if row['read_status']=='absent':
        absent_keys = RECORD_KEYS | ({'length_profile','declared_size'} if reference else set()) | {
            'error_number','error_class','error_text'}
        if set(row) != absent_keys or not reference or row['length_profile'] != 'absent_record_v1':
            raise ValueError('Exact absent original reference-record schema required')
        if (row['error_number'] != 101 or row['error_class'] != 'CTError'
                or not isinstance(row['error_text'], str) or row['fixed_size'] != 0
                or row['blob_size'] != 0 or row['logical_size'] != 0 or row['allocated_size'] != 0
                or row['declared_size'] != 0 or row['bytes'] != [] or row['allocated_bytes'] != []
                or row['global_id'] != key or row['query_key'] != row['actual_file_key']):
            raise ValueError('Undefined original reference record must remain an exact zero-byte absence')
        for phase in ('ctree_before','ctree_after'):
            _image(row[phase],leaf,CTREE_FIELDS,classes)
        if (row['ctree_before']['binding']!=row['ctree_after']['binding']
                or row['ctree_before']['field_names']!=row['ctree_after']['field_names']):
            raise ValueError('Original absent-record CTree read effect cannot rebind its leaf/schema')
        return
    if row['read_status'] != 'record': raise ValueError('Unknown original persistent-record status')
    if row['fixed_size']!=(60 if reference else 130): raise ValueError('Audited fixed original record size required')
    raw=_bytes(row['allocated_bytes'],'allocated bytes',row['allocated_size'])
    logical=_bytes(row['bytes'],'logical bytes',row['logical_size'])
    if not 0<row['logical_size']<=row['allocated_size'] or raw[:len(logical)]!=logical:
        raise ValueError('Complete original logical/raw record prefix required')
    if _bytes(row['global_id'],'record global ID',20)!=key:
        raise ValueError('Original record owner differs from captured DBObject')
    if reference:
        if row['length_profile']!='reference_payload_v2': raise ValueError('Complete original reference payload profile required')
        decode(row,key)
        if (raw[2:22]!=key or bytes(raw[22:55]).split(b'\0',1)[0]!=row['attribute'].encode('ascii')
                or int.from_bytes(bytes(raw[56:60]),'little')!=row['blob_size']):
            raise ValueError('Original reference raw header contradicts owner/attribute/blob')
    else:
        if (row['attribute'] is not None or row['record_attribute'] is not None
                or row['logical_size']!=130+row['blob_size']
                or _bytes(row['query_key'],'owner query key',20)!=key
                or _bytes(row['actual_file_key'],'owner file key',20)!=key):
            raise ValueError('Original object record key/declared length differs')
    for phase in ('ctree_before','ctree_after'):
        _image(row[phase],leaf,CTREE_FIELDS,classes)
    if (row['ctree_before']['binding']!=row['ctree_after']['binding']
            or row['ctree_before']['field_names']!=row['ctree_after']['field_names']):
        raise ValueError('Original CTree read effect cannot rebind its leaf/schema')


def validate_capture(value):
    """Return a summary independently checked against all six original records."""
    if not isinstance(value,dict) or set(value)!=CAPTURE_KEYS or value['profile']!=CAPTURE_PROFILE:
        raise ValueError('Complete fixed original persistent-owner records required')
    summary=validate_summary(value['summary'],token=value['native_token'],component_oid=value['component_oid'],generation=value['generation'])
    if not isinstance(value['owners'],list) or len(value['owners'])!=2:
        raise ValueError('Both complete original persistent owners required')
    classes={}
    for role,owner,proof in zip(ROLES,value['owners'],summary['owners']):
        if not isinstance(owner,dict) or set(owner)!=OWNER_KEYS or owner['role']!=role:
            raise ValueError('Exact ordered original persistent owner required')
        _binding(owner['model_binding'],proof['model_class'],classes)
        _binding(owner['db_binding'],'DBObject',classes)
        if (owner['model_binding']['ref']!=proof['model_ref'] or owner['db_binding']['ref']!=proof['db_ref']
                or owner['oid']!=proof['oid'] or _bytes(owner['key'],'owner key',20)!=proof['key']):
            raise ValueError('Full original persistent owner differs from compact identity')
        for phase in ('db_before','db_after'): _db_image(owner[phase],owner,classes)
        if not isinstance(owner['records'],list) or len(owner['records'])!=3:
            raise ValueError('All original DBObject and reference records required')
        for record_role,row,record_summary in zip(RECORD_ROLES,owner['records'],proof['records']):
            _record(row,record_role,owner['key'],classes)
            if {field:row[field] for field in ('role','logical_size','allocated_size')}!=record_summary:
                raise ValueError('Original persistent record bytes differ from compact lengths')
    return summary


def validate_audit(audit):
    """Bind the new original capture to the existing resource owner and v6 proof."""
    prepared=audit['prepared_receipt']
    if prepared['profile']!='native_commit_prepare_v6': raise ValueError('v6 original persistent-owner audit required')
    capture=audit.get('persistent_owner_capture')
    summary=validate_capture(capture)
    if (summary!=prepared['persistent_owners'] or capture['native_token']!=audit['native_token']
            or capture['component_oid']!=audit['component_oid'] or type(audit['generation']) is not int
            or capture['generation']!=audit['generation']
            or audit.get('current_persistent_owners_checked') is not False
            or audit.get('persistent_owners')!=summary):
        raise ValueError('Original persistent-owner audit differs or claims an unperformed current check')
    owner=capture['owners'][0];base=audit['original_capture']
    if (owner['oid']!=audit['component_oid'] or owner['key']!=base['owner_key']
            or owner['db_binding']!={k:base['before_read']['owner']['binding'][k] for k in ('class','ref')}):
        raise ValueError('Persistent component owner differs from original resource capture')
    roots={row['binding']['ref']:row for row in audit['registered_model_original_image']}
    for owner in capture['owners']:
        model=roots.get(owner['model_binding']['ref'])
        if (model is None or model['binding']!=owner['model_binding'] or model['kind']!='fields'
                or model['field_names'].count('dbObject')!=1
                or model['value'][model['field_names'].index('dbObject')]!=owner['db_binding']):
            raise ValueError('Persistent model owner is outside original registered SG image')
    return summary

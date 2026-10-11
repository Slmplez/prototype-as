"""Bounded rectangular values in native X-major order: values[x][y]."""
from bd_edit_journal import JournalError
from bd_array_values import encode_values,decode_values


def shape(values):
    if not isinstance(values,list) or not 1<=len(values)<=16 or any(not isinstance(row,list) for row in values):
        raise JournalError('INVALID_INPUT','Matrix requires 1..16 X rows')
    width=len(values[0])
    if not 1<=width<=16 or any(len(row)!=width for row in values):
        raise JournalError('INVALID_INPUT','Matrix requires rectangular 1..16 Y columns')
    return [len(values),width]


def encode_matrix(model_type,values):
    shape(values)
    return ';'.join(encode_values(model_type,row) for row in values)


def decode_matrix(encoded):
    if not isinstance(encoded,str) or not 1<=len(encoded)<=8192:
        raise JournalError('INVALID_INPUT','Bounded matrix encoding required')
    result=[decode_values(row) for row in encoded.split(';')]
    shape(result)
    if len({type(v) is bool for row in result for v in row})!=1:
        raise JournalError('INVALID_INPUT','Matrix requires one primitive type')
    return result


def validate_shape(op):
    if not isinstance(op.get('expect'),dict) or set(op['expect'])!={'values'}:
        raise JournalError('INVALID_INPUT','Exact matrix values expectation required')
    for values in (op['expect']['values'],op.get('values')):
        shape(values)
        kind='log' if type(values[0][0]) is bool else 'cont'
        encode_matrix(kind,values)

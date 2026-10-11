"""Bounded array edit encoding; flat typed transport, never executable source."""
from bd_edit_journal import JournalError
from bd_structure_journal import encode_scalar_value,decode_scalar_value


def encode_values(model_type,values):
    if model_type not in ('cont','sdisc','udisc','log'):
        raise JournalError('INVALID_INPUT','Primitive numeric or boolean array required')
    if not isinstance(values,list) or not 1<=len(values)<=256:
        raise JournalError('INVALID_INPUT','Array requires 1..256 values')
    return ','.join(encode_scalar_value(model_type,v) for v in values)


def decode_values(encoded):
    if not isinstance(encoded,str) or not 1<=len(encoded)<=8192:
        raise JournalError('INVALID_INPUT','Bounded encoded array required')
    parts=encoded.split(',')
    if not 1<=len(parts)<=256 or any(p[:1] not in ('N','B') for p in parts):
        raise JournalError('INVALID_INPUT','Invalid encoded array')
    values=[decode_scalar_value(p) for p in parts]
    if len({type(v) is bool for v in values})!=1:
        raise JournalError('INVALID_INPUT','Array values must share a primitive type')
    return values


def validate_shape(op):
    if not isinstance(op.get('expect'),dict) or set(op['expect'])!={'values'}:
        raise JournalError('INVALID_INPUT','Exact array values expectation required')
    for values in (op['expect']['values'],op.get('values')):
        kind='log' if isinstance(values,list) and values and type(values[0]) is bool else 'cont'
        encode_values(kind,values)

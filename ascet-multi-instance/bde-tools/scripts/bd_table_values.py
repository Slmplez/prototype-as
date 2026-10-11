"""Fixed-shape table value transport; axes and interpolation stay unchanged."""
from bd_array_values import encode_values, decode_values
from bd_matrix_values import encode_matrix, decode_matrix, shape
from bd_edit_journal import JournalError


def dimensions(values):
    if isinstance(values, list) and values and isinstance(values[0], list):
        return shape(values)
    encode_values('log' if isinstance(values,list) and values and type(values[0]) is bool else 'cont', values)
    return [len(values)]


def encode_table(model_type, values):
    if model_type not in ('cont','sdisc','udisc'):
        raise JournalError('INVALID_INPUT', 'Numeric table values required')
    return ('M'+encode_matrix(model_type, values)) if len(dimensions(values)) == 2 else ('V'+encode_values(model_type, values))


def decode_table(encoded):
    if not isinstance(encoded, str) or not encoded:
        raise JournalError('INVALID_INPUT', 'Typed table values required')
    if encoded[0] == 'V':
        values=decode_values(encoded[1:])
    elif encoded[0] == 'M':
        values=decode_matrix(encoded[1:])
    else:raise JournalError('INVALID_INPUT', 'Invalid table value encoding')
    encode_table('cont',values)
    return values


def validate_shape(op):
    if not isinstance(op.get('expect'), dict) or set(op['expect']) != {'values'}:
        raise JournalError('INVALID_INPUT', 'Exact table value expectation required')
    for value in (op['expect']['values'], op.get('values')):
        flat = value[0] if isinstance(value,list) and value and isinstance(value[0],list) else value
        encode_table('log' if isinstance(flat,list) and flat and type(flat[0]) is bool else 'cont', value)
    if dimensions(op['expect']['values']) != dimensions(op['values']):
        raise JournalError('INVALID_INPUT', 'Table values must preserve the observed dimensions')

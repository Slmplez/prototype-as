"""Numeric distribution axes follow the native strict-increase contract."""
from bd_array_values import encode_values, decode_values
from bd_edit_journal import JournalError


def encode_distribution(model_type, values, *, check_order=True):
    if model_type not in ('cont', 'sdisc', 'udisc'):
        raise JournalError('INVALID_INPUT', 'Distribution axes require a numeric model type')
    encoded = encode_values(model_type, values)
    if check_order and any(a >= b for a, b in zip(values, values[1:])):
        raise JournalError('INVALID_INPUT', 'Distribution values must be strictly increasing')
    return encoded


def decode_distribution(encoded):
    values = decode_values(encoded)
    encode_distribution('cont', values)
    return values


def validate_shape(op):
    if not isinstance(op.get('expect'), dict) or set(op['expect']) != {'values'}:
        raise JournalError('INVALID_INPUT', 'Exact distribution values expectation required')
    # Preserve the observed old value even when it fails new-write constraints.
    encode_distribution('cont', op['expect']['values'], check_order=False)
    encode_distribution('cont', op.get('values'))

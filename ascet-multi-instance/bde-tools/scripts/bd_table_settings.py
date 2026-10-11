"""Exact fixed-size table axes and interpolation contracts."""
from bd_distribution_values import encode_distribution, decode_distribution
from bd_edit_journal import JournalError


def validate_axis(op):
    if op.get('axis') not in ('x','y'):
        raise JournalError('INVALID_INPUT','Table axis must be x or y')
    if not isinstance(op.get('expect'),dict) or set(op['expect'])!={'values'}:
        raise JournalError('INVALID_INPUT','Exact previous table axis required')
    old=op['expect']['values'];new=op.get('values')
    encode_distribution('cont',old,check_order=False)
    encode_distribution('cont',new)
    if len(old)!=len(new):
        raise JournalError('INVALID_INPUT','Table axis dimensions must remain unchanged')


def validate_interpolation(op):
    expect=op.get('expect')
    if (not isinstance(expect,dict) or set(expect)!={'declared_interpolation','interpolation_linear','interpolation_rounded'}
        or expect['declared_interpolation'] not in (None,'Linear','Rounded')
        or any(type(expect[k]) is not bool for k in ('interpolation_linear','interpolation_rounded'))
        or expect['interpolation_linear']==expect['interpolation_rounded']):
        raise JournalError('INVALID_INPUT','Exact linear/rounded table interpolation required')
    if op.get('mode') not in ('linear','rounded'):
        raise JournalError('INVALID_INPUT','Table interpolation mode must be linear or rounded')


def axis_values(encoded):
    return decode_distribution(encoded)

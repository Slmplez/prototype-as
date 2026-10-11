"""Existing dependent scalar formulas; native grammar remains the authority."""
import re
from bd_contract_values import bounded_text
from bd_edit_journal import JournalError


def formula_text(value):
    return bounded_text(value, 1, 4096) and re.fullmatch(r'[\t\r\n\x20-\x7e]+', value) is not None


def validate(op):
    if op['op'] == 'set_formula':
        if (not formula_text(op.get('text')) or not isinstance(op.get('expect'), dict)
            or set(op['expect']) != {'text', 'compiled'}
            or not all(formula_text(op['expect'][key]) for key in ('text', 'compiled'))):
            raise JournalError('INVALID_INPUT', 'Exact old text/compiled and bounded ASCII formula required')
    else:
        if (not isinstance(op.get('formal_oid'), str) or not re.fullmatch(r'[0-9a-f]{40}', op['formal_oid'])
            or not isinstance(op.get('actual'), str) or not re.fullmatch(r'Main/m_[0-9a-f]{40}', op['actual'])
            or not isinstance(op.get('expect'), dict) or set(op['expect']) != {'actual'}
            or not isinstance(op['expect']['actual'], str)
            or not re.fullmatch(r'Main/m_[0-9a-f]{40}', op['expect']['actual'])):
            raise JournalError('INVALID_INPUT', 'Exact formal OID and existing model refs required')

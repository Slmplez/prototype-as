"""Validate complete native scope inventory before interpreting cache capacity."""
import re

REGISTRIES = frozenset((
    'DogeBDEStructureEditsV3', 'DogeBDELayoutRestoresV1', 'DogeBDEDeletionRestoresV1',
    'DogeBDEAttachedOrderRestoresV1', 'DogeBDEPrivateSessionsV1', 'DogeBDEClassMaterializeV1',
    'DogeBDEClassStudyV1', 'DogeBDEOverlaysV1', 'DogeBDEGroupOverlaysV1',
    'DogeBDEOrderEvalV1', 'DogeBDESourceEvalV1',
    'DogeBDEClassSourceCandidatesV1', 'DogeBDEClassModelPublicationV1',
    'DogeBDEMainWorkflowWitnessesV1',
    'DogeBDECommitResourceWitnessesV1',
))


def validate(inventory):
    if (not isinstance(inventory, dict) or inventory.get('profile') != 'structural_scope_inventory_v1'
            or type(inventory.get('limit')) is not int or inventory['limit'] != 64
            or inventory.get('registry_unchanged') is not True
            or type(inventory.get('model_setters_called')) is not int or inventory['model_setters_called'] != 0
            or inventory.get('store_called') is not False):
        raise ValueError('Complete read-only structural scope inventory required')
    for key in ('clock', 'high_water', 'evictions'):
        if type(inventory.get(key)) is not int or inventory[key] < 0:
            raise ValueError('Exact nonnegative lifecycle counters required')
    entries = inventory.get('entries')
    if not isinstance(entries, list) or len(entries) > 64:
        raise ValueError('Bounded complete scope roster required')
    names, unused = set(), []
    for row in entries:
        if not isinstance(row, dict) or set(row) != {'scope', 'generation', 'counter', 'identity_count', 'last_access', 'pins'}:
            raise ValueError('Complete native scope metadata required')
        scope = row['scope']
        if (not isinstance(scope, str) or len(scope) > 1024 or not re.fullmatch(r'[A-Za-z0-9]+/[^/\r\n]+', scope)
                or scope in names):
            raise ValueError('Unique exact root scopes required')
        names.add(scope)
        for key in ('generation', 'counter', 'identity_count', 'last_access'):
            if type(row[key]) is not int or row[key] < 0:
                raise ValueError('Exact native scope counters required')
        if (row['generation'] > inventory['high_water'] or row['last_access'] > inventory['clock']
                or row['identity_count'] > 4096 or row['counter'] < row['identity_count']):
            raise ValueError('Scope epoch or identity bound differs')
        pins = row['pins']
        if (not isinstance(pins, list) or any(not isinstance(reason, str) or ':' not in reason
                or reason.split(':', 1)[0] not in REGISTRIES or not reason.split(':', 1)[1] for reason in pins)
                or pins != sorted(set(pins))):
            raise ValueError('Complete unique audited pin causes required')
        if not pins:
            unused.append((row['last_access'], scope))
    expected = min(unused)[1] if unused else None
    if inventory.get('eviction_candidate') != expected:
        raise ValueError('Eviction candidate must be the oldest unpinned scope')
    return {'passed': True, 'scopes': len(entries), 'pinned': len(entries) - len(unused),
            'evictable': len(unused), 'eviction_candidate': expected}

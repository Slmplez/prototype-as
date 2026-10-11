"""Original-bound logical cache membership proposals; no native dispatch or authority.

Complete CURRENT entries are retained. A proposal restores touched key/entry
identities only; direct entry/model/dirty flags and derived cache metadata need
separate coordinated plans. It cannot supply Store closure on its own.
"""
from copy import deepcopy
from bd_edit_journal import fingerprint


def same(left, right):
    return fingerprint(left) == fingerprint(right)


def validate(resource):
    if not isinstance(resource, dict):
        raise ValueError('Complete native cache resource image required')
    storage = resource['storage']; rows = resource['cache_entries']
    if (storage.get('class') != 'AbtHighCapacityLookupTable' or not isinstance(storage.get('ref'), str) or not storage['ref']
            or not isinstance(rows, list) or type(resource['cache_size']) is not int
            or len(rows) != resource['cache_size'] or not 0 <= len(rows) <= 4096):
        raise ValueError('Typed full original cache storage and census required')
    mapped = {}; refs = set(); entries = set()
    for row in rows:
        key = row['key']; entry = row['entry']; fields = row['image']
        raw = key.get('value')
        if (key.get('class') != 'ByteArray' or key.get('kind') != 'value'
                or not isinstance(key.get('ref'), str) or not key['ref']
                or not isinstance(raw, list) or len(raw) not in (20, 32)
                or any(type(b) is not int or not 0 <= b <= 255 for b in raw)
                or entry.get('class') != 'DBCacheObject' or not isinstance(entry.get('ref'), str) or not entry['ref']
                or not same(fields['binding'], entry)):
            raise ValueError('Exact audited 20/32-byte key/native cache entry required')
        names = fields['field_names']; values = fields['fields']
        if (not isinstance(names, list) or not names or any(not isinstance(n, str) or not n for n in names)
                or len(set(names)) != len(names) or 'object' not in names
                or not isinstance(values, list) or len(values) != len(names)
                or any(type(f.get('slot')) is not int or f.get('slot') != i or f.get('name') != name or 'value' not in f
                       for i,(name,f) in enumerate(zip(names, values),1))):
            raise ValueError('Complete cache entry schema required')
        obj = next((f['value'] for f in values if f['name'] == 'object'), None)
        if not same(obj, row['registered_object']):
            raise ValueError('Cache object descriptor differs from exact entry field')
        physical = bytes(raw).hex()
        if physical in mapped or key['ref'] in refs or entry['ref'] in entries:
            raise ValueError('Duplicate native key/entry or equal distinct keys are ambiguous')
        mapped[physical] = row; refs.add(key['ref']); entries.add(entry['ref'])
    return mapped


def plan(before, after, current, *, direction='undo'):
    if direction not in ('undo', 'redo'):
        raise ValueError('Fixed cache patch direction required')
    original, applied, now = (validate(r) for r in (before, after, current))
    if any(not same(r['storage'], before['storage']) for r in (after, current)):
        raise ValueError('Retained cache storage identity changed')
    for key in set(original) & set(applied):
        if not same(original[key]['key'], applied[key]['key']):
            raise ValueError('Original cache key identity was rebound across edit')
    from_map, desired_map = (applied, original) if direction == 'undo' else (original, applied)
    candidate = deepcopy(now); cells = []; conflicts = []; already = []; separate = []
    def binding(row):
        return None if row is None else (row['key'], row['entry'])
    for key in sorted(set(original) | set(applied)):
        expected, wanted, observed = from_map.get(key), desired_map.get(key), now.get(key)
        # Whole-row equality is deliberate when removing/replacing a touched
        # entry: later changes to its fields/registered object are dependencies.
        if same(binding(expected), binding(wanted)):
            if not same(expected, wanted):
                separate.append(dict(key=key, before=deepcopy(original[key]), after=deepcopy(applied[key])))
            continue
        if same(observed, wanted):
            already.append(key); continue
        if not same(observed, expected):
            conflicts.append(dict(key=key, reason='touched_cache_entry_or_key_dependency_changed',
                                  expected=deepcopy(expected), actual=deepcopy(observed)))
            continue
        cells.append(dict(key=key, expected=deepcopy(expected), desired=deepcopy(wanted)))
        if wanted is None: candidate.pop(key, None)
        else: candidate[key] = deepcopy(wanted)
    # Suppress every candidate when any coordinated membership unit conflicts.
    return dict(profile='cache_membership_inverse_plan_v1', direction=direction,
                compatible=not conflicts, conflicts=conflicts, cells=[] if conflicts else cells,
                already_desired=already, candidate=None if conflicts else [candidate[k] for k in sorted(candidate)],
                entry_fields_require_separate_plan=separate,
                original_storage=deepcopy(before['storage']), current_sha256=fingerprint(current),
                native_calls=0, write_authorized=False, inverse_authorized=False,
                modified_census_restored=False, full_commit_resource_closure=False)

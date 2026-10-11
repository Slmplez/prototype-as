"""Independently compare setter-free CURRENT bindings with full prepared patches."""


def _require(condition, message):
    if not condition:
        raise ValueError(message)


def _point(value):
    return type(value) is list and len(value) == 2 and all(type(item) is int for item in value)


def inspect_current_identity(proof, token, current, prepared):
    definition = current['observation']['signature']['oid']
    _require(type(proof) is dict and proof.get('profile') == 'class_current_identity_probe_v1'
             and proof.get('token') == token and proof.get('definition_oid') == definition
             and proof.get('state') == 'ready' and type(proof.get('model_setters_called')) is int
             and proof['model_setters_called'] == 0 and proof.get('write_authorized') is False
             and proof.get('production_executor_available') is False,
             'Exact setter-free sealed current identity proof required')
    owners = {owner['oid']: owner for owner in current['owners']}
    rows = proof.get('owners')
    _require(type(rows) is list and len(rows) == len(owners) == len(prepared),
             'Current identity proof omits complete owner coverage')
    by_oid = {row['oid']: row for row in prepared}
    _require(len(by_oid) == len(prepared) and set(by_oid) == set(owners), 'Prepared owner identity differs')
    seen, checked = set(), []
    for row in rows:
        _require(type(row) is dict and row.get('oid') in owners and row['oid'] not in seen,
                 'Current identity owner is duplicate or unknown')
        oid = row['oid']
        seen.add(oid)
        owner, patch = owners[oid], by_oid[oid]['runtime_patch']
        _require(row.get('profile') == 'class_current_identity_plan_v1' and row.get('token') == token
                 and row.get('component', '').strip('\\') == owner['component'].strip('\\')
                 and type(row.get('generation')) is int
                 and row['generation'] == owner['scopes']['Main']['generation'] == patch['generation']
                 and type(row.get('model_setters_called')) is int and row['model_setters_called'] == 0
                 and row.get('write_authorized') is False and row.get('production_executor_available') is False,
                 'Current identity plan has a different owner, generation or authority')
        targets = {item['native_key']: item for item in patch['targets']}
        layout = patch.get('native_layout_audit', {})
        pins = {item['native_key']: item for item in layout.get('pins', [])}
        _require(len(targets) == len(patch['targets']) and len(pins) == len(layout.get('pins', []))
                 and not set(targets) & set(pins), 'Prepared patch has ambiguous current targets')
        observations = row.get('observations')
        _require(type(observations) is list and len(observations) == len(targets) + len(pins),
                 'Current identity observations omit exact targets or existing pins')
        observed = {}
        for item in observations:
            _require(type(item) is dict and type(item.get('native_key')) is str
                     and item['native_key'] not in observed and item.get('exact_live_identity_verified') is True
                     and type(item.get('native_class')) is str and bool(item['native_class']),
                     'Current identity observation lacks unique exact native identity')
            observed[item['native_key']] = item
        _require(set(observed) == set(targets) | set(pins), 'Current identity target set differs from full patch')
        for key, target in targets.items():
            item = observed[key]
            _require(item.get('kind') == target['kind'] and type(item.get('parent_binding')) is str
                     and bool(item['parent_binding']) and type(item.get('parent_class')) is str
                     and bool(item['parent_class']) and type(item.get('parent_size')) is int
                     and item['parent_size'] > 0, 'Exact current removal parent or kind is missing')
        for key, pin in pins.items():
            item = observed[key]
            _require(item.get('kind') == 'existing_pin' and item.get('connector_class') == pin['connector_class']
                     and _point(item.get('current')) and item['current'] == pin['current']
                     and _point(item.get('merged')) and item['merged'] == pin['merged']
                     and item.get('restore_axes') == pin['restore_axes'],
                     'Existing live pin coordinate binding differs from complete private plan')
        counts = {'exact_current_targets': len(targets), 'existing_live_pins': len(pins),
                  'planned_coordinate_setters': sum(bool(pin['restore_axes']) for pin in pins.values())}
        _require(all(type(row.get(key)) is int and row[key] == value for key, value in counts.items()),
                 'Current identity counts differ from the full prepared native patch')
        checked.append({'oid': oid, 'generation': row['generation'], **counts})
    return {'profile': 'class_current_identity_independent_audit_v1', 'owners_verified': len(checked),
            'owners': checked, 'exact_current_targets': sum(row['exact_current_targets'] for row in checked),
            'existing_live_pins': sum(row['existing_live_pins'] for row in checked),
            'planned_coordinate_setters': sum(row['planned_coordinate_setters'] for row in checked),
            'model_setters_called': 0, 'write_authorized': False, 'production_executor_available': False,
            'not_verified': ['post-store native identity preservation', 'production Class local inverse', 'whole delivery']}

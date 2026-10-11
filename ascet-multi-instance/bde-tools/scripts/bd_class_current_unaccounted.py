"""Normalize a uniquely classified active action without authorizing its replay."""
from copy import deepcopy

from bd_class_current_inverse import inspect_store_inverse
from bd_source_inverse_oracle import equal


def require(condition, message):
    if not condition:
        raise ValueError(message)


def classify_unaccounted(state, active, classification, actual, sources, entries, advance, counters):
    live = [oid for oid, row in actual.items() if row.get('active_command') is not None]
    if not live:
        return state, classification, actual, sources, None
    require(active is not None and active['manager'] == 'current' and live == [active['oid']]
            and active['command'] != 'reconcile_action',
            'Active CURRENT action has no exact outstanding physical dispatch')
    oid, command = active['oid'], active['command']
    row = actual[oid]
    kind = 'store' if command in ('publish_store', 'restore_store') else 'primitive'
    require(row.get('active_command') == command and row.get('active_kind') == kind
            and type(row.get('active_accounted')) is bool and row.get('active_pending_after_return') is True
            and row.get('action_completed') is False and row.get('last_command') == command
            and all(type(row.get(field)) is bool for field in ('unknown_before_matches', 'unknown_after_matches'))
            and row['unknown_before_matches'] != row['unknown_after_matches'],
            'Active CURRENT outcome is ambiguous, partial or lacks its exact physical identity')
    applied, accounted = row['unknown_after_matches'], row['active_accounted']
    changes = row.get('unknown_native_changes')
    require(type(changes) is list and (applied or changes == []) and (applied or not accounted),
            'Untouched CURRENT outcome has changes or an already accounted mutation')
    store_cost = (int(not entries[oid]['runtime_patch']['no_graphical_target_required'])
                  if command == 'publish_store' else state['owners'][oid]['publish_stores']) if kind == 'store' else 0
    require(type(row.get('active_requires_store')) is bool and row['active_requires_store'] is bool(store_cost),
            'Active CURRENT store cost differs from its sealed physical dispatch')
    receipt = deepcopy(row)
    if applied and kind == 'store':
        plan = row.get('unknown_store_undo_plan')
        require(type(plan) is list, 'Unaccounted store needs a complete projected collateral inverse')
        receipt[command + '_undo_plan'] = plan
        receipt[command + '_undo_steps'] = len(plan)
        inspect_store_inverse(receipt, command, changes)
    projected = advance(state, oid, command, changes, receipt) if applied else deepcopy(state)
    wanted = projected['owners'][oid]
    prior = wanted if accounted else state['owners'][oid]
    cost = projected['model_steps'] - state['model_steps']
    require(type(classification['model_steps']) is int
            and classification['model_steps'] == (projected if accounted else state)['model_steps']
            and all(type(row.get(field)) is int and row[field] == prior[field] for field in counters)
            and equal(row.get('actual_native_changes'), prior['changes'])
            and all(row.get(field) == prior[field] for field in ('publish_store_undo_plan', 'restore_store_undo_plan'))
            and type(row.get('physical_prefix_matches')) is bool
            and row['physical_prefix_matches'] is (not applied or accounted or changes == []),
            'Active CURRENT accounting or complete physical prefix differs from the sealed original plan')
    started = 'publish_started' if command == 'publish_store' else 'restore_started'
    require(row.get('entry_state') == (prior['entry_state'] if kind != 'store' or accounted else started)
            and sources[oid]['owner_state'] == row['entry_state']
            and all(type(sources[oid].get(field)) is int and sources[oid][field] == prior[field]
                    for field in ('publish_stores', 'restore_stores')),
            'Unaccounted store metadata does not bind the exact before/after owner state')
    role = 'candidate' if wanted['entry_state'] == 'published' else 'current'
    require(sources[oid][role + '_matches'] is True, 'Active CURRENT complete persisted source conflicts')
    proof = {'oid': oid, 'original_command': command, 'kind': kind,
             'outcome': 'after' if applied else 'before', 'already_accounted': accounted,
             'accounting_model_steps': cost if not accounted else 0,
             'expected_native_changes': deepcopy(changes)}
    normalized = deepcopy(actual)
    for owner in normalized.values():
        owner['model_steps'] = projected['model_steps']
    normalized[oid].update({field: deepcopy(wanted[field]) for field in counters})
    normalized[oid].update(entry_state=wanted['entry_state'], actual_native_changes=deepcopy(wanted['changes']),
        publish_store_undo_plan=deepcopy(wanted['publish_store_undo_plan']),
        restore_store_undo_plan=deepcopy(wanted['restore_store_undo_plan']),
        active_command=None, active_kind=None, active_accounted=None, active_pending_after_return=False,
        physical_prefix_matches=True)
    projected_class = deepcopy(classification)
    projected_class['model_steps'] = projected['model_steps']
    normalized_sources = deepcopy(sources)
    normalized_sources[oid].update(owner_state=wanted['entry_state'], publish_stores=wanted['publish_stores'],
                                    restore_stores=wanted['restore_stores'])
    projected_class['owners'] = [normalized_sources[member['oid']] for member in classification['owners']]
    result = deepcopy(state)
    result['reconciliation_pending'] = proof
    return result, projected_class, normalized, normalized_sources, proof

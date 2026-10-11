"""Bounded three-way member ordering. Value plans never authorize native writes."""

MAX_MEMBERS = 100000


def merge_order(before, after, current):
    """Undo member additions/removals, preserving independent current members.

    A restored run needs an unambiguous gap between surviving original members.
    Independent insertions in that same gap make its relative position unknown.
    Reordering by the original edit requires a separate audited operation.
    """
    for order in (before, after, current):
        if (type(order) is not list or len(order) > MAX_MEMBERS or
                any(type(ref) is not str or not ref or len(ref) > 4096 for ref in order) or
                len(set(order)) != len(order)):
            raise ValueError('Bounded unique exact collection references required')
    original, applied, now = set(before), set(after), set(current)
    shared = original & applied
    conflicts = []
    if [ref for ref in before if ref in shared] != [ref for ref in after if ref in shared]:
        conflicts.append({'code': 'EDIT_REORDER_UNSUPPORTED'})
    restore, remove = original - applied, applied - original
    collisions = restore & now
    missing = remove - now
    if collisions:
        conflicts.append({'code': 'RESTORE_MEMBER_ALREADY_PRESENT', 'refs': sorted(collisions)})
    if missing:
        conflicts.append({'code': 'REMOVE_MEMBER_MISSING', 'refs': sorted(missing)})
    anchors = shared & now
    if [ref for ref in before if ref in anchors] != [ref for ref in current if ref in anchors]:
        conflicts.append({'code': 'CURRENT_ORDER_CONFLICT'})
    base = [ref for ref in current if ref not in remove]
    # Gap numbers are defined by surviving exact original anchors, not indices
    # into the old collection; independently removed originals are omitted.
    restored_gaps, independent_gaps = {}, set()
    gap = 0
    for ref in before:
        if ref in anchors:
            gap += 1
        elif ref in restore:
            restored_gaps.setdefault(gap, []).append(ref)
    gap = 0
    for ref in base:
        if ref in anchors:
            gap += 1
        elif ref not in original and ref not in applied:
            independent_gaps.add(gap)
    conflicts.extend({'code': 'RESTORE_GAP_AMBIGUOUS', 'gap': gap,
                      'refs': restored_gaps[gap]} for gap in sorted(restored_gaps.keys() & independent_gaps))
    result = {'profile': 'collection_order_inverse_v1', 'compatible': not conflicts,
              'conflicts': conflicts, 'merged': [], 'splices': [],
              'preserved': [ref for ref in base if ref not in original and ref not in applied],
              'write_authorized': False}
    if conflicts:
        return result
    merged = list(restored_gaps.get(0, []))
    gap = 0
    for ref in base:
        merged.append(ref)
        if ref in anchors:
            gap += 1
            merged.extend(restored_gaps.get(gap, []))
    result['merged'] = merged
    # Remove from the end so prior slots remain valid. Inserts use final slots.
    result['splices'] = [{'op': 'remove', 'index': index, 'ref': current[index]}
                         for index in range(len(current) - 1, -1, -1) if current[index] in remove]
    result['splices'].extend({'op': 'insert', 'index': index, 'ref': ref}
                              for index, ref in enumerate(merged) if ref in restore)
    return result


def apply_value_splices(current, plan):
    """Replay on a copy for validation; this is never a native model executor."""
    if plan.get('compatible') is not True or plan.get('write_authorized') is not False:
        raise ValueError('Compatible nonauthorizing collection plan required')
    result = list(current)
    for step in plan['splices']:
        index, ref = step['index'], step['ref']
        if step['op'] == 'remove':
            if not 0 <= index < len(result) or result[index] != ref:
                raise ValueError('Collection removal precondition changed')
            result.pop(index)
        elif step['op'] == 'insert':
            if not 0 <= index <= len(result) or ref in result:
                raise ValueError('Collection insertion precondition changed')
            result.insert(index, ref)
        else:
            raise ValueError('Unknown collection splice')
    if result != plan['merged']:
        raise ValueError('Collection splice result differs from plan')
    return result

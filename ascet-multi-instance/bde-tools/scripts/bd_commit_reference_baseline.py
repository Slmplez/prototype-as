"""Strict v5 prepare-time reference-file observation receipts.

This validates the compact receipt, not the retained full scan or its native
provenance. Matching observed records/keys does not prove EOF, atomicity, a
current rescan, or permission to write or revert persistent data.
"""
from copy import deepcopy
import re


PROFILE = 'native_reference_file_baseline_v1'
OBSERVATION_PROFILE = 'native_reference_file_observation_v3'
COUNT_FIELDS = ('record_count', 'first_key_count', 'second_key_count', 'count_before', 'count_after')
TRUE_FIELDS = ('same_native_dispatch', 'original_material_held', 'before_model_mutation',
               'census_matches', 'identity_before_checked', 'identity_after_checked')
FALSE_FIELDS = ('complete_before_authorized', 'terminal_semantics_verified', 'cross_process_atomic',
                'write_authorized', 'inverse_authorized', 'store_called', 'commit_called')
KEYS = frozenset(('profile', 'native_token', 'component_oid', 'generation', 'profile_index',
                  'observation_profile', 'phase', 'events', 'gv_image_count',
                  'model_setters_called', 'unknown_terminal_count') + COUNT_FIELDS + TRUE_FIELDS + FALSE_FIELDS)


def validate_summary(value, *, token, component_oid, generation):
    """Return a detached exact original baseline summary with no write authority."""
    if (not isinstance(token, str) or re.fullmatch(r'edit_[0-9a-f]{64}', token) is None
            or not isinstance(component_oid, str) or not component_oid
            or type(generation) is not int or not 1 <= generation <= 2147483647):
        raise ValueError('Exact original baseline token, owner and positive generation required')
    if (not isinstance(value, dict) or set(value) != KEYS
            or value['profile'] != PROFILE or value['observation_profile'] != OBSERVATION_PROFILE
            or value['phase'] != 'observational_census_match'
            or value['native_token'] != token or value['component_oid'] != component_oid
            or type(value['generation']) is not int or value['generation'] != generation):
        raise ValueError('Complete fixed same-preparation reference baseline summary required')
    if type(value['profile_index']) is not int or not 1 <= value['profile_index'] <= 16:
        raise ValueError('Exact bounded original reference profile index required')
    for field in COUNT_FIELDS:
        if type(value[field]) is not int or not 0 <= value[field] <= 100000:
            raise ValueError('Complete bounded reference baseline census required: ' + field)
    count = value['record_count']
    if any(value[field] != count for field in COUNT_FIELDS):
        raise ValueError('Original record, both key and before/after counts disagree')
    if type(value['events']) is not int or value['events'] != 6 * count + 6:
        raise ValueError('Complete fixed reference baseline event census required')
    if type(value['gv_image_count']) is not int or not 1 <= value['gv_image_count'] <= value['events']:
        raise ValueError('Complete bounded original GV image catalog census required')
    for field in TRUE_FIELDS:
        if value[field] is not True:
            raise ValueError('Original same-dispatch pre-mutation observed baseline required: ' + field)
    for field in FALSE_FIELDS:
        if value[field] is not False:
            raise ValueError('Observational baseline cannot grant EOF/atomicity/write authority: ' + field)
    if type(value['model_setters_called']) is not int or value['model_setters_called'] != 0:
        raise ValueError('Reference baseline preparation must execute zero model setters')
    if type(value['unknown_terminal_count']) is not int or value['unknown_terminal_count'] != 3:
        raise ValueError('All three observed terminal semantics must remain unknown')
    return deepcopy(value)

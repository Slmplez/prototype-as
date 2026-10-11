"""Extract fixed structural phases without changing operation bodies or native guards.

This is a build-time generator. Requests cannot provide source or stage names.
The canonical editor and its preserved historical versions remain auditable.
"""
import argparse
import difflib
import hashlib
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent
STAGE_NAMES = ('common', 'prepare', 'guard', 'apply', 'terminal')


def lexical_identifiers(source):
    """Ignore Smalltalk strings/comments/symbols when selecting shared locals."""
    tokens = re.finditer(r"'(?:[^']|'')*'|\"[^\"]*\"|\$[^\r\n]|#[A-Za-z_]\w*|[A-Za-z_]\w*", source)
    return {m.group() for m in tokens if re.fullmatch(r'[A-Za-z_]\w*', m.group())}


def exactly_once(text, marker):
    assert text.count(marker) == 1, 'Ambiguous canonical phase boundary: ' + marker
    return text.index(marker)


def build():
    original = (ROOT / 'bde_structure_edit.st').read_text(encoding='utf-8-sig')
    declarations = re.search(r'^ \| (registry .*fieldLocalPlan(?: topologyLocalPlanner topologyLocalPlan)?) \|$', original, re.M)
    assert declarations, 'Canonical shared-local declaration changed'
    shared = ['definition', 'component', 'command', 'reader', 'stage', 'mutationStarted',
              'preconditionConflict', 'failureRecord'] + declarations.group(1).split()
    assert len(shared) == len(set(shared))
    begin = declarations.end() + 1
    prepare_switch = exactly_once(original, " (#('prepare' 'validate') includes: mode) ifTrue: [\n")
    execution_switch = exactly_once(original, " ] ifFalse: [\n   stage := mode.\n")
    mutation = exactly_once(original, '   mutationStarted := true.\n')
    terminal = exactly_once(original, '   orderRequired ifTrue: [\n     (sameOrder value: orderParent children value: expectedOrder)\n       ifFalse: [component error: \'Store changed parent children order\'].')
    end = exactly_once(original, '   ]\n ]. result\n')
    error_start = exactly_once(original, ' ] ifFail: [:error |\n')
    assert begin < prepare_switch < execution_switch < mutation < terminal < end < error_start
    sections = {
        'common': original[begin:prepare_switch],
        'prepare': original[prepare_switch + len(" (#('prepare' 'validate') includes: mode) ifTrue: [\n"):execution_switch],
        'guard': original[execution_switch + len(' ] ifFalse: [\n'):mutation] + '   ].\n',
        'apply': original[mutation:terminal],
        'terminal': original[terminal:end],
    }
    # prepare-switch closes in execution-switch; the validation false branch
    # closes at end. Only the orchestration moves to the new fixed dispatcher.
    for name in ['common', 'prepare', 'guard', 'apply', 'terminal']:
        assert sections[name].strip(), name
    # The restore closure must observe locals updated by subsequent phases.
    # Its original captured record/restorePositions cells now live in frame.
    # Other common helpers capture immutable component or only their own args.
    sections['common'] = re.sub(r'\b(record|restorePositions)\b',
        lambda m: "(frame at: '" + m.group() + "')", sections['common'])
    output = {}
    contract = {'profile': 'fixed_structural_stages_v1',
        'canonical_source_sha256': hashlib.sha256((ROOT / 'bde_structure_edit.st').read_bytes()).hexdigest(),
        'canonical_normalized_text_sha256': hashlib.sha256(original.encode('utf-8')).hexdigest(),
        'request_source_allowed': False, 'operation_bodies_retained': True,
        'phase_locals': {}, 'source_sections': {}}
    for name, body in sections.items():
        present = lexical_identifiers(body)
        locals_ = [var for var in shared if var in present]
        load = ''.join(f" {v} := frame at: '{v}' ifAbsent: [nil].\n" for v in locals_)
        save = ''.join(f" frame at: '{v}' put: {v}.\n" for v in locals_)
        output['bde_structure_stage_' + name + '.st'] = (
            '[:frame |\n | ' + ' '.join(locals_) + ' |\n' + load +
            ' [\n' + body + '\n ] ensure: [\n' + save + ' ]. frame\n]\n')
        contract['phase_locals'][name] = locals_
        contract['source_sections'][name] = {
            'chars': len(body), 'sha256': hashlib.sha256(body.encode('utf-8')).hexdigest()}
    failure = original[error_start + len(' ] ifFail: [:error |\n'):]
    assert failure.endswith(']\n]]\n')
    failure = failure[:-5]
    for var in ['mutationStarted', 'failureRecord', 'preconditionConflict', 'stage']:
        failure = re.sub(r'\b' + var + r'\b', "(frame at: '" + var + "')", failure)
    output['bde_structure_dispatch.st'] = '''[:stages |
 (stages isArray and: [stages size = 5]) ifFalse: [stages error: 'Fixed structural stage bundle required'].
 [:definition | [:component :command :reader |
 | frame prepareMode heldPreparation |
 frame := Dictionary new at: 'definition' put: definition; at: 'component' put: component;
   at: 'command' put: command; at: 'reader' put: reader;
   at: 'stage' put: 'guard'; at: 'mutationStarted' put: false;
   at: 'preconditionConflict' put: false; at: 'failureRecord' put: nil; yourself.
 component handleExceptionsIn: [
   (stages first class name asString = 'BlockContextTemplate')
     ifFalse: [component error: 'Fixed common stage unavailable'].
   stages first value: frame.
   prepareMode := #('prepare' 'validate') includes: (frame at: 'mode').
   (prepareMode ifTrue: [#(2)] ifFalse: [
     (#('validate_revert' 'validate_managed_inverse') includes: (frame at: 'mode'))
       ifTrue: [#(3)] ifFalse: [#(3 4 5)]]) do: [:index |
     ((stages at: index) class name asString = 'BlockContextTemplate')
       ifFalse: [component error: 'Fixed operation stage unavailable']].
   prepareMode ifTrue: [(stages at: 2) value: frame] ifFalse: [
     heldPreparation := (frame at: 'registry') at: (frame at: 'token') ifAbsent: [nil].
     (heldPreparation notNil and: [heldPreparation includesKey: 'commitResourceToken']) ifTrue: [
       frame at: 'result' put: 'BDE_STRUCTURE_CONFLICT: guard Preparation-only commit resource material retained; persistent diff/inverse not yet authorized'
     ] ifFalse: [
       (stages at: 3) value: frame.
       (frame at: 'validation') ifFalse: [
         (stages at: 4) value: frame.
         (stages at: 5) value: frame]]].
   frame at: 'result'
 ] ifFail: [:error |
''' + failure + '\n ]\n]]\n]\n'
    # Existing shared/operation source is not selectively removed. Failures in
    # a phase run ensure: before the dispatcher classifies model mutation.
    contract['generated_source_hashes'] = {
        name: hashlib.sha256(text.encode('utf-8')).hexdigest() for name, text in output.items()}
    return output, contract


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--patch', action='store_true')
    parser.add_argument('--check', action='store_true')
    parser.add_argument('--resource', choices=['bde_structure_stage_' + n + '.st' for n in STAGE_NAMES] + ['bde_structure_dispatch.st'])
    args = parser.parse_args()
    output, contract = build()
    if args.check:
        for name, text in output.items():
            assert (ROOT / name).read_text(encoding='utf-8-sig') == text, name
        print(json.dumps(contract))
    elif args.patch:
        print('*** Begin Patch')
        for name, text in output.items():
            if args.resource and name != args.resource:
                continue
            path = ROOT / name
            if not path.exists():
                print('*** Add File: ' + path.as_posix())
                for line in text.splitlines():
                    print('+' + line)
            else:
                old = path.read_text(encoding='utf-8-sig')
                if old != text:
                    print('*** Update File: ' + path.as_posix())
                    for line in list(difflib.unified_diff(old.splitlines(), text.splitlines(), n=3))[2:]:
                        print('@@' if line.startswith('@@') else line)
        print('*** End Patch')
    else:
        print(json.dumps(contract, indent=2))


if __name__ == '__main__':
    main()

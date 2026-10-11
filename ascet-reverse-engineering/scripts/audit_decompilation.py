"""Audit generated source warnings and Java top-level file coverage, without claiming build equivalence."""
import json
import zipfile
from pathlib import Path
from process_all import WARNING_PATTERN
from unpack_all import BASE, REPORT, write_json

for mode, suffix in [('java', '*.java'), ('dotnet', '*.cs')]:
    records = json.loads((REPORT / f'{mode}-results.json').read_text(encoding='utf-8'))
    for record in records:
        output = BASE / record['output']
        warnings = []
        generated = list(output.rglob(suffix))
        for path in generated:
            for number, line in enumerate(path.read_text(encoding='utf-8', errors='replace').splitlines(), 1):
                if WARNING_PATTERN.search(line):
                    warnings.append(dict(file=path.relative_to(output).as_posix(), line=number, text=line.strip()))
        write_json(output / 'decompiler-warnings.json', warnings)
        record['source_files'] = len(generated)
        record['warning_lines'] = len(warnings)
        if mode == 'java':
            with zipfile.ZipFile(BASE / record['source']) as archive:
                top_level = [name for name in archive.namelist() if name.endswith('.class')
                             and '$' not in Path(name).name
                             and Path(name).name not in {'package-info.class', 'module-info.class'}]
            missing = [name for name in top_level if not (output / (name[:-6] + '.java')).exists()]
            write_json(output / 'missing-top-level-java-files.json', missing)
            record['top_level_classes_checked'] = len(top_level)
            record['missing_top_level_java_files'] = len(missing)
        if record['status'] != 'error':
            record['status'] = 'partial' if warnings or record.get('missing_top_level_java_files') else 'ok'
        write_json(output / '_result.json', record)
    write_json(REPORT / f'{mode}-results.json', records)
    print(mode, 'modules', len(records), 'warning lines', sum(x['warning_lines'] for x in records),
          'missing Java files', sum(x.get('missing_top_level_java_files',0) for x in records), flush=True)

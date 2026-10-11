"""Prepare one disposable BDE runtime from a stopped, manifested database copy."""
import argparse
import configparser
import json
import os
from pathlib import Path
import shutil
import stat
import subprocess
import sys

import bd_service as service
from bd_instance_pending import restoration_holds
from bd_windows_endpoint import endpoint_process

HELPERS = service.ROOT / 'tools' / 'multi-instance'
sys.path.insert(0, str(HELPERS))
from image_patch import SOURCE_HASH, patch_image
from prepare import compile_host, configure_private_options


def live_manifest(path):
    path = Path(path).resolve()
    if not path.is_relative_to(service.ROOT / 'analysis/bde-experiments'):
        raise ValueError('Owned disposable BDE manifest required')
    manifest = json.loads(path.read_text(encoding='utf-8-sig'))
    process = json.loads((path.parent / 'process.json').read_text(encoding='utf-8-sig'))
    preparation = json.loads((path.parent.parent / 'preparation.json').read_text(encoding='utf-8-sig'))
    if (preparation.get('passed') is not True or preparation['instance_manifest'] != str(path)
            or type(manifest['port']) is not int or process['port'] != manifest['port']
            or process['runtime'] != manifest['runtime']
            or not Path(manifest['runtime']).resolve().is_relative_to(path.parent)
            or not Path(manifest['database']).resolve().is_relative_to(path.parent)
            or type(process['pid']) is not int or endpoint_process(manifest['port']) != process['pid']):
        raise ValueError('Exact prepared disposable runtime/listener required')
    return manifest, process, str(process['pid']) + '/' + process['start_time_utc']


def processes():
    reply = subprocess.run(['pwsh', '-NoProfile', '-Command',
        "@(Get-CimInstance Win32_Process -Filter \"Name='ASCET.exe'\" | "
        'Select-Object ProcessId,ExecutablePath,CommandLine) | ConvertTo-Json -Compress'],
        capture_output=True, text=True, check=True, timeout=20)
    value = json.loads(reply.stdout or '[]')
    return value if isinstance(value, list) else [value]


def hashes(directory):
    return {path.relative_to(directory).as_posix(): service.digest(path.read_bytes())
            for path in sorted(directory.rglob('*')) if path.is_file()}


def copy_directory(source, target):
    def native(path):
        value = str(path.resolve())
        if os.name != 'nt' or value.startswith('\\\\?\\'):
            return value
        return '\\\\?\\UNC\\' + value[2:] if value.startswith('\\\\') else '\\\\?\\' + value
    shutil.copytree(native(source), native(target))


def prepare_instance(source_manifest, output, port):
    source_manifest, output = source_manifest.resolve(), output.resolve()
    if (not source_manifest.is_relative_to(service.ROOT / 'analysis')
            or not output.is_relative_to(service.ROOT / 'analysis' / 'bde-experiments')
            or output.exists() or not 1024 <= port <= 65535):
        raise ValueError('Stopped analysis source and a fresh BDE experiment output required')
    original = json.loads(source_manifest.read_text(encoding='utf-8-sig'))
    source_database = Path(original['database']).resolve()
    source_runtime = Path(original['runtime']).resolve()
    if (not source_database.is_relative_to(source_manifest.parent)
            or not source_runtime.is_relative_to(source_manifest.parent)
            or not (source_database / 'sobjects.dat').is_file()):
        raise ValueError('Source database/runtime must belong to the source manifest')
    source_executable = str(source_runtime / 'ASCET.exe').casefold()
    for row in processes():
        if (str(row.get('ExecutablePath', '')).casefold() == source_executable
                or str(source_database).casefold() in str(row.get('CommandLine', '')).casefold()):
            raise ValueError('Source database runtime is still running')
    try:
        owner = endpoint_process(port)
    except RuntimeError as error:
        if str(error) != 'No ASCET loopback IPv4 listener at port ' + str(port):
            raise
    else:
        raise ValueError('Requested endpoint is occupied by PID ' + str(owner))
    if restoration_holds(str(source_database)):
        raise ValueError('A held source database cannot seed a writable experiment')
    installation = Path('E:/ETAS/ASCET6.4')
    installed_data = Path('E:/ETASData/ASCET6.4')
    source_image = installation / 'icsrun' / 'ASDBase.ic'
    if service.digest(source_image.read_bytes()) != SOURCE_HASH:
        raise ValueError('Unsupported installed ASCET image')
    before = hashes(source_database)
    output.mkdir(parents=True, exist_ok=False)
    result = {'passed': False, 'scope': 'disposable BDE runtime preparation only',
        'source_manifest': str(source_manifest), 'source_database': str(source_database),
        'source_database_hashes': before, 'original_image_sha256': SOURCE_HASH,
        'original_restoration': False, 'model_setters_called': 0}
    record = output / 'preparation.json'
    try:
        name = 'bde-' + service.digest(str(output))[:12]
        base = output / name
        runtime, data, logs = base / 'runtime', base / 'data', base / 'logs'
        copy_directory(installation, runtime)
        data.mkdir()
        logs.mkdir()
        for path in installed_data.iterdir():
            if path.is_file() and path.suffix.lower() in ('.xml', '.ini'):
                shutil.copy2(path, data / path.name)
        for folder in ('USER', 'cebra'):
            if (installed_data / folder).is_dir():
                copy_directory(installed_data / folder, data / folder)
        for folder in ('Database', 'Workspaces', 'Import', 'Export', 'Docu', 'Temp'):
            (data / folder).mkdir(exist_ok=True)
        database = data / 'Database' / name
        baseline = output / 'database-baseline'
        copy_directory(source_database, baseline)
        copy_directory(baseline, database)
        for path in database.rglob('*'):
            if path.is_file():
                path.chmod(stat.S_IREAD | stat.S_IWRITE)
        configure_private_options(data)
        configuration = configparser.ConfigParser()
        configuration.optionxform = str
        configuration.read(runtime / 'ASCET.ini')
        configuration['Ic path']['IC_ROOT'] = str(runtime / 'icsrun') + '\\'
        configuration['NLS Config']['nlspath'] = str(runtime / 'nls') + ';'
        configuration['Xml']['DefaultResourceQualifier'] = str(runtime / 'xml') + '\\'
        with (runtime / 'ASCET.ini').open('w', encoding='ascii') as stream:
            configuration.write(stream, space_around_delimiters=False)
        image = runtime / 'icsrun' / 'ASDBase.ic'
        retained = image.with_suffix('.ic.original')
        image.rename(retained)
        patch = patch_image(retained, image, port, runtime, data, logs, installation)
        service.write_once(base / 'patch.json', patch)
        manifest = {'instance_id': name, 'port': port, 'runtime': str(runtime),
            'data': str(data), 'logs': str(logs), 'database': str(database),
            'source_image_sha256': patch['source_sha256'],
            'patched_image_sha256': patch['patched_sha256']}
        service.write_once(base / 'instance.json', manifest)
        service.write_once(output / 'experiment.json', {'kind': 'bde-disposable-runtime',
            'installation': str(installation), 'database_source': str(source_database),
            'database_source_hashes': before})
        sdk = installation / 'cebra' / 'Etas.AscetNET.dll'
        compile_host(output, sdk)
        shutil.copy2(sdk, output / sdk.name)
        result.update(instance_manifest=str(base / 'instance.json'),
            baseline_database=str(baseline), source_unchanged=before == hashes(source_database),
            baseline_matches_source=before == hashes(baseline),
            working_matches_source=before == hashes(database),
            original_image_unchanged=service.digest(source_image.read_bytes()) == SOURCE_HASH)
        result['passed'] = all(result[key] is True for key in
            ('source_unchanged', 'baseline_matches_source', 'working_matches_source', 'original_image_unchanged'))
        if not result['passed']:
            raise ValueError('Preparation/source/backup verification differs')
    except Exception as error:
        result['error'] = repr(error)
        raise
    finally:
        service.write_once(record, result)
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source-manifest', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--port', type=int, required=True)
    args = parser.parse_args()
    result = prepare_instance(args.source_manifest, args.output, args.port)
    print(json.dumps({key: result[key] for key in ('passed', 'instance_manifest', 'baseline_database')}))


if __name__ == '__main__':
    main()

"""Enable the vendor service only in our prepared, isolated runtime."""
import json
import argparse
import subprocess
import zlib
from pathlib import Path
from xml.dom import minidom
root = Path(__file__).resolve().parents[3]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--manifest', type=Path, required=True)
options = parser.parse_args()
manifest = options.manifest.resolve()
assert manifest.is_relative_to(root / 'analysis'), 'Only isolated analysis fixtures are supported'
assert (manifest.parent.parent / 'experiment.json').is_file(), 'Prepared fixture required'
instance = json.loads(manifest.read_text(encoding='utf-8-sig'))
processes = subprocess.run(['powershell.exe', '-NoProfile', '-Command', "@(Get-CimInstance Win32_Process -Filter \"Name='ASCET.exe'\" | Select-Object ExecutablePath) | ConvertTo-Json -Compress"], capture_output=True, text=True, check=True)
running = json.loads(processes.stdout or '[]')
if isinstance(running, dict):
    running = [running]
assert not any(str(p.get('ExecutablePath', '')).lower() == str(Path(instance['runtime']) / 'ASCET.exe').lower() for p in running), 'Stop the fixture before changing its private settings'
data = Path(instance['data']).resolve()
assert data.is_relative_to(manifest.parent.resolve())
for path in [data / 'stationSettings.xml', *data.glob('USER/**/userSettings.xml')]:
    doc = minidom.parse(str(path))
    for node in doc.getElementsByTagName('Option'):
        if node.getAttribute('name') == 'WebServiceActive':
            for child in list(node.childNodes):
                node.removeChild(child)
            node.appendChild(doc.createTextNode('true'))
    body = doc.documentElement.toxml().replace('\n', '\r\n').encode('ascii', 'xmlcharrefreplace')
    header = ('<?xml version="1.0" encoding="US-ASCII"?>\r\n<?checksum type="CRC-32" value="0x%08X"?>\r\n' % zlib.crc32(body)).encode('ascii')
    path.write_bytes(header + body)
print('Private service settings enabled')

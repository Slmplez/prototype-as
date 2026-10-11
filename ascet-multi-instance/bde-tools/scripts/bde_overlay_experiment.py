"""Render recorded structural diff geometry in the original sandbox BDE."""
import argparse
import json
from pathlib import Path
import textwrap
import bd_service
import bde_experiments as bench


def primitives(differences):
    rows = []
    occupied = []
    for delta in differences:
        for side in ('before', 'after'):
            row = delta.get(side)
            if row and 'position' in row and 'size' in row:
                x, y = row['position']
                w, h = row['size']
                occupied.append((x - 6, y - 6, x + w + 6, y + h + 6))

    def text(color, x, y, line):
        # Conservative logical bounds separate fan-out markers and recorded glyphs.
        width = max(1, len(line)) * 8
        while True:
            bounds = (x - 2, y - 12, x + width + 2, y + 4)
            collisions = [other for other in occupied if bounds[0] < other[2] and other[0] < bounds[2]
                          and bounds[1] < other[3] and other[1] < bounds[3]]
            if not collisions:
                break
            y = max(other[3] for other in collisions) + 12
            if y > 100000:
                raise ValueError('Recorded text placement exceeds the drawing limit')
        occupied.append(bounds)
        rows.extend(map(str, ['text', color, x, y, line, 0]))
    for delta in differences:
        before, after = delta.get('before'), delta.get('after')
        if before and after and before.get('kind') == after.get('kind') == 'model':
            if before.get('ref') != after.get('ref') or delta.get('ref') != after.get('ref'):
                raise ValueError('Model diff identity changed')
            changes = []
            def leaves(left, right, path):
                if json.dumps(left, sort_keys=True) == json.dumps(right, sort_keys=True):
                    return
                if isinstance(left, dict) and isinstance(right, dict) and set(left) == set(right):
                    for key in sorted(left):
                        leaves(left[key], right[key], path + ('.' if path else '') + key)
                else:
                    changes.append((path, left, right))
            leaves(before, after, '')
            line_number = 0
            for path, old, new in changes:
                for value, color, marker in ((old, 255, '-'), (new, 32768, '+')):
                    label = marker + ' ' + path + '=' + json.dumps(value, ensure_ascii=True, separators=(',', ':'))
                    if len(label) > 2048:
                        raise ValueError('Model field exceeds the exact text display limit')
                    for line in textwrap.wrap(label, width=60, replace_whitespace=False, drop_whitespace=False):
                        rows.extend(['model', str(color), after['ref'], str(line_number), line, '0'])
                        line_number += 1
            continue
        for side, color in [('before', 255), ('after', 32768)]:
            row = delta.get(side)
            if not row:
                continue
            if 'position' in row and 'size' in row:
                x, y = row['position']
                w, h = row['size']
                rows.extend(map(str, ['rect', color, x-4, y-4, w+8, h+8]))
                if row.get('kind') == 'node' and (before is None or after is None or row.get('native_class') == 'ClassFormalPin'):
                    label = ('- ' if side == 'before' else '+ ') + row['ref'] + ' ' + row.get('native_class', 'node')
                    for field in ('model_name', 'literal', 'operator', 'comment'):
                        if field in row:
                            label += ' ' + field + '=' + json.dumps(row[field], ensure_ascii=True, separators=(',', ':'))
                    if len(label) > 2048:
                        raise ValueError('Node exceeds the exact text display limit')
                    for line_number, line in enumerate(textwrap.wrap(label, width=60, replace_whitespace=False, drop_whitespace=False)):
                        text(color, x, y+h+18+line_number*14, line)
            sequence = row.get('sequence') if row.get('kind') == 'pin' else None
            if isinstance(sequence, dict) and 'position' in sequence and 'size' in sequence:
                x, y = sequence['position']
                w, h = sequence['size']
                rows.extend(map(str, ['rect', color, x-4, y-4, w+8, h+8]))
            route = row.get('route', [])
            for p, q in zip(route, route[1:]):
                rows.extend(map(str, ['line', color, *p, *q]))
            if row.get('kind') == 'edge' and route and (before is None or after is None):
                label = ('- ' if side == 'before' else '+ ') + row['ref'] + ' ' + row['source'] + ' -> ' + row['target'] + ' type=' + str(row['type'])
                for line_number, line in enumerate(textwrap.wrap(label, width=60)):
                    text(color, route[0][0], route[0][1] + 18 + 14 * line_number, line)
    return rows


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--component', required=True)
    p.add_argument('--result', type=Path, required=True)
    p.add_argument('--domain-reference', type=Path, required=True, help='Reader probe.json carrying current OID/database/ASCET epoch')
    p.add_argument('--mode', choices=['show', 'clear', 'status'], default='show')
    p.add_argument('--output', type=Path, required=True)
    a = p.parse_args()
    a.output.mkdir(parents=True, exist_ok=False)
    rows = primitives(json.loads(a.result.read_text(encoding='utf-8'))['edit']['differences'])
    commands = a.output / 'primitives.json'
    commands.write_text(json.dumps(rows), encoding='utf-8')
    raw = json.loads(a.domain_reference.read_text(encoding='utf-8'))
    domain = a.output/'domain.json'
    domain.write_text(json.dumps({'oid': raw['oid'], 'database': raw['database'], 'process_epoch': raw['ascet_process_epoch']}), encoding='utf-8')
    binary = bench.ROOT / 'analysis/live-api/AscetBdeOverlay.exe'
    bd_service.run_process([r'C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe','/nologo','/platform:x86','/main:AscetBdeOverlay',
        r'/r:E:\ETAS\ASCET6.4\cebra\Etas.AscetNET.dll','/r:System.Web.Extensions.dll',
        '/resource:' + str(bench.ROOT/'scripts/bde_overlay.st') + ',bde_overlay.st', '/out:'+str(binary),
        str(bench.ROOT/'scripts/AscetStructureRead.cs'),str(bench.ROOT/'scripts/AscetBdeOverlay.cs')],30,build_step=True)
    with bd_service.live_lock():
        metric, raw = bench.run([str(binary),a.component,a.mode,str(commands.resolve()),str((a.output/'probe.json').resolve()),str(domain.resolve())],a.output/'probe.json',25)
    (a.output/'result.json').write_text(json.dumps({'metric':metric,'probe':raw},indent=2),encoding='utf-8')
    print(json.dumps({'metric':metric,'probe':raw}))
    return 0 if raw.get('status')=='ok' else 1


if __name__ == '__main__':
    raise SystemExit(main())

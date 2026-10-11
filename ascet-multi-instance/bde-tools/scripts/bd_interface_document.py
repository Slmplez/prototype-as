"""Lossless compact JSON rows with one column legend per interface record kind."""
import json


FORMAT = 'bde_interfaces_columns_v1'


def encode(rows):
    groups = {}
    tagged = []
    for row in rows:
        group = row['kind']
        if group == 'interface':
            group = (row['interface_kind'] if row.get('interface_kind') in ('project_module_instance', 'project_component_instance', 'project_message_binding') else
                     'class_binding' if row['ref'].startswith('class_binding:') else
                     'hierarchy_boundary' if 'relation_kind' in row else
                     'definition' if 'path' in row else 'formal')
        groups.setdefault(group, []).append(row)
        tagged.append((group, row))
    columns = {group: ['ref', 'name', *sorted(set.intersection(*(set(row) for row in items)) - {'kind', 'ref', 'name'})]
               for group, items in groups.items()}
    header = {'format': FORMAT, 'columns': columns,
              'kinds': {group: items[0]['kind'] for group, items in groups.items()},
              'extras': 'optional final object contains fields absent from some rows; missing keys stay missing'}
    output = [header]
    for group, row in tagged:
        values = [group, *[row[key] for key in columns[group]]]
        extra = {key: value for key, value in row.items() if key != 'kind' and key not in columns[group]}
        if extra:
            values.append(extra)
        output.append(values)
    return '\n'.join(json.dumps(row, ensure_ascii=False, separators=(',', ':'), sort_keys=True) for row in output)


def decode(text):
    records = [json.loads(line) for line in text.splitlines()]
    header = records[0]
    if header.get('format') != FORMAT:
        raise ValueError('Unknown interface document format')
    rows = []
    for values in records[1:]:
        if not isinstance(values, list) or not values or values[0] not in header['columns']:
            raise ValueError('Invalid interface row')
        group = values[0]
        columns = header['columns'][group]
        if len(columns) != len(set(columns)) or 'kind' in columns or len(values) not in (len(columns) + 1, len(columns) + 2):
            raise ValueError('Invalid interface columns')
        row = {'kind': header['kinds'][group], **dict(zip(columns, values[1:len(columns) + 1]))}
        if len(values) == len(columns) + 2:
            extra = values[-1]
            if not isinstance(extra, dict) or set(extra) & row.keys():
                raise ValueError('Invalid interface extra fields')
            row.update(extra)
        rows.append(row)
    return rows

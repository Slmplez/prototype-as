"""Independent public ToolAPI projection used by experiments, never production edits.

Negative native edge identifiers cannot be compared across graph reloads. Retain
their complete endpoint/route/type multiset, including duplicates. This proves
shared values, not native edge identity; order/identity require separate evals.
"""
from collections import Counter
import json


def encoded(row):
    return json.dumps(row, sort_keys=True, ensure_ascii=False, separators=(',', ':'))


def native_projection(entries):
    rows = []
    for row in entries:
        kind = row['kind']
        if kind == 'node':
            rows.append({'kind':'node', 'ref':row['ref'], 'position':row['position'], 'size':row['size'],
                         'literal':row.get('literal'), 'operator':row.get('operator'), 'comment':row.get('comment')})
        elif kind == 'pin':
            sequence=row.get('sequence')
            rows.append({**{key:row[key] for key in ('kind','ref','owner','name','input','output')},
                         'sequence':None if sequence is None else {k:sequence[k] for k in ('number','method','position')}})
        elif kind == 'edge':
            rows.append({key:row[key] for key in ('kind','source','target','route','type')})
    return Counter(map(encoded, rows))


def public_projection(graph):
    rows = []
    for node in graph['nodes']:
        rows.append({'kind':'node','ref':'n'+str(node['id']), 'position':node['position'],'size':node['size'],
                     'literal':node['literal'], 'operator':node['op'], 'comment':None})
        for pin in node['pins']:
            rows.append({'kind':'pin','ref':'p'+str(pin['native']['id']), 'owner':'n'+str(pin['owner']),
                         **{key:pin[key] for key in ('name','input','output')},'sequence':pin.get('sequence')})
    for comment in graph['comments']:
        rows.append({'kind':'node','ref':'n'+str(comment['native']['id']), 'position':comment['position'],
                     'size':comment['size'],'literal':None,'operator':None,'comment':comment['text']})
    for edge in graph['edges']:
        rows.append({'kind':'edge','source':'p'+str(edge['source']['native']['id']),
                     'target':'p'+str(edge['target']['native']['id']), 'route':edge['route'],'type':edge['type']})
    return Counter(map(encoded, rows))


def compare(entries, public):
    expected, actual = native_projection(entries), public_projection(public)
    return {'passed':expected == actual,
            'missing':[{'row':json.loads(row),'count':count} for row,count in (expected-actual).items()],
            'unexpected':[{'row':json.loads(row),'count':count} for row,count in (actual-expected).items()],
            'coverage':['node identity/position/size/literal/operator/comment','pin identity/owner/name/direction',
                        'edge endpoint/type/route multiset including duplicates', 'pin sequence number/activator/position'],
            'not_compared':['native edge object identity','parent children order','model declarations/configuration',
                            'hierarchy children','method bodies','native sequence call identity/label size']}

"""Validate read tool argument shapes before files or native calls are used."""
import re
from bd_contract_values import bounded_text
from bd_structure_scope import valid_diagram


def validate(tool, args, fail):
    fields={
        'bd_read':{'component','snapshot','scope','view','max_bytes','cursor'},
        'bd_find':{'snapshot','query','kind','max_bytes','cursor'},
        'bd_inspect':{'query','snapshot','component','database','targets','fields','change_id','reconcile','max_bytes','cursor','components','source','target','segments','steps','selector','block_kind','owner_kind','diagram_scope'},
        'bd_diff':{'presentation','change_id','before','after','max_bytes','cursor'},
    }
    if tool not in fields:return
    def reject(message):fail('INVALID_INPUT',message)
    if set(args)-fields[tool]:reject('Unexpected read tool fields')
    if 'max_bytes' in args and (type(args['max_bytes']) is not int or not 2048<=args['max_bytes']<=16384):reject('Invalid max_bytes')
    for key,limit in {'component':2048,'database':2048,'snapshot':256,'cursor':256,'change_id':256,'before':256,'after':256}.items():
        if key in args and not bounded_text(args[key],maximum=limit):reject('Invalid '+key)
    if 'cursor' in args:
        if set(args)!={'cursor'}:reject('Cursor must be used alone')
        return
    if tool=='bd_read':
        if ('component' in args)==('snapshot' in args):reject('Provide component or snapshot')
        if args.get('view','logic') not in ('logic','overview','structure','interfaces','project_messages','class_interface'):reject('Unsupported view')
        if 'scope' in args:
            scope=args['scope']
            if 'component' not in args or args.get('view') in ('interfaces','project_messages','class_interface'):reject('Scope requires live non-interface read')
            if args.get('view') == 'structure':
                if not isinstance(scope,dict) or set(scope)!={'diagram'} or not valid_diagram(scope['diagram']):reject('Structure scope requires only canonical diagram')
            else:
                if not isinstance(scope,dict) or set(scope)-{'targets','include_layout'}:reject('Invalid scope')
                targets=scope.get('targets')
                if not isinstance(targets,list) or not 1<=len(targets)<=20 or any(not isinstance(t,str) or not re.fullmatch(r'Main/n\d+',t) for t in targets):reject('Invalid scope targets')
                if 'include_layout' in scope and type(scope['include_layout']) is not bool:reject('Invalid include_layout')
    elif tool=='bd_find':
        if 'snapshot' not in args or not bounded_text(args.get('query'),maximum=512):reject('Find requires snapshot and bounded query')
        if 'kind' in args and args['kind'] not in ('node','pin','edge','state','transition','model','method','interface','message'):reject('Invalid kind')
    elif tool=='bd_diff':
        if 'change_id' in args:
            if 'before' in args or 'after' in args:reject('Use change_id or before/after')
        elif not {'before','after'}<=set(args):reject('Diff requires change_id or before/after')
        if 'presentation' in args and ('change_id' not in args or args['presentation'] not in ('show','clear')):reject('Presentation requires change_id and show/clear')
    else:
        query=args.get('query')
        allowed={
            'capabilities':set(),'snapshots':set(),
            'block_types':{'block_kind','owner_kind','diagram_scope'},
            'changes':{'snapshot','component','database'},'edits':{'snapshot','component','database'},
            'recovery':{'change_id','reconcile'},'fields':{'snapshot','targets','fields'},
            'checks':{'snapshot'},'configuration':{'snapshot'},
            'signal_path':{'snapshot','targets'},'interface_binding':{'snapshot','targets'},
            'project_signal_path':{'snapshot','components','source','target'},
            'flow_plan':{'segments','steps'},
            'class_callers':{'component','selector'},
        }
        if not isinstance(query,str) or query not in allowed or set(args)-({'query','max_bytes'}|allowed[query]):reject('Fields do not apply to inspect query')
        if query=='block_types':
            from bd_structure_journal import CREATION_KINDS
            if ('block_kind' in args and args['block_kind'] not in CREATION_KINDS or
                    'owner_kind' in args and args['owner_kind'] not in ('class','module') or
                    'diagram_scope' in args and args['diagram_scope'] not in ('Main','child')):
                reject('Unknown block kind or context')
        if query=='recovery':
            if 'change_id' not in args or ('reconcile' in args and type(args['reconcile']) is not bool):reject('Invalid recovery request')
        if query=='class_callers':
            component=args.get('component')
            if not isinstance(component,str) or '\\' not in component.strip('\\'):reject('Full Class component path required')
            if 'selector' in args:
                from bd_class_selector import validate_selector
                try:validate_selector(args['selector'])
                except (ValueError, TypeError):reject('Invalid exact Class formal selector')
        if query in ('fields','checks','configuration','signal_path','interface_binding','project_signal_path') and 'snapshot' not in args:reject('Snapshot required')
        if query in ('fields','signal_path','interface_binding') and 'targets' not in args:reject('Targets required')
        for key,limit in (('targets',256),('fields',128)):
            if key in args and (not isinstance(args[key],list) or not 1<=len(args[key])<=50 or any(not bounded_text(t,maximum=limit) for t in args[key])):reject('Invalid '+key)
        if query=='signal_path' and len(args['targets'])!=2:reject('Signal path requires exactly source and target pin references')
        if query=='flow_plan':
            if ('segments' in args)==('steps' in args):reject('Choose segments or construction steps')
            if 'steps' in args:
                from bd_construction_sequence import validate_input_steps
                from bd_edit_journal import JournalError
                try:validate_input_steps(args['steps'])
                except JournalError as error:reject(str(error))
                return
            segments=args.get('segments')
            if not isinstance(segments,list) or not 2<=len(segments)<=16:reject('Provide 2..16 explicit diagram segments')
            for item in segments:
                if not isinstance(item,dict) or set(item)!={'snapshot','source','target'} or any(not bounded_text(v,maximum=256) for v in item.values()):reject('Exact snapshot/source/target references required')
        if query=='project_signal_path':
            components=args.get('components')
            if not isinstance(components,list) or not 1<=len(components)<=16:reject('Provide 1..16 instance observations')
            for item in components:
                if not isinstance(item,dict) or set(item)!={'snapshot','instance'} or any(not bounded_text(v,maximum=256) for v in item.values()):reject('Exact snapshot/instance references required')
            for key in ('source','target'):
                item=args.get(key)
                if not isinstance(item,dict) or set(item)!={'instance','ref'} or any(not bounded_text(v,maximum=256) for v in item.values()):reject('Exact instance/pin endpoint required')

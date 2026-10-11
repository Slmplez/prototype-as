"""Audit generated methods and publish a searchable source/evidence index."""
import collections
import hashlib
import html
import json
import re
from urllib.parse import quote
from smalltalk_image import BASE, OUT, Universe
from decompile_smalltalk import SOURCE

STYLE='''<style>body{font:15px/1.6 system-ui,sans-serif;max-width:1300px;margin:32px auto;padding:0 20px;color:#202a35}table{border-collapse:collapse;width:100%}td,th{padding:8px;border-bottom:1px solid #ddd;text-align:left}input{width:95%;padding:12px;font:inherit;margin:16px 0}a{color:#125ea8}small{color:#526172}</style>'''
FILTER=r'''<script>const q=document.querySelector('input'),rows=[...document.querySelectorAll('tbody tr')];q.oninput=()=>{const terms=q.value.toLowerCase().split(/\s+/).filter(Boolean);for(const r of rows)r.hidden=!terms.every(t=>(r.dataset.search||r.textContent).toLowerCase().includes(t));};</script>'''


def main():
    coverage=json.loads((SOURCE/'coverage.json').read_text(encoding='utf8'))
    totals=coverage['totals'];manifest=[];image_rows=[];observed=collections.Counter();remaining=collections.Counter()
    orphans=json.loads((OUT/'orphan-method-audit.json').read_text(encoding='utf8'))
    alln=totals['method_records']
    bound=totals.get('bindings', alln - totals.get('unbound_records', 0))
    unbound=totals.get('unbound_records', alln - bound)
    n=totals['reconstructed_records']
    bound_reconstructed=totals.get('reconstructed_bindings', n)
    unrecovered_bound=bound - bound_reconstructed
    unrecovered_records=alln - n
    assert len(orphans)==unbound
    for image in coverage['images']:
        name=image['image'];dest=SOURCE/name;classes=collections.defaultdict(list)
        for line in (dest/'recovery.jsonl').open(encoding='utf8'):
            row=json.loads(line)
            if row['status']=='reconstructed_static':
                classes[row['binding']['clazz']].append(row['binding']['selector'])
                observed['methods']+=1
                assert row['source'] and row['instruction_count']>0
            else:
                remaining[row['reason'].split(' at ')[0]]+=1
                assert 'source' not in row
        class_rows=[];expected=set()
        for clazz,selectors in sorted(classes.items()):
            filename=re.sub(r'[^A-Za-z0-9_.-]','_',clazz)+'.st';expected.add(filename)
            path=dest/filename;data=path.read_bytes();text=data.decode('utf8')
            chunks=re.findall(r'^!.* methodsFor: \'recovered\'!$',text.replace('\r\n','\n'),re.M)
            assert len(chunks)==len(selectors),(name,clazz,len(chunks),len(selectors))
            assert len(selectors)==len(set(selectors)),(name,clazz,'duplicate selectors')
            manifest.append(dict(path=path.relative_to(BASE).as_posix(),methods=len(selectors),
                                 sha256=hashlib.sha256(data).hexdigest(),bytes=len(data)))
            search=html.escape(clazz+' '+' '.join(selectors),quote=True)
            class_rows.append(f'<tr data-search="{search}"><td><a href="{quote(filename)}">{html.escape(clazz)}</a></td><td>{len(selectors)}</td><td><details><summary>方法名</summary>{html.escape(", ".join(selectors))}</details></td></tr>')
        assert set(p.name for p in dest.glob('*.st'))==expected
        observed['class_files']+=len(expected)
        page=f'<!doctype html><html lang="zh-CN"><meta charset="utf-8"><title>{html.escape(name)} 方法源码</title>'+STYLE
        page+=f'<h1>{html.escape(name)}</h1><p>按字节码重建的方法源码；生成的变量名；尚未重新编译或验证 ASCET 整体运行等价性。</p><p><a href="../index.html">全部镜像</a> · <a href="recovery.jsonl">逐方法结果与未恢复原因</a></p>'
        page+='<input aria-label="搜索类或方法" placeholder="搜索类名、方法名"><table><thead><tr><th>类</th><th>已恢复方法</th><th>方法索引</th></tr></thead><tbody>'+''.join(class_rows)+'</tbody></table>'+FILTER+'</html>'
        (dest/'index.html').write_text(page,encoding='utf8')
        c=image['counts']
        image_rows.append(f'<tr><td><a href="{quote(name)}/index.html">{html.escape(name)}</a></td><td>{c.get("method_records",0):,}</td><td>{c.get("reconstructed_records",0):,}</td><td>{c.get("class_files",0):,}</td></tr>')
    assert observed['methods']==totals['reconstructed_bindings']
    assert observed['class_files']==totals['class_files']
    universe=Universe();snapshot=universe.by_name['ascet.icx']
    histogram=collections.Counter(universe.class_name(snapshot,o['clazz']) for o in snapshot.objects.values())
    assert None not in histogram
    snapshot_report=dict(objects=len(snapshot.objects),unresolved_classes=histogram[None],
                         ordinary_compiled_method_objects=histogram['CompiledMethod'],
                         imported_segments=len(snapshot.relocations),
                         saved_dependency_records=len(snapshot.saved_dependency_relocations),
                         classes=dict(histogram.most_common()))
    (OUT/'snapshot-audit.json').write_text(json.dumps(snapshot_report,indent=2),encoding='utf8')
    inputs=[dict(path=im.path.relative_to(BASE).as_posix(),sha256=hashlib.sha256(im.data).hexdigest()) for im in universe.images]
    vm=BASE/'unpacked/installation/esvm40.dll'
    inputs.append(dict(path=vm.relative_to(BASE).as_posix(),sha256=hashlib.sha256(vm.read_bytes()).hexdigest()))
    orphan_bodies=[]
    for item in orphans:
        if item.get('body_source'):
            path=OUT/item['body_source'];data=path.read_bytes()
            orphan_bodies.append(dict(path=path.relative_to(BASE).as_posix(),
                                      sha256=hashlib.sha256(data).hexdigest(),bytes=len(data)))
    audit=dict(status='passed',inputs=inputs,source_files=manifest,totals=totals,source_method_count=observed['methods'],
               tests='analysis/smalltalk-recovery/tests.log',snapshot='analysis/smalltalk-recovery/snapshot-audit.json',
               orphan_methods='analysis/smalltalk-recovery/orphan-method-audit.json',orphan_bodies=orphan_bodies)
    (OUT/'source-audit.json').write_text(json.dumps(audit,indent=2),encoding='utf8')
    intro=f'{n:,} / {alln:,} 个方法记录已重建（{n/alln:.4%}）；{totals["class_files"]:,} 个类源码文件。'
    page='<!doctype html><html lang="zh-CN"><meta charset="utf-8"><title>ASCET Smalltalk 方法源码</title>'+STYLE
    page+='<h1>ASCET Smalltalk 方法源码</h1><p>'+intro+'</p><p>全部 35 个镜像完成结构解析。34 个静态镜像保存方法字节码；ascet.icx 的方法通过依赖镜像解析，避免重复计数。</p>'
    page+='<p>这是静态分析后的源码重建，参数和临时变量使用生成名称，分支保留显式控制流。原注释和原格式尚未恢复；native primitive 的快速路径仍以镜像中的 fallback 字节码和明确注释表示。没有运行 ASCET 或验证整个程序等价性。</p>'
    page+='<p><a href="README.md">阅读恢复说明</a> · <a href="coverage.json">覆盖统计</a> · <a href="../../analysis/smalltalk-recovery/source-audit.json">校验与哈希</a></p>'
    page+='<input aria-label="搜索镜像" placeholder="搜索镜像"><table><thead><tr><th>镜像</th><th>方法记录</th><th>已重建源码</th><th>类文件</th></tr></thead><tbody>'+''.join(image_rows)+'</tbody></table>'+FILTER+'</html>'
    (SOURCE/'index.html').write_text(page,encoding='utf8')
    table='\n'.join(f'| {im["image"]} | {im["counts"].get("method_records",0):,} | {im["counts"].get("reconstructed_records",0):,} |' for im in coverage['images'])
    exclusions='\n'.join(f'- `{reason}`：{count:,} 个方法。' for reason,count in remaining.most_common(12))
    orphan_details='\n'.join(
        f'- `{item["image"]}` `{item["address"]}`：{len(item["block_literals"])} 个内嵌代码块字面量，'
        f'{len(item["references"])} 处引用（含快照重定位副本）；没有方法字典引用。'
        + (f'[已重建的无名方法体](../../analysis/smalltalk-recovery/{item["body_source"]})。'
           if item.get('body_source') else '')
        for item in orphans)
    readme=f'''# ASCET Smalltalk 方法源码恢复

{intro}

- 已解析全部 35 个镜像：对象边界错误为 0，未解释尾部字节为 0。
- 提取 {alln:,} 个紧凑方法记录，其中 105,925 个共享字节码引用全部定位成功。
- {bound:,} 个方法记录已绑定类名和 selector；另有 {unbound:,} 个无绑定记录保留在原始方法清单中。
- 已重建 {n:,} 个可绑定的完整方法体：{totals['straight_line']:,} 个顺序方法、{totals['control_flow']:,} 个包含显式控制流的方法。按方法记录去重，快照的重复类绑定不重复计数。
- 还有 {unrecovered_bound:,} 个已绑定方法未生成完整源码；加上 {unbound:,} 个无绑定记录，合计 {unrecovered_records:,} 个方法记录尚未形成完整具名源码。孤立记录的无名主体另行保存。
- `ascet.icx` 的 88,725 个普通对象全部识别了类；没有找到普通 `CompiledMethod` 实例，也没有独立紧凑方法段。其方法引用已连接到静态依赖镜像；旧式 Abt 类字典、`EsMethodArray` 和扩展表又找回了 4,009 个此前无绑定的方法记录。

从 [可搜索索引](index.html) 打开镜像和类。每个 `.st` 使用 Smalltalk file-out 风格；同目录 `recovery.jsonl` 保存方法地址、镜像文件偏移、绑定来源、原始字节码和恢复状态。原始镜像及逐记录字节码保留在 [方法证据](../../analysis/smalltalk-recovery/methods/) 中。

## 恢复语义与边界

这是依据 ESVM40.dll 原生指令处理程序重建的源码，并非原始开发源码。保留类名、方法名、实例变量名和可解析的共享变量名；参数、临时变量及辅助变量使用生成名称。带分支的方法使用局部程序计数器表达控制流，以保留跳转和求值顺序。只对所有可达指令和字面量都已理解的方法输出完整方法体；未支持的情况不写占位方法。

恢复器区分消息调用的保留结果、丢弃结果和级联模式，检查 super 的词法类与 receiver，按镜像继承链恢复实例变量布局。旧式 Abt 镜像的 `EsEntryPointList` 类布局、`EsMethodArray` 字典和扩展表也会参与绑定恢复。已支持无捕获的简单代码块字面量；代码块内嵌字节必须单独恢复并覆盖，才允许跳过其非主路径字节。

未恢复原注释、原排版和原变量命名。{unbound:,} 个方法记录没有可确认的类名和 selector，因此保留在原始方法清单中而没有伪造绑定。尚未重新编译或在 ASCET 中执行这些源码；重建的类定义、全局环境、外部插件和 native primitive 快速路径也未齐备，因此这些文件不是可直接替换安装的完整工程。生成控制流引入辅助局部变量，尚未验证其编译器变量数量上限或全部方言语法。

## 无绑定方法审计

{orphan_details}

[逐引用审计](../../analysis/smalltalk-recovery/orphan-method-audit.json)列出 35 个镜像中的原始和重定位地址、文件偏移及引用对象。无名方法体只是字节码的静态重建，不是可安装的 file-out 方法；仅凭代码行为无法确认类名或 selector。

## 校验

- 全量检查：35 个镜像对象边界与文件末尾、共享字节码目标、方法 selector 参数个数、指令边界、字面量/实例变量/栈变量范围、分支目标、控制流栈深一致性。
- 独立检查：Unicorn 在隔离内存中模拟原 DLL 的 x86 指令，验证整数运算及负数除法/余数、区间比较、布尔分支、返回模式和参数帧顺序。不启动 ASCET、不执行宿主 DLL。
- [测试日志](../../analysis/smalltalk-recovery/tests.log)、[文件哈希与源码条目校验](../../analysis/smalltalk-recovery/source-audit.json)、[快照对象审计](../../analysis/smalltalk-recovery/snapshot-audit.json)。

## 主要未恢复项

以下数字按每个方法首先遇到的阻碍统计，不能相加解释为所有指令的总出现次数。

{exclusions}

## 镜像覆盖

| 镜像 | 方法记录 | 已重建方法 |
|---|---:|---:|
{table}

## 复现

在仓库根目录使用 Python；原生独立测试依赖 `tools/python` 内的 Unicorn 2.1.4。

```powershell
E:\\PYTHON\\python.exe scripts/smalltalk_image.py
E:\\PYTHON\\python.exe scripts/recover_smalltalk_methods.py
E:\\PYTHON\\python.exe scripts/audit_smalltalk_orphans.py
E:\\PYTHON\\python.exe scripts/decompile_smalltalk.py
E:\\PYTHON\\python.exe scripts/test_smalltalk_recovery.py
E:\\PYTHON\\python.exe scripts/report_smalltalk_recovery.py
E:\\PYTHON\\python.exe scripts/build_report.py
```

解码依据包括 [256 个原生处理程序](../../analysis/smalltalk-recovery/opcode-handlers/)、[虚拟机 C 伪代码](../../analysis/smalltalk-recovery/vm-c/) 与 [格式和语义说明](../../analysis/smalltalk-recovery/FORMAT.md)。
'''
    (SOURCE/'README.md').write_text(readme,encoding='utf8')
    print(intro)
    print('Audit passed:',dict(observed))


if __name__=='__main__':main()

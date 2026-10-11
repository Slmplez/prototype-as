# AEB_State_Machine / Init

只读实测：2026-10-01T11:36:28.5646849Z。

方法 alias：`0101ab0001000000da070806128c7bf1d39d0000`。图源 OID：`040ts00000001qg714eg70igttv06`。

支持范围内完整：true。

## 从图形得到的可读赋值

```c
// sequence 10
AEBLockTime = 0.0;
```

这是图形逻辑的派生表示，不是模型里存储的文本方法，也不是生成的 C。

## 端口与连线

| 节点 | 端口 ID | 方向 | 操作 | 参数/返回值 |
| --- | --- | --- | --- | --- |
| 4 | 5 | return | literal | return |
| AEBLockTime | 7 | selector | set | aValue |
| AEBLockTime | 8 | return | get | return |

- root：端口 5 → 端口 7。

本图中 5 → 7 表示常量 0.0 写入 AEBLockTime；8 是该变量节点的 GET 返回端口，不参与这条赋值连线。

组件对外的 getter/MemberGetPort 是另一层接口，可供父级组件图连线；内部变量节点存在 GET 端口，不代表它自动公开为外部接口。旧 AXL 导出的组件 Layout/Interfaces 中确有 AEBLockTime 的 MemberGetPort 和 init 的 MethodPort，但本次实时读取没有导出组件外部布局或所有调用它的父级连线。

## 搜索

```json
{
  "query": "AEBLockTime = 0.0;",
  "case_sensitive": true,
  "context_before": 1
}
```

命中 kind=graphical_method、member_name=init；用返回的 component_oid/document_id/expected_database 调用 read 可回读同一图形表示。

完整模型图、哈希与分段正文见同目录 AEB_State_Machine.json。未知运算节点、嵌套图、歧义连线等返回 partial，不会假造为完整代码。

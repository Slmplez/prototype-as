# ASCET 代码搜索：真实模式示例

数据库：`d:\ETASData\ASCET6.4\Database\AEB_1`；验证时间：2026-10-01T12:13:27.162Z（UTC）。

真正的 mode 只有 text、identifier_occurrence、regex。其余是组合选项。本文件所有命中均由本次实时请求得到，并与独立全量正文扫描逐位置、正文、metadata、context 核对，前后模型指纹一致。

各例列出一个真实命中文档，完整全库结果在 search-modes-live.json 中，没有截断实际返回。每个结果按文档/Implementation/Variant 分开计数；列号从 1 开始，按 Unicode 码点。

样本组件完整路径：

- `PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_RedEngTorque`：ESDL 文本方法。
- `PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AEB_Core\AEB_State_Machine`：状态机，附带图形 Init。

## 1. 普通文本子串搜索

匹配输入的连续文字；可以命中长变量名中的一部分。

实际请求：

```json
{
  "query": "AEB_FxTarPT",
  "mode": "text",
  "case_sensitive": true,
  "id": "text",
  "expected_database": "d:\\ETASData\\ASCET6.4\\Database\\AEB_1"
}
```

完整 JSON 请求耗时：296.70 ms。

| 查询 | 命中文档 | 出现次数 |
| --- | ---: | ---: |
| text | 3 | 9 |

实际命中：`PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_RedEngTorque` → `calc`；kind=`method`，variant=`ASDL`。

document_id：`a1146a88709c0aef1a872cd77986f2fe215e1a59e09220bcf8e120959ff3bc50`。

命中行及位置：

```json
[
  {
    "line": 8,
    "columns": [
      4,
      20
    ],
    "text": "   AEB_FxTarPT = C_AEB_FxTarPT;"
  },
  {
    "line": 12,
    "columns": [
      13
    ],
    "text": "         && AEB_FxTarPT < C_AEB_FxTarRampMaxPT"
  },
  {
    "line": 17,
    "columns": [
      7
    ],
    "text": "      AEB_FxTarPT = FxActPT;\t   "
  },
  {
    "line": 20,
    "columns": [
      4,
      18
    ],
    "text": "   AEB_FxTarPT = AEB_FxTarPT + C_AEB_DiffFxTarRampPT;"
  },
  {
    "line": 26,
    "columns": [
      4
    ],
    "text": "   AEB_FxTarPT = 250000;"
  }
]
```

## 2. 完整标识符出现位置

按 C/ESDL 标识符边界匹配；不把 C_AEB_FxTarPT 中的子串算作 AEB_FxTarPT。仍会搜索注释/字符串，不是语义引用分析。

实际请求：

```json
{
  "query": "AEB_FxTarPT",
  "mode": "identifier_occurrence",
  "case_sensitive": true,
  "id": "identifier",
  "expected_database": "d:\\ETASData\\ASCET6.4\\Database\\AEB_1"
}
```

完整 JSON 请求耗时：95.04 ms。

| 查询 | 命中文档 | 出现次数 |
| --- | ---: | ---: |
| identifier | 3 | 8 |

实际命中：`PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_RedEngTorque` → `calc`；kind=`method`，variant=`ASDL`。

document_id：`a1146a88709c0aef1a872cd77986f2fe215e1a59e09220bcf8e120959ff3bc50`。

命中行及位置：

```json
[
  {
    "line": 8,
    "columns": [
      4
    ],
    "text": "   AEB_FxTarPT = C_AEB_FxTarPT;"
  },
  {
    "line": 12,
    "columns": [
      13
    ],
    "text": "         && AEB_FxTarPT < C_AEB_FxTarRampMaxPT"
  },
  {
    "line": 17,
    "columns": [
      7
    ],
    "text": "      AEB_FxTarPT = FxActPT;\t   "
  },
  {
    "line": 20,
    "columns": [
      4,
      18
    ],
    "text": "   AEB_FxTarPT = AEB_FxTarPT + C_AEB_DiffFxTarRampPT;"
  },
  {
    "line": 26,
    "columns": [
      4
    ],
    "text": "   AEB_FxTarPT = 250000;"
  }
]
```

## 3. 正则搜索多个指定名字

| 表示二选一；\b 限定词边界。JSON 中的反斜杠需要写成双反斜杠。

实际请求：

```json
{
  "query": "\\b(?:AEB_FxTarPT|C_AEB_FxTarPT)\\b",
  "mode": "regex",
  "case_sensitive": true,
  "id": "regex",
  "expected_database": "d:\\ETASData\\ASCET6.4\\Database\\AEB_1"
}
```

完整 JSON 请求耗时：251.91 ms。

| 查询 | 命中文档 | 出现次数 |
| --- | ---: | ---: |
| regex | 3 | 9 |

实际命中：`PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_RedEngTorque` → `calc`；kind=`method`，variant=`ASDL`。

document_id：`a1146a88709c0aef1a872cd77986f2fe215e1a59e09220bcf8e120959ff3bc50`。

命中行及位置：

```json
[
  {
    "line": 8,
    "columns": [
      4,
      18
    ],
    "text": "   AEB_FxTarPT = C_AEB_FxTarPT;",
    "ranges": [
      {
        "start_line": 8,
        "start_column": 4,
        "end_line": 8,
        "end_column": 15
      },
      {
        "start_line": 8,
        "start_column": 18,
        "end_line": 8,
        "end_column": 31
      }
    ]
  },
  {
    "line": 12,
    "columns": [
      13
    ],
    "text": "         && AEB_FxTarPT < C_AEB_FxTarRampMaxPT",
    "ranges": [
      {
        "start_line": 12,
        "start_column": 13,
        "end_line": 12,
        "end_column": 24
      }
    ]
  },
  {
    "line": 17,
    "columns": [
      7
    ],
    "text": "      AEB_FxTarPT = FxActPT;\t   ",
    "ranges": [
      {
        "start_line": 17,
        "start_column": 7,
        "end_line": 17,
        "end_column": 18
      }
    ]
  },
  {
    "line": 20,
    "columns": [
      4,
      18
    ],
    "text": "   AEB_FxTarPT = AEB_FxTarPT + C_AEB_DiffFxTarRampPT;",
    "ranges": [
      {
        "start_line": 20,
        "start_column": 4,
        "end_line": 20,
        "end_column": 15
      },
      {
        "start_line": 20,
        "start_column": 18,
        "end_line": 20,
        "end_column": 29
      }
    ]
  },
  {
    "line": 26,
    "columns": [
      4
    ],
    "text": "   AEB_FxTarPT = 250000;",
    "ranges": [
      {
        "start_line": 26,
        "start_column": 4,
        "end_line": 26,
        "end_column": 15
      }
    ]
  }
]
```

## 4. 正则实现通配式前缀匹配

匹配 AEB_EngTrqRedActive 后跟任意个标识符字符，可同时找到 _B 和 K1_B 两个名字；不做拼写纠错。

实际请求：

```json
{
  "query": "\\bAEB_EngTrqRedActive[A-Za-z_0-9]*\\b",
  "mode": "regex",
  "case_sensitive": true,
  "id": "regex_prefix",
  "expected_database": "d:\\ETASData\\ASCET6.4\\Database\\AEB_1"
}
```

完整 JSON 请求耗时：236.70 ms。

| 查询 | 命中文档 | 出现次数 |
| --- | ---: | ---: |
| regex_prefix | 5 | 8 |

实际命中：`PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_RedEngTorque` → `calc`；kind=`method`，variant=`ASDL`。

document_id：`a1146a88709c0aef1a872cd77986f2fe215e1a59e09220bcf8e120959ff3bc50`。

命中行及位置：

```json
[
  {
    "line": 5,
    "columns": [
      5
    ],
    "text": "if (AEB_EngTrqRedActive_B)",
    "ranges": [
      {
        "start_line": 5,
        "start_column": 5,
        "end_line": 5,
        "end_column": 26
      }
    ]
  },
  {
    "line": 15,
    "columns": [
      8
    ],
    "text": "   if (AEB_EngTrqRedActiveK1_B)",
    "ranges": [
      {
        "start_line": 15,
        "start_column": 8,
        "end_line": 15,
        "end_column": 31
      }
    ]
  },
  {
    "line": 31,
    "columns": [
      1,
      27
    ],
    "text": "AEB_EngTrqRedActiveK1_B = AEB_EngTrqRedActive_B;",
    "ranges": [
      {
        "start_line": 31,
        "start_column": 1,
        "end_line": 31,
        "end_column": 24
      },
      {
        "start_line": 31,
        "start_column": 27,
        "end_line": 31,
        "end_column": 48
      }
    ]
  }
]
```

## 5. 跨行代码片段：字面文本

multiline=true 允许换行；统一 CR/CRLF/LF 后匹配，其他空格必须一致。

实际请求：

```json
{
  "query": "AEB_FxTarPT = 250000;\nAEB_LDMSelectedControllerPT = LDMSelectedController_None;",
  "mode": "text",
  "multiline": true,
  "case_sensitive": true,
  "id": "multiline_text",
  "expected_database": "d:\\ETASData\\ASCET6.4\\Database\\AEB_1"
}
```

完整 JSON 请求耗时：106.92 ms。

| 查询 | 命中文档 | 出现次数 |
| --- | ---: | ---: |
| multiline_text | 1 | 1 |

实际命中：`PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_RedEngTorque` → `init`；kind=`method`，variant=`ASDL`。

document_id：`9a31e927b1929f13d33661c2e3feacee20dc89a373612c70620972e7a8ad45da`。

命中行及位置：

```json
[
  {
    "line": 1,
    "columns": [
      1
    ],
    "text": "AEB_FxTarPT = 250000;",
    "ranges": [
      {
        "start_line": 1,
        "start_column": 1,
        "end_line": 2,
        "end_column": 58
      }
    ]
  }
]
```

返回的上下文：

```json
[
  {
    "start_line": 1,
    "end_line": 2,
    "lines": [
      "AEB_FxTarPT = 250000;",
      "AEB_LDMSelectedControllerPT = LDMSelectedController_None;"
    ]
  }
]
```

## 6. 跨行代码片段：允许不同空白

\s* 可匹配空格及换行；本查询不需要 dotall。

实际请求：

```json
{
  "query": "AEB_FxTarPT\\s*=\\s*250000;\\s*AEB_LDMSelectedControllerPT\\s*=\\s*LDMSelectedController_None;",
  "mode": "regex",
  "multiline": true,
  "case_sensitive": true,
  "id": "multiline_regex",
  "expected_database": "d:\\ETASData\\ASCET6.4\\Database\\AEB_1"
}
```

完整 JSON 请求耗时：238.70 ms。

| 查询 | 命中文档 | 出现次数 |
| --- | ---: | ---: |
| multiline_regex | 2 | 2 |

实际命中：`PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_RedEngTorque` → `init`；kind=`method`，variant=`ASDL`。

document_id：`9a31e927b1929f13d33661c2e3feacee20dc89a373612c70620972e7a8ad45da`。

命中行及位置：

```json
[
  {
    "line": 1,
    "columns": [
      1
    ],
    "text": "AEB_FxTarPT = 250000;",
    "ranges": [
      {
        "start_line": 1,
        "start_column": 1,
        "end_line": 2,
        "end_column": 58
      }
    ]
  }
]
```

返回的上下文：

```json
[
  {
    "start_line": 1,
    "end_line": 2,
    "lines": [
      "AEB_FxTarPT = 250000;",
      "AEB_LDMSelectedControllerPT = LDMSelectedController_None;"
    ]
  }
]
```

## 7. 跨行正则：点号跨越换行

multiline=true 允许跨行；dotall=true 使 .*? 里的点号也匹配换行。

实际请求：

```json
{
  "query": "AEB_FxTarPT = 250000;.*?LDMSelectedController_None;",
  "mode": "regex",
  "multiline": true,
  "dotall": true,
  "case_sensitive": true,
  "id": "dotall",
  "expected_database": "d:\\ETASData\\ASCET6.4\\Database\\AEB_1"
}
```

完整 JSON 请求耗时：230.21 ms。

| 查询 | 命中文档 | 出现次数 |
| --- | ---: | ---: |
| dotall | 2 | 2 |

实际命中：`PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_RedEngTorque` → `init`；kind=`method`，variant=`ASDL`。

document_id：`9a31e927b1929f13d33661c2e3feacee20dc89a373612c70620972e7a8ad45da`。

命中行及位置：

```json
[
  {
    "line": 1,
    "columns": [
      1
    ],
    "text": "AEB_FxTarPT = 250000;",
    "ranges": [
      {
        "start_line": 1,
        "start_column": 1,
        "end_line": 2,
        "end_column": 58
      }
    ]
  }
]
```

返回的上下文：

```json
[
  {
    "start_line": 1,
    "end_line": 2,
    "lines": [
      "AEB_FxTarPT = 250000;",
      "AEB_LDMSelectedControllerPT = LDMSelectedController_None;"
    ]
  }
]
```

## 8. 对照：关闭 dotall

同一真实库中，此表达式关闭 dotall 后没有命中。multiline 本身不会改变点号含义。

实际请求：

```json
{
  "query": "AEB_FxTarPT = 250000;.*?LDMSelectedController_None;",
  "mode": "regex",
  "multiline": true,
  "dotall": false,
  "case_sensitive": true,
  "id": "dotall_off",
  "expected_database": "d:\\ETASData\\ASCET6.4\\Database\\AEB_1"
}
```

完整 JSON 请求耗时：236.87 ms。

| 查询 | 命中文档 | 出现次数 |
| --- | ---: | ---: |
| dotall_off | 0 | 0 |

## 9. 返回命中前后文

这里要求前 2 行、后 1 行；窗口会在文档边界截齐，重叠窗口合并。

实际请求：

```json
{
  "query": "C_AEB_FxTarPT",
  "mode": "identifier_occurrence",
  "case_sensitive": true,
  "context_before": 2,
  "context_after": 1,
  "id": "context",
  "expected_database": "d:\\ETASData\\ASCET6.4\\Database\\AEB_1"
}
```

完整 JSON 请求耗时：96.71 ms。

| 查询 | 命中文档 | 出现次数 |
| --- | ---: | ---: |
| context | 1 | 1 |

实际命中：`PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_RedEngTorque` → `calc`；kind=`method`，variant=`ASDL`。

document_id：`a1146a88709c0aef1a872cd77986f2fe215e1a59e09220bcf8e120959ff3bc50`。

命中行及位置：

```json
[
  {
    "line": 8,
    "columns": [
      18
    ],
    "text": "   AEB_FxTarPT = C_AEB_FxTarPT;"
  }
]
```

返回的上下文：

```json
[
  {
    "start_line": 6,
    "end_line": 9,
    "lines": [
      "{",
      "   //reduce/limit torque by setting target force to parameter",
      "   AEB_FxTarPT = C_AEB_FxTarPT;",
      "   AEB_LDMSelectedControllerPT = LDMSelectedController_AEB;"
    ]
  }
]
```

## 10. 忽略大小写

默认不区分大小写；本例明确设为 false，用小写输入查到实际大写变量。

实际请求：

```json
{
  "query": "aeb_fxtarpt = 250000;",
  "mode": "text",
  "case_sensitive": false,
  "id": "case_insensitive",
  "expected_database": "d:\\ETASData\\ASCET6.4\\Database\\AEB_1"
}
```

完整 JSON 请求耗时：112.26 ms。

| 查询 | 命中文档 | 出现次数 |
| --- | ---: | ---: |
| case_insensitive | 2 | 2 |

实际命中：`PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_RedEngTorque` → `init`；kind=`method`，variant=`ASDL`。

document_id：`9a31e927b1929f13d33661c2e3feacee20dc89a373612c70620972e7a8ad45da`。

命中行及位置：

```json
[
  {
    "line": 1,
    "columns": [
      1
    ],
    "text": "AEB_FxTarPT = 250000;"
  }
]
```

## 11. 对照：严格区分大小写

同一小写查询开启 case_sensitive 后，在当前库没有命中。

实际请求：

```json
{
  "query": "aeb_fxtarpt = 250000;",
  "mode": "text",
  "case_sensitive": true,
  "id": "case_sensitive",
  "expected_database": "d:\\ETASData\\ASCET6.4\\Database\\AEB_1"
}
```

完整 JSON 请求耗时：95.37 ms。

| 查询 | 命中文档 | 出现次数 |
| --- | ---: | ---: |
| case_sensitive | 0 | 0 |

## 12. 一次请求搜索多个变量和代码片段

每个 query 独立返回结果；可混用三种模式，不要求同一个方法同时包含所有 query。

实际请求：

```json
{
  "queries": [
    {
      "id": "variable",
      "query": "AEB_FxTarPT",
      "mode": "identifier_occurrence",
      "case_sensitive": true
    },
    {
      "id": "prefix",
      "query": "\\bAEB_EngTrqRedActive[A-Za-z_0-9]*\\b",
      "mode": "regex",
      "case_sensitive": true
    },
    {
      "id": "init_graph",
      "query": "AEBLockTime = 0.0;",
      "mode": "text",
      "case_sensitive": true
    }
  ],
  "context_before": 1,
  "context_after": 1,
  "id": "batch",
  "expected_database": "d:\\ETASData\\ASCET6.4\\Database\\AEB_1"
}
```

完整 JSON 请求耗时：237.82 ms。

| 查询 | 命中文档 | 出现次数 |
| --- | ---: | ---: |
| variable | 3 | 8 |
| prefix | 5 | 8 |
| init_graph | 1 | 1 |

实际命中：`PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_RedEngTorque` → `calc`；kind=`method`，variant=`ASDL`。

document_id：`a1146a88709c0aef1a872cd77986f2fe215e1a59e09220bcf8e120959ff3bc50`。

命中行及位置：

```json
[
  {
    "line": 8,
    "columns": [
      4
    ],
    "text": "   AEB_FxTarPT = C_AEB_FxTarPT;"
  },
  {
    "line": 12,
    "columns": [
      13
    ],
    "text": "         && AEB_FxTarPT < C_AEB_FxTarRampMaxPT"
  },
  {
    "line": 17,
    "columns": [
      7
    ],
    "text": "      AEB_FxTarPT = FxActPT;\t   "
  },
  {
    "line": 20,
    "columns": [
      4,
      18
    ],
    "text": "   AEB_FxTarPT = AEB_FxTarPT + C_AEB_DiffFxTarRampPT;"
  },
  {
    "line": 26,
    "columns": [
      4
    ],
    "text": "   AEB_FxTarPT = 250000;"
  }
]
```

返回的上下文：

```json
[
  {
    "start_line": 7,
    "end_line": 9,
    "lines": [
      "   //reduce/limit torque by setting target force to parameter",
      "   AEB_FxTarPT = C_AEB_FxTarPT;",
      "   AEB_LDMSelectedControllerPT = LDMSelectedController_AEB;"
    ]
  },
  {
    "start_line": 11,
    "end_line": 13,
    "lines": [
      "else if (   AEB_LDMSelectedControllerPT == LDMSelectedController_AEB",
      "         && AEB_FxTarPT < C_AEB_FxTarRampMaxPT",
      "\t\t)\t"
    ]
  },
  {
    "start_line": 16,
    "end_line": 21,
    "lines": [
      "   {",
      "      AEB_FxTarPT = FxActPT;\t   ",
      "   }",
      "",
      "   AEB_FxTarPT = AEB_FxTarPT + C_AEB_DiffFxTarRampPT;",
      "   AEB_LDMSelectedControllerPT = LDMSelectedController_AEB;"
    ]
  },
  {
    "start_line": 25,
    "end_line": 27,
    "lines": [
      "   //no torque reduction/limitation by setting target force to passive value (numeric maximum value)",
      "   AEB_FxTarPT = 250000;",
      "   AEB_LDMSelectedControllerPT = LDMSelectedController_None;"
    ]
  }
]
```

实际命中：`PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_RedEngTorque` → `calc`；kind=`method`，variant=`ASDL`。

document_id：`a1146a88709c0aef1a872cd77986f2fe215e1a59e09220bcf8e120959ff3bc50`。

命中行及位置：

```json
[
  {
    "line": 5,
    "columns": [
      5
    ],
    "text": "if (AEB_EngTrqRedActive_B)",
    "ranges": [
      {
        "start_line": 5,
        "start_column": 5,
        "end_line": 5,
        "end_column": 26
      }
    ]
  },
  {
    "line": 15,
    "columns": [
      8
    ],
    "text": "   if (AEB_EngTrqRedActiveK1_B)",
    "ranges": [
      {
        "start_line": 15,
        "start_column": 8,
        "end_line": 15,
        "end_column": 31
      }
    ]
  },
  {
    "line": 31,
    "columns": [
      1,
      27
    ],
    "text": "AEB_EngTrqRedActiveK1_B = AEB_EngTrqRedActive_B;",
    "ranges": [
      {
        "start_line": 31,
        "start_column": 1,
        "end_line": 31,
        "end_column": 24
      },
      {
        "start_line": 31,
        "start_column": 27,
        "end_line": 31,
        "end_column": 48
      }
    ]
  }
]
```

返回的上下文：

```json
[
  {
    "start_line": 4,
    "end_line": 6,
    "lines": [
      "",
      "if (AEB_EngTrqRedActive_B)",
      "{"
    ]
  },
  {
    "start_line": 14,
    "end_line": 16,
    "lines": [
      "{",
      "   if (AEB_EngTrqRedActiveK1_B)",
      "   {"
    ]
  },
  {
    "start_line": 30,
    "end_line": 31,
    "lines": [
      "//store last cycle value",
      "AEB_EngTrqRedActiveK1_B = AEB_EngTrqRedActive_B;"
    ]
  }
]
```

实际命中：`PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AEB_Core\AEB_State_Machine` → `init`；kind=`graphical_method`，variant=`BD`。

document_id：`aded2855e5129bc8b861ac373066427b7954cd6db67a95dce0d527e3f18714e2`。

命中行及位置：

```json
[
  {
    "line": 4,
    "columns": [
      1
    ],
    "text": "AEBLockTime = 0.0;"
  }
]
```

返回的上下文：

```json
[
  {
    "start_line": 3,
    "end_line": 5,
    "lines": [
      "// sequence 10",
      "AEBLockTime = 0.0;",
      "// Supported graph nodes used by this method; full specification graph is available via read_state_machine."
    ]
  }
]
```

## 13. 共享结果格式

搜索含义不变；results[i].match_set 指向 match_sets，前后文从同索引 context_sets 取。

实际请求：

```json
{
  "query": "C_AEB_FxTarPT",
  "mode": "identifier_occurrence",
  "case_sensitive": true,
  "context_before": 2,
  "context_after": 1,
  "result_format": "shared",
  "id": "shared",
  "expected_database": "d:\\ETASData\\ASCET6.4\\Database\\AEB_1"
}
```

完整 JSON 请求耗时：95.75 ms。

| 查询 | 命中文档 | 出现次数 |
| --- | ---: | ---: |
| shared | 1 | 1 |

实际命中：`PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_RedEngTorque` → `calc`；kind=`method`，variant=`ASDL`。

document_id：`a1146a88709c0aef1a872cd77986f2fe215e1a59e09220bcf8e120959ff3bc50`。

命中行及位置：

```json
[
  {
    "line": 8,
    "columns": [
      18
    ],
    "text": "   AEB_FxTarPT = C_AEB_FxTarPT;"
  }
]
```

返回的上下文：

```json
[
  {
    "start_line": 6,
    "end_line": 9,
    "lines": [
      "{",
      "   //reduce/limit torque by setting target force to parameter",
      "   AEB_FxTarPT = C_AEB_FxTarPT;",
      "   AEB_LDMSelectedControllerPT = LDMSelectedController_AEB;"
    ]
  }
]
```

本命中 match_set=0，上文从 match_sets[0] 和 context_sets[0] 解引用得到。

## 14. 对照：普通文本中的星号

text 不将 * 当作通配符。此写法没有命中；要查这个前缀，使用上面的 regex_prefix。

实际请求：

```json
{
  "query": "AEB_EngTrqRedActive*",
  "mode": "text",
  "case_sensitive": true,
  "id": "star_literal",
  "expected_database": "d:\\ETASData\\ASCET6.4\\Database\\AEB_1"
}
```

完整 JSON 请求耗时：96.87 ms。

| 查询 | 命中文档 | 出现次数 |
| --- | ---: | ---: |
| star_literal | 0 | 0 |

## 当前不支持的搜索能力

- 独立 wildcard/glob 模式：未实现。text 的星号按普通字符匹配，可用 regex 明确表达前缀模式。
- 拼写纠错/编辑距离 fuzzy、自然语言语义代码搜索、变量定义与真实引用解析：未实现。
- 按组件/方法/Implementation/Variant 限定范围及独立名称 find：未实现；名称是命中元数据。
- read 和 read_state_machine 是后续读取操作，不是 mode；Dataset 搜索也不属于本工具。

复现：`npm.cmd --prefix tools/code-search run build:ts` 后执行 `node tools/code-search/dist/scripts/examples-search-modes.js`。

也可把同目录 search-modes-requests.jsonl 输入常驻 `dist/src/cli.js`；请求固定 expected_database，切库后需要更新。

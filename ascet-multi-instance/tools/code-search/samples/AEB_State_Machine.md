# AEB_State_Machine：真实读取样本

读取时间：2026-10-01T11:36:28.5646849Z（UTC）。这是该次请求的导出快照，后续模型修改不会自动更新此文件。

数据库：`d:\ETASData\ASCET6.4\Database\AEB_1`。

组件：`PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AEB_Core\AEB_State_Machine`。

组件 OID：`040qm00100001m8714ag81ugur0dk`。

共 3 个状态、8 条转移、16 段文本代码、8 处方法绑定、1 个图形方法文档。

## 完整性

- 支持范围的源码读取完整：true。
- 槽位绑定解析完整：true。
- 包含组件方法体的读取完整：true。
- 本样本的 trigger、init_trigger 是 ASCET 触发事件入口，其行为由状态机图定义。
- Init/init 的图形节点、GET/SET 端口、连线及方法执行序号见 graphical_bodies；可读赋值是图形模型的派生表达，不是原始 ESDL 或生成 C。
- complete 限定于 state_machine_source_bundle_v2；不含状态转移拓扑、外部组件实例连线、生成代码或未提交编辑缓冲。复杂图形将显式报告 partial。

## 方法目录

| 名称 | 所属 Specification | ASCET API 类型 | 读取状态 | 绑定位置数 |
| --- | --- | --- | --- | --- |
| init_trigger | Main | EtasAPITrigger | state_machine_event | 3 |
| trigger | Main | EtasAPITrigger | state_machine_event | 5 |
| init | Init | EtasAPIDiscreteMethod | graphical | 0 |

## 完整正文与绑定

以下按源码文档逐段列出；JSON 样本保留原始换行、哈希和完整定位信息。

### Main/AEB_State_Off · state_entry

文档身份：`7391f98e0f687c7440f31c9faf30e2e6e1221a465a6d6c648fbdc549d142f51d`。

位置：`040ts00000001qg714eg70igttug6/s0`；逻辑行数：9。

```esdl
/* */

/* Initialization of AEB-state-signals */
AEBState = 10;
AEBActive = false;
AEBBAActive = false;
AEBIBActive = false;

tAEB = 0.0;
```

### Main/AEB_State_Off · state_static

文档身份：`7d9d49b4dd9f438f9950f6155f349d14408c21afbbfb726abf189d174d9d03cb`。

位置：`040ts00000001qg714eg70igttug6/s0`；逻辑行数：15。

```esdl
/* */
/* Initialization of AEB-state-signals */
AEBState=11;
AEBActive = false;
AEBBAActive = false;
AEBIBActive = false;

tAEB = 0.0;

/* Decrement timer for locking time */
if (AEBLockTime > 0.0)
{
   AEBLockTime = AEBLockTime - C_AEBdT;
}

```

### Main/AEB_State_Off · state_exit

文档身份：`4a4706bd32b1b87d2785b4c7f138341fe676c5d061c8fc88fbc6d1f85997e639`。

位置：`040ts00000001qg714eg70igttug6/s0`；逻辑行数：4。

```esdl
/* */
AEBState=12;


```

### Main/AEB_State_BA · state_entry

文档身份：`f2c25d9ec066779d39bc4601cd05e4bd1f721bc6869c0bc485126eb52f473f7f`。

位置：`040ts00000001qg714eg70igttug6/s1`；逻辑行数：6。

```esdl
/* */
AEBState=30;
AEBActive = true;
AEBBAActive = true;

tAEB = tAEB + C_AEBdT;
```

### Main/AEB_State_BA · state_static

文档身份：`6fb9cbd3c08b4bb0b0e98f2b759883fb2e9830f537da3e9cb6e3aaf9090f939a`。

位置：`040ts00000001qg714eg70igttug6/s1`；逻辑行数：4。

```esdl
/* */
AEBState=31;

tAEB = tAEB + C_AEBdT;
```

### Main/AEB_State_BA · state_exit

文档身份：`d64a36a6c59b5b3b2737e2837082b284beda14f8df3913ade8e78e425c2e388d`。

位置：`040ts00000001qg714eg70igttug6/s1`；逻辑行数：3。

```esdl
/* */
AEBState=32;
AEBBAActive = false;
```

### Main/AEB_State_IB · state_entry

文档身份：`f8dd1dadb1f98a4bb43826a94cac0a020c9455e9c5f52afbd3932da709e1955c`。

位置：`040ts00000001qg714eg70igttug6/s2`；逻辑行数：6。

```esdl
/* */
AEBState=20;
AEBActive = true;
AEBIBActive = true;

tAEB = tAEB + C_AEBdT;
```

### Main/AEB_State_IB · state_static

文档身份：`7b070269c4ee1be6518bf038cc0fcbaa2021413e09202ef9009274473e768b3b`。

位置：`040ts00000001qg714eg70igttug6/s2`；逻辑行数：4。

```esdl
/* */
AEBState=21;

tAEB = tAEB + C_AEBdT;
```

### Main/AEB_State_IB · state_exit

文档身份：`716ad1ef149fe61a40047025f4ef5443af0404e573c7e096ebe225e992c13bff`。

位置：`040ts00000001qg714eg70igttug6/s2`；逻辑行数：3。

```esdl
/* */ 
AEBState=22;
AEBIBActive = false;
```

### Main/Transition #27 · transition_trigger_binding

文档身份：`94c5ea30d573b537bc9fd76829c2a9685c2c7fec13da893f6efaa5417700b48d`。

位置：`040ts00000001qg714eg70igttug6/t27`；逻辑行数：1。

绑定：`trigger`，alias：`0101ab0001000000d90709150407d1c1c4da0000`，类型：`EtasAPITrigger`。

### Main/Transition #27 · transition_condition

文档身份：`95ca35204f4d59f7cb347d2a7988102118c4711614948cfa9cc1284fc13e57d5`。

位置：`040ts00000001qg714eg70igttug6/t27`；逻辑行数：1。

```esdl
Trigger_IB_From_Off
```

### Main/Transition #26 · transition_trigger_binding

文档身份：`7d1141f3a3130750dfd8fc124bc80386ffed7a3e0a2d28b77a9617a5937d3682`。

位置：`040ts00000001qg714eg70igttug6/t26`；逻辑行数：1。

绑定：`trigger`，alias：`0101ab0001000000d90709150407d1c1c4da0000`，类型：`EtasAPITrigger`。

### Main/Transition #26 · transition_condition

文档身份：`76591e9ab64b103bf118a97e2d7c5b1e6ec892533289f429e0c6a99366647e26`。

位置：`040ts00000001qg714eg70igttug6/t26`；逻辑行数：1。

```esdl
Trigger_BA_From_Off
```

### Main/Transition #25 · transition_trigger_binding

文档身份：`2a9cd3e76f1b43c8d8d02ad30d0f02ed7f9229f306822be8d4fe7b3130158b23`。

位置：`040ts00000001qg714eg70igttug6/t25`；逻辑行数：1。

绑定：`trigger`，alias：`0101ab0001000000d90709150407d1c1c4da0000`，类型：`EtasAPITrigger`。

### Main/Transition #25 · transition_action

文档身份：`7bd84c66760c0e476020043fd89de3bf7e3cdbb8e0a51345a13f26d5279b4eec`。

位置：`040ts00000001qg714eg70igttug6/t25`；逻辑行数：4。

```esdl
//Initialize AEB lock time

/* Initialization of AEB-locking time */
AEBLockTime = C_AEB_LockTime;
```

### Main/Transition #25 · transition_condition

文档身份：`128b757fe6fe3c5549d8485fbe23cd1454acdd6107e3ffc27740b06f2a3ba88b`。

位置：`040ts00000001qg714eg70igttug6/t25`；逻辑行数：1。

```esdl
Trigger_Off_From_BA
```

### Main/Transition #24 · transition_trigger_binding

文档身份：`f59ac6de4cd05918a43d21646418f2270613ae2b4ac5e1cb953a9d43b52692bd`。

位置：`040ts00000001qg714eg70igttug6/t24`；逻辑行数：1。

绑定：`init_trigger`，alias：`0101ab0001000000db070412f3ab50eb822a0000`，类型：`EtasAPITrigger`。

### Main/Transition #23 · transition_trigger_binding

文档身份：`21f2cb1ed1bbd5d30b9a1ed5481d765010079fd10afd7e2c687108778a6c320d`。

位置：`040ts00000001qg714eg70igttug6/t23`；逻辑行数：1。

绑定：`trigger`，alias：`0101ab0001000000d90709150407d1c1c4da0000`，类型：`EtasAPITrigger`。

### Main/Transition #23 · transition_action

文档身份：`8ce0ad1aceed914d08af029de19745779f2c52a77a2b5c0af72d44d98cdfb147`。

位置：`040ts00000001qg714eg70igttug6/t23`；逻辑行数：4。

```esdl
//Initialize AEB lock time

/* Initialization of AEB-locking time */
AEBLockTime = C_AEB_LockTime;
```

### Main/Transition #23 · transition_condition

文档身份：`1e177bffa0f4aea551e7ab52b39da7071598afa9b6fcb1774496254d7d84a101`。

位置：`040ts00000001qg714eg70igttug6/t23`；逻辑行数：2。

```esdl
Trigger_Off_From_IB

```

### Main/Transition #22 · transition_trigger_binding

文档身份：`2d012c260d1241ace846588dc788258cfce060b773375bc68c81d8da8f397ef0`。

位置：`040ts00000001qg714eg70igttug6/t22`；逻辑行数：1。

绑定：`trigger`，alias：`0101ab0001000000d90709150407d1c1c4da0000`，类型：`EtasAPITrigger`。

### Main/Transition #22 · transition_condition

文档身份：`480466b7cfec244c8e51466cd5b08e8be32be7b4b0eec023724991b37b4d3ad2`。

位置：`040ts00000001qg714eg70igttug6/t22`；逻辑行数：1。

```esdl
Trigger_BA_From_IB
```

### Main/Transition #21 · transition_trigger_binding

文档身份：`a56ca2d8f7be83fbaf47d32f98ecac3782c8984fd5cac2ac1f6d599f1ee7230c`。

位置：`040ts00000001qg714eg70igttug6/t21`；逻辑行数：1。

绑定：`init_trigger`，alias：`0101ab0001000000db070412f3ab50eb822a0000`，类型：`EtasAPITrigger`。

### Main/Transition #20 · transition_trigger_binding

文档身份：`46a7da95295c47532c4a4f776d3a469a52c1262e2f2176e80c9ee2a43ac406bf`。

位置：`040ts00000001qg714eg70igttug6/t20`；逻辑行数：1。

绑定：`init_trigger`，alias：`0101ab0001000000db070412f3ab50eb822a0000`，类型：`EtasAPITrigger`。

### init · graphical_method

文档身份：`aded2855e5129bc8b861ac373066427b7954cd6db67a95dce0d527e3f18714e2`。

位置：`0101ab0001000000da070806128c7bf1d39d0000`；逻辑行数：99。

```ascet_graph
// ASCET graphical model representation; not handwritten ESDL or generated C.
// Specification: Init; method: init; alias: 0101ab0001000000da070806128c7bf1d39d0000
// sequence 10
AEBLockTime = 0.0;
// Supported graph nodes used by this method; full specification graph is available via read_state_machine.
{
  "component_oid": "040qm00100001m8714ag81ugur0dk",
  "specification_source_oid": "040ts00000001qg714eg70igttv06",
  "specification_name": "Init",
  "complete": true,
  "nodes": [
    {
      "scope": "root",
      "id": -1,
      "class_name": "SGCodeGODB",
      "element_alias": "",
      "element_name": "",
      "literal": "",
      "element_class": ""
    },
    {
      "scope": "root",
      "id": 4,
      "class_name": "SGLiteralGODB",
      "element_alias": "",
      "element_name": "",
      "literal": "0.0",
      "element_class": ""
    },
    {
      "scope": "root",
      "id": 6,
      "class_name": "SGDataGODB",
      "element_alias": "0101ab0001000000da07080612950c24ddb60000",
      "element_name": "AEBLockTime",
      "literal": "",
      "element_class": "SGVariable"
    }
  ],
  "ports": [
    {
      "scope": "root",
      "node_id": 4,
      "id": 5,
      "direction": "return",
      "operation": "literal",
      "parameter": "return",
      "storage_flags": ""
    },
    {
      "scope": "root",
      "node_id": 6,
      "id": 7,
      "direction": "selector",
      "operation": "set",
      "parameter": "aValue",
      "storage_flags": "true/false/false"
    },
    {
      "scope": "root",
      "node_id": 6,
      "id": 8,
      "direction": "return",
      "operation": "get",
      "parameter": "return",
      "storage_flags": "true/false/false"
    }
  ],
  "sequences": [
    {
      "scope": "root",
      "node_id": 6,
      "id": 9,
      "method_alias": "0101ab0001000000da070806128c7bf1d39d0000",
      "number": 10,
      "operation": "set",
      "storage_flags": "nil/false"
    }
  ],
  "connections": [
    {
      "scope": "root",
      "index": 1,
      "from_port": 5,
      "to_port": 7,
      "from_block": null,
      "to_block": null,
      "class_name": "SGConnectionGODB"
    }
  ],
  "methods": [
    {
      "member_id": "0101ab0001000000da070806128c7bf1d39d0000",
      "member_name": "init",
      "is_process": false
    }
  ],
  "issues": []
}
```

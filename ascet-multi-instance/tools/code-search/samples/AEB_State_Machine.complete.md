# AEB_State_Machine 完整代码与 Agent 返回

读取时间：2026-10-02T01:17:37.8184443Z（UTC）。

Component：PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AEB_Core\AEB_State_Machine

本次完整导出 25 项；空代码段也保留。与独立的状态机读取结果逐项一致，读取前后模型内容一致。

覆盖：State Entry/Static/Exit Action、Transition Condition/Action/Trigger、保存的 Method 绑定以及支持的图形 Init。

范围：不包含状态转移拓扑、父级 Component 外部连线、生成代码、未提交编辑器内容或递归调用的 Method 实现。

## 方法目录

| Method | 所属 Specification | 类型 | 实现状态 |
|---|---|---|---|
| init_trigger | Main | EtasAPITrigger | state_machine_event |
| trigger | Main | EtasAPITrigger | state_machine_event |
| init | Init | EtasAPIDiscreteMethod | graphical |

state_machine_event 表示状态机事件入口；绑定名称本身不构成 Method 实现。

## 全部代码项

### 1. Main/AEB_State_Off / state_entry

Diagram：Main；Variant：ASDL；逻辑行数：9。

```c
/* */

/* Initialization of AEB-state-signals */
AEBState = 10;
AEBActive = false;
AEBBAActive = false;
AEBIBActive = false;

tAEB = 0.0;
```

### 2. Main/AEB_State_BA / state_entry

Diagram：Main；Variant：ASDL；逻辑行数：6。

```c
/* */
AEBState=30;
AEBActive = true;
AEBBAActive = true;

tAEB = tAEB + C_AEBdT;
```

### 3. Main/AEB_State_IB / state_entry

Diagram：Main；Variant：ASDL；逻辑行数：6。

```c
/* */
AEBState=20;
AEBActive = true;
AEBIBActive = true;

tAEB = tAEB + C_AEBdT;
```

### 4. Main/AEB_State_Off / state_exit

Diagram：Main；Variant：ASDL；逻辑行数：4。

```c
/* */
AEBState=12;


```

### 5. Main/AEB_State_BA / state_exit

Diagram：Main；Variant：ASDL；逻辑行数：3。

```c
/* */
AEBState=32;
AEBBAActive = false;
```

### 6. Main/AEB_State_IB / state_exit

Diagram：Main；Variant：ASDL；逻辑行数：3。

```c
/* */ 
AEBState=22;
AEBIBActive = false;
```

### 7. Main/AEB_State_Off / state_static

Diagram：Main；Variant：ASDL；逻辑行数：15。

```c
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

### 8. Main/AEB_State_BA / state_static

Diagram：Main；Variant：ASDL；逻辑行数：4。

```c
/* */
AEBState=31;

tAEB = tAEB + C_AEBdT;
```

### 9. Main/AEB_State_IB / state_static

Diagram：Main；Variant：ASDL；逻辑行数：4。

```c
/* */
AEBState=21;

tAEB = tAEB + C_AEBdT;
```

### 10. Main/Transition #23 / transition_action

Diagram：Main；Variant：ASDL；逻辑行数：4。

```c
//Initialize AEB lock time

/* Initialization of AEB-locking time */
AEBLockTime = C_AEB_LockTime;
```

### 11. Main/Transition #25 / transition_action

Diagram：Main；Variant：ASDL；逻辑行数：4。

```c
//Initialize AEB lock time

/* Initialization of AEB-locking time */
AEBLockTime = C_AEB_LockTime;
```

### 12. Main/Transition #22 / transition_condition

Diagram：Main；Variant：ASDL；逻辑行数：1。

```c
Trigger_BA_From_IB
```

### 13. Main/Transition #23 / transition_condition

Diagram：Main；Variant：ASDL；逻辑行数：2。

```c
Trigger_Off_From_IB

```

### 14. Main/Transition #25 / transition_condition

Diagram：Main；Variant：ASDL；逻辑行数：1。

```c
Trigger_Off_From_BA
```

### 15. Main/Transition #26 / transition_condition

Diagram：Main；Variant：ASDL；逻辑行数：1。

```c
Trigger_BA_From_Off
```

### 16. Main/Transition #27 / transition_condition

Diagram：Main；Variant：ASDL；逻辑行数：1。

```c
Trigger_IB_From_Off
```

### 17. Main/Transition #20 / transition_trigger_binding

Diagram：Main；Variant：ASDL；逻辑行数：1。

Method 绑定；目标实现状态：state_machine_event。

```json
{
  "method": "init_trigger",
  "method_alias": "0101ab0001000000db070412f3ab50eb822a0000",
  "component_oid": "040qm00100001m8714ag81ugur0dk"
}
```

### 18. Main/Transition #21 / transition_trigger_binding

Diagram：Main；Variant：ASDL；逻辑行数：1。

Method 绑定；目标实现状态：state_machine_event。

```json
{
  "method": "init_trigger",
  "method_alias": "0101ab0001000000db070412f3ab50eb822a0000",
  "component_oid": "040qm00100001m8714ag81ugur0dk"
}
```

### 19. Main/Transition #22 / transition_trigger_binding

Diagram：Main；Variant：ASDL；逻辑行数：1。

Method 绑定；目标实现状态：state_machine_event。

```json
{
  "method": "trigger",
  "method_alias": "0101ab0001000000d90709150407d1c1c4da0000",
  "component_oid": "040qm00100001m8714ag81ugur0dk"
}
```

### 20. Main/Transition #23 / transition_trigger_binding

Diagram：Main；Variant：ASDL；逻辑行数：1。

Method 绑定；目标实现状态：state_machine_event。

```json
{
  "method": "trigger",
  "method_alias": "0101ab0001000000d90709150407d1c1c4da0000",
  "component_oid": "040qm00100001m8714ag81ugur0dk"
}
```

### 21. Main/Transition #24 / transition_trigger_binding

Diagram：Main；Variant：ASDL；逻辑行数：1。

Method 绑定；目标实现状态：state_machine_event。

```json
{
  "method": "init_trigger",
  "method_alias": "0101ab0001000000db070412f3ab50eb822a0000",
  "component_oid": "040qm00100001m8714ag81ugur0dk"
}
```

### 22. Main/Transition #25 / transition_trigger_binding

Diagram：Main；Variant：ASDL；逻辑行数：1。

Method 绑定；目标实现状态：state_machine_event。

```json
{
  "method": "trigger",
  "method_alias": "0101ab0001000000d90709150407d1c1c4da0000",
  "component_oid": "040qm00100001m8714ag81ugur0dk"
}
```

### 23. Main/Transition #26 / transition_trigger_binding

Diagram：Main；Variant：ASDL；逻辑行数：1。

Method 绑定；目标实现状态：state_machine_event。

```json
{
  "method": "trigger",
  "method_alias": "0101ab0001000000d90709150407d1c1c4da0000",
  "component_oid": "040qm00100001m8714ag81ugur0dk"
}
```

### 24. Main/Transition #27 / transition_trigger_binding

Diagram：Main；Variant：ASDL；逻辑行数：1。

Method 绑定；目标实现状态：state_machine_event。

```json
{
  "method": "trigger",
  "method_alias": "0101ab0001000000d90709150407d1c1c4da0000",
  "component_oid": "040qm00100001m8714ag81ugur0dk"
}
```

### 25. init / graphical_method

Diagram：Init；Variant：BD；逻辑行数：99。

```text
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

## 完整请求与返回文件

- Agent 实际批量返回：AEB_State_Machine.complete.agent.json
- 搜索到批量读取的完整请求/响应：AEB_State_Machine.complete.example.json
- 状态机专用详细读取（含 Method 目录和图形节点/端口/连线）：AEB_State_Machine.complete.bundle.json

文件中的 ref/cursor 属于本次已关闭的读取会话；实际调用时使用新搜索返回的值。

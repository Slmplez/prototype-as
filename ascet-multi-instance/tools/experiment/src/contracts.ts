import { Ajv } from 'ajv';
import { ToolError } from './bridge.js';
const text = { type: 'string', minLength: 1, maxLength: 1024, pattern: '^[^\\u0000-\\u001f]+$' };
const id = { ...text, maxLength: 120 };
const number = { type: 'number' };
const integer = (min: number, max: number) => ({ type: 'integer', minimum: min, maximum: max });
const enumeration = (...values: string[]) => ({ type: 'string', enum: values });
const object = (properties: Record<string, any>, required = Object.keys(properties)) => ({ type: 'object' as const, properties, required, additionalProperties: false });
const session = { sessionId: id };
const refs = { type: 'array', items: id, minItems: 1, maxItems: 128, uniqueItems: true };
const scalarValue = { anyOf: [number, { type: 'boolean' }, { type: 'string', minLength: 1, maxLength: 128, pattern: '^[A-Za-z_][A-Za-z0-9_]*(?![\\s\\S])', not: { enum: ['NaN', 'Infinity'] } }] };
const writes = { type: 'array', minItems: 1, maxItems: 64, items: object({ signalRef: id, value: scalarValue }) };
const stimulus = object({ channel: text, mode: enumeration('constant', 'pulse'), offset: number, amplitude: { type: 'number', minimum: 0 }, frequencyHz: { type: 'number', exclusiveMinimum: 0, maximum: 1000000 }, phase: number });
const createdStimulus = object({ channel: text, signalRef: id, mode: enumeration('constant', 'pulse'), offset: number, amplitude: { type: 'number', minimum: 0 }, frequencyHz: { type: 'number', exclusiveMinimum: 0, maximum: 1000000 }, phase: number });
const defs = [
  ['exp_attach', '绑定已运行的独立 ASCET 实例，保持独占连接；不打开或切换数据库。', object({ instanceRef: text }, [])],
  ['exp_detach', '释放连接和会话；不关闭实验或 ASCET。', object(session)],
  ['exp_catalog', '查询当前数据库组件路径，最多 200 项；完整组件路径优先直接解析，路径用于 exp_open。', object({ ...session, query: { type: 'string', maxLength: 1024 } }, ['sessionId'])],
  ['exp_open', '打开 Offline PC 实验并核对实际配置。已有不同实验时必须先显式关闭；失败返回构建日志。', object({ ...session, componentPath: text, configuration: text })],
  ['exp_inspect', '一次调用读取身份、运行状态、仿真秒数及记录器状态。', object(session)],
  ['exp_signals', '发现原生标签并返回会话内 signalRef；displayLabel 不能代替原生标签。', object({ ...session, query: { type: 'string', maxLength: 128 }, kind: enumeration('all', 'calibration'), offset: integer(0, 1000000), limit: integer(1, 200) }, ['sessionId'])],
  ['exp_configure', '读取配置，或校验并修改数值激励和事件；save 保存环境，commitDatabase=true 同时将整个绑定数据库的待保存变更落盘。所有修改要求最新 revision。', { oneOf: [
    object({ ...session, action: { const: 'read' } }),
    object({ ...session, action: enumeration('validate', 'apply'), expectedRevision: id, stimulus }),
    object({ ...session, action: { const: 'create' }, expectedRevision: id, stimulus: createdStimulus }),
    object({ ...session, action: { const: 'save' }, expectedRevision: id, commitDatabase: { type: 'boolean' } }, ['sessionId', 'action', 'expectedRevision']),
    object({ ...session, action: enumeration('validate', 'apply'), expectedRevision: id, section: { const: 'event' }, event: object({ name: text, enabled: { type: 'boolean' }, delay: { type: 'number', minimum: 0 }, phase: number, priority: integer(-1000000, 1000000), mode: enumeration('segment', 'timeSynchron', 'singleShot', 'signalled') }, ['name']) }),
  ] }],
  ['exp_read', '一次原生调用批量读取至多 128 个标量。运行中为顺序读取，不承诺同时采样。', object({ ...session, signalRefs: refs, representation: enumeration('physical', 'hex') }, ['sessionId', 'signalRefs'])],
  ['exp_write', '暂停时批量标定数值、布尔或枚举名称标量，完整检查资格后顺序写入并回读；非事务。停止后先步进初始化，以免 start 覆盖值。', object({ ...session, writes })],
  ['exp_parameters', '重置变量/参数、更新依赖参数，或读写 DCM 文件。保存不覆盖已有文件。', { oneOf: [object({ ...session, action: enumeration('reset_variables', 'reset_parameters', 'update_dependent') }), object({ ...session, action: enumeration('load', 'save'), path: text })] }],
  ['exp_control', '控制离线或已验证在线运行轴。start 可能按 ASCET 选项重新初始化数据；close 必须明确丢弃未保存环境。', { oneOf: [object({ ...session, action: enumeration('start', 'pause', 'stop', 'start_os', 'stop_os', 'start_measurement', 'stop_measurement') }), object({ ...session, action: { const: 'close' }, discardUnsaved: { const: true } })] }],
  ['exp_step', '有界事件步进、秒数步进或安全条件步进并等待完成；events=1 是一个事件。超时不等于停止。', { oneOf: [
    object({ ...session, mode: { const: 'events' }, value: { type: 'integer', minimum: 1, maximum: 10000 }, maxWallTimeMs: integer(100, 60000) }, ['sessionId', 'mode', 'value']),
    object({ ...session, mode: { const: 'duration' }, value: { type: 'number', exclusiveMinimum: 0, maximum: 10000 }, maxWallTimeMs: integer(100, 60000) }, ['sessionId', 'mode', 'value']),
    object({ ...session, mode: { const: 'condition' }, signalRef: id, operator: enumeration('<', '<=', '==', '>=', '>'), threshold: number, maxEvents: integer(1, 10000), maxWallTimeMs: integer(100, 60000) }, ['sessionId', 'mode', 'signalRef', 'operator', 'threshold', 'maxEvents'])
  ] }],
  ['exp_record', '配置既有 Data Logger 的输出文件并启动/停止/查询；不会偷偷创建记录通道。', { oneOf: [object({ ...session, action: { const: 'status' } }), object({ ...session, action: { const: 'set_output' }, path: text }), object({ ...session, action: enumeration('start', 'stop') })] }],
  ['exp_run_case', '提交可取消的分段离线用例，返回 jobId。采集各段结束的快照序列，非原生日志完整波形。preserve 要求已暂停；reset 先初始化，再标定。', object({ ...session, requestId: id, caseSpec: object({ initialization: enumeration('preserve', 'reset'), stepSeconds: { type: 'number', exclusiveMinimum: 0, maximum: 1 }, chunks: integer(1, 1000), signalRefs: refs, writes, assertions: { type: 'array', maxItems: 64, items: object({ signalRef: id, min: number, max: number }) } }, ['initialization', 'stepSeconds', 'chunks', 'signalRefs']) })],
  ['exp_job', '查询后台用例，或请求在下一段完成后取消。取消请求不代表原生仿真立即停止。', object({ jobId: id, action: enumeration('get', 'cancel') })],
  ['exp_results', '读取本工具产生的用例快照、统计和断言结果；不冒充完整 Data Logger 采样。', object({ runId: id, maxPoints: integer(1, 1000) }, ['runId'])],
] as const;
export const tools = defs.map(([name, description, inputSchema]) => ({ name, description, inputSchema }));
const ajv = new Ajv({ allErrors: true, strict: false, strictNumbers: true });
const validators = new Map(tools.map(t => [t.name, ajv.compile(t.inputSchema)]));
export function validate(name: string, input: unknown): asserts input is Record<string, any> {
  const check = validators.get(name as any);
  if (!check) throw new ToolError('UNKNOWN_TOOL', name);
  if (!check(input)) throw new ToolError('INVALID_ARGUMENT', ajv.errorsText(check.errors));
}

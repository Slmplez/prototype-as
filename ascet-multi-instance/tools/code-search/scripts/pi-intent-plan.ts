import type { PiEvalCase } from './pi-eval-plan.js';
import type { IntentRubric } from './pi-intent-eval.js';

/** Fixed Chinese prompts; expected intents and native rubrics stay evaluator-only. */
export function createIntentPlan(base: any) {
  const cases: PiEvalCase[] = [];
  const fields = (id: string) => {
    const task = base.cases.find((c: any) => c.id === id);
    if (!task) throw new Error('Missing base case: ' + id);
    return task.requirement.split(/facts:\s*/i)[1] ?? '';
  };
  const add = (id: string, group: string, requirement: string, intent: IntentRubric, score_as?: string, extra: Partial<PiEvalCase> = {}) => {
    cases.push({ id: 'intent-' + id, group: 'intent_' + group, requirement, intent,
      ...(score_as ? { score_as, response_fields: fields(score_as) } : {}), ...extra });
  };
  const owner = 'AEB_AxCtrlConfigFF_Modify';
  const methodScope = { component: owner, kind: 'method', variant: 'ASDL' };
  const actions = (names: IntentRubric['actions'], terms: string[] = [], components: string[] = [], members: string[] = []): IntentRubric =>
    ({ actions: names, decision: 'execute', terms, components, members, clarification_fields: [] });
  const savedRead = (component: string, member: string, kind = 'method', variant = 'ASDL') =>
    ({ type: 'read' as const, scope: { component, kind, member, variant }, full: true });
  const fullReadFields = 'identity {component_path,kind,member,variant,implementation}, total_lines, code (exact saved text).';
  const searchFields = 'counts [{query,total_hits}] in requested order.';

  add('pressure-colloquial', 'paraphrase', '帮我找一下，驾驶员施加的力转换成压力时，输出压力是在什么地方清零的？把初始化那段完整代码给我看。',
    { ...actions(['locate', 'read']), required_tools: ['ascet_code_read'] }, 'class-init');
  add('locktime-reset', 'paraphrase', 'AEBLockTime 一开始为啥是零？找出清零的位置，说明这是保存的语句还是图里的连线。',
    { ...actions(['locate'], ['AEBLockTime']), required_tools: ['ascet_code_read'] }, 'bde-init');
  add('locktime-countdown', 'paraphrase', '锁定计时器 AEBLockTime 是在哪儿一拍一拍减掉 C_AEBdT 的？给我完整实现。',
    { ...actions(['locate', 'read'], ['AEBLockTime', 'C_AEBdT']), required_tools: ['ascet_code_read'] }, 'state-static-timer');
  add('inactive-zero', 'paraphrase', '找一下这段逻辑：AEB_AxCtrlActive_B 有效时保存 VxAct 和 AxTarRaw，无效时把修改后的值清零。我想看完整实现和两个加速度差值。',
    { ...actions(['locate', 'read'], ['AEB_AxCtrlActive_B', 'VxAct', 'AxTarRaw']), required_tools: ['ascet_code_search', 'ascet_code_read'] }, 'saved-method');

  add('whole-variable', 'scope', `只在 ${owner} 的 ASDL Method 中查完整变量 AxTarLim，名字带 K1 后缀的别算进去。给我总命中数。`,
    { ...actions(['search'], ['AxTarLim'], [owner]), search_scope: methodScope }, undefined,
    { response_fields: searchFields, rubric: { type: 'search', scope: methodScope, queries: [{ text: 'AxTarLim', mode: 'identifier' }] } });
  add('literal-expression', 'scope', `只在 ${owner}/calc_pre 的 ASDL 代码里找字面代码 AxTarRaw - AxTarLim，不要当正则。给我命中数。`,
    { ...actions(['search'], ['AxTarRaw - AxTarLim'], [owner], ['calc_pre']), search_scope: { ...methodScope, member: 'calc_pre' } }, undefined,
    { response_fields: searchFields, rubric: { type: 'search', scope: { ...methodScope, member: 'calc_pre' }, queries: [{ text: 'AxTarRaw - AxTarLim', mode: 'text' }] } });
  add('specific-c-variant', 'scope', "我要看 EvenValue 的 Even，版本是 'ES1112'_Physical Experiment 的 C 实现，完整读出来，别拿 ASDL 的替代。",
    { ...actions(['read'], [], ['EvenValue'], ['Even']), read_scope: { component: 'EvenValue', kind: 'method', member: 'Even', variant: " 'ES1112'_Physical Experiment" } }, 'saved-c-method');
  add('class-init-only', 'scope', '只读 DBR_Force2Pressure 这个 Class 的 Init 完整代码。我说的不是状态机 Action，也不是 Module 的初始化 Process。',
    { ...actions(['read'], [], ['DBR_Force2Pressure'], ['Init']), read_scope: { component: 'DBR_Force2Pressure', kind: 'method', member: 'Init', variant: 'ASDL' } }, 'class-init');

  add('where-wired', 'graph', 'C_AEB_AXCDeadZonePos 接到死区计算的哪里去了？看看真正的输出连线和目标对象的全部 Pins，别把图的拥有者当成被引用的 Class。',
    { ...actions(['connections'], ['C_AEB_AXCDeadZonePos']), required_tools: ['ascet_code_read'] }, 'bde-neighbor');
  add('getter-interface', 'graph', 'AEB_dFxTar 的 AEBdFxTar 是外面连线用的 getter 吧？找出它在哪个 Diagram，看看是否和 calc 共用图，不要凭空编一段文本代码。',
    { ...actions(['locate', 'read'], [], ['AEB_dFxTar'], ['AEBdFxTar', 'calc']), required_tools: ['ascet_code_read'] }, 'graphical-getter-diagram');
  add('static-not-entry', 'graph', '只看 AEB_State_Machine/Main 的 AEB_State_Off 在停留期间执行的代码，要完整的 Static Action，不是进入或退出时的 Action。',
    { ...actions(['read'], [], ['AEB_State_Machine'], ['Main/AEB_State_Off']), read_scope: { component: 'AEB_State_Machine', kind: 'state_static', member: 'Main/AEB_State_Off', variant: 'ASDL' } }, 'state-static-timer');
  add('junction-to-off', 'graph', '哪条 Transition 是从 Junction 走到 AEB_State_Off 的？把两端、优先级和触发 Method 的绑定核实一下，绑定不能当实现正文。',
    { ...actions(['locate'], ['AEB_State_Off']), required_tools: ['ascet_code_read'] }, 'transition-binding');

  add('three-variables', 'compound', `在 ${owner} 的 ASDL Method 中同时查 AxTarRaw、VxAct、AxTarLim 三个完整变量，各自统计，不能理解成三个必须同时出现。`,
    { ...actions(['search'], ['AxTarRaw', 'VxAct', 'AxTarLim'], [owner]), search_scope: methodScope }, undefined,
    { response_fields: searchFields, rubric: { type: 'search', scope: methodScope, queries: ['AxTarRaw', 'VxAct', 'AxTarLim'].map(text => ({ text, mode: 'identifier' })) } });
  add('two-owners', 'compound', `只列 ${owner} 和 DBR_Force2Pressure 两个 Component 下名字恰好叫 calc 的保存成员。不存在就如实说明，保留各自身份。`,
    actions(['locate'], [], [owner, 'DBR_Force2Pressure'], ['calc']), 'common-calc-two-owners');
  add('shared-class', 'compound', 'AxCtrlLimGradAxMin 和 AxCtrlLimGradAxMax 是不是同一 Class 的两个对象？查清引用关系，完整读实际 Class 的 calc，并给一条真实连线。',
    { ...actions(['compare'], ['AxCtrlLimGradAxMin', 'AxCtrlLimGradAxMax']), required_tools: ['ascet_code_read'] }, 'referenced-class');
  add('line-window', 'compound', `我只要 ${owner}/calc_pre 的 ASDL 原文第 3 到第 12 行，行号保留，整个方法别都发过来。`,
    { ...actions(['read'], [], [owner], ['calc_pre']), read_scope: { ...methodScope, member: 'calc_pre' } }, 'method-line-window');

  const clarify = (missing: string[], patterns: string[], extra: Partial<IntentRubric> = {}): IntentRubric =>
    ({ ...actions(['clarify']), decision: 'clarify', clarification_fields: missing, question_patterns: patterns, no_reads: true, ...extra });
  add('missing-referent', 'ambiguity', '这个时间哪里来的？', clarify(['symbol'], ['(?:变量|参数|时间|计时器|名称)'], { no_tools: true }), undefined,
    { expected_outcome: 'partial', response_fields: '{}; ask the missing question in answer, list the missing information in missing_evidence.' });
  add('calc-without-owner', 'ambiguity', '把 calc 的完整代码给我看。', clarify(['component'], ['(?:组件|Component|Class|类)'], { members: ['calc'] }), undefined,
    { expected_outcome: 'partial', response_fields: '{}; ask which owner in answer; do not pick an arbitrary calc.' });
  add('variant-unspecified', 'ambiguity', '把 EvenValue/Even 的 C 实现完整给我看，Variant 还没选，先帮我确认可选项。',
    clarify(['variant'], ['(?:Variant|版本|变体)'], { components: ['EvenValue'], members: ['Even'], required_tools: ['ascet_code_find'] }), undefined,
    { expected_outcome: 'partial', response_fields: 'variants (all exact saved C Variant strings for this member); ask which Variant in answer.',
      intent_fixture: { type: 'read', scope: { component: 'EvenValue', kind: 'method', member: 'Even' } } });
  add('duplicate-stage', 'ambiguity', '看看 Trial_Hierarchy_20261001_100329_c7dd0b/Main 里叫 Stage 的 Hierarchy；如果有多个，先列出来问我是哪一个，不要替我选。',
    clarify(['hierarchy'], ['(?:Hierarchy|层级|路径|哪一个|哪个)'], { components: ['Trial_Hierarchy_20261001_100329_c7dd0b'], terms: ['Stage'], required_tools: ['ascet_code_find'] }), 'duplicate-hierarchy-names',
    { expected_outcome: 'partial' });

  add('followup-line-window', 'context', `现在只给我刚才那个 Method 的第 3 到第 12 行，复用刚才拿到的 ref，别重新发全文。`,
    { ...actions(['read'], [], [owner], ['calc_pre']), last_turn_only: true, reuse_previous_ref: true, read_scope: { ...methodScope, member: 'calc_pre' } }, 'method-line-window',
    { turns: [{ requirement: `先完整读取 ${owner}/calc_pre 的 ASDL 实现。`, response_fields: fullReadFields },
      { requirement: '现在只给我刚才那个 Method 的第 3 到第 12 行，复用刚才拿到的 ref，别重新发全文。', response_fields: fields('method-line-window') }] });
  add('followup-expand-batch', 'context', '再把 VxAct 和 AxTarRaw 加上，仍在刚才的 Component 和 ASDL Method 范围，三个变量独立统计。',
    { ...actions(['search'], ['AxTarLim', 'VxAct', 'AxTarRaw'], [owner]), last_turn_only: true, search_scope: methodScope }, undefined,
    { response_fields: searchFields, rubric: { type: 'search', scope: methodScope, queries: ['AxTarLim', 'VxAct', 'AxTarRaw'].map(text => ({ text, mode: 'identifier' })) },
      turns: [{ requirement: `只在 ${owner} 的 ASDL Method 中查完整变量 AxTarLim，统计全部命中。`, response_fields: searchFields },
        { requirement: '再把 VxAct 和 AxTarRaw 加上，仍在刚才的 Component 和 ASDL Method 范围，三个变量独立统计。', response_fields: searchFields }] });
  add('followup-timer', 'context', '再看它停留在 Off 状态时怎么递减，要完整代码。',
    { ...actions(['read', 'locate'], ['AEBLockTime'], ['AEB_State_Machine']), last_turn_only: true,
      read_scope: { component: 'AEB_State_Machine', kind: 'state_static', member: 'Main/AEB_State_Off', variant: 'ASDL' } }, 'state-static-timer',
    { turns: [{ requirement: '先看 AEB_State_Machine 中 AEBLockTime 初始化清零的证据。', response_fields: fields('bde-init') },
      { requirement: '再看它停留在 Off 状态时怎么递减，要完整代码。', response_fields: fields('state-static-timer') }] });
  add('followup-switch-owner', 'context', `改成 ${owner} 的 calc_pre，完整读 ASDL；这次不要继续读刚才的 Class Init。`,
    { ...actions(['read'], [], [owner], ['calc_pre']), last_turn_only: true, read_scope: { ...methodScope, member: 'calc_pre' } }, undefined,
    { response_fields: fullReadFields, rubric: savedRead(owner, 'calc_pre'), turns: [
      { requirement: '先完整读取 DBR_Force2Pressure 的 Class Init。', response_fields: fields('class-init') },
      { requirement: `改成 ${owner} 的 calc_pre，完整读 ASDL；这次不要继续读刚才的 Class Init。`, response_fields: fullReadFields }] });

  const unsupported = (terms: string[]): IntentRubric => ({ ...actions(['unsupported'], terms), decision: 'unsupported', no_reads: true, no_tools: true });
  add('runtime-now', 'boundary', '现在运行中的 AEBLockTime 到底是多少？我要实时数值，不是 Init 里的初始值。', unsupported(['AEBLockTime']), undefined,
    { expected_outcome: 'unsupported', response_fields: 'runtime_value_supported (boolean).', rubric: { type: 'unsupported', flags: { runtime_value_supported: false } } });
  add('unsaved-buffer', 'boundary', '我刚在编辑器改了 calc_pre 但没保存，你查一下修改后的代码。', unsupported([]), undefined,
    { expected_outcome: 'unsupported', response_fields: 'unsaved_buffers_covered (boolean).', rubric: { type: 'unsupported', flags: { unsaved_buffers_covered: false } } });
  add('dataset-number', 'boundary', '我要当前 Dataset 里 C_AEBdT 的数值，不是哪些代码用了它。', unsupported(['C_AEBdT']), undefined,
    { expected_outcome: 'unsupported', response_fields: 'dataset_values_supported (boolean).', rubric: { type: 'unsupported', flags: { dataset_values_supported: false } } });
  add('generated-target', 'boundary', '查生成到目标端的 C 代码里 AEBLockTime 的所有引用，只查生成代码，别用保存的 ASDL 结果替代。', unsupported(['AEBLockTime']), undefined,
    { expected_outcome: 'unsupported', response_fields: 'generated_code_covered (boolean).', rubric: { type: 'unsupported', flags: { generated_code_covered: false } } });

  return { version: 1, suite: 'intent', max_tool_calls: 20, timeout_ms: 240000,
    answer_format: base.answer_format + ' Also include intent: {action: locate/search/read/connections/compare/clarify/unsupported, decision: execute/clarify/unsupported, terms: string[], scope: {components: string[], members: string[]}, clarification_fields: string[]}. terms are positive requested search symbols/fragments, not excluded terms. scope records user constraints, including constraints resolved from prior turns; do not add a discovered owner the user never constrained. Empty lists are allowed. clarification_fields uses symbol/component/variant/hierarchy when those are missing. Choose action for the current user goal, not every intermediate tool. Before your first tool call in EACH user turn, emit an assistant text block containing exactly a JSON object with ONLY this intent field. That early declaration is scored independently from your final answer. If no tools are needed, your final JSON alone is sufficient. If clarification is necessary, use outcome partial, ask in answer, and record the gap. All names in facts preserve native identity. This structured intent annotation is evaluation-only.',
    group_names: { intent_paraphrase: '中文口语与需求定位', intent_scope: '正负范围约束与代码种类', intent_graph: 'BDE 与状态机意图',
      intent_compound: '组合需求与独立查询', intent_ambiguity: '信息不足和多候选澄清', intent_context: '真实多轮指代与目标切换', intent_boundary: '保存源码的能力边界' }, cases };
}

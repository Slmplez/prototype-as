# Exported AXL as a search oracle

The export provides a second representation of saved ASCET content for extraction rules, native identities and reproducible fixtures. The live CLI continues to read the current saved Database for each new request. An old AXL is not a freshness guarantee.

## Reproduce

```powershell
npm.cmd run build:ts
node dist/scripts/analyze-axl-search.js
```

The default input is `../../axl/AI_AEB`. This development script uses the `saxes` parser installed in the existing `../../axl_decoder_ts`; the CLI runtime has no XML dependency. It rejects DTDs, retains XML paths/object IDs, and compares against recorded live reads and the audited frozen snapshot. It is a sample-analysis script, not a general live AXL backend.

Artifacts: [report](experiments/structure-discovery/axl-analysis/report.json), [searchable fields](experiments/structure-discovery/axl-analysis/searchable-fields.jsonl), [BDE differences](experiments/structure-discovery/axl-analysis/bde-differences.json), [live reads](experiments/structure-discovery/2026-10-03-cold/requests.jsonl).

## Search Fields

| Saved representation | Searchable content | Identity and related reading |
| --- | --- | --- |
| CodeBlock / HeaderBlock | Decoded code, comments and strings, preserving newlines | Component, Specification, Method OID, CodeVariant attributes and XML path |
| SimpleElement / ComplexElement | Element name and referenced Component | graphicOID identifies a placement; elementOID identifies the declaration |
| Method argument / return | Method-qualified name | Join elementOID to Argument/Return OID in the MethodSignature |
| Interfaces / SequenceCall | Actual Method, argument and Pin names | Owning placement, Pin ID and saved Sequence number |
| Literal / Operator | Saved value / operation | Native category is not always the XML wrapper tag |
| State | Entry/Static/Exit code or Method binding | Diagram, ancestor State IDs, object ID, action slot and variant |
| Transition | Condition/Action code and trigger binding | Connector ownership resolves endpoints; preserve saved priority |
| Connection | Related object context, rather than search tokens | Orient by Pin role; XML Start/End is not necessarily signal direction |
| Dataset configuration | Table dimension, interpolation and extrapolation | Separate declaration from selected Dataset/DataVariant configuration |

Layout, Position, color, graphicOID syntax, signatures and generated labels are not graph search fields. IDs remain result identity. Genuine source/comments stay intact even if they contain XML-like words or expressions such as `1<<Position`.

Do not invent assignment statements from graphs. Locate an Element or Literal, read the actual connection, then follow its object ref. A MethodPort/SequenceCall binding is not the called Method body.

## Verified Normalization

1. SimpleElement `AxAct` can represent `calc/AxAct`: elementOID joins the Argument declaration under MethodSignature `calc`. This resolved **338** qualified names through actual OIDs.
2. **129 of 709** BDE connections needed reversal to match Pin roles. ReturnPort/MemberGetPort/OutputPort are output roles; SelectorPort/MemberSetPort/InputPort are input roles in the tested representation. Unknown/ambiguous roles must remain unresolved.
3. Transition Start/End graphicOIDs are **Connector IDs**, not State IDs. Resolve their Interfaces ownership within the Diagram/hierarchy. AEB_State_Machine/Main/Transition #20 uses Connector #19 (Junction #3) and Connector #8 (State #0, AEB_State_Off), priority 1, trigger binding `init_trigger`.

Two MUX nodes serialize as Operator but have native category control. XML wrapper tags alone cannot provide all object categories.

## Measurements

The existing export has **1,506 XML documents** with schema versions 5.1.4.0, 6.1.0.0, 6.1.0.1 and 6.1.1.0, plus unspecified versions. Parsing success does not assert compatibility with every schema/version.

- **423 CodeBlocks + 120 HeaderBlocks = 543** saved code/header blocks.
- **22 BDE Diagrams, 613 node names/categories and 709 oriented connections** match the corresponding live frozen objects, with zero differences.
- **8 State/Junction objects, 14 Transitions, 34 saved action slots and 14 trigger bindings** match the corresponding recorded live reads.
- State names, hierarchy IDs, initial/history, endpoints and priority were checked explicitly. Action text comparisons normalize CR/CRLF to LF.
- The older export lacks extra live test Components. Comparisons do not cover every layout/default port or certify arbitrary old exports as current.

The script extracts **2,540 meaningful fields**. Five real queries (`AEBLockTime`, `getAt`, `init_trigger`, `AEB_State_Off`, and an Active-name regex) ran 20 times each through the existing matcher. Recorded matching latency: approximately **1.7 ms median, 3.5 ms P95, 11.3 ms maximum**. Reading/parsing/extracting all XML took about **700 ms**.

Matching timings exclude export, live model reads, graph reconstruction, Agent response construction and IPC. Full export/parse per query is not a demonstrated way to meet the 500 ms live target. Transfer the verified field/identity rules to native extraction; keep transport and responses bounded.

## Recovered Export Logic

```text
AscetDataBase.ExportXMLToFile
  -> EtasAPIDatabase>>exportToXMLFiles:usePath:withReferences:
AscetDataBase.ExportXMLToZipFile
  -> EtasAPIDatabase>>exportToZIPFile:useFilePathName:withReferences:
  -> headless export controller
  -> exportComponents:path:references:compressed:createHierarchyPath:
```

Recovered `SGBezierConnectionGODB>>writeXML:class:` literals include Transition, priority, triggerName/OID, Start/startConnector, End/endConnector, Action and Condition. `SGStateGODB>>internalWriteXMLAttrs:` includes name/stateInfo, history and startState; `internalWriteXMLElements:class:` includes EntryAction, StaticAction and ExitAction.

The report captures evidence from `../../analysis/smalltalk-recovery/methods/ASDBase.ic/methods.jsonl`. This is bytecode/literal recovery, not complete original Smalltalk source. C# API call sites are in `../../decompiled/Etas.AscetNET/de.etas.cebra.toolAPI.Ascet/AscetDataBase.cs`.

## Remaining Work

`P_AEB_IB_MaxActivationTime_Curve` is declared as oned/cont, unit s, maxSizeX 6. Its Dataset variant separately stores Linear interpolation and Constant extrapolation. The sample has 91 OneD and 3 TwoD configurations of this combination. The current code-search CLI does not yet expose those configurations or point values. A targeted metadata read should retain Dataset/Variant identity instead of attributing one configuration to every Element usage.

An independent autonomous-Agent task benchmark is outstanding; executed request examples and fixtures test tool behavior only.

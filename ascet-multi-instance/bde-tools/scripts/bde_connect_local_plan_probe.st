"Complete immutable evidence for the fixed retained-connect planner.
 No executor or native/source mutation is available through this probe."
[:planner :exporter | [:component :context |
 component handleExceptionsIn: [
 | plan head material raw evidence answer sourceEvidence nativeEvidence drawingBindings |
 "The executor exports its already-frozen plan. External probe callers still
  supply only the fixed token/owner/state context. No second planning occurs."
 plan := (context isKindOf: Dictionary)
   ifTrue: [context] ifFalse: [planner value: component value: context].
 (plan isKindOf: Dictionary) ifFalse: [component error: plan asString].
 head := plan at: 'head'. material := plan at: 'material'. raw := plan at: 'raw'.
 sourceEvidence := exporter value: component value:
   ((Array with: ((head at: 'beforeSource') at: 'sourceRoot')
     with: ((head at: 'beforeSource') at: 'snapshots')
     with: ((plan at: 'logicalAfter') at: 'snapshots')
     with: ((plan at: 'logicalCurrent') at: 'snapshots'))
     copyWith: (plan at: 'logicalDesired'))
       , (Array with: ((head at: 'afterSource') at: 'snapshots')
           with: ((plan at: 'sourceCurrent') at: 'snapshots') with: (plan at: 'sourceDesired')).
 nativeEvidence := exporter value: component value:
   ((Array with: (material at: 'diagram') topGraphicalHierarchy
     with: (head at: 'beforeNative') with: (head at: 'afterNative')
     with: (plan at: 'nativeCurrent') with: (plan at: 'nativeMerged')) copyWith: (raw at: 'tokens')).
 ((sourceEvidence isKindOf: Dictionary) and: [nativeEvidence isKindOf: Dictionary])
   ifFalse: [component error: 'Complete frozen connect source/native export failed'].
 drawingBindings := (plan at: 'desiredDrawing') collect: [:object | Array
   with: (((material at: 'orderRecord') at: 'orderIds') at: object)
   with: ((raw at: 'tokens') at: object basicGraphObject)].
 answer := Dictionary new at: 'profile' put: (plan at: 'profile');
   at: 'native_token' put: (plan at: 'token'); at: 'owner' put: (plan at: 'owner');
   at: 'state' put: (plan at: 'state'); at: 'sequence' put: (plan at: 'sequence');
   at: 'operation' put: 'connect_data'; at: 'component_oid' put: component getOID;
   at: 'before' put: (plan at: 'beforeValues'); at: 'after' put: (plan at: 'afterValues');
   at: 'current' put: (plan at: 'currentValues'); at: 'values' put: (plan at: 'values');
   at: 'source_identity_evidence' put: sourceEvidence; at: 'native_identity_evidence' put: nativeEvidence;
   at: 'native_current' put: ((raw at: 'imageFor') value: (plan at: 'nativeCurrent'));
   at: 'native_merged' put: ((raw at: 'imageFor') value: (plan at: 'nativeMerged'));
   at: 'native_expected' put: ((raw at: 'imageFor') value: (plan at: 'nativeDesired'));
   at: 'native_fields' put: ((raw at: 'diagnosticsFor') value: (plan at: 'nativeCurrent'));
   at: 'drawing_native_bindings' put: drawingBindings asArray;
   at: 'alias_counter_before' put: (plan at: 'counterBefore');
   at: 'alias_counter_expected' put: (plan at: 'counterDesired');
   at: 'created_original_retained' put: true; at: 'real_current_verified' put: true;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'write_authorized' put: false; yourself.
 evidence := plan at: 'evidence'. evidence keysAndValuesDo: [:key :value | answer at: key put: value].
 (plan at: 'verifyBeforeDispatch') value ifFalse: [component error: 'Actual connect changed during complete immutable export'].
 (raw at: 'encode') value: answer
 ] ifFail: [:error | 'BDE_CONNECT_LOCAL_PLAN_PROBE_ERROR: ', error messageText]
]]

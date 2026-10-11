[:helpers | [:component :token |
 component handleExceptionsIn: [
 | edits roots record root parent ids sameOrder label result rows retainedRows state keys children dependencies guard correctedGuard plan encode out |
 edits := Smalltalk at: #DogeBDEStructureEditsV3 ifAbsent: [component error: 'Retained edit registry unavailable'].
 record := edits at: token ifAbsent: [component error: 'Exact retained edit unavailable'].
 ((record at: 'component') = component getOID and: [(record at: 'owner') == component item])
   ifFalse: [component error: 'Retained native owner differs'].
 ((record at: 'operation') = 'delete_node' and: [(record at: 'diagramName') = 'Main'])
   ifFalse: [component error: 'Ordinary Main deletion required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated retained owner required'].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2 ifAbsent: [component error: 'Retained graphical registry unavailable'].
 root := roots at: (component getOID, '/Main') ifAbsent: [component error: 'Retained graphical scope unavailable'].
 parent := record at: 'orderParent'. ids := record at: 'orderIds'.
 dependencies := record at: 'edgeDependencies'.
 (dependencies size > 4096 or: [parent children size > 100000])
   ifTrue: [component error: 'Retained diagnostic bound exceeded'].
 sameOrder := [:a :b | a size = b size and: [
   ((1 to: a size) anySatisfy: [:i | (a at: i) ~~ (b at: i)]) not]].
 label := [:value | value isNil ifTrue: ['nil'] ifFalse: [ids at: value ifAbsent: [value class name asString]]].
 state := record at: 'state'. keys := record keys asSet copy. children := parent children asArray copy.
 guard := (record at: 'edgeDependencyReader') value: component value: record value: 'detached'.
 correctedGuard := helpers first value: component value: record value: 'detached'.
 plan := helpers last value: component value: record value: parent.
 rows := dependencies collect: [:row | | edge points pinRows |
   edge := row at: 'edge'. points := edge connectionPoints.
   pinRows := (row at: 'pins') collect: [:saved | | api pin owner point connector members map |
     api := saved at: 'api'. pin := saved at: 'pin'. owner := saved at: 'owner'.
     point := saved at: 'point'. connector := saved at: 'connector'.
     members := pin manager interfaceGOs. map := point connections.
     Dictionary new
       at: 'pin_id' put: pin identifier;
       at: 'owner' put: (label value: owner);
       at: 'pin_binding_exact' put: (api diagramElement == pin);
       at: 'owner_binding_exact' put: (api getBlockDiagramElement diagramElement == owner);
       at: 'saved_owner_binding_exact' put: ((saved at: 'ownerAPI') diagramElement == owner);
       at: 'basic_binding_exact' put: (owner basicGraphObject == (saved at: 'basic'));
       at: 'owner_manager_nil' put: owner manager isNil;
       at: 'owner_manager_original_parent' put: (owner manager == parent);
       at: 'owner_in_parent' put: (children anySatisfy: [:value | value == owner]);
       at: 'pin_manager_exact' put: (pin manager == (saved at: 'manager'));
       at: 'members_binding_exact' put: (members == (saved at: 'members'));
       at: 'pin_membership_count' put: (members select: [:value | value == pin]) size;
       at: 'input_exact' put: (api isInputPin == (saved at: 'input'));
       at: 'output_exact' put: (api isOutputPin == (saved at: 'output'));
       at: 'connector_exact' put: (pin getExternalConnectorGO == connector);
       at: 'connector_manager_exact' put: (connector manager == (saved at: 'connectorManager'));
       at: 'point_exact' put: (connector connectionPoint == point);
       at: 'point_owner_exact' put: ((point instVarAt: (saved at: 'pointOwnerIndex')) == (saved at: 'pointOwner'));
       at: 'connection_map_exact' put: (map == (saved at: 'connections'));
       at: 'edge_registered' put: (map includesKey: edge);
       at: 'incident_edges' put: (map keys collect: [:value | label value: value]); yourself
   ].
   Dictionary new at: 'edge' put: (label value: edge);
     at: 'api_binding_exact' put: ((row at: 'api') diagramElement == edge);
     at: 'manager_nil' put: edge manager isNil;
     at: 'manager_original_parent' put: (edge manager == parent);
     at: 'in_parent' put: (children anySatisfy: [:value | value == edge]);
     at: 'points_nil' put: points isNil;
     at: 'points_exact' put: (points notNil and: [sameOrder value: points value: (row at: 'points')]);
     at: 'current_points' put: (points isNil ifTrue: [#()] ifFalse: [points collect: [:value | label value: value]]);
     at: 'saved_points' put: ((row at: 'points') collect: [:value | label value: value]);
     at: 'pins' put: pinRows; yourself
 ].
 retainedRows := (record at: 'retainedSet') collect: [:saved | | native |
   native := saved first.
   Dictionary new at: 'object' put: (label value: native); at: 'class' put: native class name asString;
     at: 'id' put: native identifier; at: 'original_index' put: (saved at: 3);
     at: 'parent_exact' put: ((saved at: 2) == parent);
     at: 'manager_nil' put: native manager isNil;
     at: 'manager_original_parent' put: (native manager == parent);
     at: 'in_parent' put: (children anySatisfy: [:value | value == native]); yourself
 ].
 result := Dictionary new at: 'native_state' put: state; at: 'record_keys' put: keys asSortedCollection;
   at: 'checkpoint_present' put: (root includesKey: 'checkpoint');
   at: 'cached_diagram_exact' put: ((root at: 'diagram') == (record at: 'diagram'));
   at: 'parent_collection_exact' put: (parent children == (record at: 'orderCollection'));
   at: 'current_order_is_expected_after' put: (sameOrder value: children value: (record at: 'afterOrder'));
   at: 'current_order_is_before' put: (sameOrder value: children value: (record at: 'beforeOrder'));
   at: 'current_order' put: (children collect: [:value | label value: value]);
   at: 'original_order' put: ((record at: 'beforeOrder') collect: [:value | label value: value]);
   at: 'expected_after_order' put: ((record at: 'afterOrder') collect: [:value | label value: value]);
   at: 'detached_guard' put: guard; at: 'retained_objects' put: retainedRows; at: 'edges' put: rows;
   at: 'corrected_detached_guard' put: correctedGuard;
   at: 'corrected_plan_compatible' put: ((plan isKindOf: Dictionary) and: [plan at: 'compatible']);
   at: 'corrected_plan_verified' put: ((plan isKindOf: Dictionary) and: [(plan at: 'verifyBeforeApply') value]);
   at: 'native_record_unchanged' put: ((record at: 'state') = state and: [record keys asSet = keys]);
   at: 'graphical_original' put: ((record includesKey: 'graphicalOriginal')
     ifTrue: [(record at: 'graphicalOriginal') at: 'descriptor'] ifFalse: [nil]);
   at: 'graphical_actual' put: (record at: 'graphicalActualApplied' ifAbsent: [nil]);
   at: 'parent_order_unchanged' put: (sameOrder value: children value: parent children);
   at: 'order_token_table_exact' put: (ids == (record at: 'orderIdsBinding')); yourself.
 out := WriteStream on: String new.
 encode := [:value |
   value isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   value isString ifTrue: [
     out nextPutAll: '{"$s":['.
     value asCebraString doWithIndex: [:byte :i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: byte printString].
     out nextPutAll: ']}'
   ] ifFalse: [
   ((value == true or: [value == false]) or: [value isInteger]) ifTrue: [out nextPutAll: value printString] ifFalse: [
   (value isKindOf: Dictionary) ifTrue: [ | first |
     first := true. out nextPutAll: '{"$d":['.
     value keys asSortedCollection do: [:key | first ifFalse: [out nextPut: $,]. first := false.
       out nextPut: $[. encode value: key. out nextPut: $,. encode value: (value at: key). out nextPut: $]].
     out nextPutAll: ']}'
   ] ifFalse: [value isCollection ifTrue: [ | first |
     first := true. out nextPut: $[. value do: [:item | first ifFalse: [out nextPut: $,]. first := false. encode value: item]. out nextPut: $]
   ] ifFalse: [component error: 'Unsupported retained diagnostic value']]]]]
 ].
 encode value: result. out contents
 ] ifFail: [:error | 'BDE_RETAINED_PROBE_ERROR: ', error messageText]
]]

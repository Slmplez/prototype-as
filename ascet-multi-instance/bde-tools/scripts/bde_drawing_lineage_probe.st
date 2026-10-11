[:currentReader | [:component :token |
 component handleExceptionsIn: [
 | edits record roots root diagram parent current schemas describe rows retained before after sorted encode out keys state ids idRows counter |
 edits := Smalltalk at: #DogeBDEStructureEditsV3 ifAbsent: [component error: 'Retained edits unavailable'].
 record := edits at: token ifAbsent: [component error: 'Retained original unavailable'].
 ((record at: 'component') = component getOID and: [(record at: 'owner') == component item and: [
   (record at: 'state') = 'applied' and: [(record at: 'operation') = 'delete_node' and: [
   (record at: 'diagramName') = 'Main']]]]) ifFalse: [component error: 'Exact applied Main deletion required'].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2.
 root := roots at: (component getOID, '/Main'). diagram := record at: 'diagram'. parent := record at: 'orderParent'.
 ((root at: 'diagram') == diagram and: [(root at: 'owner') == component item and: [
   diagram topGraphicalHierarchy contents == parent and: [parent children == (record at: 'orderCollection')]]])
   ifFalse: [component error: 'Original parent lineage changed'].
 ((record at: 'detachedGraphicalGuard') at: 'verify') value
   ifFalse: [component error: 'Retained original intrinsic material changed'].
 retained := (record at: 'retainedSet') asArray.
 (retained size = 1 and: [retained first first class name asString = 'SGLiteralGO' and: [
   retained first last isEmpty and: [(parent children includes: retained first first) not]]])
   ifFalse: [component error: 'Exactly one retained unconnected original literal required'].
 keys := record keys asSet copy. state := record at: 'state'.
 ids := root at: 'ids'. counter := root at: 'counter'.
 idRows := ids associations collect: [:association | Array with: association key with: association value].
 before := parent children asArray copy. sorted := parent sortedChildren asArray copy.
 (before size = before asSet size and: [sorted size = before size and: [sorted asSet = before asSet]])
   ifFalse: [component error: 'Complete unique drawing/physical roster required'].
 current := currentReader value: component value: (Array with: diagram topGraphicalHierarchy with: retained first first).
 (current isKindOf: Dictionary) ifFalse: [component error: current asString].
 schemas := Dictionary new.
 (current at: 'snapshots') keys do: [:object | | kind |
   kind := ((current at: 'snapshots') at: object) first.
   kind = 'fields' ifTrue: [schemas at: object class name asString put:
     (object class allInstVarNames collect: [:name | name asString]) asArray]
 ].
 describe := [:object | | prefix id ref |
   prefix := object class name asString = 'SGConnectionWrapperGO' ifTrue: ['e'] ifFalse: ['n'].
   id := object identifier.
   ref := (id isInteger and: [id >= 0]) ifTrue: [prefix, id printString] ifFalse: [
     ids at: object ifAbsent: [component error: 'Existing exact native alias required']].
   Dictionary new at: 'ref' put: ref;
     at: 'class' put: object class name asString; at: 'raw_ref' put: ((current at: 'tokens') at: object);
     at: 'basic_raw_ref' put: ((current at: 'tokens') at: object basicGraphObject);
     at: 'drawing_order' put: object basicGraphObject drawingOrder; yourself
 ].
 rows := before collect: [:object | describe value: object].
 ((rows collect: [:row | row at: 'ref']) asSet size = rows size and: [
   ((rows collect: [:row | row at: 'ref']) includes: ((describe value: retained first first) at: 'ref')) not])
   ifFalse: [component error: 'Native aliases collide or retained original is attached'].
 after := parent children asArray copy.
 (before = after and: [(current at: 'verify') value and: [record keys asSet = keys and: [(record at: 'state') = state and: [
   ids size = idRows size and: [(root at: 'counter') = counter and: [idRows allSatisfy: [:pair |
     (ids at: pair first ifAbsent: [nil]) == pair last]]]]]]])
   ifFalse: [component error: 'Read-only lineage observation drifted'].
 out := Dictionary new at: 'profile' put: 'native_drawing_lineage_probe_v2';
   at: 'complete' put: true; at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'source_record_unchanged' put: true; at: 'identity_registry_unchanged' put: true;
   at: 'native_token' put: token; at: 'component_oid' put: component getOID; at: 'diagram' put: 'Main';
   at: 'schemas' put: schemas; at: 'physical' put: rows;
   at: 'drawing' put: (sorted collect: [:object | describe value: object]);
   at: 'retained' put: (describe value: retained first first);
   at: 'parent_raw_ref' put: ((current at: 'tokens') at: parent);
   at: 'children_raw_ref' put: ((current at: 'tokens') at: parent children);
   at: 'raw_current' put: (current at: 'descriptor'); yourself.
 encode := record at: 'encodeObservation'. encode value: out
 ] ifFail: [:error | 'BDE_DRAWING_LINEAGE_ERROR: ', error messageText]
]]

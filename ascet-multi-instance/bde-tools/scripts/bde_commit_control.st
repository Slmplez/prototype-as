"Fixed direct CTree control image. No transaction, file or model mutation is authorized."
[:component :context :database |
 | stage |
 stage := 'binding'.
 component handleExceptionsIn: [
 | material baseline category fresh root owner backend slot tokens describe interfaces reference selected
   leaves image proof changes equal add names fields points paths row instances registerRoot registerFile |
 (context isArray and: [context size = 3]) ifFalse: [component error: 'Fixed CTree control context required'].
 material := context first. baseline := context second. category := context last.
 fresh := material isNil or: [(material at: 'phase' ifAbsent: [nil]) = 'new'].
 (#('since_preparation' 'query_read_effect') includes: category)
   ifFalse: [component error: 'Fixed CTree control observation category required'].
 slot := [:object :name | | schema index |
   schema := (object class allInstVarNames collect: [:field | field asString]) asArray.
   index := schema indexOf: name. index > 0 ifFalse: [component error: 'CTree control slot unavailable: ', name].
   object instVarAt: index].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 owner := component item dbObject. backend := slot value: owner value: 'interface'.
 (backend class name asString = 'DBReferenceInterface32' and: [(root at: 'owner') == component item])
   ifFalse: [component error: 'Exact ordinary CTree backend binding required'].
 fresh ifTrue: [
   material isNil ifTrue: [material := Dictionary new].
   material at: 'phase' put: 'capturing'; at: 'root' put: root; at: 'owner' put: component item;
     at: 'ownerDB' put: owner; at: 'backend' put: backend; at: 'access' put: database dbAccess;
     at: 'controller' put: database dbInterface; at: 'generation' put: (root at: 'generation');
     at: 'tokens' put: IdentityDictionary new; at: 'originalValues' put: IdentityDictionary new
 ] ifFalse: [
   (material at: 'phase') = 'captured' ifFalse: [component error: 'Incomplete original CTree capture cannot replay or become before'].
   ((material at: 'root') == root and: [(material at: 'owner') == component item and: [
     (material at: 'ownerDB') == owner and: [(material at: 'backend') == backend and: [
     (material at: 'access') == database dbAccess and: [(material at: 'controller') == database dbInterface and: [
     (material at: 'generation') = (root at: 'generation')]]]]]])
     ifFalse: [component error: 'Original CTree control binding expired or rebound']].
 tokens := material at: 'tokens'.
 describe := [:object | | result |
   result := Dictionary new at: 'class' put: object class name asString; yourself.
   (object isNil or: [object isInteger]) ifTrue: [result at: 'atom' put: object printString]
     ifFalse: [result at: 'ref' put: (tokens at: object ifAbsentPut: [
       tokens size >= 2048 ifTrue: [component error: 'Complete CTree identity bound exceeded'].
       'c', (tokens size + 1) printString])]. result].
 stage := 'membership'.
 interfaces := slot value: backend value: 'interfaces'. reference := slot value: backend value: 'referenceInterface'.
 (interfaces class name asString = 'OrderedCollection' and: [interfaces size > 0 and: [interfaces size <= 64]])
   ifFalse: [component error: 'Complete original interface census required'].
 selected := OrderedCollection new.
 fresh ifFalse: [selected addAll: (material at: 'originalLeaves')].
 baseline notNil ifTrue: [(baseline at: 'leaves') do: [:saved | | original |
   original := tokens keys detect: [:object | (tokens at: object) = ((saved at: 'binding') at: 'ref')]
     ifNone: [component error: 'Original CTree query identity unavailable'].
   (selected anySatisfy: [:object | object == original]) ifFalse: [selected add: original]]].
 (interfaces asArray copyWith: reference) do: [:leaf |
   (selected anySatisfy: [:object | object == leaf]) ifFalse: [selected add: leaf]].
 selected size > 128 ifTrue: [component error: 'Complete original/current CTree leaf bound exceeded'].
 leaves := OrderedCollection new. instances := Set new.
 fresh ifTrue: [material at: 'partialLeaves' put: leaves].
 stage := 'direct-control'.
 selected do: [:leaf |
   (leaf isKindOf: CTreeInterface) ifFalse: [component error: 'Audited CTree interface family required'].
   names := (leaf class allInstVarNames collect: [:name | name asString]) asArray.
   names size > 128 ifTrue: [component error: 'Complete CTree schema bound exceeded'].
   fields := Dictionary new.
   #('ctInstance' 'ctIFIL' 'ctLockingIFIL') do: [:name | | object |
     object := slot value: leaf value: name. object isNil ifTrue: [component error: 'Original CTree control handle unavailable'].
     fields at: name put: (describe value: object)].
   instances add: ((fields at: 'ctInstance') at: 'ref').
   row := slot value: leaf value: 'ctTransaction'.
   (row isNil or: [row isInteger]) ifFalse: [component error: 'Exact CTree transaction result marker required'].
   fields at: 'ctTransaction' put: (describe value: row).
   points := slot value: leaf value: 'ctSavePoint'.
   (points class name asString = 'OrderedCollection' and: [points size <= 128 and: [points allSatisfy: [:point | point isInteger]]])
     ifFalse: [component error: 'Complete ordered CTree savepoint tokens required'].
   fresh ifTrue: [(material at: 'originalValues') at: points put: points asArray].
   row := describe value: points. row at: 'values' put: (points collect: [:point | describe value: point]) asArray.
   fields at: 'ctSavePoint' put: row.
   paths := slot value: leaf value: 'pathNames'.
   (#('LookupTable' 'Dictionary') includes: paths class name asString)
     ifFalse: [component error: 'Direct CTree register path table unavailable'].
   registerRoot := paths at: 'root' ifAbsent: [''].
   registerFile := paths at: 'objectFileName' ifAbsent: [
     leaf class name asString = 'CTreeLocalVariableAttributeInterface' ifTrue: ['vatribut'] ifFalse: [
       leaf class name asString = 'CTreeLocalSearchInterface' ifFalse: [component error: 'Unaudited default CTree register filename'].
       row := slot value: leaf value: 'defName'. row isNil ifTrue: ['sobjects'] ifFalse: [row]]].
   (registerRoot isString and: [registerFile isString])
     ifFalse: [component error: 'Exact CTree register path strings required'].
   fields at: 'registerName' put: (registerRoot, '\', registerFile).
   leaves add: (Dictionary new at: 'binding' put: (describe value: leaf);
     at: 'field_names' put: names; at: 'fields' put: fields; yourself)].
 image := Dictionary new at: 'profile' put: 'native_ctree_control_image_v1';
   at: 'component_oid' put: component getOID; at: 'generation' put: (root at: 'generation');
   at: 'interfaces' put: (interfaces collect: [:leaf | describe value: leaf]) asArray;
   at: 'reference_interface' put: (describe value: reference);
   at: 'leaves' put: (leaves asSortedCollection: [:a :b | ((a at: 'binding') at: 'ref') < ((b at: 'binding') at: 'ref')]) asArray; yourself.
 fresh ifTrue: [material at: 'originalLeaves' put: selected asArray; at: 'originalImage' put: image; at: 'phase' put: 'captured'].
 baseline isNil ifTrue: [baseline := material at: 'originalImage'].
 equal := [:left :right | ((root at: 'encodeObservation') value: left) = ((root at: 'encodeObservation') value: right)].
 changes := OrderedCollection new.
 add := [:location :old :new | changes add: (Dictionary new at: 'category' put: category;
   at: 'locus' put: location first; at: 'field' put: location last; at: 'before' put: old; at: 'after' put: new; yourself)].
 #('interfaces' 'reference_interface') do: [:name |
   (equal value: (baseline at: name) value: (image at: name)) ifFalse: [
     add value: (Array with: 'ctree_control_registry' with: name) value: (baseline at: name) value: (image at: name)]].
 (image at: 'leaves') do: [:current | | old locus |
   old := (baseline at: 'leaves') detect: [:saved | ((saved at: 'binding') at: 'ref') = ((current at: 'binding') at: 'ref')] ifNone: [nil].
   locus := 'ctree_control/', ((current at: 'binding') at: 'ref').
   old isNil ifTrue: [add value: (Array with: locus with: '$observed_leaf') value: nil value: current]
     ifFalse: [((equal value: (old at: 'binding') value: (current at: 'binding')) and: [
       (old at: 'field_names') = (current at: 'field_names')]) ifFalse: [
       add value: (Array with: locus with: '$identity_schema') value: old value: current]
     ifTrue: [(current at: 'fields') keys asSortedCollection do: [:name |
       (equal value: ((old at: 'fields') at: name) value: ((current at: 'fields') at: name)) ifFalse: [
         add value: (Array with: locus with: name) value: ((old at: 'fields') at: name) value: ((current at: 'fields') at: name)]]]]].
 proof := Dictionary new at: 'profile' put: 'native_ctree_control_summary_v1';
   at: 'component_oid' put: component getOID; at: 'generation' put: (root at: 'generation');
   at: 'interfaces' put: interfaces size; at: 'leaves' put: selected size; at: 'native_instance_groups' put: instances size;
   at: 'savepoint_tokens' put: (leaves inject: 0 into: [:count :leaf | count + (((leaf at: 'fields') at: 'ctSavePoint') at: 'values') size]);
   at: 'original_material_held' put: true; at: 'captured_all_interfaces' put: true; at: 'reference_interface_included' put: true;
   at: 'transaction_methods_called' put: 0; at: 'native_transaction_semantics_verified' put: false;
   at: 'full_commit_resource_closure' put: false; at: 'write_authorized' put: false; at: 'inverse_authorized' put: false; yourself.
 Dictionary new at: 'material' put: material; at: 'image' put: image; at: 'summary' put: proof; at: 'actual_changes' put: changes asArray; yourself
 ] ifFail: [:error | 'BDE_COMMIT_CONTROL_ERROR: ', stage, ': ', error messageText]
]

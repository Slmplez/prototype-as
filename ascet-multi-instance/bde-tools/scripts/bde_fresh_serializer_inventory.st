"Capture the actual isolated source graph and callback dispatches before dump.
 Config omissions and exact DB replacements stop the traversal. No callbacks,
 dumper, loader, setters, store or record writers are executed."
[:collector | [:component :index |
 | registry material source dumper classTable instTable standard sameBlock slot before
   snapshots callbacks classes boundaries blockers visit count bytes describe image
   callbackDispatch dbDispatch rootClass after |
 registry := Smalltalk at: #DogeBDEFreshSerializerWorkbenchesV1.
 (index isInteger and: [index >= 1 and: [index <= registry size]])
   ifFalse: [component error: 'Exact retained workbench index required'].
 material := registry at: index. source := material at: 'source'. dumper := material at: 'dumper'.
 ((material at: 'phase') = 'constructed' and: [(material at: 'owner') == component item and: [
   (component getDiagram: 'Main') specification specSourceInternalOrNil == source and: [
   (material at: 'checks') values allSatisfy: [:v | v == true]]]])
   ifFalse: [component error: 'Exact equivalent constructed source workbench required'].
 ((material at: 'verifyOriginals') value) ifFalse: [component error: 'Original serializer construction witness expired'].
 before := collector value: component.
 slot := [:object :name | | i |
   i := (object class allInstVarNames collect: [:f | f asString]) asArray indexOf: name.
   i > 0 ifFalse: [component error: 'Inventory audited field missing']. object instVarAt: i].
 classTable := slot value: (slot value: dumper value: 'classBasedReplacer') value: 'classBasedReplacementTable'.
 instTable := slot value: (slot value: dumper value: 'instVarReplacer') value: 'classesWithInstVarsToReplace'.
 standard := dumper replacementBlock. rootClass := source class.
 snapshots := IdentityDictionary new. callbacks := Dictionary new. classes := Dictionary new.
 boundaries := Dictionary new. blockers := OrderedCollection new. count := 0. bytes := 0.
 callbackDispatch := [:class | | defining |
   defining := class whichClassIncludesSelector: #dumpingReplacementForReplacer:.
   defining isNil ifTrue: ['missing'] ifFalse: [defining name asString]].
 dbDispatch := [:class :selector | | defining |
   defining := class whichClassIncludesSelector: selector.
   defining isNil ifTrue: ['missing'] ifFalse: [defining name asString]].
 visit := [:object :depth | | class name kind replacement fields indexed omitted definition route dbIndex |
   depth > 128 ifTrue: [component error: 'Complete source graph depth bound exceeded'].
   (object isNil or: [object isNumber or: [(object isKindOf: Symbol) or: [object == true or: [object == false]]]]) ifFalse: [
     (snapshots includesKey: object) ifFalse: [
       snapshots size >= 16384 ifTrue: [component error: 'Complete source graph object bound exceeded'].
       class := object class. name := class name asString. kind := 'fields'. fields := #(). indexed := #().
       classes at: name put: (classes at: name ifAbsent: [0]) + 1.
       replacement := classTable at: class ifAbsent: ['no_replacement'].
       object == source ifTrue: [replacement := 'no_replacement'].
       replacement = 'no_replacement' ifFalse: [
         kind := replacement isNil ifTrue: ['omitted_class'] ifFalse: ['db_replacement'].
         boundaries at: name put: (boundaries at: name ifAbsent: [0]) + 1.
         replacement isNil ifFalse: [
           route := Array with: name with: (dbDispatch value: class value: #isDbObject)
             with: (dbDispatch value: class value: #dbObject).
           callbacks at: (name, '/db') put: route.
           dbIndex := (class allInstVarNames collect: [:f | f asString]) asArray indexOf: 'dbObject'.
           dbIndex = 0 ifTrue: [blockers add: (Array with: name with: 'DB replacement has no audited direct dbObject')]
             ifFalse: [(object instVarAt: dbIndex) isNil ifTrue: [blockers add: (Array with: name with: 'DB replacement would initialize nil dbObject')]]
         ]].
       kind = 'fields' ifTrue: [
         (object isBehavior) ifTrue: [kind := 'class_constant'] ifFalse: [
           definition := callbackDispatch value: class.
           callbacks at: (name, '/dump') put: (Array with: name with: definition).
           definition = 'Object' ifFalse: [blockers add: (Array with: name with: ('Unaudited dumping callback: ', definition))].
           fields := ((1 to: class instSize) collect: [:i | object instVarAt: i]) asArray.
           object basicSize > 4194304 ifTrue: [component error: 'Complete source indexed bound exceeded'].
           (object isString or: [object isKindOf: ByteArray])
             ifTrue: [kind := 'bytes'. indexed := object copy. bytes := bytes + object basicSize]
             ifFalse: [indexed := ((1 to: object basicSize) collect: [:i | object basicAt: i]) asArray]
         ]].
       bytes > 16777216 ifTrue: [component error: 'Complete source graph byte budget exceeded'].
       snapshots at: object put: (Array with: kind with: fields with: indexed).
       kind = 'fields' ifTrue: [
         omitted := instTable at: class ifAbsent: [LookupTable new].
         1 to: fields size do: [:i | (omitted includesKey: i) ifFalse: [visit value: (fields at: i) value: depth + 1]].
         indexed do: [:x | visit value: x value: depth + 1]
       ]
     ]]].
 visit value: source value: 0.
 after := collector value: component.
 ((material at: 'verifyOriginals') value) ifFalse: [component error: 'Original workbench witnesses changed during inventory'].
 material at: 'graphSnapshots' put: snapshots; at: 'graphCallbacks' put: callbacks;
   at: 'graphBlockers' put: blockers; at: 'graphClassCounts' put: classes; at: 'graphBeforeRecords' put: before;
   at: 'phase' put: 'inventoried'.
 Dictionary new at: 'profile' put: 'isolated_fresh_serializer_inventory_v1'; at: 'component_oid' put: component getOID;
   at: 'workbench_index' put: index; at: 'objects' put: snapshots size; at: 'byte_values' put: bytes;
   at: 'class_counts' put: classes; at: 'boundary_class_counts' put: boundaries;
   at: 'callback_dispatches' put: (callbacks keys asSortedCollection collect: [:k | callbacks at: k]) asArray;
   at: 'blockers' put: blockers asArray; at: 'before' put: before; at: 'after' put: after;
   at: 'serialization_called' put: false; at: 'model_setters_called' put: 0;
   at: 'store_called' put: false; at: 'commit_called' put: false; at: 'persistent_write_called' put: false;
   at: 'call_closure_complete' put: false; at: 'serialization_authorized' put: false; yourself
]]

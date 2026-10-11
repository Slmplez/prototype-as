"Construct private source serializer work objects and rebuild effective config.
 No dump/load, model setter, owner record writer, store or commit is called."
[:collector | [:component |
 | before owner source backend originalLin originalSwapper originalDumper originalLoader
   slot snapshots capture verify originalRoles oldClassTable oldInstTable standard sameBlock
   privateDumper privateLoader privateSwapper privateLin privateObjects putPrivate copyArray
   omitted indices omittedClasses newClassTable newInstTable freshBlock checks roles describe
   classRows instRows strategyFields originalStrategy freshStrategy registry material identity
   sharedBefore sharedAfter same |
 before := collector value: component. owner := component item.
 source := (component getDiagram: 'Main') specification specSourceInternalOrNil.
 slot := [:object :name | | index |
   index := (object class allInstVarNames collect: [:f | f asString]) asArray indexOf: name.
   index > 0 ifFalse: [component error: 'Audited fresh serializer field missing: ', name]. object instVarAt: index].
 backend := slot value: owner dbObject value: 'interface'.
 originalLin := slot value: backend value: 'linDeLin'. originalSwapper := slot value: originalLin value: 'swapper'.
 originalDumper := slot value: originalSwapper value: 'dumper'. originalLoader := slot value: originalSwapper value: 'loader'.
 (originalLin class name asString = 'DBLinDeLin' and: [originalSwapper class name asString = 'DBSwapperDumperLoader' and: [
   originalDumper class == RBObjectDumper and: [originalLoader class == RBObjectLoader]]])
   ifFalse: [component error: 'Exact original serializer route required'].
 snapshots := IdentityDictionary new.
 capture := [:object | | names fields saved kind |
   (object isNil or: [object isNumber or: [(object isKindOf: Symbol) or: [object == true or: [object == false]]]]) ifFalse: [
     (snapshots includesKey: object) ifFalse: [
       snapshots size >= 16384 ifTrue: [component error: 'Original serializer observation bound exceeded'].
       kind := 'boundary'. saved := nil.
       (object class == Array or: [object class == OrderedCollection]) ifTrue: [kind := 'sequence'. saved := object copy].
       (object class == Dictionary or: [object class == IdentityDictionary or: [object class == LookupTable]])
         ifTrue: [kind := 'map'. saved := object copy].
       (object isString or: [object isKindOf: ByteArray]) ifTrue: [kind := 'value'. saved := object copy].
       snapshots at: object put: (Array with: kind with: saved).
       kind = 'sequence' ifTrue: [saved do: [:x | capture value: x]].
       kind = 'map' ifTrue: [saved keysAndValuesDo: [:k :v | capture value: k. capture value: v]]
     ]]].
 originalRoles := Array with: originalLin with: originalSwapper with: originalDumper with: originalLoader.
 originalRoles := originalRoles, (Array with: owner with: source),
   (#('swappingStrategy' 'classBasedReplacer' 'instVarReplacer' 'identityReplacer') collect: [:n | slot value: originalDumper value: n]) asArray,
   (Array with: (slot value: originalLoader value: 'loadingReplacer')).
 originalRoles do: [:object | | names fields |
   names := object class allInstVarNames asArray. fields := ((1 to: names size) collect: [:i | object instVarAt: i]) asArray.
   snapshots at: object put: (Array with: 'fields' with: fields). fields do: [:x | capture value: x]].
 sharedBefore := Array with: RBObjectDumper RBDBUnlinkInstancesOfClasses
   with: RBObjectDumper RBDBUnlinkFromClasses with: RBObjectDumper RBDBUnlinkInstVars.
 sharedBefore do: [:x | capture value: x].
 verify := [snapshots keys allSatisfy: [:object | | entry kind saved |
   entry := snapshots at: object. kind := entry first. saved := entry last.
   kind = 'boundary' ifTrue: [true] ifFalse: [kind = 'fields' ifTrue: [
     (1 to: saved size) allSatisfy: [:i | (object instVarAt: i) == (saved at: i)]] ifFalse: [
     kind = 'map' ifTrue: [object size = saved size and: [saved keys allSatisfy: [:k |
       (object includesKey: k) and: [(object at: k) == (saved at: k)]]]] ifFalse: [
     kind = 'sequence' ifTrue: [object size = saved size and: [(1 to: saved size) allSatisfy: [:i | (object at: i) == (saved at: i)]]]
       ifFalse: [object = saved]]]]]].
 oldClassTable := slot value: (slot value: originalDumper value: 'classBasedReplacer') value: 'classBasedReplacementTable'.
 oldInstTable := slot value: (slot value: originalDumper value: 'instVarReplacer') value: 'classesWithInstVarsToReplace'.
 standard := originalDumper replacementBlock.
 sameBlock := [:block | block == standard or: [block class == standard class and: [
   block basicSize = standard basicSize and: [block class instSize = standard class instSize and: [
   ((1 to: block basicSize) allSatisfy: [:i | (block basicAt: i) == (standard basicAt: i)]) and: [
   (1 to: block class instSize) allSatisfy: [:i | (block instVarAt: i) == (standard instVarAt: i)]]]]]]].
 oldClassTable isNil ifFalse: [oldClassTable values do: [:v |
   (v isNil or: [sameBlock value: v]) ifFalse: [component error: 'Custom original class replacement refused before private construction']]].
 oldInstTable isNil ifFalse: [oldInstTable keysAndValuesDo: [:class :table |
   table class == LookupTable ifFalse: [component error: 'Exact original instvar LookupTable required'].
   table keysAndValuesDo: [:index :replacement |
     "Original tables include unloaded Class placeholders with instSize=0.
      Rebuild their exact existing config; actual graph slot bounds remain a
      separate pre-serialization check, not a reason to drop these entries."
     (index isInteger and: [index > 0 and: [index <= 512 and: [replacement isNil]]])
       ifFalse: [component error: 'Unsupported instvar replacement: ', class name asString,
         '/', index printString, '/instSize=', class instSize printString,
         '/replacement=', replacement class name asString]]]].
 identity := slot value: (slot value: originalDumper value: 'identityReplacer') value: 'identityReplacementTable'.
 (identity isNil or: [identity isEmpty]) ifFalse: [component error: 'Original identity replacement requires separate support'].
 copyArray := [:value | value class == Array ifTrue: [(value collect: [:x | copyArray value: x]) asArray] ifFalse: [value]].
 omitted := slot value: originalDumper value: 'omittedInstOfClasses'.
 indices := slot value: originalDumper value: 'omittedInstVars'.
 omittedClasses := slot value: originalDumper value: 'omittedInstVarClasses'.
 (#('Array') includes: omitted class name asString) ifFalse: [component error: 'Exact omission array required'].
 (indices class == Array and: [omittedClasses class == Array]) ifFalse: [component error: 'Exact paired omission arrays required'].
 registry := Smalltalk at: #DogeBDEFreshSerializerWorkbenchesV1 ifAbsentPut: [OrderedCollection new].
 registry size >= 16 ifTrue: [component error: 'Fresh serializer capacity reached; no material eviction'].
 material := Dictionary new at: 'owner' put: owner; at: 'source' put: source; at: 'backend' put: backend;
   at: 'before' put: before; at: 'originalSnapshots' put: snapshots; at: 'verifyOriginals' put: verify;
   at: 'phase' put: 'constructing'; yourself. registry add: material.
 privateDumper := RBObjectDumper new. privateLoader := RBObjectLoader new.
 privateSwapper := DBSwapperDumperLoader basicNew. privateLin := DBLinDeLin basicNew.
 material at: 'dumper' put: privateDumper; at: 'loader' put: privateLoader;
   at: 'swapper' put: privateSwapper; at: 'linearizer' put: privateLin.
 privateObjects := IdentitySet new add: privateDumper; add: privateLoader; add: privateSwapper; add: privateLin; yourself.
 putPrivate := [:object :name :value | | index |
   (privateObjects includes: object) ifFalse: [component error: 'Only fresh work object slot writes permitted'].
   index := (object class allInstVarNames collect: [:n | n asString]) asArray indexOf: name.
   index > 0 ifFalse: [component error: 'Fresh private container field missing']. object instVarAt: index put: value].
 privateDumper setMaxBufferSize. privateDumper unlinkInstancesOfClasses: (copyArray value: omitted).
 privateDumper unlinkInstVars: (copyArray value: indices) fromClasses: (copyArray value: omittedClasses).
 oldInstTable isNil ifFalse: [oldInstTable keysAndValuesDo: [:class :table |
   table keysAndValuesDo: [:index :replacement | privateDumper replaceInstVarIndex: index of: class using: nil]]].
 privateDumper setClassReplacement. freshBlock := privateDumper replacementBlock.
 oldClassTable isNil ifFalse: [oldClassTable keysAndValuesDo: [:class :replacement |
   privateDumper replaceInstancesOf: class using: (replacement isNil ifTrue: [nil] ifFalse: [freshBlock])]].
 privateDumper currentError = 0 ifFalse: [component error: 'Fresh dumper configuration rejected'].
 putPrivate value: privateSwapper value: 'dumper' value: privateDumper.
 putPrivate value: privateSwapper value: 'loader' value: privateLoader.
 putPrivate value: privateSwapper value: 'state' value: 0.
 putPrivate value: privateLin value: 'swapper' value: privateSwapper.
 putPrivate value: privateLin value: 'state' value: 0.
 newClassTable := slot value: (slot value: privateDumper value: 'classBasedReplacer') value: 'classBasedReplacementTable'.
 newInstTable := slot value: (slot value: privateDumper value: 'instVarReplacer') value: 'classesWithInstVarsToReplace'.
 same := [:a :b | ((a isKindOf: Dictionary) or: [a class == IdentityDictionary or: [a class == LookupTable]]) ifTrue: [
   ((b isKindOf: Dictionary) or: [b class == IdentityDictionary or: [b class == LookupTable]]) and: [a size = b size and: [a keys allSatisfy: [:k |
     (b includesKey: k) and: [same value: (a at: k) value: (b at: k)]]]]
   ] ifFalse: [a isArray ifTrue: [b isArray and: [a size = b size and: [
     (1 to: a size) allSatisfy: [:i | same value: (a at: i) value: (b at: i)]]]] ifFalse: [a = b]]].
 describe := [:value | value isNil ifTrue: ['nil'] ifFalse: [
   value isArray ifTrue: [(value collect: [:x | describe value: x]) asArray] ifFalse: [
   value isInteger ifTrue: [value] ifFalse: [value isBehavior ifTrue: [value name asString] ifFalse: [
   ((value isKindOf: Dictionary) or: [value class == IdentityDictionary or: [value class == LookupTable]]) ifTrue: [(value keys collect: [:k |
     Array with: (describe value: k) with: (describe value: (value at: k))]) asArray]
     ifFalse: [component error: 'Unsupported omission descriptor: ', value class name asString]]]]]].
 classRows := oldClassTable isNil ifTrue: [#()] ifFalse: [(oldClassTable keys collect: [:c |
   Array with: c name asString with: ((oldClassTable at: c) isNil ifTrue: ['nil'] ifFalse: ['standard_db_proxy'])]) asArray].
 instRows := oldInstTable isNil ifTrue: [#()] ifFalse: [(oldInstTable keys collect: [:c |
   Array with: c name asString with: (describe value: (oldInstTable at: c))]) asArray].
 originalStrategy := slot value: originalDumper value: 'swappingStrategy'.
 freshStrategy := slot value: privateDumper value: 'swappingStrategy'.
 strategyFields := #('optimized' 'includeInstVarNames' 'dumpCompiledMethods' 'defaultSize' 'defaultSegmentSize').
 checks := Dictionary new at: 'original_fields_and_collections_preserved' put: verify value;
   at: 'strategy_equivalent' put: (strategyFields allSatisfy: [:n | (slot value: originalStrategy value: n) = (slot value: freshStrategy value: n)]);
   at: 'omissions_equivalent' put: ((slot value: privateDumper value: 'omittedInstOfClasses') = omitted and: [
     (slot value: privateDumper value: 'omittedInstVars') = indices and: [(slot value: privateDumper value: 'omittedInstVarClasses') = omittedClasses]]);
   at: 'instvar_table_equivalent' put: (same value: oldInstTable value: newInstTable);
   at: 'class_table_equivalent' put: (oldClassTable size = newClassTable size and: [oldClassTable keys allSatisfy: [:c |
     (newClassTable includesKey: c) and: [(oldClassTable at: c) isNil ifTrue: [(newClassTable at: c) isNil]
       ifFalse: [(newClassTable at: c) == freshBlock]]]]);
   at: 'loader_has_no_backend' put: privateLoader dbInterface isNil;
   at: 'private_roles_distinct' put: (privateObjects allSatisfy: [:x | (originalRoles anySatisfy: [:y | x == y]) not]); yourself.
 sharedAfter := Array with: RBObjectDumper RBDBUnlinkInstancesOfClasses
   with: RBObjectDumper RBDBUnlinkFromClasses with: RBObjectDumper RBDBUnlinkInstVars.
 checks at: 'shared_class_tables_preserved' put: ((1 to: 3) allSatisfy: [:i | (sharedBefore at: i) == (sharedAfter at: i)]).
 checks at: 'complete_owner_records_preserved' put: (same value: before value: (collector value: component)).
 (checks at: 'original_fields_and_collections_preserved') ifFalse: [component error: 'Original serializer/config changed during construction'].
 (checks at: 'shared_class_tables_preserved') ifFalse: [component error: 'Shared class config changed during construction'].
 (checks at: 'complete_owner_records_preserved') ifFalse: [component error: 'Original owner/reference records changed during construction'].
 material at: 'checks' put: checks; at: 'phase' put: 'constructed'.
 Dictionary new at: 'profile' put: 'isolated_fresh_serializer_workbench_v1'; at: 'component_oid' put: component getOID;
   at: 'workbench_index' put: registry size; at: 'checks' put: checks; at: 'before' put: before;
   at: 'omitted_classes' put: (describe value: omitted); at: 'omitted_indices' put: (describe value: indices);
   at: 'omitted_instvar_classes' put: (describe value: omittedClasses); at: 'class_replacements' put: classRows;
   at: 'instvar_replacements' put: instRows; at: 'private_work_objects' put: 4;
   at: 'serialization_called' put: false; at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'commit_called' put: false; at: 'persistent_write_called' put: false;
   at: 'call_closure_complete' put: false; at: 'serialization_authorized' put: false; yourself
]]

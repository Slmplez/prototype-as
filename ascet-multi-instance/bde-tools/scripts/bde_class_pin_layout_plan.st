[:component :record :context |
 component handleExceptionsIn: [
 | clone targets witness material registry same images histories chosen reverse plans checks conflicts reports phases aliasFor pointArray findObservation sourceBlocks walkSource descriptorFor bindPin checkImages verify execute result setters candidateBlocks candidate reportText |
 ((context isKindOf: Array) and: [context size = 3]) ifFalse: [component error: 'Exact native layout context required'].
 clone := context first. targets := context at: 2. witness := context last.
 material := record at: 'material'. registry := record at: 'root'. same := registry at: 'sameSource'.
 phases := #('original' 'applied' 'current').
 images := Array with: (material at: 'originalRuntimeImage') with: (material at: 'afterRuntimeImage').
 checkImages := [((images first at: 'verifyImage') value: images first) and: [
   ((images last at: 'verifyImage') value: images last) and: [
   ((record at: 'verifyRecord') value: record) and: [(record at: 'verifyCurrent') value and: [
   ((clone at: 'verifyCorrespondence') value: clone) and: [(witness at: 'verifyBindings') value: witness]]]]]].
 checkImages value ifFalse: [component error: 'Exact sealed pin layout history required'].
 histories := Array with: (images first at: 'storageWitness') with: (images last at: 'storageWitness') with: witness.
 1 to: phases size do: [:index |
   (same value: ((histories at: index) at: 'source') value: ((record at: 'sources') at: (phases at: index)))
     ifFalse: [component error: 'Pin layout storage history differs from exact source history']
 ].
 aliasFor := [:alias | | out digits |
   alias isString ifTrue: ['string:', alias] ifFalse: [
     (alias isKindOf: ByteArray) ifFalse: [component error: 'Exact layout alias bytes required'].
     out := WriteStream on: String new. digits := '0123456789abcdef'.
     alias do: [:byte | out nextPut: (digits at: (byte // 16) + 1); nextPut: (digits at: (byte \\ 16) + 1)].
     'bytes:', out contents]
 ].
 pointArray := [:point |
   ((point isKindOf: Point) and: [point x isInteger and: [point y isInteger]])
     ifFalse: [component error: 'Exact integral layout point required'].
   Array with: point x with: point y
 ].
 reverse := IdentityDictionary new.
 (clone at: 'nativeByKey') keysAndValuesDo: [:key :native | reverse at: native put: key].
 findObservation := [:history :key | | found |
   ((history at: 'verifyBindings') value: history) ifFalse: [component error: 'Exact storage binding seal changed'].
   found := (history at: 'observations') select: [:entry | ((entry at: 3) at: 'native_key') = key].
   found size = 1 ifFalse: [component error: 'Exact node storage return history missing or repeated'].
   found first
 ].
 sourceBlocks := Dictionary new.
 walkSource := [:source :scope :depth |
   depth > 16 ifTrue: [component error: 'Layout candidate scope bound exceeded'].
   source blocks do: [:stored | | basic key |
     basic := (stored isKindOf: SGGraphicsBlockDB) ifTrue: [stored graphicBlock] ifFalse: [stored].
     key := scope, '/n', basic iD printString.
     (sourceBlocks includesKey: key) ifTrue: [component error: 'Repeated layout candidate node identity'].
     sourceBlocks at: key put: basic.
     (stored isKindOf: SGGraphicsBlockDB) ifTrue: [
       walkSource value: stored value: (scope, '/h', basic iD printString) value: depth + 1]
   ]
 ]. walkSource value: ((record at: 'sources') at: 'candidate') value: 'Main' value: 0.
 candidateBlocks := sourceBlocks.
 descriptorFor := [:stored :identity | | table kind method formal |
   kind := identity first. method := identity at: 2. formal := identity last.
   table := kind = 'selectorPorts' ifTrue: [stored selectorPorts] ifFalse: [stored returnPorts].
   ((table isKindOf: Dictionary) and: [(table at: method) isKindOf: Dictionary])
     ifFalse: [component error: 'Exact persisted layout method table required'].
   table := (table at: method) at: formal.
   ((table isKindOf: Array) and: [table size = 6])
     ifFalse: [component error: 'Exact six-field persisted layout descriptor required'].
   table
 ].
 bindPin := [:native :identity | | basic ports port pins pin external kind method formal descriptor |
   kind := identity first. method := identity at: 2. formal := identity at: 3. descriptor := identity last.
   basic := native basicGraphObject.
   ports := basic interfaceGOsWithoutMissingPorts select: [:item |
     item methodAliasName = method and: [item isSelectorPort = (kind = 'selectorPorts')]].
   ports size = 1 ifFalse: [component error: 'Exact native layout method port unavailable'].
   port := ports first.
   port manager == basic ifFalse: [component error: 'Exact layout native port parent changed'].
   pins := port interfaceGOs select: [:item | item connectorAliasName = formal].
   pins size = 1 ifFalse: [component error: 'Exact native layout formal unavailable'].
   pin := pins first. external := pin externalConnectorGO.
   ((external isKindOf: SGBlockConnectorGO) and: [external getPosition == (external instVarNamed: 'position')])
     ifFalse: [component error: 'Audited native connector position field required'].
   (pin manager == port and: [pin identifier = descriptor first and: [
     pin getDirection = (descriptor at: 2) and: [pin getPosition = (descriptor at: 3) and: [
     external userVisibility = (descriptor at: 4) and: [pin connNameVisible = (descriptor at: 5) and: [
     external hasTempVar = descriptor last]]]]]])
       ifFalse: [component error: 'Exact native pin descriptor or parent differs from captured storage'].
   Array with: pin with: external
 ].
 chosen := Dictionary new. plans := OrderedCollection new. checks := OrderedCollection new.
 conflicts := OrderedCollection new. reports := OrderedCollection new.
 targets do: [:target | (target at: 'kind') = 'pin' ifTrue: [| basic entries entry key |
   basic := (target at: 'parent') manager.
   entries := (witness at: 'observations') select: [:item |
     ((item at: 3) at: 'kind') = 'node' and: [item first basicGraphObject == basic]].
   entries size = 1 ifFalse: [component error: 'Exact target native caller storage return unavailable'].
   entry := entries first. key := (entry at: 3) at: 'native_key'. chosen at: key put: entry
 ]].
 chosen keys asSortedCollection do: [:nodeKey | | observations nodes sources classes modelAlias scope |
   observations := histories collect: [:history | findObservation value: history value: nodeKey].
   nodes := observations collect: [:entry | entry first]. sources := observations collect: [:entry | entry at: 2].
   classes := nodes collect: [:native | native class].
   ((classes allSatisfy: [:class | class == classes first]) and: [
     (sources allSatisfy: [:source | source class == sources first class and: [source iD = sources first iD]])])
       ifFalse: [component error: 'Exact layout node storage/native identity changed'].
   modelAlias := sources first aliasName. scope := (observations first at: 3) at: 'scope'.
   ((observations allSatisfy: [:entry | ((entry at: 3) at: 'scope') = scope and: [
     entry first identifier = sources first iD and: [entry first basicGraphObject element xmlOID = modelAlias]]]) and: [
     sources allSatisfy: [:source | source aliasName = modelAlias]])
       ifFalse: [component error: 'Exact layout declaration or scope identity changed'].
   candidate := candidateBlocks at: nodeKey.
   (candidate class == sources first class and: [candidate iD = sources first iD and: [candidate aliasName = modelAlias]])
     ifFalse: [component error: 'Exact candidate layout node identity differs'].
   #('selectorPorts' 'returnPorts') do: [:kind | | methods |
     methods := kind = 'selectorPorts' ifTrue: [sources first selectorPorts] ifFalse: [sources first returnPorts].
     methods keysAndValuesDo: [:methodAlias :formals | formals keysAndValuesDo: [:formalAlias :oldDescriptor |
       | descriptors bound pin external before after now merged restore preserved already report nativeKey candidateDescriptor |
       reports size >= 100000 ifTrue: [component error: 'Layout pin bound exceeded'].
       descriptors := sources collect: [:source | descriptorFor value: source value: (Array with: kind with: methodAlias with: formalAlias)].
       (oldDescriptor first isInteger and: [oldDescriptor first >= 0])
         ifFalse: [component error: 'Nil existing layout pin requires another binding profile'].
       #(1 2 4 5 6) do: [:index |
         (descriptors allSatisfy: [:descriptor | (descriptor at: index) = (oldDescriptor at: index)])
           ifFalse: [component error: 'Existing layout pin ID/direction/visibility lineage changed']
       ].
       bound := ((1 to: 3) collect: [:index |
         bindPin value: (nodes at: index) value: (Array with: kind with: methodAlias with: formalAlias with: (descriptors at: index))]) asArray.
       pin := bound last first. external := bound last last.
       ((clone at: 'memo') values includes: external) ifFalse: [component error: 'Layout connector is not current memo-owned'].
       nativeKey := reverse at: pin.
       before := pointArray value: (descriptors first at: 3).
       after := pointArray value: ((descriptors at: 2) at: 3).
       now := pointArray value: (descriptors last at: 3).
       merged := now copy. restore := OrderedCollection new. preserved := OrderedCollection new. already := OrderedCollection new.
       1 to: 2 do: [:index | | axis |
         axis := index = 1 ifTrue: ['x'] ifFalse: ['y'].
         (before at: index) = (after at: index) ifTrue: [
           (now at: index) ~= (after at: index) ifTrue: [preserved add: axis]
         ] ifFalse: [(now at: index) = (after at: index) ifTrue: [
           merged at: index put: (before at: index). restore add: axis
         ] ifFalse: [(now at: index) = (before at: index) ifTrue: [already add: axis] ifFalse: [
           conflicts add: (Dictionary new at: 'code' put: 'PIN_LAYOUT_FIELD_CONFLICT'; at: 'native_key' put: nativeKey;
             at: 'field' put: axis; at: 'original' put: (before at: index); at: 'applied' put: (after at: index);
             at: 'current' put: (now at: index); yourself)
         ]]]
       ].
       candidateDescriptor := descriptorFor value: candidate value: (Array with: kind with: methodAlias with: formalAlias).
       #(1 2 4 5 6) do: [:index |
         (candidateDescriptor at: index) = (oldDescriptor at: index)
           ifFalse: [component error: 'Candidate pin metadata differs from exact layout history']].
       ((conflicts anySatisfy: [:item | (item at: 'native_key') = nativeKey]) not and: [
         merged ~= (pointArray value: (candidateDescriptor at: 3))])
           ifTrue: [component error: 'Native coordinate plan differs from complete merged candidate'].
       checks add: [| matches |
         matches := true.
         1 to: 3 do: [:index |
           matches := matches and: [((bindPin value: (nodes at: index) value: (Array with: kind with: methodAlias
             with: formalAlias with: (descriptors at: index))) first) == (bound at: index) first]]. matches
       ].
       restore notEmpty ifTrue: [plans add: (Array with: external with: external getPosition with: (merged first @ merged last))].
       report := Dictionary new at: 'node_key' put: nodeKey; at: 'native_key' put: nativeKey;
         at: 'port_kind' put: kind; at: 'method_alias' put: (aliasFor value: methodAlias);
         at: 'formal_alias' put: (aliasFor value: formalAlias); at: 'pin_id' put: pin identifier;
         at: 'model_alias' put: (aliasFor value: modelAlias); at: 'original' put: before; at: 'applied' put: after;
         at: 'current' put: now; at: 'merged' put: merged; at: 'restore_axes' put: restore asArray;
         at: 'preserved_axes' put: preserved asArray; at: 'already_restored_axes' put: already asArray;
         at: 'connector_class' put: external class name asString;
         at: 'position_field_index' put: (external class allInstVarNames indexOf: 'position');
         at: 'native_binding_verified' put: true; at: 'memo_owned_connector_verified' put: true; yourself.
       reports add: report
     ]]
   ]
 ].
 reports := reports asArray.
 reportText := (registry at: 'encodeObservation') value: reports.
 verify := [checkImages value and: [(checks allSatisfy: [:check | check value]) and: [
   (plans allSatisfy: [:step | step first getPosition == (step at: 2)]) and: [
   ((registry at: 'encodeObservation') value: reports) = reportText]]]].
 setters := 0.
 execute := [
   (conflicts isEmpty and: [verify value]) ifFalse: [component error: 'Layout conflict before private coordinate setters'].
   plans do: [:step | step first position: step last. setters := setters + 1]. setters
 ].
 result := Dictionary new at: 'profile' put: 'class_native_pin_layout_plan_v1';
   at: 'oid' put: component getOID; at: 'generation' put: (record at: 'generation');
   at: 'compatible' put: conflicts isEmpty; at: 'conflicts' put: conflicts asArray;
   at: 'affected_callers' put: chosen size; at: 'existing_pins_checked' put: reports size;
   at: 'pins' put: reports; at: 'verifyBindings' put: verify; at: 'execute' put: execute;
   at: 'planned_coordinate_setters' put: plans size; at: 'model_setters_called' put: 0;
   at: 'write_authorized' put: false; at: 'native_merge_executor_available' put: false; yourself.
 verify value ifFalse: [component error: 'Native layout plan binding changed during preparation'].
 result
 ] ifFail: [:error | 'BDE_CLASS_PIN_LAYOUT_ERROR: ', error messageText]
]

[:component :context :direction |
 component handleExceptionsIn: [
 | source desired protected protectedVerify owner choices objects visited visit scalar map claimed private classify children eachLinks clone linkValue cells frozen same copy progress verifyBefore verifyAfter execute result changed rounds |
 (context isArray and: [context size = 6 and: [#('undo' 'redo') includes: direction]])
   ifFalse: [component error: 'Fixed alias-only source context required'].
 source := context at: 1. desired := context at: 2. protected := context at: 3.
 protectedVerify := context at: 4. same := context at: 5. copy := context at: 6.
 ((source isKindOf: SGTopGraphicsBlockDB) and: [desired class == source class and: [source dbObject == desired dbObject]])
   ifFalse: [component error: 'Same serialized source owner required'].
 owner := source dbObject. choices := IdentityDictionary new. objects := OrderedCollection new.
 visited := IdentityDictionary new. map := IdentityDictionary new. claimed := IdentitySet new. private := IdentitySet new.
 classify := [:value |
   (value == owner or: [value isNil or: [value isNumber or: [(value isKindOf: Symbol) or: [
     value == true or: [value == false or: [value isString or: [value isKindOf: ByteArray]]]]]]])
     ifTrue: ['scalar'] ifFalse: [(value isKindOf: Dictionary) ifTrue: ['key'] ifFalse: [
     ((value isKindOf: Array) or: [value isKindOf: OrderedCollection]) ifTrue: ['indexed'] ifFalse: [
     ((value isKindOf: SGGraphicObjectsDB) or: [#('Point' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor') includes: value class name asString])
       ifTrue: ['fields'] ifFalse: [component error: 'Unsupported source alias class ', value class name asString]]]]].
 scalar := [:left :right | left == right or: [left class == right class and: [
   left class == Float ifTrue: [(1 to: 8) allSatisfy: [:index | (left basicAt: index) = (right basicAt: index)]]
     ifFalse: [left = right]]]].
 eachLinks := [:value :block | | kind |
   kind := classify value: value.
   kind = 'key' ifTrue: [value keysAndValuesDo: [:key :child | block value: key value: child]]
   ifFalse: [kind = 'indexed' ifTrue: [1 to: value size do: [:index | block value: index value: (value at: index)]]
   ifFalse: [kind = 'fields' ifTrue: [
     value class isVariable ifTrue: [component error: 'Indexed source fields unavailable'].
     1 to: value class instSize do: [:index | block value: index value: (value instVarAt: index)]]]]].
 children := [:value :index | (classify value: value) = 'fields'
   ifTrue: [value instVarAt: index] ifFalse: [value at: index]].
 visit := [:current :wanted :depth | | kind list pairs |
   depth > 128 ifTrue: [component error: 'Source alias depth bound exceeded'].
   current class == wanted class ifFalse: [component error: 'Alias-only source repair cannot change classes'].
   kind := classify value: wanted.
   kind = 'scalar' ifTrue: [(scalar value: current value: wanted)
     ifFalse: [component error: 'Alias-only source repair cannot replace differing values']]
   ifFalse: [
     list := choices at: wanted ifAbsent: [
       objects size >= 100000 ifTrue: [component error: 'Source alias object bound exceeded'].
       objects add: wanted. choices at: wanted put: OrderedCollection new].
     (list anySatisfy: [:value | value == current]) ifFalse: [list add: current].
     pairs := visited at: current ifAbsentPut: [IdentitySet new].
     (pairs includes: wanted) ifFalse: [pairs add: wanted.
       kind = 'key' ifTrue: [(current size = wanted size and: [wanted keys allSatisfy: [:key | current includesKey: key]])
         ifFalse: [component error: 'Alias-only source dictionary shape differs']].
       kind = 'indexed' ifTrue: [current size = wanted size ifFalse: [component error: 'Alias-only source array shape differs']].
       eachLinks value: wanted value: [:index :child | visit value: (children value: current value: index) value: child value: depth + 1]
     ]
   ]].
 visit value: source value: desired value: 0.
 clone := [:wanted | | value | value := wanted shallowCopy. private add: value. value].
 objects do: [:wanted | | available target |
   available := (choices at: wanted) reject: [:value | claimed includes: value].
   target := available isEmpty ifTrue: [clone value: wanted] ifFalse: [available first].
   claimed add: target. map at: wanted put: target].
 (map at: desired) == source ifFalse: [component error: 'Serialized root replacement prohibited'].
 linkValue := [:wanted :current | (classify value: wanted) = 'scalar' ifTrue: [current] ifFalse: [map at: wanted]].
 changed := true. rounds := 0.
 [changed] whileTrue: [changed := false. rounds := rounds + 1.
   rounds > (objects size + 1) ifTrue: [component error: 'Protected source alias propagation bound exceeded'].
   objects do: [:wanted | | target needsCopy |
     target := map at: wanted.
     (protected includes: target) ifTrue: [
       needsCopy := false.
       eachLinks value: wanted value: [:index :child |
         (linkValue value: child value: (children value: target value: index)) ~~ (children value: target value: index)
           ifTrue: [needsCopy := true]].
       needsCopy ifTrue: [wanted == desired ifTrue: [component error: 'Protected serialized root cannot be replaced'].
         map at: wanted put: (clone value: wanted). changed := true]
     ]
   ]].
 cells := OrderedCollection new.
 objects do: [:wanted | | target kind |
   target := map at: wanted. kind := classify value: target.
   eachLinks value: wanted value: [:index :child | | old new |
     old := children value: target value: index.
     new := linkValue value: child value: old.
     old ~~ new ifTrue: [
       (private includes: target) ifTrue: [kind = 'fields' ifTrue: [target instVarAt: index put: new] ifFalse: [target at: index put: new]]
       ifFalse: [(protected includes: target) ifTrue: [component error: 'Protected source alias mutation refused'].
         cells add: (Array with: target with: kind with: index with: old with: new)]
     ]]] .
 frozen := copy value: source.
 verifyBefore := [(same value: source value: frozen) and: [protectedVerify value and: [
   cells allSatisfy: [:cell | (children value: cell first value: (cell at: 3)) == (cell at: 4)]]]].
 verifyAfter := [(same value: source value: desired) and: [protectedVerify value]].
 progress := Dictionary new at: 'state' put: 'prepared'; at: 'completed_cells' put: 0;
   at: 'completed_primitives' put: 0; at: 'cell_count' put: cells size; at: 'direction' put: direction; yourself.
 execute := [
   (progress at: 'state') = 'prepared' ifFalse: [component error: 'Source alias patch cannot replay; classify instead'].
   verifyBefore value ifFalse: [component error: 'Source alias slot/value/protected reference conflict'].
   progress at: 'state' put: 'started'.
   cells doWithIndex: [:cell :index |
     (cell at: 2) = 'fields' ifTrue: [cell first instVarAt: (cell at: 3) put: cell last]
       ifFalse: [cell first at: (cell at: 3) put: cell last].
     progress at: 'completed_primitives' put: index; at: 'completed_cells' put: index].
   verifyAfter value ifFalse: [component error: 'Exact source sharing or protected native values differ'].
   progress at: 'state' put: 'applied'. cells size].
 result := Dictionary new at: 'profile' put: 'source_alias_patch_v1'; at: 'cells' put: cells;
   at: 'private_object_count' put: private size; at: 'progress' put: progress;
   at: 'verifyBeforeApply' put: verifyBefore; at: 'verifyDesired' put: verifyAfter;
   at: 'execute' put: execute; at: 'write_authorized' put: false; yourself.
 result
 ] ifFail: [:error | 'BDE_SOURCE_ALIAS_ERROR: ', error messageText]
]

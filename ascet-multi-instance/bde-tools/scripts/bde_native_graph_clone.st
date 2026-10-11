[:component :checkpoint :mode |
 component handleExceptionsIn: [
 | root seen classes boundaries presentation unsupported missing kindFor walk pathFor result memo clone clonedRoot cloneMembers copiedCount mapped sameOrder verifyFields verifyLineage savedMemo savedMembers privateDiagram fieldCount nodePositions |
 (#('inspect' 'clone') includes: mode) ifFalse: [component error: 'Unknown private graph clone mode'].
 ((checkpoint isKindOf: Dictionary) and: [(checkpoint at: 'keyedProfile' ifAbsent: ['']) = 'native_keyed_collections_v1'])
   ifFalse: [component error: 'Exact keyed native checkpoint required for clone'].
 (checkpoint at: 'owner') == component item ifFalse: [component error: 'Private clone owner changed'].
 ((checkpoint at: 'verifyCurrent') value) ifFalse: [component error: 'Private clone current checkpoint changed'].
 root := (checkpoint at: 'diagram') topGraphicalHierarchy.
 seen := IdentityDictionary new. classes := Dictionary new. boundaries := Dictionary new.
 presentation := Dictionary new.
 unsupported := Dictionary new. missing := OrderedCollection new.
 kindFor := [:value | | name |
   name := value class name asString.
   (value isNil or: [value isNumber or: [(value isKindOf: Symbol) or: [value == true or: [value == false]]]])
     ifTrue: ['constant'] ifFalse: [
   (value == (checkpoint at: 'owner') or: [((value isKindOf: DBBaseObject) or: [value isKindOf: DBProxy]) or: [
     (value isKindOf: SGDBObject) or: [value isKindOf: SGAliasMethod]]]) ifTrue: ['database_boundary'] ifFalse: [
   (#('CgFont' 'CgDeviceIndependentImage' 'EtasIcon') includes: name) ifTrue: ['presentation_boundary'] ifFalse: [
   ((value isString) or: [value isKindOf: ByteArray]) ifTrue: ['value'] ifFalse: [
   (#('Array' 'OrderedCollection' 'Dictionary' 'IdentityDictionary' 'Set' 'IdentitySet') includes: name)
     ifTrue: ['collection'] ifFalse: [
   ((value isKindOf: RBGraphicObject) or: [(value isKindOf: RBGraphicObjectCollection) or: [
     #('Point' 'Rectangle' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor' 'RBConnectionPointBranch') includes: name]])
     ifTrue: ['graphic'] ifFalse: ['unsupported']]]]]]
 ].
 pathFor := [:value :index | value class name asString, '/field', index printString].
 walk := [:value :depth :path | | kind name |
   depth > 128 ifTrue: [component error: 'Private graph inspection depth bound exceeded'].
   kind := kindFor value: value.
   kind = 'constant' ifFalse: [(seen includesKey: value) ifFalse: [
     seen size >= 100000 ifTrue: [component error: 'Private graph inspection object bound exceeded'].
     seen at: value put: kind. name := value class name asString.
     classes at: name put: ((classes at: name ifAbsent: [0]) + 1).
     kind = 'database_boundary' ifTrue: [boundaries at: name put: ((boundaries at: name ifAbsent: [0]) + 1)] ifFalse: [
     kind = 'presentation_boundary' ifTrue: [presentation at: name put: ((presentation at: name ifAbsent: [0]) + 1)] ifFalse: [
     kind = 'unsupported' ifTrue: [unsupported at: name ifAbsentPut: [path]] ifFalse: [
     kind = 'collection' ifTrue: [
       (value isKindOf: Dictionary) ifTrue: [value keysAndValuesDo: [:key :entry |
         walk value: key value: depth + 1 value: (name, '/key').
         walk value: entry value: depth + 1 value: (name, '/value')]]
       ifFalse: [value size > 100000 ifTrue: [component error: 'Private graph collection size bound exceeded'].
         value do: [:entry | walk value: entry value: depth + 1 value: (name, '/member')]]
     ] ifFalse: [kind = 'graphic' ifTrue: [
       value class isVariable ifTrue: [component error: ('Unsupported indexed native graphic: ', name)].
       1 to: value class instSize do: [:index |
         walk value: (value instVarAt: index) value: depth + 1 value: (pathFor value: value value: index)]
     ]]]]]
   ]]
 ]. walk value: root value: 0 value: 'root'.
 (checkpoint at: 'nativeByKey') keysAndValuesDo: [:key :member |
   ((seen at: member ifAbsent: ['']) = 'graphic') ifFalse: [missing add: key]].
 result := Dictionary new at: 'profile' put: 'native_graph_clone_inspection_v1';
   at: 'mode' put: mode; at: 'classes' put: classes; at: 'database_boundaries' put: boundaries;
   at: 'presentation_boundaries' put: presentation;
   at: 'unsupported' put: unsupported; at: 'unreachable_members' put: missing asArray;
   at: 'inspected_objects' put: seen size; at: 'keyed_members' put: (checkpoint at: 'nativeByKey') size;
   at: 'clone_available' put: (unsupported isEmpty and: [missing isEmpty]);
   at: 'copied_objects' put: 0; at: 'model_setters_called' put: 0; at: 'write_authorized' put: false; yourself.
 mode = 'clone' ifTrue: [
   (unsupported isEmpty and: [missing isEmpty]) ifFalse: [component error: 'Private clone contains unsupported or unreachable native members'].
   memo := IdentityDictionary new. copiedCount := 0.
   clone := [:value :depth | | copied kind |
     depth > 128 ifTrue: [component error: 'Private graph clone depth bound exceeded'].
     kind := kindFor value: value.
     (#('constant' 'database_boundary' 'presentation_boundary') includes: kind) ifTrue: [value] ifFalse: [memo at: value ifAbsent: [
       copiedCount := copiedCount + 1. copiedCount > 100000 ifTrue: [component error: 'Private graph clone object bound exceeded'].
       kind = 'value' ifTrue: [copied := value copy. memo at: value put: copied] ifFalse: [
       kind = 'collection' ifTrue: [
         value class = Array ifTrue: [
           copied := Array new: value size. memo at: value put: copied.
           1 to: value size do: [:index | copied at: index put: (clone value: (value at: index) value: depth + 1)]
         ] ifFalse: [copied := value class new. memo at: value put: copied.
           (value isKindOf: Dictionary) ifTrue: [value keysAndValuesDo: [:key :entry |
             copied at: (clone value: key value: depth + 1) put: (clone value: entry value: depth + 1)]]
             ifFalse: [value do: [:entry | copied add: (clone value: entry value: depth + 1)]]]
       ] ifFalse: [kind = 'graphic' ifFalse: [component error: 'Unaudited private clone kind'].
         copied := value shallowCopy. memo at: value put: copied.
         1 to: value class instSize do: [:index |
           copied instVarAt: index put: (clone value: (value instVarAt: index) value: depth + 1)]
       ]]. copied
     ]]
   ]. clonedRoot := clone value: root value: 0.
   cloneMembers := Dictionary new.
   (checkpoint at: 'nativeByKey') keysAndValuesDo: [:key :member | | copied |
     copied := memo at: member ifAbsent: [component error: 'Private clone member mapping unavailable'].
     copied == member ifTrue: [component error: 'Private clone retains live graphical member'].
     cloneMembers at: key put: copied].
   ((checkpoint at: 'verifyCurrent') value) ifFalse: [component error: 'Original native graph changed during private clone'].
   savedMemo := memo copy. savedMembers := cloneMembers copy.
   mapped := [:value | savedMemo at: value ifAbsent: [
     (#('constant' 'database_boundary' 'presentation_boundary') includes: (kindFor value: value))
       ifFalse: [component error: 'Unmapped mutable private graph field']. value]].
   sameOrder := [:left :right | left size = right size and: [
     ((1 to: left size) anySatisfy: [:index | (left at: index) ~~ (right at: index)]) not]].
   fieldCount := 0. savedMemo keys do: [:source |
     (kindFor value: source) = 'graphic' ifTrue: [fieldCount := fieldCount + source class instSize]].
   verifyFields := [
     ((checkpoint at: 'verifyCurrent') value) and: [(savedMemo keys anySatisfy: [:source | | copied kind |
       copied := savedMemo at: source. kind := kindFor value: source.
       (copied class = source class and: [
       kind = 'value' ifTrue: [copied = source] ifFalse: [
       kind = 'graphic' ifTrue: [((1 to: source class instSize) anySatisfy: [:index |
         (copied instVarAt: index) ~~ (mapped value: (source instVarAt: index))]) not] ifFalse: [
       copied size = source size and: [
         (source isKindOf: Dictionary) ifTrue: [(source keys anySatisfy: [:key | | copiedKey |
           copiedKey := mapped value: key.
           ((copied includesKey: copiedKey) and: [(copied at: copiedKey) == (mapped value: (source at: key))]) not]) not]
         ifFalse: [((source isKindOf: Array) or: [source isKindOf: OrderedCollection])
           ifTrue: [sameOrder value: copied value: (source collect: [:entry | mapped value: entry])]
           ifFalse: [(source anySatisfy: [:entry |
             (copied anySatisfy: [:copyMember | copyMember == (mapped value: entry)]) not]) not]]
       ]]]]) not
     ]) not]
   ]. verifyFields value ifFalse: [component error: 'Private clone complete field or collection mapping differs'].
   privateDiagram := (checkpoint at: 'diagram') shallowCopy.
   privateDiagram topGraphicalHierarchy: clonedRoot.
   verifyLineage := [:candidate | | candidateMemo candidateMembers |
     candidateMemo := candidate at: 'memo' ifAbsent: [IdentityDictionary new].
     candidateMembers := candidate at: 'nativeByKey' ifAbsent: [Dictionary new].
     ((candidate at: 'profile' ifAbsent: ['']) = 'native_graph_clone_v1' and: [
       (candidate at: 'originalCheckpoint' ifAbsent: [nil]) == checkpoint and: [
       (candidate at: 'root' ifAbsent: [nil]) == clonedRoot and: [
       (candidate at: 'diagram' ifAbsent: [nil]) == privateDiagram and: [
       privateDiagram topGraphicalHierarchy == clonedRoot and: [
       candidateMemo size = savedMemo size and: [candidateMembers size = savedMembers size]]]]]]) ifFalse: [false] ifTrue: [
       ((savedMemo keys anySatisfy: [:source |
         (candidateMemo at: source ifAbsent: [nil]) ~~ (savedMemo at: source)]) not) and: [
       (savedMembers keys anySatisfy: [:key |
         (candidateMembers at: key ifAbsent: [nil]) ~~ (savedMembers at: key)]) not]
     ]
   ].
   result at: 'root' put: clonedRoot; at: 'memo' put: memo; at: 'nativeByKey' put: cloneMembers;
     at: 'copied_objects' put: copiedCount; at: 'profile' put: 'native_graph_clone_v1';
     at: 'originalCheckpoint' put: checkpoint; at: 'diagram' put: privateDiagram;
     at: 'verifyInitialGraph' put: verifyFields; at: 'verifyCorrespondence' put: verifyLineage;
     at: 'verified_graph_fields' put: fieldCount.
   (verifyLineage value: result) ifFalse: [component error: 'Private clone correspondence changed'].
   nodePositions := (checkpoint at: 'nodeBasics') collect: [:pair | | basic point fields names |
     basic := memo at: pair last. point := basic getPosition. names := basic class allInstVarNames.
     fields := OrderedCollection new.
     1 to: basic class instSize do: [:index | | value |
       value := basic instVarAt: index.
       fields add: (Array with: (names at: index) with: value class name asString)].
     Dictionary new at: 'node_key' put: ((checkpoint at: 'memberKeys') at: pair first);
       at: 'native_class' put: pair first class name asString; at: 'basic_class' put: basic class name asString;
       at: 'position_is_mapped_field' put: (memo values anySatisfy: [:value | value == point]);
       at: 'fields' put: fields; yourself].
   result at: 'node_position_audit' put: nodePositions
 ]. result
 ] ifFail: [:error | 'BDE_GRAPH_CLONE_ERROR: ', error messageText]
]

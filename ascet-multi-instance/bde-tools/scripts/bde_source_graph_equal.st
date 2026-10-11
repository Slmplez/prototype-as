[:component :source :saved |
 component handleExceptionsIn: [
 | owner forward backward visited equal |
 ((source isKindOf: SGTopGraphicsBlockDB) and: [saved class == source class and: [source dbObject == saved dbObject]])
   ifFalse: [component error: 'Exact serialized source owner required'].
 owner := source dbObject. forward := IdentityDictionary new. backward := IdentityDictionary new. visited := 0.
 equal := [:left :right :depth | | kind |
   visited := visited + 1.
   (visited > 1000000 or: [depth > 128]) ifTrue: [component error: 'Source equality bound exceeded'].
   left class ~~ right class ifTrue: [false] ifFalse: [
   (left == owner or: [right == owner]) ifTrue: [left == right] ifFalse: [
   (left isNil or: [left isNumber or: [(left isKindOf: Symbol) or: [
     left == true or: [left == false or: [left isString or: [left isKindOf: ByteArray]]]]]])
   ifTrue: [left class == Float ifTrue: [(1 to: 8) allSatisfy: [:index | (left basicAt: index) = (right basicAt: index)]]
     ifFalse: [left = right]]
   ifFalse: [
     kind := (left isKindOf: Dictionary) ifTrue: ['key'] ifFalse: [
       ((left isKindOf: Array) or: [left isKindOf: OrderedCollection]) ifTrue: ['indexed'] ifFalse: [
       ((left isKindOf: SGGraphicObjectsDB) or: [#('Point' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor') includes: left class name asString])
       ifTrue: ['fields'] ifFalse: [component error: 'Unsupported source equality class ', left class name asString]]].
     ((forward includesKey: left) or: [backward includesKey: right])
       ifTrue: [(forward at: left ifAbsent: [nil]) == right and: [(backward at: right ifAbsent: [nil]) == left]]
       ifFalse: [
         forward at: left put: right. backward at: right put: left.
         kind = 'key' ifTrue: [left size = right size and: [left keys allSatisfy: [:key |
           (right includesKey: key) and: [equal value: (left at: key) value: (right at: key) value: depth + 1]]]]
         ifFalse: [kind = 'indexed' ifTrue: [left size = right size and: [(1 to: left size) allSatisfy: [:index |
           equal value: (left at: index) value: (right at: index) value: depth + 1]]]
         ifFalse: [left class isVariable ifTrue: [component error: 'Indexed source equality fields unavailable'].
           (1 to: left class instSize) allSatisfy: [:index |
             equal value: (left instVarAt: index) value: (right instVarAt: index) value: depth + 1]]]
       ]
   ]]]].
 equal value: source value: saved value: 0
 ] ifFail: [:error | 'BDE_SOURCE_EQUAL_ERROR: ', error messageText]
]

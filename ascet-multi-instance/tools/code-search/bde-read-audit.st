[:auditSpec :auditOperation :auditAPI |
 | copySource sameSource auditBefore auditResult auditDifference |
 copySource := [:source |
   | memo clone visited owner |
   memo := IdentityDictionary new. visited := 0. owner := source isNil ifTrue: [nil] ifFalse: [source dbObject].
   clone := [:v :depth |
     | copied name |
     visited := visited + 1.
     (visited > 1000000 or: [depth > 128]) ifTrue: [auditAPI error: 'Source checkpoint bound reached'].
     (v == owner or: [(v isNil or: [v isNumber]) or: [(v isKindOf: Symbol) or: [v == true or: [v == false]]]])
       ifTrue: [v] ifFalse: [
       memo at: v ifAbsent: [
         name := v class name asString.
         (((v isKindOf: String) or: [v class == DBString]) or: [v isKindOf: ByteArray]) ifTrue: [copied := v copy. memo at: v put: copied] ifFalse: [
         (v isKindOf: Dictionary) ifTrue: [
           copied := v class new. memo at: v put: copied.
           v keysAndValuesDo: [:key :val | copied at: (clone value: key value: depth + 1) put: (clone value: val value: depth + 1)]
         ] ifFalse: [
         ((v isKindOf: Array) or: [v isKindOf: OrderedCollection]) ifTrue: [
           copied := v copy. memo at: v put: copied.
           1 to: v size do: [:i | copied at: i put: (clone value: (v at: i) value: depth + 1)]
         ] ifFalse: [
           ((v isKindOf: SGGraphicObjectsDB) or: [#('Point' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor') includes: name])
             ifFalse: [auditAPI error: ('Unsupported source checkpoint class ', name)].
           copied := v shallowCopy. memo at: v put: copied.
           1 to: v class instSize do: [:i | copied instVarAt: i put: (clone value: (v instVarAt: i) value: depth + 1)]
         ]]]. copied
       ]
     ]
   ]. clone value: source value: 0
 ].
 sameSource := [:source :saved |
   | memo equal compare visited trail |
   memo := IdentityDictionary new. visited := 0. trail := OrderedCollection new. auditDifference := ''.
   compare := [:a :b :depth :where |
     | answer | trail add: where. answer := equal value: a value: b value: depth.
     (answer not and: [auditDifference isEmpty]) ifTrue: [
       auditDifference := (trail inject: '' into: [:auditPath :auditPart | auditPath, '/', auditPart]), ' (', a class name asString, ' vs ', b class name asString, ')'.
       ((a isNil or: [a isNumber]) or: [a isString]) ifTrue: [auditDifference := auditDifference, ' ', a printString, ' vs ', b printString]
     ].
     trail removeLast. answer
   ].
   equal := [:a :b :depth |
     visited := visited + 1.
     (visited > 1000000 or: [depth > 128]) ifTrue: [auditAPI error: 'Source comparison bound reached'].
     a == b ifTrue: [true] ifFalse: [a class = b class ifFalse: [false] ifTrue: [
       ((a isNumber or: [a isString]) or: [(a isKindOf: Symbol) or: [a isKindOf: ByteArray]]) ifTrue: [a = b] ifFalse: [
       (memo includesKey: a) ifTrue: [(memo at: a) == b] ifFalse: [
         memo at: a put: b.
         (a isKindOf: Dictionary) ifTrue: [a size = b size and: [
           (a keys anySatisfy: [:key | ((b includesKey: key) and: [compare valueWithArguments: (Array with: (a at: key) with: (b at: key) with: depth + 1 with: key printString)]) not]) not
         ]] ifFalse: [
         ((a isKindOf: Array) or: [a isKindOf: OrderedCollection]) ifTrue: [a size = b size and: [
           ((1 to: a size) anySatisfy: [:i | (compare valueWithArguments: (Array with: (a at: i) with: (b at: i) with: depth + 1 with: i printString)) not]) not
         ]] ifFalse: [
           ((a isKindOf: SGGraphicObjectsDB) or: [#('Point' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor') includes: a class name asString]) ifTrue: [
             ((1 to: a class instSize) anySatisfy: [:i | (compare valueWithArguments: (Array with: (a instVarAt: i) with: (b instVarAt: i) with: depth + 1 with: (a class allInstVarNames at: i) asString)) not]) not
           ] ifFalse: [false]
         ]]
       ]]
     ]]
   ]. compare valueWithArguments: (Array with: source with: saved with: 0 with: 'source')
 ].

 auditBefore := copySource value: auditSpec specSourceInternalOrNil.
 auditResult := auditOperation value.
 (sameSource value: auditSpec specSourceInternalOrNil value: auditBefore) ifFalse: [auditAPI error: 'BDE_READ_CHANGED_SOURCE ', auditDifference].
 auditResult
]

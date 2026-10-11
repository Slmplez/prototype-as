[:component |
 | source owner rows seen visit walk |
 source := (component getDiagram: 'Main') specification specSourceInternalOrNil.
 owner := ((source isKindOf: DBBaseObject) or: [(source isKindOf: DBProxy) or: [source isKindOf: SGTopGraphicsBlockDB]])
   ifTrue: [source dbObject] ifFalse: [nil].
 rows := OrderedCollection new.
 rows add: (Array with: 'root' with: source class name asString
   with: (owner isNil ifTrue: ['nil'] ifFalse: [owner class name asString])).
 seen := IdentityDictionary new. visit := 0.
 walk := [:value :path :depth |
   | name |
   visit := visit + 1.
   (visit > 1000000 or: [depth > 128]) ifTrue: [component error: 'Source shape bound exceeded'].
   ((value isNil or: [value isNumber]) or: [(value isKindOf: Symbol) or: [
     value isString or: [(value isKindOf: ByteArray) or: [value == true or: [value == false]]]]])
     ifFalse: [(seen includesKey: value) ifFalse: [
       seen at: value put: true. name := value class name asString.
       ((value isKindOf: DBObject) or: [value isKindOf: DBProxy]) ifTrue: [
         rows add: (Array with: path with: name with: (value == owner))
       ] ifFalse: [
       (value isKindOf: Dictionary) ifTrue: [
         value keysAndValuesDo: [:key :child |
           walk value: key value: (path, '/key') value: depth + 1.
           walk value: child value: (path, '/', key printString) value: depth + 1]
       ] ifFalse: [
       ((value isKindOf: Array) or: [value isKindOf: OrderedCollection]) ifTrue: [
         1 to: value size do: [:i | walk value: (value at: i) value: (path, '/', i printString) value: depth + 1]
       ] ifFalse: [
         ((value isKindOf: SGGraphicObjectsDB) or: [#('Point' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor') includes: name])
           ifTrue: [1 to: value class instSize do: [:i |
             walk value: (value instVarAt: i) value: (path, '/', (value class allInstVarNames at: i) asString) value: depth + 1]]
           ifFalse: [rows add: (Array with: path with: name with: 'unsupported')]
       ]]]
     ]]
 ].
 walk value: source value: 'source' value: 0.
 rows asArray printString
]

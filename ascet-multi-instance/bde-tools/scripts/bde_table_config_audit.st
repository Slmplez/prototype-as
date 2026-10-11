[:component :diagramName :targets |
 component handleExceptionsIn: [
 | stream first walk seen count |
 stream := WriteStream on: String new. stream nextPutAll: '{"objects":['.
 first := true. seen := IdentitySet new. count := 0.
 walk := [:object :path :depth |
   | names |
   count := count + 1. count > 1024 ifTrue: [component error: 'Table audit bound reached'].
   first ifFalse: [stream nextPut: $,]. first := false.
   stream nextPutAll: '{"path":"'; nextPutAll: path;
     nextPutAll: '","class":"'; nextPutAll: object class name asString; nextPutAll: '"}'.
   ((depth < 4 and: [object notNil]) and: [(seen includes: object) not]) ifTrue: [
     seen add: object.
     (object isKindOf: Dictionary) ifTrue: [object keysAndValuesDo: [:key :value |
       walk value: value value: path, '/', key asString value: depth + 1
     ]] ifFalse: [
       ((object isKindOf: Array) or: [object isKindOf: OrderedCollection]) ifTrue: [
         object doWithIndex: [:value :i | i <= 4 ifTrue: [walk value: value value: path, '/', i printString value: depth + 1]]
       ] ifFalse: [
         ((object isNumber or: [object isKindOf: String]) or: [object == true or: [object == false]]) ifFalse: [
           names := object class allInstVarNames.
           1 to: names size do: [:i |
             (#('access' 'dataAccess' 'owner' 'parent' 'sgModelElement') includes: (names at: i)) ifFalse: [
               walk value: (object instVarAt: i) value: path, '/', (names at: i) value: depth + 1
             ]
           ]
         ]
       ]
     ]
   ]
 ].
 component getAllVariables do: [:model |
   ((model isOneDTable or: [model isTwoDTable]) and: [model getName = targets first]) ifTrue: [
     | config destination data raw |
     config := component getDefaultData. data := config getEntryFor: model.
     (data isKindOf: EtasAPIError) ifTrue: [component error: 'No table data'].
     destination := model element isUniqueDataConfigured ifTrue: [config item relatedClassConfig] ifFalse: [config item].
     raw := destination configForElement: model element.
     walk value: raw value: 'raw_config' value: 0.
     walk value: data dataElement value: 'data_element' value: 0
   ]
 ].
 stream nextPutAll: ']}'. stream contents
 ] ifFail: [:error | 'BDE_STRUCTURE_ERROR: ', error messageText]
]

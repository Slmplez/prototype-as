[:component :input |
 | source owner ids queue nodes atom reference hex root index links nativeIds result |
 source := input.
 nativeIds := false.
 (source isKindOf: Array) ifTrue: [
   (source size = 2 and: [source last = 'native_reference_ids'])
     ifFalse: [component error: 'Exact private source reference context required'].
   ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
     component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
     ifFalse: [component error: 'Isolated private source reference owner required'].
   nativeIds := true. source := source first
 ].
 (source isKindOf: SGTopGraphicsBlockDB) ifFalse: [component error: 'Complete persisted BDE source required'].
 owner := source dbObject. ids := IdentityDictionary new.
 queue := OrderedCollection new. nodes := OrderedCollection new. links := 0.
 hex := [:bytes | | stream digits |
   stream := WriteStream on: String new. digits := '0123456789abcdef'.
   bytes do: [:byte |
     (byte isInteger and: [byte >= 0 and: [byte <= 255]])
       ifFalse: [component error: 'Source byte representation invalid'].
     stream nextPut: (digits at: (byte // 16) + 1); nextPut: (digits at: (byte \\ 16) + 1)].
   stream contents
 ].
 (hex value: ((1 to: 8) collect: [:slot | 1.0 basicAt: slot])) = '000000000000f03f'
   ifFalse: [component error: 'Unsupported native source Float representation'].
 atom := [:value | | scalar |
   scalar := nil.
   value isNil ifTrue: [scalar := #('nil')].
   (value == true or: [value == false]) ifTrue: [scalar := Array with: 'boolean' with: value].
   value isInteger ifTrue: [scalar := Array with: 'integer' with: value class name asString with: value printString].
   value class == Float ifTrue: [scalar := Array with: 'float64le' with:
     (hex value: ((1 to: 8) collect: [:slot | value basicAt: slot]))].
   (value isKindOf: Symbol) ifTrue: [scalar := Array with: 'symbol' with: value class name asString with: value asString].
   (value isString and: [(value isKindOf: Symbol) not])
     ifTrue: [scalar := Array with: 'string' with: value class name asString with: value copy].
   (value isKindOf: ByteArray) ifTrue: [scalar := Array with: 'bytes' with: value class name asString with: (hex value: value)].
   (owner notNil and: [value == owner])
     ifTrue: [scalar := Array with: 'owner' with: component getOID with: value class name asString].
   scalar
 ].
 reference := [:value | | scalar identifier |
   links := links + 1. links > 1000000 ifTrue: [component error: 'Source export reference bound exceeded'].
   scalar := atom value: value.
   scalar notNil ifTrue: [scalar] ifFalse: [
     value isNumber ifTrue: [component error: 'Unsupported exact source numeric representation'].
     identifier := ids at: value ifAbsent: [
       queue size >= 100000 ifTrue: [component error: 'Source export object bound exceeded'].
       queue add: value. nodes add: nil. ids at: value put: queue size. queue size].
     Array with: 'ref' with: identifier
   ]
 ].
 root := reference value: source. index := 1.
 [index <= queue size] whileTrue: [
   | value row name fields keyed keys entries |
   value := queue at: index. name := value class name asString.
   row := Dictionary new at: 'id' put: index; at: 'native_class' put: name; yourself.
   (value isKindOf: Dictionary) ifTrue: [
     keyed := Dictionary new.
     value keys do: [:key | | scalar token |
       (key isString or: [key isInteger or: [(key isKindOf: Symbol) or: [key isKindOf: ByteArray]]])
         ifFalse: [component error: 'Unsupported exact source dictionary key: ', key class name asString].
       scalar := atom value: key. token := scalar printString.
       (keyed includesKey: token) ifTrue: [component error: 'Ambiguous source dictionary key representation'].
       keyed at: token put: key].
     keys := keyed keys asSortedCollection. entries := OrderedCollection new.
     keys do: [:token | | key |
       key := keyed at: token.
       entries add: (Array with: (reference value: key) with: (reference value: (value at: key)))].
     row at: 'kind' put: 'dictionary'; at: 'entries' put: entries asArray
   ] ifFalse: [
     ((value isKindOf: Array) or: [value isKindOf: OrderedCollection]) ifTrue: [
       value size > 100000 ifTrue: [component error: 'Source export collection bound exceeded'].
       row at: 'kind' put: 'ordered'; at: 'items' put: ((value collect: [:item | reference value: item]) asArray)
     ] ifFalse: [
       ((value isKindOf: SGGraphicObjectsDB) or: [#('Point' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor') includes: name])
         ifFalse: [component error: 'Unsupported source export class: ', name].
       value basicSize = 0 ifFalse: [component error: 'Unexpected indexed source fields: ', name].
       fields := value class allInstVarNames.
       row at: 'kind' put: 'fields'; at: 'fields' put: ((1 to: value class instSize) collect: [:slot |
         Array with: (fields at: slot) asString with: (reference value: (value instVarAt: slot))]) asArray.
       (value isKindOf: SGLogicBlockDB) ifTrue: [row at: 'logic_id' put: value iD].
       (value isKindOf: SGMemoryBlockDB) ifTrue: [
         row at: 'native_child_ids' put: ((value getChildGraphicOIDs collect: [:child |
           (child isNil or: [child isInteger])
             ifFalse: [component error: 'Unsupported native child graphical identifier'].
           atom value: child]) asArray)
       ]
     ]
   ].
   nodes at: index put: row. index := index + 1
 ].
 result := Dictionary new at: 'format' put: 'bde_persisted_source_graph_v1';
   at: 'oid' put: component getOID; at: 'root' put: root; at: 'nodes' put: nodes asArray;
   at: 'complete' put: true; at: 'reference_count' put: links;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
 nativeIds ifTrue: [Dictionary new at: 'profile' put: 'native_source_reference_ids_v1';
   at: 'graph' put: result; at: 'ids' put: ids copy; yourself] ifFalse: [result]
]

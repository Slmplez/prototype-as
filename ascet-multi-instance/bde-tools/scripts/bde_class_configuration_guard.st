[:configurationReader |
 | expected |
 expected := Dictionary new.
 [:component :mode |
 component handleExceptionsIn: [
 | oid item value baseline text |
 (#('capture' 'observe' 'check') includes: mode)
   ifFalse: [component error: 'Unsupported fixed configuration guard mode'].
 oid := component getOID. item := component item.
 (oid isString and: [oid isEmpty not])
   ifFalse: [component error: 'Configuration guard owner OID required'].
 item isNil ifTrue: [component error: 'Configuration guard owner identity required'].
 baseline := expected at: oid ifAbsent: [nil].
 mode = 'capture' ifTrue: [
   baseline isNil ifFalse: [component error: 'Configuration guard baseline already captured'].
   expected size >= 257 ifTrue: [component error: 'Configuration guard owner bound exceeded']
 ] ifFalse: [
   baseline isNil ifTrue: [component error: 'Configuration guard baseline missing'].
   item == baseline first ifFalse: [component error: 'Configuration guard native owner changed']
 ].
 value := configurationReader value: component.
 value isString ifFalse: [component error: 'Configuration guard fixed reader text required'].
 (value startsWith: 'BDE_') ifTrue: [component error: value].
 value size > 33554432 ifTrue: [component error: 'Configuration guard payload bound exceeded'].
 mode = 'capture' ifTrue: [expected at: oid put: (Array with: item with: value copy)].
 mode = 'check' ifTrue: [
   value = baseline last ifFalse: [component error: 'Configuration guard storage changed'].
   'verified'
 ] ifFalse: [
   text := WriteStream on: String new. text nextPutAll: '{"$d":[[{"$s":['.
   oid asCebraString doWithIndex: [:byte :index |
     index > 1 ifTrue: [text nextPut: $,]. text nextPutAll: byte printString].
   text nextPutAll: ']},'; nextPutAll: value; nextPutAll: ']]}'. text contents
 ]
 ] ifFail: [:error | 'BDE_CONFIGURATION_GUARD_ERROR: ', error messageText]
 ]
]

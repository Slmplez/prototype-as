[:component |
 component handleExceptionsIn: [
 | refs rows configClasses check keyFor shape inspected |
 configClasses := #('SGClassImplConfig' 'SGClassValueConfig' 'SGImplConfiguration' 'SGValueConfiguration').
 check := [:value | (value isKindOf: EtasAPIError) ifTrue: [component error: value errorMessage]. value].
 keyFor := [:key |
   | stream digits |
   key isString ifTrue: ['string:', key] ifFalse: [
     (key isKindOf: ByteArray) ifFalse: [component error: 'Configuration byte identity required'].
     stream := WriteStream on: String new. digits := '0123456789abcdef'.
     key do: [:b | stream nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)].
     'bytes:', stream contents
   ]
 ].
 inspected := 0.
 shape := [:value :depth :seen |
   | row fields |
   inspected := inspected + 1. inspected > 8192 ifTrue: [component error: 'Configuration audit bound exceeded'].
   row := Dictionary new at: 'class' put: value class name asString; yourself.
   value isNil ifTrue: [row at: 'value' put: nil] ifFalse: [
   (value == true or: [value == false]) ifTrue: [row at: 'value' put: value] ifFalse: [
   value isNumber ifTrue: [row at: 'number' put: value printString] ifFalse: [
   (value isKindOf: ByteArray) ifTrue: [row at: 'bytes' put: (keyFor value: value)] ifFalse: [
   (value isString or: [value isKindOf: Symbol]) ifTrue: [row at: 'text' put: value asString] ifFalse: [
   (value isKindOf: DBProxy) ifTrue: [row at: 'oid' put: value globalIdString; at: 'class_name' put: value className] ifFalse: [
   (depth >= 12 or: [seen includes: value]) ifTrue: [row at: 'boundary' put: 'depth_or_cycle'] ifFalse: [
     seen add: value.
     ((value isKindOf: Dictionary) or: [value isKindOf: LookupTable]) ifTrue: [
       fields := value associations collect: [:association | Dictionary new
         at: 'key' put: (shape value: association key value: depth + 1 value: seen);
         at: 'value' put: (shape value: association value value: depth + 1 value: seen); yourself].
       row at: 'entries' put: fields
     ] ifFalse: [
     ((value isKindOf: Array) or: [value isKindOf: OrderedCollection]) ifTrue: [
       row at: 'items' put: (value collect: [:item | shape value: item value: depth + 1 value: seen])
     ] ifFalse: [
       fields := OrderedCollection new.
       value class allInstVarNames doWithIndex: [:name :index |
         (#('access' 'dataAccess' 'owner' 'parent' 'sgModelElement' 'database') includes: name)
           ifTrue: [fields add: (Dictionary new at: 'name' put: name; at: 'boundary' put: 'ownership'; yourself)]
           ifFalse: [fields add: (Dictionary new at: 'name' put: name;
             at: 'value' put: (shape value: (value instVarAt: index) value: depth + 1 value: seen); yourself)]
       ]. row at: 'fields' put: fields
     ]]
   ]]]]]]]
   . row
 ].
 refs := component item dbObject readReferences.
 refs isError ifTrue: [component error: 'Configuration reference read failed'].
 refs := refs isReferencedBys. refs size > 256 ifTrue: [component error: 'Configuration reference bound exceeded'].
 rows := OrderedCollection new.
 refs do: [:reference |
   (configClasses includes: reference className) ifTrue: [
     | config row values |
     config := reference getObjectIfUndefined: [component error: 'Configuration reference unresolved'].
     row := Dictionary new at: 'oid' put: reference globalIdString;
       at: 'native_class' put: config class name asString; at: 'label' put: config label; yourself.
     values := Dictionary new.
     #('primitiveValues' 'complexValues' 'relatedClassConfig' 'attributes' 'methodImplementation' 'operatorImplementation' 'additionalImplInfo' 'rescalingFormulas') do: [:selector |
       (config respondsTo: selector asSymbol) ifTrue: [values at: selector put:
         (shape value: (check value: (config perform: selector asSymbol)) value: 0 value: IdentitySet new)]
         ifFalse: [values at: selector put: (Dictionary new at: 'state' put: 'unsupported'; yourself)]
     ]. row at: 'storage' put: values.
     row at: 'native_slots' put: (shape value: config value: 0 value: IdentitySet new).
     rows add: row
   ]
 ].
 Smalltalk at: #DogeBDEConfigAuditResult put: (Dictionary new at: 'component' put: component getFolderPathName;
   at: 'oid' put: component getOID; at: 'configurations' put: rows; at: 'inspected_objects' put: inspected; yourself).
 'audit_ready'
 ] ifFail: [:error | 'BDE_CLASS_CONFIGURATION_ERROR: ', error messageText]
]

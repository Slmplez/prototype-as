"Fixed enum owner/definition/body capture. Foreign DB objects remain explicit boundaries."
[:imageReader | [:component :definitionAPI |
 component handleExceptionsIn: [
 | owner definition enumeration enumSlot roots owned definitions models links configClasses
   inspectReference images expanded passes references definitionReferences modelSlot nativeType addOwned |
 owner := component item. definition := definitionAPI item.
 owner class name asString = 'SGClass' ifFalse: [component error: 'Audited SGClass enum owner required'].
 definition class name asString = 'SGEnumerationDB' ifFalse: [component error: 'Exact existing SGEnumerationDB required'].
 enumSlot := (definition class allInstVarNames collect: [:field | field asString]) indexOf: 'enumeration'.
 enumSlot > 0 ifFalse: [component error: 'Original enum definition slot unavailable'].
 enumeration := definition instVarAt: enumSlot.
 enumeration class name asString = 'SGEnumeration' ifFalse: [component error: 'Original SGEnumeration body required'].
 roots := OrderedCollection new. owned := OrderedCollection new. definitions := OrderedCollection new.
 addOwned := [:object | (owned anySatisfy: [:original | original == object]) ifFalse: [
   owned size >= 4352 ifTrue: [component error: 'Enum body ownership bound exceeded'].
   roots add: object. owned add: object]].
 addOwned value: owner. addOwned value: definition. addOwned value: enumeration.
 definitions add: definition. definitions add: enumeration.
 models := (component getAllVariables collect: [:api | api element]) asArray.
 models size > 4096 ifTrue: [component error: 'Enum current declaration bound exceeded'].
 models do: [:model |
   model class name asString = 'SGVariable' ifFalse: [component error: 'Audited SGVariable enum declaration required'].
   addOwned value: model.
   modelSlot := (model class allInstVarNames collect: [:field | field asString]) indexOf: 'sgClass'.
   modelSlot > 0 ifFalse: [component error: 'Original model type slot unavailable'].
   nativeType := model instVarAt: modelSlot.
   (#('SGReal' 'SGEnumeration') includes: nativeType class name asString) ifTrue: [addOwned value: nativeType]
     ifFalse: [nativeType == definition ifFalse: [
       ((nativeType isKindOf: DBProxy) and: [nativeType className = 'SGEnumerationDB' and: [
         nativeType globalIdString = definitionAPI getOID]])
         ifFalse: [component error: 'Unaudited current model type in enum declaration capture']]]
 ].
 configClasses := #('SGClassImplConfig' 'SGClassValueConfig' 'SGImplConfiguration' 'SGValueConfiguration').
 links := OrderedCollection new.
 inspectReference := [:value | | config |
   (value isKindOf: DBProxy) ifTrue: [(configClasses includes: value className) ifTrue: [
     config := value getObjectIfUndefined: [component error: 'Unresolved enum declaration configuration'].
     config class name asString = value className ifFalse: [component error: 'Enum linked configuration class differs'].
     (owned anySatisfy: [:object | object == config]) ifFalse: [
       addOwned value: config. expanded := true.
       links add: (Array with: value globalIdString with: value className with: config)]]]
 ].
 references := owner dbObject readReferences.
 references isError ifTrue: [component error: 'Enum owner configuration references failed'].
 references := references isReferencedBys.
 references size > 256 ifTrue: [component error: 'Enum configuration root bound exceeded'].
 (references select: [:reference | configClasses includes: reference className]) do: inspectReference.
 definitionReferences := definition dbObject readReferences.
 definitionReferences isError ifTrue: [component error: 'Existing enum definition reference read failed'].
 definitionReferences := definitionReferences isReferencedBys.
 definitionReferences size > 4096 ifTrue: [component error: 'Enum definition reference bound exceeded'].
 definitionReferences := (definitionReferences collect: [:key | Array with: key globalIdString with: key className])
   asSortedCollection: [:a :b | a first = b first ifTrue: [a last < b last] ifFalse: [a first < b first]].
 expanded := true. passes := 0.
 [expanded] whileTrue: [
   passes := passes + 1. passes > 256 ifTrue: [component error: 'Enum declaration configuration closure exceeded'].
   images := imageReader value: component value: roots asArray value: owned.
   images isString ifTrue: [component error: images]. expanded := false.
   ((images at: 'snapshots') keys select: [:value | value isKindOf: DBProxy]) do: inspectReference
 ].
 Dictionary new at: 'profile' put: 'native_enum_declaration_capture_v1';
   at: 'owner' put: owner; at: 'definition' put: definition; at: 'enumeration' put: enumeration;
   at: 'images' put: images; at: 'roots' put: roots; at: 'owned' put: owned;
   at: 'models' put: models; at: 'definitions' put: definitions; at: 'links' put: links;
   at: 'definitionReferences' put: definitionReferences asArray; yourself
 ] ifFail: [:error | 'BDE_ENUM_DECLARATION_CAPTURE_ERROR: ', error messageText]
]]

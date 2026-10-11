"Fixed owner/declaration/configuration graph collection; captures original references only."
[:imageReader | [:component :models |
 component handleExceptionsIn: [
 | owner roots owned definitions definitionSlot definition links configClasses references
   inspectReference images expanded passes |
 owner := component item.
 owner class name asString = 'SGClass' ifFalse: [component error: 'Audited SGClass declaration owner required'].
 (models isArray and: [models size <= 4096]) ifFalse: [component error: 'Bounded original declaration array required'].
 roots := OrderedCollection with: owner. owned := OrderedCollection with: owner.
 definitions := OrderedCollection new.
 models do: [:model |
   model class name asString = 'SGVariable' ifFalse: [component error: 'Audited current SGVariable declaration required'].
   (owned anySatisfy: [:object | object == model]) ifTrue: [component error: 'Duplicate original declaration root'].
   roots add: model. owned add: model.
   definitionSlot := (model class allInstVarNames collect: [:name | name asString]) indexOf: 'sgClass'.
   definitionSlot = 0 ifTrue: [component error: 'Native variable definition slot unavailable'].
   definition := model instVarAt: definitionSlot.
   definition class name asString = 'SGReal' ifFalse: [component error: 'Audited current SGReal definition required'].
   (owned anySatisfy: [:object | object == definition]) ifFalse: [
     roots add: definition. owned add: definition. definitions add: definition]
 ].
 configClasses := #('SGClassImplConfig' 'SGClassValueConfig' 'SGImplConfiguration' 'SGValueConfiguration').
 links := OrderedCollection new.
 inspectReference := [:value | | config |
   (value isKindOf: DBProxy) ifTrue: [(configClasses includes: value className) ifTrue: [
     config := value getObjectIfUndefined: [component error: 'Unresolved declaration configuration'].
     config class name asString = value className ifFalse: [component error: 'Linked declaration configuration class differs'].
     (owned anySatisfy: [:object | object == config]) ifFalse: [
       owned size >= 4352 ifTrue: [component error: 'Declaration ownership bound exceeded'].
       owned add: config. roots add: config. expanded := true.
       links add: (Array with: value globalIdString with: value className with: config)
     ]
   ]]
 ].
 references := owner dbObject readReferences.
 references isError ifTrue: [component error: 'Declaration configuration reference read failed'].
 references := references isReferencedBys.
 references size > 256 ifTrue: [component error: 'Declaration configuration root bound exceeded'].
 (references select: [:reference | configClasses includes: reference className]) do: inspectReference.
 expanded := true. passes := 0.
 [expanded] whileTrue: [
   passes := passes + 1. passes > 256 ifTrue: [component error: 'Declaration configuration closure bound exceeded'].
   "Keep the owned collection itself for later original-token post-image capture."
   images := imageReader value: component value: roots asArray value: owned.
   images isString ifTrue: [component error: images].
   expanded := false.
   ((images at: 'snapshots') keys select: [:value | value isKindOf: DBProxy]) do: inspectReference
 ].
 Dictionary new at: 'images' put: images; at: 'owner' put: owner;
   at: 'roots' put: roots; at: 'owned' put: owned; at: 'models' put: models copy;
   at: 'definitions' put: definitions; at: 'links' put: links; yourself
 ] ifFail: [:error | 'BDE_DECLARATION_CAPTURE_ERROR: ', error messageText]
]]

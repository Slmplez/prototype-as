"Independent primitive-message original body collector; no factory or inverse authority."
[:imageReader | [:component |
 component handleExceptionsIn: [
 | owner roots owned models links configClasses inspectReference images expanded passes
   addOwned names slot nativeType referenceRows combined recorded |
 (component class name asString = 'EtasAPIModuleBDE' and: [component messagesPossible])
   ifFalse: [component error: 'Exact native Module BDE message owner required'].
 owner := component item.
 owner class name asString = 'SGModule' ifFalse: [component error: 'Exact original SGModule required'].
 roots := OrderedCollection new. owned := OrderedCollection new.
 addOwned := [:object | (owned anySatisfy: [:original | original == object]) ifFalse: [
   owned size >= 4352 ifTrue: [component error: 'Module declaration ownership bound exceeded'].
   roots add: object. owned add: object]].
 addOwned value: owner.
 models := (component getAllVariables collect: [:api | api element]) asArray.
 models size > 4096 ifTrue: [component error: 'Module primitive declaration bound exceeded'].
 models do: [:model |
   model class name asString = 'SGVariable' ifFalse: [component error: 'Original SGVariable required'].
   addOwned value: model.
   names := (model class allInstVarNames collect: [:field | field asString]) asArray.
   slot := names indexOf: 'sgClass'. slot > 0 ifFalse: [component error: 'Original message type slot unavailable'].
   nativeType := model instVarAt: slot.
   (#('SGReal' 'SGSignedInteger' 'SGUnsignedInteger' 'SGBoolean') includes: nativeType class name asString)
     ifFalse: [component error: 'Separate enum/complex message original-body profile required'].
   addOwned value: nativeType
 ].
 referenceRows := [:record |
   record isError ifTrue: [component error: 'Original Module inbound reference query failed'].
   record isReferencedBys size > 4096 ifTrue: [component error: 'Original Module inbound reference bound exceeded'].
   ((record isReferencedBys collect: [:key | Array with: key globalIdString with: key className])
     asSortedCollection: [:a :b | a first = b first ifTrue: [a last < b last] ifFalse: [a first < b first]]) asArray
 ].
 combined := referenceRows value: owner dbObject readReferences.
 recorded := referenceRows value: owner dbObject readIsReferencedByOnly.
 configClasses := #('SGClassImplConfig' 'SGClassValueConfig' 'SGImplConfiguration' 'SGValueConfiguration').
 links := OrderedCollection new.
 inspectReference := [:proxy | | config |
   (proxy isKindOf: DBProxy) ifTrue: [(configClasses includes: proxy className) ifTrue: [
     config := proxy getObjectIfUndefined: [component error: 'Unresolved Module declaration configuration'].
     config class name asString = proxy className ifFalse: [component error: 'Original Module configuration class differs'].
     (owned anySatisfy: [:object | object == config]) ifFalse: [
       addOwned value: config. expanded := true.
       links add: (Array with: proxy globalIdString with: proxy className with: config)]]]
 ].
 (owner dbObject readReferences isReferencedBys select: [:proxy | configClasses includes: proxy className])
   do: inspectReference.
 expanded := true. passes := 0.
 [expanded] whileTrue: [
   passes := passes + 1. passes > 256 ifTrue: [component error: 'Module configuration closure bound exceeded'].
   images := imageReader value: component value: roots asArray value: owned.
   images isString ifTrue: [component error: images]. expanded := false.
   ((images at: 'snapshots') keys select: [:value | value isKindOf: DBProxy]) do: inspectReference
 ].
 Dictionary new at: 'profile' put: 'native_message_primitive_capture_v1';
   at: 'owner' put: owner; at: 'images' put: images; at: 'roots' put: roots; at: 'owned' put: owned;
   at: 'models' put: models; at: 'links' put: links; at: 'referenceRows' put: referenceRows;
   at: 'ownerReferences' put: combined; at: 'ownerDatabaseReferences' put: recorded; yourself
 ] ifFail: [:error | 'BDE_MESSAGE_DECLARATION_CAPTURE_ERROR: ', error messageText]
]]

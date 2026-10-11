"Bind primitive-message original Module bodies to one exact formal creation record."
[:collector :token | [:component :models |
 component handleExceptionsIn: [
 | record root args capture actual expected kind modelType scope |
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token. args := record at: 'args'.
 kind := args first.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'operation') = 'create_block' and: [(record at: 'diagramName') = 'Main' and: [
   #('receive_message' 'send_message' 'send_receive_message') includes: kind]]]])
   ifFalse: [component error: 'Exact Main primitive-message creation record required'].
 (#('prepared' 'applied') includes: (record at: 'state'))
   ifFalse: [component error: 'Current original message factory state required'].
 modelType := args at: 5. modelType isEmpty ifTrue: [modelType := 'cont'].
 (#('cont' 'sdisc' 'udisc' 'log') includes: modelType)
   ifFalse: [component error: 'Independent enum/complex message body profile required'].
 scope := record at: 'messageScope' ifAbsent: [kind = 'receive_message' ifTrue: ['imported'] ifFalse: ['exported']].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 (root at: 'owner') == component item ifFalse: [component error: 'Original Module message scope expired'].
 capture := collector value: component.
 capture isString ifTrue: [component error: capture].
 actual := capture at: 'models'. expected := models.
 (actual size = expected size and: [(1 to: actual size) allSatisfy: [:index |
   (actual at: index) == (expected at: index)]])
   ifFalse: [component error: 'Complete original Module declaration roster differs'].
 capture at: 'generation' put: (root at: 'generation'); at: 'kind' put: kind;
   at: 'requestName' put: (args at: 2); at: 'modelType' put: modelType; at: 'messageScope' put: scope.
 capture
 ] ifFail: [:error | 'BDE_MESSAGE_CREATION_CAPTURE_ERROR: ', error messageText]
]]

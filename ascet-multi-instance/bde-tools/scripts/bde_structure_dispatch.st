[:stages |
 (stages isArray and: [stages size = 5]) ifFalse: [stages error: 'Fixed structural stage bundle required'].
 [:definition | [:component :command :reader |
 | frame prepareMode heldPreparation |
 frame := Dictionary new at: 'definition' put: definition; at: 'component' put: component;
   at: 'command' put: command; at: 'reader' put: reader;
   at: 'stage' put: 'guard'; at: 'mutationStarted' put: false;
   at: 'preconditionConflict' put: false; at: 'failureRecord' put: nil; yourself.
 component handleExceptionsIn: [
   (stages first class name asString = 'BlockContextTemplate')
     ifFalse: [component error: 'Fixed common stage unavailable'].
   stages first value: frame.
   prepareMode := #('prepare' 'validate') includes: (frame at: 'mode').
   (prepareMode ifTrue: [#(2)] ifFalse: [
     (#('validate_revert' 'validate_managed_inverse') includes: (frame at: 'mode'))
       ifTrue: [#(3)] ifFalse: [#(3 4 5)]]) do: [:index |
     ((stages at: index) class name asString = 'BlockContextTemplate')
       ifFalse: [component error: 'Fixed operation stage unavailable']].
   prepareMode ifTrue: [(stages at: 2) value: frame] ifFalse: [
     heldPreparation := (frame at: 'registry') at: (frame at: 'token') ifAbsent: [nil].
     (heldPreparation notNil and: [heldPreparation includesKey: 'commitResourceToken']) ifTrue: [
       frame at: 'result' put: 'BDE_STRUCTURE_CONFLICT: guard Preparation-only commit resource material retained; persistent diff/inverse not yet authorized'
     ] ifFalse: [
       (stages at: 3) value: frame.
       (frame at: 'validation') ifFalse: [
         (stages at: 4) value: frame.
         (stages at: 5) value: frame]]].
   frame at: 'result'
 ] ifFail: [:error |
   | scopes cache |
   (frame at: 'mutationStarted') ifTrue: [
     ((frame at: 'failureRecord') includesKey: 'fieldExecutionStatus') ifTrue: [
       ((frame at: 'failureRecord') at: 'fieldExecutionStatus') at: 'phase' put: (frame at: 'stage'); at: 'terminal_verified' put: false].
     scopes := Smalltalk at: #DogeBDEStructureIdentityV2 ifAbsent: [Dictionary new].
     cache := scopes at: (component getOID, '/', ((command at: 1) subStrings: $/) first) ifAbsent: [Dictionary new].
     (((frame at: 'failureRecord') includesKey: 'fieldLocalProfile') and: [
       ((frame at: 'failureRecord') at: 'fieldExecutionSourcePatch' ifAbsent: [nil]) notNil and: [
       ((((frame at: 'failureRecord') at: 'fieldExecutionSourcePatch') at: 'progress') at: 'state') = 'applied' and: [
       (((frame at: 'failureRecord') at: 'fieldExecutionSourcePatch') at: 'verifyDesired') value]]])
       ifTrue: [cache at: 'checkpoint' put: ((cache at: 'copySource') value: ((frame at: 'failureRecord') at: 'diagram') specification specSourceInternalOrNil)]
       ifFalse: [cache removeKey: 'checkpoint' ifAbsent: []]
   ].
   (((frame at: 'preconditionConflict') and: [(frame at: 'mutationStarted') not]) ifTrue: ['BDE_STRUCTURE_CONFLICT: '] ifFalse: ['BDE_STRUCTURE_ERROR: ']), (frame at: 'stage'), ' ', error printString, ' ', error messageText
 ]
]]
]

[:component :diagramName :targets |
 | stage |
 stage := 'target_guard'.
 component handleExceptionsIn: [
 | target declarations exports imports seen oidKey rowFor audits out encode result |
 target := component item specification targetTemporary.
 (target notNil and: [target isExperimentalTarget]) ifTrue: [component error: 'Experimental target candidate audit unavailable'].
 diagramName = 'guard' ifTrue: [result := Dictionary new at: 'target_guard' put: 'passed'; yourself] ifFalse: [
 declarations := OrderedCollection new. exports := OrderedCollection new.
 imports := OrderedCollection new. audits := OrderedCollection new. seen := Set new.
 oidKey := [:oid | | stream digits |
   oid isString ifTrue: ['string:', oid] ifFalse: [
     (oid isKindOf: ByteArray) ifFalse: [component error: 'Unsupported declaration identity'].
     stream := WriteStream on: String new. digits := '0123456789abcdef'.
     oid do: [:b | stream nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)].
     'bytes:', stream contents
   ]
 ].
 rowFor := [:model | | owner |
   owner := model getClass.
   Dictionary new at: 'owner_oid' put: owner getOID; at: 'alias' put: (oidKey value: model element xmlOID);
     at: 'name' put: model getName; at: 'scope' put: model getScope;
     at: 'message' put: model isMessage; at: 'imported' put: model isImported; at: 'exported' put: model isExported;
     at: 'send' put: model isSendMessage; at: 'receive' put: model isReceiveMessage;
     at: 'send_receive' put: model isSendReceiveMessage; at: 'global_label' put: model element defaultGlobalLabel; yourself
 ].
 stage := 'independent_module_enumeration'.
 component getAllModules size > 128 ifTrue: [component error: 'Module bound exceeded'].
 component getAllModules do: [:instance | | definition |
   definition := instance getRepresentedClass.
   (seen includes: definition getOID) ifFalse: [
     seen add: definition getOID.
     definition getAllVariables size > 4096 ifTrue: [component error: 'Member bound exceeded'].
     definition getAllVariables do: [:model |
       (model isMessage and: [((model isMethodArgument or: [model isMethodReturn]) or: [model isMethodLocal]) not]) ifTrue: [
         declarations size >= 4096 ifTrue: [component error: 'Declaration bound exceeded'].
         declarations add: (rowFor value: model).
         model isExported ifTrue: [exports add: model].
         (model isImported and: [targets isEmpty or: [targets includes: model getName]]) ifTrue: [imports add: model]
       ]
     ]
   ]
 ].
 stage := 'independent_candidates'.
 imports do: [:imported | | bucket compatible |
   bucket := exports select: [:exported | exported element defaultGlobalLabel = imported element defaultGlobalLabel].
   bucket size > 128 ifTrue: [component error: 'Candidate bound exceeded'].
   compatible := bucket select: [:exported | exported element isSameVarAs: imported element].
   audits add: (Dictionary new at: 'import' put: (rowFor value: imported);
     at: 'candidates' put: (compatible collect: [:model | rowFor value: model]);
     at: 'label_candidates' put: (bucket collect: [:model | rowFor value: model]); yourself)
 ].
 result := Dictionary new at: 'declarations' put: declarations; at: 'audits' put: audits;
   at: 'source' put: 'independent Module declaration traversal; no export dictionary or selection lookup';
   at: 'compatibility_predicate' put: 'audited isSameVarAs: reused; predicate is not an independent implementation'; yourself
 ].
 out := WriteStream on: String new.
 encode := [:x |
   x isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   x isString ifTrue: [out nextPutAll: '{"$s":['.
     x asCebraString doWithIndex: [:b :i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: b printString]. out nextPutAll: ']}'
   ] ifFalse: [
   ((x == true or: [x == false]) or: [x isInteger]) ifTrue: [out nextPutAll: x printString] ifFalse: [
   (x isKindOf: Dictionary) ifTrue: [| first | first := true. out nextPutAll: '{"$d":['.
     x keys asSortedCollection do: [:k | first ifFalse: [out nextPut: $,]. first := false.
       out nextPut: $[. encode value: k. out nextPut: $,. encode value: (x at: k). out nextPut: $]]. out nextPutAll: ']}'
   ] ifFalse: [x isCollection ifTrue: [| first | first := true. out nextPut: $[.
     x do: [:v | first ifFalse: [out nextPut: $,]. first := false. encode value: v]. out nextPut: $]
   ] ifFalse: [component error: 'Unsupported audit field']]]]]
 ].
 stage := 'encode'. encode value: result. out contents
 ] ifFail: [:error | 'BDE_STRUCTURE_ERROR: ', stage, ' ', error messageText]
]

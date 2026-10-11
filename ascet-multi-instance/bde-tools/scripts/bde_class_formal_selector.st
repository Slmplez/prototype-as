[:component :selector |
 | aliasFor matches api method formal formals |
 (selector size = 4 and: [component isClass]) ifFalse: [component error: 'Exact Class formal selector required'].
 aliasFor := [:key |
   | out digits |
   key isString ifTrue: ['string:', key] ifFalse: [
     (key isKindOf: ByteArray) ifFalse: [component error: 'Unsupported formal identity'].
     out := WriteStream on: String new. digits := '0123456789abcdef'.
     key do: [:byte | out nextPut: (digits at: (byte // 16) + 1); nextPut: (digits at: (byte \\ 16) + 1)].
     'bytes:', out contents
   ]
 ].
 matches := OrderedCollection new.
 component getAllDiagrams do: [:diagram |
   (diagram isKindOf: EtasAPIDiscreteMethodDiagram) ifTrue: [
     diagram getAllMethods do: [:candidate |
       ((diagram getName = selector first) and: [(aliasFor value: candidate method aliasName) = (selector at: 2)])
         ifTrue: [matches add: candidate]
     ]
   ]
 ].
 matches size = 1 ifFalse: [component error: 'Exact method alias absent or ambiguous'].
 api := matches first. method := api method.
 method ownerSGClass == component item ifFalse: [component error: 'Selected method owner mismatch'].
 (#('argument' 'return') includes: selector last) ifFalse: [component error: 'Exact formal slot required'].
 formals := selector last = 'argument' ifTrue: [method arguments] ifFalse: [
   method returnValue isNil ifTrue: [#()] ifFalse: [Array with: method returnValue]
 ].
 matches := formals select: [:candidate | (aliasFor value: candidate xmlOID) = (selector at: 3)].
 matches size = 1 ifFalse: [component error: 'Exact formal alias absent or ambiguous in selected slot'].
 formal := matches first.
 formal owner == method ifFalse: [component error: 'Selected formal owner mismatch'].
 Array with: api with: method with: formal
]

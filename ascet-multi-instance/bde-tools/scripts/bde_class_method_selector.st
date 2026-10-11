[:component :selector |
 | aliasFor matches api method |
 (component isClass and: [selector size >= 2]) ifFalse: [component error: 'Exact Class method selector required'].
 aliasFor := [:key |
   | out digits |
   key isString ifTrue: ['string:', key] ifFalse: [
     (key isKindOf: ByteArray) ifFalse: [component error: 'Unsupported method identity'].
     out := WriteStream on: String new. digits := '0123456789abcdef'.
     key do: [:byte | out nextPut: (digits at: (byte // 16) + 1); nextPut: (digits at: (byte \\ 16) + 1)].
     'bytes:', out contents
   ]
 ].
 matches := OrderedCollection new.
 component getAllDiagrams do: [:diagram |
   (diagram isKindOf: EtasAPIDiscreteMethodDiagram) ifTrue: [
     diagram getAllMethods do: [:candidate |
       (diagram getName = selector first and: [(aliasFor value: candidate method aliasName) = (selector at: 2)])
         ifTrue: [matches add: candidate]
     ]
   ]
 ].
 matches size = 1 ifFalse: [component error: 'Exact method alias absent or ambiguous'].
 api := matches first. method := api method.
 method ownerSGClass == component item ifFalse: [component error: 'Selected method owner mismatch'].
 Array with: api with: method
]

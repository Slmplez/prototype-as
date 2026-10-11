"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006b188; bytecode file offset 0x96873c"
!AbtXmlSchemaAttributeGroup methodsFor: 'recovered'!
ref
    | recoveredValue0 |
    recoveredValue0 := ref.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200784ac; bytecode file offset 0x9757c8"
!AbtXmlSchemaAttributeGroup methodsFor: 'recovered'!
isAttributeGroup
    ^true
! !

"ASDBase.ic method 0x200c2260; bytecode file offset 0x9bf474"
!AbtXmlSchemaAttributeGroup methodsFor: 'recovered'!
ref: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ref := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20150a70; bytecode file offset 0xa4d334"
!AbtXmlSchemaAttributeGroup methodsFor: 'recovered'!
attributes
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ref.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := super attributes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRefType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20160b78; bytecode file offset 0xa5d444"
!AbtXmlSchemaAttributeGroup methodsFor: 'recovered'!
getRefType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) schema.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) ref.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) declarationNamed: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [:block280ce280Arg1 | 
    | block280ce280Value0 block280ce280Value1 |
    block280ce280Value0 := block280ce280Arg1.
    block280ce280Value1 := (block280ce280Value0) type.
    block280ce280Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


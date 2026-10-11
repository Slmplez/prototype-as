"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006ca38; bytecode file offset 0x969c04"
!AbtXmlSchemaGroup methodsFor: 'recovered'!
ref
    | recoveredValue0 |
    recoveredValue0 := ref.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076d3c; bytecode file offset 0x9757c8"
!AbtXmlSchemaGroup methodsFor: 'recovered'!
isGroup
    ^true
! !

"ASDBase.ic method 0x200c3578; bytecode file offset 0x9c058c"
!AbtXmlSchemaGroup methodsFor: 'recovered'!
ref: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ref := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201fca34; bytecode file offset 0xaf9304"
!AbtXmlSchemaGroup methodsFor: 'recovered'!
getReference
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := AbtXmlUtility.
    recoveredValue1 := (self) ref.
    recoveredValue2 := (recoveredValue0) splitQName: (recoveredValue1).
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (recoveredValue3) at: (1).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := (recoveredValue5) at: (2).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (self) schema.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (self) uriForPrefix: (recoveredValue9).
    recoveredValue11 := (recoveredValue7) groupNamed: (recoveredValue8) inNamespace: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x2029acc8; bytecode file offset 0xb975a0"
!AbtXmlSchemaGroup methodsFor: 'recovered'!
elements
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ref.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getReference.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) elements.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'Could not resolve element group %1'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) ref.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := super elements.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


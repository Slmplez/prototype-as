"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000b10; bytecode file offset 0x19410"
!AbtXmlAttributeDeclaration methodsFor: 'recovered'!
abtNormalize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) abtNormalize: (recoveredValue1).
    ^recoveredValue2
! !

"abtxmlp.ic method 0x20001044; bytecode file offset 0x19834"
!AbtXmlAttributeDeclaration methodsFor: 'recovered'!
nameSpaceURI
    | recoveredValue0 |
    recoveredValue0 := nameSpaceURI.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20002744; bytecode file offset 0x1af34"
!AbtXmlAttributeDeclaration methodsFor: 'recovered'!
nameSpaceURI: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nameSpaceURI := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20003014; bytecode file offset 0x1b80c"
!AbtXmlAttributeDeclaration methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    super initialize.
    recoveredValue0 := SgmlAnyData.
    (self) contents: (recoveredValue0).
    ^self
! !

"abtxmlp.ic method 0x20003248; bytecode file offset 0x1ba38"
!AbtXmlAttributeDeclaration methodsFor: 'recovered'!
abtIsIdData
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtIsIdData.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


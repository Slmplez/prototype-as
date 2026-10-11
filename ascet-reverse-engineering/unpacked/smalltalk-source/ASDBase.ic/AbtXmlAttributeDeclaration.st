"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200590b8; bytecode file offset 0x956284"
!AbtXmlAttributeDeclaration methodsFor: 'recovered'!
abtNormalize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) abtNormalize: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006105c; bytecode file offset 0x95d978"
!AbtXmlAttributeDeclaration methodsFor: 'recovered'!
isRequired
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) defaultValue.
    recoveredValue1 := (recoveredValue0) = ('REQUIRED').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006c684; bytecode file offset 0x9692b0"
!AbtXmlAttributeDeclaration methodsFor: 'recovered'!
nameSpaceURI
    | recoveredValue0 |
    recoveredValue0 := nameSpaceURI.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c2e1c; bytecode file offset 0x9bfde0"
!AbtXmlAttributeDeclaration methodsFor: 'recovered'!
nameSpaceURI: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nameSpaceURI := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fa694; bytecode file offset 0x9f6f58"
!AbtXmlAttributeDeclaration methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    super initialize.
    recoveredValue0 := SgmlAnyData.
    (self) contents: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20109e0c; bytecode file offset 0xa066d8"
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


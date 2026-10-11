"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x2000050c; bytecode file offset 0x18d4c"
!AbtDOMEntityReference methodsFor: 'recovered'!
nodeType
    | recoveredValue0 |
    recoveredValue0 := AbtDOMEntityReferenceNode.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000644; bytecode file offset 0x18fa4"
!AbtDOMEntityReference methodsFor: 'recovered'!
abrAsString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) abrAsString.
    ^recoveredValue1
! !

"abtxmlp.ic method 0x20001a9c; bytecode file offset 0x1a2ec"
!AbtDOMEntityReference methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    ^self
! !

"abtxmlp.ic method 0x20003288; bytecode file offset 0x1bac8"
!AbtDOMEntityReference methodsFor: 'recovered'!
nodeName
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
            recoveredStack0 := (recoveredStack0) nodeName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000220; bytecode file offset 0x18bb0"
!AbtDOMProcessingInstruction methodsFor: 'recovered'!
data
    | recoveredValue0 |
    recoveredValue0 := (self) declarationString.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000298; bytecode file offset 0x18bb0"
!AbtDOMProcessingInstruction methodsFor: 'recovered'!
target
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200002a4; bytecode file offset 0x18bb0"
!AbtDOMProcessingInstruction methodsFor: 'recovered'!
nodeName
    | recoveredValue0 |
    recoveredValue0 := (self) target.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000530; bytecode file offset 0x18d4c"
!AbtDOMProcessingInstruction methodsFor: 'recovered'!
nodeType
    | recoveredValue0 |
    recoveredValue0 := AbtDOMProcessingInstructionNode.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20003de8; bytecode file offset 0x1c5e0"
!AbtDOMProcessingInstruction methodsFor: 'recovered'!
data: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtIsReadOnly.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := AbtDOMNoModificationAllowedErr.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) handleDOMExceptionNumber: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) declarationString: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


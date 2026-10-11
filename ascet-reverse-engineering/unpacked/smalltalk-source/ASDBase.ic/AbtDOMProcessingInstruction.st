"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009320; bytecode file offset 0x908be4"
!AbtDOMProcessingInstruction methodsFor: 'recovered'!
target
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b7c8; bytecode file offset 0x908be4"
!AbtDOMProcessingInstruction methodsFor: 'recovered'!
nodeName
    | recoveredValue0 |
    recoveredValue0 := (self) target.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b96c; bytecode file offset 0x908be4"
!AbtDOMProcessingInstruction methodsFor: 'recovered'!
data
    | recoveredValue0 |
    recoveredValue0 := (self) declarationString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013728; bytecode file offset 0x912098"
!AbtDOMProcessingInstruction methodsFor: 'recovered'!
nodeType
    | recoveredValue0 |
    recoveredValue0 := AbtDOMProcessingInstructionNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2014605c; bytecode file offset 0xa42920"
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


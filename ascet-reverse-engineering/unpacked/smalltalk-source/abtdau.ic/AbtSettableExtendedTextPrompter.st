"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x20001094; bytecode file offset 0x10400"
!AbtSettableExtendedTextPrompter methodsFor: 'recovered'!
answerString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    borderColor := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20001754; bytecode file offset 0x10ac4"
!AbtSettableExtendedTextPrompter methodsFor: 'recovered'!
answerString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := borderColor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            borderColor := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := borderColor.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x20002348; bytecode file offset 0x116d4"
!AbtSettableExtendedTextPrompter methodsFor: 'recovered'!
createChildren
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super createChildren.
    recoveredValue0 := (self) textWidget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) answerString.
    (recoveredValue1) setString: (recoveredValue2).
    recoveredValue3 := (self) answerString.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (0) @ (recoveredValue4).
    (recoveredValue0) setSelection: (recoveredValue5).
    ^self
! !


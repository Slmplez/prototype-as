"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004f83c; bytecode file offset 0x94d048"
!EwSpinButton methodsFor: 'recovered'!
abtSetTabbedInputFocus
    (self) callFocusCallback.
    ^self
! !

"ASDBase.ic method 0x200767ec; bytecode file offset 0x9757c8"
!EwSpinButton methodsFor: 'recovered'!
isSpinButton
    ^true
! !

"ASDBase.ic method 0x200ee2b0; bytecode file offset 0x9eabdc"
!EwSpinButton methodsFor: 'recovered'!
removeEditPolicyEventHandler: recoveredArg1 receiver: recoveredArg2 selector: recoveredArg3 clientData: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) entryField.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    (recoveredValue0) removeEventHandler: (recoveredValue1) receiver: (recoveredValue2) selector: (recoveredValue3) clientData: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200ee300; bytecode file offset 0x9eabdc"
!EwSpinButton methodsFor: 'recovered'!
addEditPolicyEventHandler: recoveredArg1 receiver: recoveredArg2 selector: recoveredArg3 clientData: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) entryField.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    (recoveredValue0) addEventHandler: (recoveredValue1) receiver: (recoveredValue2) selector: (recoveredValue3) clientData: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202d9abc; bytecode file offset 0xbd6398"
!EwSpinButton methodsFor: 'recovered'!
sensitive: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super sensitive: (recoveredValue0).
    recoveredValue1 := (self) entryField.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 26] ifFalse: [recoveredBlock13PC := 36].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack2 := CgRGBColor.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) white.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) backgroundColor: (recoveredBlock13Stack2).
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack2 := EwSystemColors.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) new.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) buttonFace.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) backgroundColor: (recoveredBlock13Stack2).
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !


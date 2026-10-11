"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004acd0; bytecode file offset 0x947768"
!RBOnlineDLLCursorValueStruct methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := (self) real64At: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004cd54; bytecode file offset 0x949804"
!RBOnlineDLLCursorValueStruct methodsFor: 'recovered'!
pixelPosition
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (12).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a5c98; bytecode file offset 0x9a25bc"
!RBOnlineDLLCursorValueStruct methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) floatAt: (0) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200ba520; bytecode file offset 0x9b6ddc"
!RBOnlineDLLCursorValueStruct methodsFor: 'recovered'!
pixelPosition: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asInteger.
    (self) int16At: (12) put: (recoveredValue1).
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006c564; bytecode file offset 0x9692b0"
!SGFiledInSource methodsFor: 'recovered'!
text
    | recoveredValue0 |
    recoveredValue0 := text.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200788d4; bytecode file offset 0x9757c8"
!SGFiledInSource methodsFor: 'recovered'!
isReadableSource
    ^true
! !

"ASDBase.ic method 0x200c2bdc; bytecode file offset 0x9bfde0"
!SGFiledInSource methodsFor: 'recovered'!
text: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    text := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e0de4; bytecode file offset 0x9dd6ac"
!SGFiledInSource methodsFor: 'recovered'!
display
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := GlobalInfoController.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (self) text.
    recoveredValue3 := (self) specification.
    recoveredValue4 := (recoveredValue1) writeToTextWindow: (recoveredValue2) title: (recoveredValue3).
    ^recoveredValue4
! !


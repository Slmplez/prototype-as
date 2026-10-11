"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20069938; bytecode file offset 0x966bdc"
!MDFProgramBlock methodsFor: 'recovered'!
data
    | recoveredValue0 |
    recoveredValue0 := data.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201f48b4; bytecode file offset 0xaf1180"
!MDFProgramBlock methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) id.
    (recoveredValue0) skipToAll: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) position.
    recoveredValue5 := (recoveredValue4) + (-2).
    offset := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    (self) getLength: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := length.
    recoveredValue9 := (recoveredValue8) - (4).
    recoveredValue10 := (recoveredValue7) next: (recoveredValue9).
    data := recoveredValue10.
    ^self
! !


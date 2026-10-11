"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066d44; bytecode file offset 0x9646f8"
!ASDAbstractElementSpecialConfig methodsFor: 'recovered'!
specialInfo
    | recoveredValue0 |
    recoveredValue0 := specialInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bee60; bytecode file offset 0x9bc0b4"
!ASDAbstractElementSpecialConfig methodsFor: 'recovered'!
specialInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    specialInfo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010f044; bytecode file offset 0xa0b904"
!ASDAbstractElementSpecialConfig methodsFor: 'recovered'!
updateDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super updateDataElement: (recoveredValue0).
    recoveredValue1 := (self) specialInfo.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) updateDataElement: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    ^recoveredValue3
! !


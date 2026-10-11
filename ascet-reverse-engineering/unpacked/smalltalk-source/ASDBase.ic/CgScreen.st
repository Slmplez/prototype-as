"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200751f4; bytecode file offset 0x9757c8"
!CgScreen methodsFor: 'recovered'!
isErrorClass
    ^true
! !

"ASDBase.ic method 0x200863c8; bytecode file offset 0x982e18"
!CgScreen methodsFor: 'recovered'!
abtRgbAsColor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) server.
    recoveredValue1 := (recoveredValue0) colorDatabase.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) keyAtValue: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20093764; bytecode file offset 0x990024"
!CgScreen methodsFor: 'recovered'!
abtInverseColorFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) lookupColor: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) abtInverse.
    recoveredValue3 := (self) abtRgbAsColor: (recoveredValue2).
    ^recoveredValue3
! !


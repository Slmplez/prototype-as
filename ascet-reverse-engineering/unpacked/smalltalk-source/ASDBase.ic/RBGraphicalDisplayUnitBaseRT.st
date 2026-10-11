"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2011f10c; bytecode file offset 0xa1ba58"
!RBGraphicalDisplayUnitBaseRT methodsFor: 'recovered'!
statePrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isBlackAndWhite.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isBlackAndWhite: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    ^self
! !


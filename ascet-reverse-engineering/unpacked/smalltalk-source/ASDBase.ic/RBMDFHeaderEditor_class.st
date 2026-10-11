"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200ebde4; bytecode file offset 0x9e86a4"
!RBMDFHeaderEditor class methodsFor: 'recovered'!
createWithHeader: recoveredArg1 devices: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createWith: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) devices: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) notNil.
    recoveredValue6 := (recoveredValue1) allowTakeOverSituation: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20153840; bytecode file offset 0xa50104"
!RBMDFHeaderEditor class methodsFor: 'recovered'!
createWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (150) @ (100).
    (self) minSize: (recoveredValue0).
    recoveredValue1 := (self) create.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) mdfHeader: (recoveredValue2).
    ^recoveredValue3
! !


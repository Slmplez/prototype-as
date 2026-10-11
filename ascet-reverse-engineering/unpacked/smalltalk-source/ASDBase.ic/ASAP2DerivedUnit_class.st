"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20072fc0; bytecode file offset 0x96f8bc"
!ASAP2DerivedUnit class methodsFor: 'recovered'!
fixedSize
    ^6
! !

"ASDBase.ic method 0x200809d4; bytecode file offset 0x97d288"
!ASAP2DerivedUnit class methodsFor: 'recovered'!
emBehaviorId
    ^77
! !

"ASDBase.ic method 0x2018b1a4; bytecode file offset 0xa87a90"
!ASAP2DerivedUnit class methodsFor: 'recovered'!
createFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createFrom: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) name.
    (recoveredValue3) refUnit: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) unitConversion.
    (recoveredValue2) unitConversion: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !


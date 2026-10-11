"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20070168; bytecode file offset 0x96cb7c"
!ASDPrimitiveImplementationDialog class methodsFor: 'recovered'!
lastWindowConfiguration
    | recoveredValue0 |
    recoveredValue0 := lastWindowConfiguration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c65e8; bytecode file offset 0x9c3164"
!ASDPrimitiveImplementationDialog class methodsFor: 'recovered'!
lastWindowConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastWindowConfiguration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e2dd0; bytecode file offset 0x9df688"
!ASDPrimitiveImplementationDialog class methodsFor: 'recovered'!
minSize
    | recoveredValue0 |
    recoveredValue0 := (400) @ (660).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2017967c; bytecode file offset 0xa75f48"
!ASDPrimitiveImplementationDialog class methodsFor: 'recovered'!
createForImpl: recoveredArg1 instVar: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) deepCopy.
    (recoveredValue2) majorDataElement: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) projectContext: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg2.
    (recoveredValue7) modelElement: (recoveredValue8).
    ^recoveredValue0
! !


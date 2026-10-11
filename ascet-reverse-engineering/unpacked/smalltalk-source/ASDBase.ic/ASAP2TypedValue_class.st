"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004a3fc; bytecode file offset 0x947128"
!ASAP2TypedValue class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fixedSize.
    recoveredValue1 := (self) new: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20072790; bytecode file offset 0x96f1c4"
!ASAP2TypedValue class methodsFor: 'recovered'!
fixedSize
    ^2
! !

"ASDBase.ic method 0x200805b0; bytecode file offset 0x97ce64"
!ASAP2TypedValue class methodsFor: 'recovered'!
emBehaviorId
    ^191
! !

"ASDBase.ic method 0x20113ee0; bytecode file offset 0xa107a0"
!ASAP2TypedValue class methodsFor: 'recovered'!
create: recoveredArg1 withType: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) dataType: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue1) value: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2018bf50; bytecode file offset 0xa88818"
!ASAP2TypedValue class methodsFor: 'recovered'!
create: recoveredArg1 withType: recoveredArg2 index: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    recoveredValue2 := (self) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) dataType: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) value: (recoveredValue7).
    recoveredValue8 := recoveredArg3.
    (recoveredValue3) index: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !


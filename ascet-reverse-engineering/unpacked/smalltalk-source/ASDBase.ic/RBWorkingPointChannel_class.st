"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200ac264; bytecode file offset 0x9a8bc4"
!RBWorkingPointChannel class methodsFor: 'recovered'!
createForEditChannel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) setEditChannel: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20101908; bytecode file offset 0x9fe1e4"
!RBWorkingPointChannel class methodsFor: 'recovered'!
createForEditChannel: recoveredArg1 editData: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) setEditChannel: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) setEditData: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201580e8; bytecode file offset 0xa549b0"
!RBWorkingPointChannel class methodsFor: 'recovered'!
createForEditChannel: recoveredArg1 measureObject: recoveredArg2 editData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) setEditChannel: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg3.
    (recoveredValue3) setEditData: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue0) measureObject: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201693ac; bytecode file offset 0xa65c78"
!RBWorkingPointChannel class methodsFor: 'recovered'!
createForEditChannel: recoveredArg1 measureObject: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) setEditChannel: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) data.
    (recoveredValue3) setEditData: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue0) measureObject: (recoveredValue6).
    ^recoveredValue7
! !


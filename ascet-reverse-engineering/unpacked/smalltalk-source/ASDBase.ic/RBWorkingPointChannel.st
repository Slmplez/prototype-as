"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066574; bytecode file offset 0x963428"
!RBWorkingPointChannel methodsFor: 'recovered'!
editChannel
    | recoveredValue0 |
    recoveredValue0 := editChannel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066c84; bytecode file offset 0x9646f8"
!RBWorkingPointChannel methodsFor: 'recovered'!
editData
    | recoveredValue0 |
    recoveredValue0 := editData.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069174; bytecode file offset 0x965b90"
!RBWorkingPointChannel methodsFor: 'recovered'!
measureObject
    | recoveredValue0 |
    recoveredValue0 := measureObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077da4; bytecode file offset 0x9757c8"
!RBWorkingPointChannel methodsFor: 'recovered'!
isWorkingPointChannel
    ^true
! !

"ASDBase.ic method 0x2007f7fc; bytecode file offset 0x97c330"
!RBWorkingPointChannel methodsFor: 'recovered'!
isOnlineDLLDisplayChannel
    ^false
! !

"ASDBase.ic method 0x2008869c; bytecode file offset 0x985628"
!RBWorkingPointChannel methodsFor: 'recovered'!
measureObjects
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) measureObject.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200be5d4; bytecode file offset 0x9bb178"
!RBWorkingPointChannel methodsFor: 'recovered'!
setEditChannel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    editChannel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bef08; bytecode file offset 0x9bc0b4"
!RBWorkingPointChannel methodsFor: 'recovered'!
setEditData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    editData := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c03c4; bytecode file offset 0x9bd228"
!RBWorkingPointChannel methodsFor: 'recovered'!
measureObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    measureObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201018f0; bytecode file offset 0x9fe1e4"
!RBWorkingPointChannel methodsFor: 'recovered'!
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


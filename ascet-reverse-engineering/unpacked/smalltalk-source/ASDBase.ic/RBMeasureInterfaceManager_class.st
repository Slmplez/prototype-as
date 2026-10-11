"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001278c; bytecode file offset 0x912098"
!RBMeasureInterfaceManager class methodsFor: 'recovered'!
defaultAcquisitionManagerClass
    | recoveredValue0 |
    recoveredValue0 := RBMeasureDataAcquisitionManager.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200146d0; bytecode file offset 0x912098"
!RBMeasureInterfaceManager class methodsFor: 'recovered'!
defaultMeasureWindowClass
    | recoveredValue0 |
    recoveredValue0 := RBMeasureDataWindow.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200aad00; bytecode file offset 0x9a7610"
!RBMeasureInterfaceManager class methodsFor: 'recovered'!
createForOwner: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) applicationController: (recoveredValue2).
    recoveredValue3 := (recoveredValue0) initialize.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2026997c; bytecode file offset 0xb66254"
!RBMeasureInterfaceManager class methodsFor: 'recovered'!
measureViewClasses
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new: (6).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := RBOscilloscopeWindow.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := RBRecorderWindow.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := RBNumericMeasureDataWindow.
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := RBVerticalBarMeasureDataWindow.
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := RBBitMeasureDataWindow.
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := RBHorizontalBarMeasureDataWindow.
    (recoveredValue12) add: (recoveredValue13).
    ^recoveredValue1
! !


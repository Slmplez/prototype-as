"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012738; bytecode file offset 0x912098"
!RBMeasureDataAcquisitionManager class methodsFor: 'recovered'!
defaultOnlineDLLManagerClass
    | recoveredValue0 |
    recoveredValue0 := RBOnlineDLLManager.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012be8; bytecode file offset 0x912098"
!RBMeasureDataAcquisitionManager class methodsFor: 'recovered'!
defaultErrorClass
    | recoveredValue0 |
    recoveredValue0 := MeasureErrorClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012fd8; bytecode file offset 0x912098"
!RBMeasureDataAcquisitionManager class methodsFor: 'recovered'!
measureErrorClass
    | recoveredValue0 |
    recoveredValue0 := MeasureErrorClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013d94; bytecode file offset 0x912098"
!RBMeasureDataAcquisitionManager class methodsFor: 'recovered'!
defaultMultiBitMeasureDataClass
    | recoveredValue0 |
    recoveredValue0 := RBMultiBitMeasureData.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200226f4; bytecode file offset 0x92209c"
!RBMeasureDataAcquisitionManager class methodsFor: 'recovered'!
defaultNotConnectedDevice
    ^'notConnected'
! !

"ASDBase.ic method 0x20054494; bytecode file offset 0x951190"
!RBMeasureDataAcquisitionManager class methodsFor: 'recovered'!
measureErrorClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    MeasureErrorClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cbd30; bytecode file offset 0x9c8654"
!RBMeasureDataAcquisitionManager class methodsFor: 'recovered'!
getFAMOSStorageClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('RBFAMOSStorageManager') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cbd60; bytecode file offset 0x9c8654"
!RBMeasureDataAcquisitionManager class methodsFor: 'recovered'!
getMDFStorageClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('RBMDFStorageManager') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20134114; bytecode file offset 0xa309dc"
!RBMeasureDataAcquisitionManager class methodsFor: 'recovered'!
createForInterfaceManager: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) checkVersion.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) initialize.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) interfaceManager: (recoveredValue3).
    ^recoveredValue4
! !


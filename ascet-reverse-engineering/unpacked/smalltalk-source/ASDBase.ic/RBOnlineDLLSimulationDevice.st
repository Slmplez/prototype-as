"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200407a4; bytecode file offset 0x93d278"
!RBOnlineDLLSimulationDevice methodsFor: 'recovered'!
fillingLevelRel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := device.
    recoveredValue1 := (recoveredValue0) fillingLevelRel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006661c; bytecode file offset 0x963428"
!RBOnlineDLLSimulationDevice methodsFor: 'recovered'!
device
    | recoveredValue0 |
    recoveredValue0 := device.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007df3c; bytecode file offset 0x97c330"
!RBOnlineDLLSimulationDevice methodsFor: 'recovered'!
getLoggedData
    ^false
! !

"ASDBase.ic method 0x200bdbbc; bytecode file offset 0x9bb178"
!RBOnlineDLLSimulationDevice methodsFor: 'recovered'!
device: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    device := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf3f8; bytecode file offset 0x9bc0b4"
!RBOnlineDLLSimulationDevice methodsFor: 'recovered'!
onlineDLLManager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    onlineDLLManager := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200eb3e4; bytecode file offset 0x9e7c9c"
!RBOnlineDLLSimulationDevice methodsFor: 'recovered'!
getNewDataFromGroup: recoveredArg1 maxData: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := onlineDLLManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := device.
    recoveredValue4 := (recoveredValue0) getNewDataFromGroup: (recoveredValue1) maxData: (recoveredValue2) device: (recoveredValue3).
    ^recoveredValue4
! !


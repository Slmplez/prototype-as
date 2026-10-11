"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200eac94; bytecode file offset 0x9e7558"
!RBMeasureError class methodsFor: 'recovered'!
errorNotANumberOccured: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) error: (recoveredValue1) advice: ('') context: ('OnlineDLL').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f6f84; bytecode file offset 0x9f3ab4"
!RBMeasureError class methodsFor: 'recovered'!
noRemovingDataDuringDataLogging
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := NoRemovingDataDuringDataLogging.
    recoveredValue2 := StopAcquisition.
    recoveredValue3 := DataAcquisitionError.
    recoveredValue4 := (recoveredValue0) error: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f6fd8; bytecode file offset 0x9f3ab4"
!RBMeasureError class methodsFor: 'recovered'!
noAcquisitionBecauseNoActiveDevices
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := NoAcquisitionBecauseNoActiveDevices.
    recoveredValue2 := ConnectDevices.
    recoveredValue3 := DataAcquisitionError.
    recoveredValue4 := (recoveredValue0) error: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f7064; bytecode file offset 0x9f3ab4"
!RBMeasureError class methodsFor: 'recovered'!
noAddingDataDuringDataLogging
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := NoAddingDataDuringDataLogging.
    recoveredValue2 := StopAcquisition.
    recoveredValue3 := DataAcquisitionError.
    recoveredValue4 := (recoveredValue0) error: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f7080; bytecode file offset 0x9f3ab4"
!RBMeasureError class methodsFor: 'recovered'!
noAddingDataDuringAcquisition
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := NoAddingDataDuringAcquisition.
    recoveredValue2 := StopAcquisition.
    recoveredValue3 := DataAcquisitionError.
    recoveredValue4 := (recoveredValue0) error: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f709c; bytecode file offset 0x9f3ab4"
!RBMeasureError class methodsFor: 'recovered'!
saveMeasureDataFailed
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := SaveMeasureDataFailed.
    recoveredValue2 := TryAgainTxt.
    recoveredValue3 := DataAcquisitionError.
    recoveredValue4 := (recoveredValue0) error: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f71b4; bytecode file offset 0x9f3ab4"
!RBMeasureError class methodsFor: 'recovered'!
noRemovingDataDuringAcquisition
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := NoRemovingDataDuringAcquisition.
    recoveredValue2 := StopAcquisition.
    recoveredValue3 := DataAcquisitionError.
    recoveredValue4 := (recoveredValue0) error: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f71d0; bytecode file offset 0x9f3ab4"
!RBMeasureError class methodsFor: 'recovered'!
noAcquisitionBecauseNoData
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := NoAcquisitionBecauseNoData.
    recoveredValue2 := AddSomeMeasureData.
    recoveredValue3 := DataAcquisitionError.
    recoveredValue4 := (recoveredValue0) message: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f71ec; bytecode file offset 0x9f3ab4"
!RBMeasureError class methodsFor: 'recovered'!
stopAcquiBeforeQuit
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := StopAcquiBeforeQuit.
    recoveredValue2 := StopAcquisition.
    recoveredValue3 := DataAcquisitionError.
    recoveredValue4 := (recoveredValue0) error: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f7234; bytecode file offset 0x9f3b50"
!RBMeasureError class methodsFor: 'recovered'!
confirmAddOtherMeasureData
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := ConfirmAddOtherMeasureData.
    recoveredValue2 := UserInterface.
    recoveredValue3 := (recoveredValue0) confirmNoIsDefault: (recoveredValue1) advice: ('') context: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f7288; bytecode file offset 0x9f3b50"
!RBMeasureError class methodsFor: 'recovered'!
noSignalsToAdd
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := GMMNoSignalsToAdd.
    recoveredValue2 := UserInterface.
    recoveredValue3 := (recoveredValue0) error: (recoveredValue1) advice: ('') context: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201ab168; bytecode file offset 0xaa7b7c"
!RBMeasureError class methodsFor: 'recovered'!
configAcquisitionFailed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ConfigAcquisitionFailed.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := DataAcquisitionError.
    recoveredValue8 := (recoveredValue5) error: (recoveredValue6) advice: ('') context: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201ab208; bytecode file offset 0xaa7b7c"
!RBMeasureError class methodsFor: 'recovered'!
stopAcquisitionFailed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := StopAcquisitionFailed.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := DataAcquisitionError.
    recoveredValue8 := (recoveredValue5) error: (recoveredValue6) advice: ('') context: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201ab280; bytecode file offset 0xaa7b7c"
!RBMeasureError class methodsFor: 'recovered'!
startAcquisitionFailed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := StartAcquisitionFailed.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := DataAcquisitionError.
    recoveredValue8 := (recoveredValue5) error: (recoveredValue6) advice: ('') context: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201d29e4; bytecode file offset 0xacf2e0"
!RBMeasureError class methodsFor: 'recovered'!
noAcquisitionBecauseInactiveDataDevice: recoveredArg1 group: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := NoAcquisitionBecauseNotAllDataActiveInDevice.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) convertStringTemplateKeepStrings: (recoveredValue0) with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) errorController.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := ConnectDevices.
    recoveredValue9 := DataAcquisitionError.
    recoveredValue10 := (recoveredValue6) message: (recoveredValue7) advice: (recoveredValue8) context: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201ee958; bytecode file offset 0xaeb22c"
!RBMeasureError class methodsFor: 'recovered'!
addToDevice: recoveredArg1 level: recoveredArg2 failedFor: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := AddMChanToDeviceFailed.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) convertStringTemplateKeepStrings: (recoveredValue0) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (self) errorController.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := CheckHWConnectionAndTryAgain.
    recoveredValue10 := DataAcquisitionError.
    recoveredValue11 := (recoveredValue7) error: (recoveredValue8) advice: (recoveredValue9) context: (recoveredValue10).
    ^recoveredValue11
! !


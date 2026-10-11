"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20080fc8; bytecode file offset 0x97d89c"
!EtasAPIDataElement class methodsFor: 'recovered'!
dataElementErrorCodeOffset
    ^1000
! !

"ASDBase.ic method 0x200d9e7c; bytecode file offset 0x9d6868"
!EtasAPIDataElement class methodsFor: 'recovered'!
createFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) dataElement: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20100f78; bytecode file offset 0x9fd854"
!EtasAPIDataElement class methodsFor: 'recovered'!
createFor: recoveredArg1 item: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) dataElement: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) modelElement: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20212948; bytecode file offset 0xb0f224"
!EtasAPIDataElement class methodsFor: 'recovered'!
createDataElementError: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EtasAPIError.
    recoveredValue1 := (self) dataElementErrorCodeOffset.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredValue4 := (recoveredValue0) createWithErrorCode: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := EtasAPIDataElementError.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) errorCode.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := (recoveredValue8) , (' - ').
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) errorMessage.
    recoveredValue12 := (recoveredValue9) , (recoveredValue11).
    (recoveredValue5) create: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20266710; bytecode file offset 0xb63024"
!EtasAPIDataElement class methodsFor: 'recovered'!
createDataElementError: recoveredArg1 additionalText: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := EtasAPIError.
    recoveredValue1 := (self) dataElementErrorCodeOffset.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredValue4 := (recoveredValue0) createWithErrorCode: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := EtasAPIDataElementError.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) errorCode.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := (recoveredValue8) , (' - ').
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) errorMessage.
    recoveredValue12 := (recoveredValue9) , (recoveredValue11).
    recoveredValue13 := (recoveredValue12) , (' ').
    recoveredValue14 := recoveredArg2.
    recoveredValue15 := (recoveredValue13) , (recoveredValue14).
    (recoveredValue5) create: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !


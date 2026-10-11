"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20084018; bytecode file offset 0x98093c"
!SGLmData class methodsFor: 'recovered'!
createForImportedMsg: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createForImportedMsg: (recoveredValue0) throwError: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ea60c; bytecode file offset 0x9e6f78"
!SGLmData class methodsFor: 'recovered'!
createForClassVar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createMdlNameForVar: (recoveredValue2).
    (recoveredValue1) name: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) initializeClassVar: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ea624; bytecode file offset 0x9e6f78"
!SGLmData class methodsFor: 'recovered'!
createForImportedClassVar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createMdlNameForVar: (recoveredValue2).
    (recoveredValue1) name: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) initializeImportedClassVar: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ea63c; bytecode file offset 0x9e6f78"
!SGLmData class methodsFor: 'recovered'!
createForInstVar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createMdlNameForVar: (recoveredValue2).
    (recoveredValue1) name: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) initializeVariable: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ea654; bytecode file offset 0x9e6f78"
!SGLmData class methodsFor: 'recovered'!
createForSimpleImportedClassVar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createMdlNameForVar: (recoveredValue2).
    (recoveredValue1) name: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) initializeSimpleImportedClassVar: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ea6b4; bytecode file offset 0x9e6f78"
!SGLmData class methodsFor: 'recovered'!
createForExportedVar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createMdlNameForVar: (recoveredValue2).
    (recoveredValue1) name: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) initializeExportedVar: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ebf00; bytecode file offset 0x9e87c4"
!SGLmData class methodsFor: 'recovered'!
createName: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createMdlName: (recoveredValue2).
    (recoveredValue1) name: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) initializeType: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20111b7c; bytecode file offset 0xa0e440"
!SGLmData class methodsFor: 'recovered'!
createName: recoveredArg1 type: recoveredArg2 value: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createMdlName: (recoveredValue2).
    (recoveredValue1) name: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) initializeType: (recoveredValue4) value: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201da844; bytecode file offset 0xad711c"
!SGLmData class methodsFor: 'recovered'!
createForCTVariable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) elementName.
    recoveredValue4 := ('ddt') , (recoveredValue3).
    recoveredValue5 := (self) createMdlName: (recoveredValue4).
    (recoveredValue1) name: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) isPrimitive.
    recoveredValue9 := (recoveredValue8) not.
    (recoveredValue6) buffer: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) initializeVariable: (recoveredValue11).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201ee3d8; bytecode file offset 0xaeaca8"
!SGLmData class methodsFor: 'recovered'!
createForImportedMsg: recoveredArg1 throwError: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := ('Rl') == ('Call_70764').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) elementName.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) elementName.
    recoveredValue5 := (self) createMdlNameKey: (recoveredValue2) label: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) create.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) name: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue6) initializeImportedClassVar: (recoveredValue9) throwError: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x2021c014; bytecode file offset 0xb188f4"
!SGLmData class methodsFor: 'recovered'!
createForRedudantData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := SGReservedNames.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) elementName.
    recoveredValue5 := (recoveredValue2) redundantDataStorageName: (recoveredValue4).
    recoveredValue6 := (self) createMdlName: (recoveredValue5).
    (recoveredValue1) name: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) buffer: (false).
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) dataModelRef.
    (recoveredValue8) initializeVariable: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) isImported.
    (recoveredValue11) imported: (recoveredValue13).
    ^recoveredValue0
! !


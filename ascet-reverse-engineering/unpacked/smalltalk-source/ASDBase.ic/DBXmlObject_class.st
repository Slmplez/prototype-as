"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2023bcd8; bytecode file offset 0xb385ac"
!DBXmlObject class methodsFor: 'recovered'!
objectStates
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    (self) objectStates.
    recoveredValue0 := ('dbXmlObjState_proxy') notNil.
    recoveredValue1 := ('dbXmlObjState_toBeLoaded') notNil.
    recoveredValue2 := ('dbXmlObjState_nascendi') notNil.
    recoveredValue3 := ('dbXmlObjState_loaded') notNil.
    recoveredValue4 := ('dbXmlObjState_error') notNil.
    recoveredValue5 := ('dbXmlObjState_deleted') notNil.
    recoveredValue6 := ('dbXmlObjState_disposed') notNil.
    ^self
! !

"ASDBase.ic method 0x20450a98; bytecode file offset 0xd4d38c"
!DBXmlObject class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := (1) << (0).
    BitToBeCompiled := recoveredValue0.
    recoveredValue1 := (1) << (1).
    BitExternalCode := recoveredValue1.
    recoveredValue2 := (1) << (2).
    BitExternalCSource := recoveredValue2.
    recoveredValue3 := (1) << (3).
    BitUseHeaderGlobal := recoveredValue3.
    recoveredValue4 := (1) << (4).
    BitComponentSpecificationExistent := recoveredValue4.
    MaskAppFlags := 255.
    recoveredValue5 := (1) << (8).
    BitExecute := recoveredValue5.
    recoveredValue6 := (1) << (9).
    BitRead := recoveredValue6.
    recoveredValue7 := (1) << (10).
    BitWrite := recoveredValue7.
    recoveredValue8 := (1) << (11).
    BitModified := recoveredValue8.
    recoveredValue9 := (1) << (12).
    BitMarkAsDeleted := recoveredValue9.
    recoveredValue10 := (1) << (13).
    BitCalibrate := recoveredValue10.
    recoveredValue11 := (1) << (16).
    BitCodeGeneration := recoveredValue11.
    recoveredValue12 := BitExecute.
    recoveredValue13 := BitRead.
    recoveredValue14 := (recoveredValue12) | (recoveredValue13).
    recoveredValue15 := BitWrite.
    recoveredValue16 := (recoveredValue14) | (recoveredValue15).
    recoveredValue17 := BitCodeGeneration.
    recoveredValue18 := (recoveredValue16) | (recoveredValue17).
    recoveredValue19 := BitCalibrate.
    recoveredValue20 := (recoveredValue18) | (recoveredValue19).
    DefaultBits := recoveredValue20.
    ^self
! !


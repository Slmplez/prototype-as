"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ole.ic method 0x20000158; bytecode file offset 0xaa98"
!OleApplicationFrameworkImplementation class methodsFor: 'recovered'!
loaded
    (self) startUp.
    ^self
! !

"ole.ic method 0x200035b4; bytecode file offset 0xdf38"
!OleApplicationFrameworkImplementation class methodsFor: 'recovered'!
removing
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
    recoveredValue0 := CwIStorageTransferMechanism.
    (recoveredValue0) removeMedium.
    recoveredValue1 := CwMetaFilePictTransferMechanism.
    (recoveredValue1) removeMedium.
    recoveredValue2 := CwDataInterchangeConverter.
    recoveredValue3 := CwWINFormatEtcFormat.
    recoveredValue4 := (recoveredValue3) cfFormatName: ('Embedded Object').
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := TymedIstorage.
    (recoveredValue5) tymed: (recoveredValue6).
    (recoveredValue2) deregisterFormatName: ('Ole Object') interchangeFormat: (recoveredValue4).
    recoveredValue7 := CwDataInterchangeConverter.
    recoveredValue8 := CwWINFormatEtcFormat.
    recoveredValue9 := (recoveredValue8) cfFormatName: ('Object Descriptor').
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := TymedHglobal.
    (recoveredValue10) tymed: (recoveredValue11).
    (recoveredValue7) deregisterFormatName: ('Ole Object') interchangeFormat: (recoveredValue9).
    recoveredValue12 := CwDataInterchangeConverter.
    recoveredValue13 := CwWINFormatEtcFormat.
    recoveredValue14 := (recoveredValue13) cfFormatName: ('Embed Source').
    recoveredValue15 := recoveredValue14.
    recoveredValue16 := TymedIstorage.
    (recoveredValue15) tymed: (recoveredValue16).
    (recoveredValue12) deregisterFormatName: ('Ole Object') interchangeFormat: (recoveredValue14).
    recoveredValue17 := CwDataInterchangeConverter.
    recoveredValue18 := CwWINFormatEtcFormat.
    recoveredValue19 := CfMetafilepict.
    recoveredValue20 := (recoveredValue18) cfFormat: (recoveredValue19).
    recoveredValue21 := recoveredValue20.
    recoveredValue22 := TymedMfpict.
    (recoveredValue21) tymed: (recoveredValue22).
    (recoveredValue17) deregisterFormatName: ('Ole Object') interchangeFormat: (recoveredValue20).
    recoveredValue23 := CwDataInterchangeConverter.
    recoveredValue24 := CwWINFormatEtcFormat.
    recoveredValue25 := CfBitmap.
    recoveredValue26 := (recoveredValue24) cfFormat: (recoveredValue25).
    recoveredValue27 := recoveredValue26.
    recoveredValue28 := TymedHglobal.
    (recoveredValue27) tymed: (recoveredValue28).
    (recoveredValue23) deregisterFormatName: ('Ole Object') interchangeFormat: (recoveredValue26).
    ^self
! !

"ole.ic method 0x20003c48; bytecode file offset 0xe5e0"
!OleApplicationFrameworkImplementation class methodsFor: 'recovered'!
startUp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 |
    recoveredValue0 := CwIStorageTransferMechanism.
    (recoveredValue0) initializeMedium.
    recoveredValue1 := CwMetaFilePictTransferMechanism.
    (recoveredValue1) initializeMedium.
    recoveredValue2 := CwDataInterchangeConverter.
    recoveredValue3 := CwOleObjectToEmbeddedObject.
    recoveredValue4 := CwWINFormatEtcFormat.
    recoveredValue5 := (recoveredValue4) cfFormatName: ('Embedded Object').
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := TymedIstorage.
    (recoveredValue6) tymed: (recoveredValue7).
    (recoveredValue2) register: (recoveredValue3) formatName: ('Ole Object') interchangeFormat: (recoveredValue5).
    recoveredValue8 := CwDataInterchangeConverter.
    recoveredValue9 := CwOleObjectToObjectDescriptor.
    recoveredValue10 := CwWINFormatEtcFormat.
    recoveredValue11 := (recoveredValue10) cfFormatName: ('Object Descriptor').
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := TymedHglobal.
    (recoveredValue12) tymed: (recoveredValue13).
    (recoveredValue8) register: (recoveredValue9) formatName: ('Ole Object') interchangeFormat: (recoveredValue11).
    recoveredValue14 := CwDataInterchangeConverter.
    recoveredValue15 := CwOleObjectToEmbedSource.
    recoveredValue16 := CwWINFormatEtcFormat.
    recoveredValue17 := (recoveredValue16) cfFormatName: ('Embed Source').
    recoveredValue18 := recoveredValue17.
    recoveredValue19 := TymedIstorage.
    (recoveredValue18) tymed: (recoveredValue19).
    (recoveredValue14) register: (recoveredValue15) formatName: ('Ole Object') interchangeFormat: (recoveredValue17).
    recoveredValue20 := CwDataInterchangeConverter.
    recoveredValue21 := CwOleObjectToHmetafilePict.
    recoveredValue22 := CwWINFormatEtcFormat.
    recoveredValue23 := CfMetafilepict.
    recoveredValue24 := (recoveredValue22) cfFormat: (recoveredValue23).
    recoveredValue25 := recoveredValue24.
    recoveredValue26 := TymedMfpict.
    (recoveredValue25) tymed: (recoveredValue26).
    (recoveredValue20) register: (recoveredValue21) formatName: ('Ole Object') interchangeFormat: (recoveredValue24).
    recoveredValue27 := CwDataInterchangeConverter.
    recoveredValue28 := CwOleObjectToHbitmap.
    recoveredValue29 := CwWINFormatEtcFormat.
    recoveredValue30 := CfBitmap.
    recoveredValue31 := (recoveredValue29) cfFormat: (recoveredValue30).
    recoveredValue32 := recoveredValue31.
    recoveredValue33 := TymedHglobal.
    (recoveredValue32) tymed: (recoveredValue33).
    (recoveredValue27) register: (recoveredValue28) formatName: ('Ole Object') interchangeFormat: (recoveredValue31).
    ^self
! !


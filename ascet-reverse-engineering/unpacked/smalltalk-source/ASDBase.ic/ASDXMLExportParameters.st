"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066594; bytecode file offset 0x963428"
!ASDXMLExportParameters methodsFor: 'recovered'!
destVersion
    | recoveredValue0 |
    recoveredValue0 := destVersion.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067204; bytecode file offset 0x9646f8"
!ASDXMLExportParameters methodsFor: 'recovered'!
createCompleteHierarchy
    | recoveredValue0 |
    recoveredValue0 := createCompleteHierarchy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068e84; bytecode file offset 0x965b90"
!ASDXMLExportParameters methodsFor: 'recovered'!
exportDefaultProjects
    | recoveredValue0 |
    recoveredValue0 := exportDefaultProjects.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069690; bytecode file offset 0x966bdc"
!ASDXMLExportParameters methodsFor: 'recovered'!
exportExperiments
    | recoveredValue0 |
    recoveredValue0 := exportExperiments.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a47c; bytecode file offset 0x967a18"
!ASDXMLExportParameters methodsFor: 'recovered'!
includeReferencedItems
    | recoveredValue0 |
    recoveredValue0 := includeReferencedItems.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c46c; bytecode file offset 0x9692b0"
!ASDXMLExportParameters methodsFor: 'recovered'!
signXMLExport
    | recoveredValue0 |
    recoveredValue0 := signXMLExport.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cbf0; bytecode file offset 0x969c04"
!ASDXMLExportParameters methodsFor: 'recovered'!
writeLogFile
    | recoveredValue0 |
    recoveredValue0 := writeLogFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d9e4; bytecode file offset 0x96a390"
!ASDXMLExportParameters methodsFor: 'recovered'!
headless
    | recoveredValue0 |
    recoveredValue0 := headless.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006df68; bytecode file offset 0x96a9dc"
!ASDXMLExportParameters methodsFor: 'recovered'!
encryptionKey
    | recoveredValue0 |
    recoveredValue0 := encryptionKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e2e4; bytecode file offset 0x96af48"
!ASDXMLExportParameters methodsFor: 'recovered'!
separateMeta
    | recoveredValue0 |
    recoveredValue0 := separateMeta.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b1da0; bytecode file offset 0x9ae66c"
!ASDXMLExportParameters methodsFor: 'recovered'!
exportModifiedDefaultProjects
    | recoveredValue0 |
    recoveredValue0 := ('Kli') == ('Call_93771').
    ^false
! !

"ASDBase.ic method 0x200bdf74; bytecode file offset 0x9bb178"
!ASDXMLExportParameters methodsFor: 'recovered'!
destVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    destVersion := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200beaf0; bytecode file offset 0x9bc0b4"
!ASDXMLExportParameters methodsFor: 'recovered'!
createCompleteHierarchy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    createCompleteHierarchy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1a84; bytecode file offset 0x9beac8"
!ASDXMLExportParameters methodsFor: 'recovered'!
includeReferencedItems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    includeReferencedItems := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3d7c; bytecode file offset 0x9c0bf0"
!ASDXMLExportParameters methodsFor: 'recovered'!
headless: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    headless := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2029a578; bytecode file offset 0xb96e3c"
!ASDXMLExportParameters methodsFor: 'recovered'!
initForMappingExport
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDXMLExportOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) defaultXMLFormatVersion.
    destVersion := recoveredValue3.
    createCompleteHierarchy := true.
    exportDefaultProjects := true.
    exportExperiments := true.
    includeReferencedItems := false.
    exportModifiedDefaultProjects := false.
    signXMLExport := true.
    writeLogFile := false.
    headless := false.
    encryptionKey := ''.
    separateMeta := false.
    ^self
! !

"ASDBase.ic method 0x2029ba3c; bytecode file offset 0xb982f8"
!ASDXMLExportParameters methodsFor: 'recovered'!
shouldExportDefaultProject: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := exportDefaultProjects.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block280e38a4Arg1 | 
    nil
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := exportModifiedDefaultProjects.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202ac4b0; bytecode file offset 0xba8d78"
!ASDXMLExportParameters methodsFor: 'recovered'!
initForDBXml
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ASDXMLExportOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) defaultXMLFormatVersion.
    destVersion := recoveredValue3.
    createCompleteHierarchy := true.
    exportDefaultProjects := true.
    exportExperiments := true.
    includeReferencedItems := false.
    exportModifiedDefaultProjects := false.
    signXMLExport := true.
    writeLogFile := false.
    headless := false.
    encryptionKey := ''.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) optionActivateSeparationMetaData.
    separateMeta := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x2032dad4; bytecode file offset 0xc2a3b8"
!ASDXMLExportParameters methodsFor: 'recovered'!
initFromOptions
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := ASDXMLExportOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) optionXMLFormatVersion.
    destVersion := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) optionCreateCompleteHierarchy.
    createCompleteHierarchy := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) optionExportDefaultProjects.
    exportDefaultProjects := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) optionExportExperiments.
    exportExperiments := recoveredValue9.
    recoveredValue10 := ASDImportExportOptions.
    recoveredValue11 := (recoveredValue10) instance.
    recoveredValue12 := (recoveredValue11) optionExportIncludeReferencedItems.
    includeReferencedItems := recoveredValue12.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) optionExportModifiedDefaultProjects.
    exportModifiedDefaultProjects := recoveredValue14.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) optionSignXMLExport.
    signXMLExport := recoveredValue16.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (recoveredValue17) optionWriteXMLExportLogFile.
    writeLogFile := recoveredValue18.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (recoveredValue19) optionXMLEncryptionKey.
    encryptionKey := recoveredValue20.
    separateMeta := false.
    headless := false.
    ^self
! !

"ASDBase.ic method 0x2033c724; bytecode file offset 0xc38ffc"
!ASDXMLExportParameters methodsFor: 'recovered'!
initForDBXmlDirectExport
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDXMLExportOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultXMLFormatVersion.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            destVersion := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            createCompleteHierarchy := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            exportDefaultProjects := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            exportExperiments := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := ASDImportExportOptions.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionExportIncludeReferencedItems.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            includeReferencedItems := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            exportModifiedDefaultProjects := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            signXMLExport := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionWriteXMLExportLogFile.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            writeLogFile := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            encryptionKey := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionActivateSeparationMetaData.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultXMLFormatVersion.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'V6.2.0'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            separateMeta := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            headless := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


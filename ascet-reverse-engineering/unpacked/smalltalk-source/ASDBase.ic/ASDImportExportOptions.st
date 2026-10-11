"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012768; bytecode file offset 0x912098"
!ASDImportExportOptions methodsFor: 'recovered'!
defaultDefaultImportFormat
    | recoveredValue0 |
    recoveredValue0 := EtExpExtension.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014a24; bytecode file offset 0x912098"
!ASDImportExportOptions methodsFor: 'recovered'!
defaultDefaultExportFormat
    | recoveredValue0 |
    recoveredValue0 := EtExpExtension.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015ca4; bytecode file offset 0x92209c"
!ASDImportExportOptions methodsFor: 'recovered'!
keyImportIgnoreDisallowImport
    ^'ImportIgnoreDisallowImport'
! !

"ASDBase.ic method 0x200189bc; bytecode file offset 0x92209c"
!ASDImportExportOptions methodsFor: 'recovered'!
keyDefaultImportFormat
    ^'DefaultImportFormat'
! !

"ASDBase.ic method 0x2001afe4; bytecode file offset 0x92209c"
!ASDImportExportOptions methodsFor: 'recovered'!
keyExportIncludeReferencedItems
    ^'ExportIncludeReferencedItems'
! !

"ASDBase.ic method 0x2001f820; bytecode file offset 0x92209c"
!ASDImportExportOptions methodsFor: 'recovered'!
keyDefaultExportFormat
    ^'DefaultExportFormat'
! !

"ASDBase.ic method 0x200204c8; bytecode file offset 0x92209c"
!ASDImportExportOptions methodsFor: 'recovered'!
keyImportDiscardExistingImplementations
    ^'ImportDiscardExistingImplementations'
! !

"ASDBase.ic method 0x20022124; bytecode file offset 0x92209c"
!ASDImportExportOptions methodsFor: 'recovered'!
keyExportOneFileForEachItem
    ^'ExportOneFileForEachItem'
! !

"ASDBase.ic method 0x200243f8; bytecode file offset 0x92209c"
!ASDImportExportOptions methodsFor: 'recovered'!
keyImportKeepFolderPath
    ^'ImportKeepFolderPath'
! !

"ASDBase.ic method 0x20025118; bytecode file offset 0x92209c"
!ASDImportExportOptions methodsFor: 'recovered'!
keyImportShowResults
    ^'ImportShowResults'
! !

"ASDBase.ic method 0x2011d120; bytecode file offset 0xa19b6c"
!ASDImportExportOptions methodsFor: 'recovered'!
optionExportEditorProjectFormelDatFormatOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('ExportEditorProjectFormelDatFormatOptions') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011d3c4; bytecode file offset 0xa19cc0"
!ASDImportExportOptions methodsFor: 'recovered'!
optionImportDiscardExistingImplementations
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) keyImportDiscardExistingImplementations.
    recoveredValue1 := [
    ^false
].
    recoveredValue2 := (self) optionAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2011d3e4; bytecode file offset 0xa19cc0"
!ASDImportExportOptions methodsFor: 'recovered'!
optionImportKeepFolderPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) keyImportKeepFolderPath.
    recoveredValue1 := [
    ^false
].
    recoveredValue2 := (self) optionAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2011d404; bytecode file offset 0xa19cc0"
!ASDImportExportOptions methodsFor: 'recovered'!
optionImportIgnoreDisallowImport
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) keyImportIgnoreDisallowImport.
    recoveredValue1 := [
    ^false
].
    recoveredValue2 := (self) optionAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2011d438; bytecode file offset 0xa19d24"
!ASDImportExportOptions methodsFor: 'recovered'!
optionExportIncludeReferencedItems
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) keyExportIncludeReferencedItems.
    recoveredValue1 := [
    ^true
].
    recoveredValue2 := (self) optionAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2011d458; bytecode file offset 0xa19d24"
!ASDImportExportOptions methodsFor: 'recovered'!
optionImportShowResults
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) keyImportShowResults.
    recoveredValue1 := [
    ^true
].
    recoveredValue2 := (self) optionAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2011d468; bytecode file offset 0xa19d24"
!ASDImportExportOptions methodsFor: 'recovered'!
optionExportOneFileForEachItem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) keyExportOneFileForEachItem.
    recoveredValue1 := [
    ^true
].
    recoveredValue2 := (self) optionAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2011d4f0; bytecode file offset 0xa19e3c"
!ASDImportExportOptions methodsFor: 'recovered'!
optionDefaultImportFormat
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) keyDefaultImportFormat.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) defaultDefaultImportFormat.
    ^recoveredBlock6Value0
].
    recoveredValue2 := (self) optionAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2011d57c; bytecode file offset 0xa19e3c"
!ASDImportExportOptions methodsFor: 'recovered'!
optionDefaultExportFormat
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) keyDefaultExportFormat.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) defaultDefaultExportFormat.
    ^recoveredBlock6Value0
].
    recoveredValue2 := (self) optionAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20128090; bytecode file offset 0xa2497c"
!ASDImportExportOptions methodsFor: 'recovered'!
defaultDefaultImportFormatString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EtExpFile.
    recoveredValue1 := (recoveredValue0) , (' (').
    recoveredValue2 := EtExpExtension.
    recoveredValue3 := (recoveredValue2) asWildcardExtension.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , (')').
    ^recoveredValue5
! !

"ASDBase.ic method 0x201280b0; bytecode file offset 0xa2497c"
!ASDImportExportOptions methodsFor: 'recovered'!
defaultDefaultExportFormatString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EtExpFile.
    recoveredValue1 := (recoveredValue0) , (' (').
    recoveredValue2 := EtExpExtension.
    recoveredValue3 := (recoveredValue2) asWildcardExtension.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , (')').
    ^recoveredValue5
! !

"ASDBase.ic method 0x2017e96c; bytecode file offset 0xa7b238"
!ASDImportExportOptions methodsFor: 'recovered'!
availableDefaultExportFormat
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) defaultDefaultExportFormat.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := EtAxlExtension.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := EtAmdExtension.
    (recoveredValue6) add: (recoveredValue7).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2017eab8; bytecode file offset 0xa7b3f4"
!ASDImportExportOptions methodsFor: 'recovered'!
optionDebugMode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLDefinedOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'ImportExportDebugMode'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'Debug'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOption: (recoveredStack2) fromCategory: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201c7078; bytecode file offset 0xac394c"
!ASDImportExportOptions methodsFor: 'recovered'!
availableDefaultImportFormat
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) defaultDefaultImportFormat.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := EtAxlExtension.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := EtAmdExtension.
    recoveredValue8 := ('main.') , (recoveredValue7).
    (recoveredValue6) add: (recoveredValue8).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20240448; bytecode file offset 0xb3cd14"
!ASDImportExportOptions methodsFor: 'recovered'!
optionExportIncludeReferencedItems: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := (self) keyExportIncludeReferencedItems.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) optionClass.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) value: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2024c754; bytecode file offset 0xb49020"
!ASDImportExportOptions methodsFor: 'recovered'!
optionImportDiscardExistingImplementations: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := (self) keyImportDiscardExistingImplementations.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) optionClass.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) value: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20269838; bytecode file offset 0xb66120"
!ASDImportExportOptions methodsFor: 'recovered'!
initializeImportIgnoreDisallowImport
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) keyImportIgnoreDisallowImport.
    recoveredValue2 := EtasBooleanOption.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) groupStringImport.
    recoveredValue5 := (recoveredValue2) label: ('Ignore ''Disallow Import''') description: ('If set, an existing component will be overwritten on import regardless if <i>"Disallow Import"</i> is set for this component') toolTip: ('Ignore "Disallow Import" for existing components') value: (false) default: (false) group: (recoveredValue4) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue6 := (self) userOptionFile.
    recoveredValue7 := (recoveredValue0) xmlCategory: ('ToolSettings') attributeName: (recoveredValue1) optionClass: (recoveredValue5) optionFile: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2026989c; bytecode file offset 0xb66184"
!ASDImportExportOptions methodsFor: 'recovered'!
initializeImportShowResults
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) keyImportShowResults.
    recoveredValue2 := EtasBooleanOption.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) groupStringImport.
    recoveredValue5 := (recoveredValue2) label: ('List Imported Components After Import') description: ('Shows a non hierarchical list of imported components after a successful import operation.') toolTip: ('Show imported components') value: (true) default: (true) group: (recoveredValue4) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue6 := (self) userOptionFile.
    recoveredValue7 := (recoveredValue0) xmlCategory: ('ToolSettings') attributeName: (recoveredValue1) optionClass: (recoveredValue5) optionFile: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2027e500; bytecode file offset 0xb7ae2c"
!ASDImportExportOptions methodsFor: 'recovered'!
initializeImportDiscardExistingImplementations
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) keyImportDiscardExistingImplementations.
    recoveredValue2 := EtasBooleanOption.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) groupStringImport.
    recoveredValue5 := (recoveredValue2) label: ('Discard Existing Implementations') description: ('Discard all existing implementations of an imported component.') toolTip: ('Discard all existing implementations of an imported component') value: (false) default: (false) group: (recoveredValue4) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue6 := (self) userOptionFile.
    recoveredValue7 := (recoveredValue0) xmlCategory: ('ToolSettings') attributeName: (recoveredValue1) oldName: ('Importdiscardexistingimpls') optionClass: (recoveredValue5) optionFile: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2027e540; bytecode file offset 0xb7ae2c"
!ASDImportExportOptions methodsFor: 'recovered'!
initializeExportOneFileForEachItem
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) keyExportOneFileForEachItem.
    recoveredValue2 := EtasBooleanOption.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) groupStringExport.
    recoveredValue5 := (recoveredValue2) label: ('One File for each Item') description: ('All items included in the export will be stored in separate files.<br>Not usable for AXL export format!!') toolTip: ('Store each item in a separate file') value: (false) default: (false) group: (recoveredValue4) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue6 := (self) userOptionFile.
    recoveredValue7 := (recoveredValue0) xmlCategory: ('ToolSettings') attributeName: (recoveredValue1) oldName: ('Exportonefileforeachitem') optionClass: (recoveredValue5) optionFile: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2027e5ac; bytecode file offset 0xb7ae98"
!ASDImportExportOptions methodsFor: 'recovered'!
initializeExportIncludeReferencedItems
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) keyExportIncludeReferencedItems.
    recoveredValue2 := EtasBooleanOption.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) groupStringExport.
    recoveredValue5 := (recoveredValue2) label: ('Include Referenced Items') description: ('All referenced items of a component are included in the export') toolTip: ('Include referenced items in the export') value: (true) default: (true) group: (recoveredValue4) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue6 := (self) userOptionFile.
    recoveredValue7 := (recoveredValue0) xmlCategory: ('ToolSettings') attributeName: (recoveredValue1) oldName: ('Exportincludereferenceditems') optionClass: (recoveredValue5) optionFile: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20295854; bytecode file offset 0xb92144"
!ASDImportExportOptions methodsFor: 'recovered'!
initializeImportKeepFolderPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) keyImportKeepFolderPath.
    recoveredValue2 := EtasBooleanOption.
    recoveredValue3 := ('If this option is set, an existing component will be substituted at its current location,\otherwise it will be moved to the location specified in the file to be imported') withCrs.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) groupStringImport.
    recoveredValue6 := (recoveredValue2) label: ('Keep Folder Path of Components') description: (recoveredValue3) toolTip: ('Keep the folder path of an overwritten component') value: (false) default: (false) group: (recoveredValue5) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue7 := (self) userOptionFile.
    recoveredValue8 := (recoveredValue0) xmlCategory: ('ToolSettings') attributeName: (recoveredValue1) oldName: ('Importleavefolderpatchunchanged') optionClass: (recoveredValue6) optionFile: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x202e0bb0; bytecode file offset 0xbdd494"
!ASDImportExportOptions methodsFor: 'recovered'!
availableDefaultExportFormatStrings
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) defaultDefaultExportFormatString.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := EtAxlFile.
    recoveredValue6 := (recoveredValue5) , (' (').
    recoveredValue7 := EtAxlExtension.
    recoveredValue8 := (recoveredValue7) asWildcardExtension.
    recoveredValue9 := (recoveredValue6) , (recoveredValue8).
    recoveredValue10 := (recoveredValue9) , (')').
    (recoveredValue4) add: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := EtAmdFile.
    recoveredValue13 := (recoveredValue12) , (' (').
    recoveredValue14 := EtAmdExtension.
    recoveredValue15 := (recoveredValue14) asWildcardExtension.
    recoveredValue16 := (recoveredValue13) , (recoveredValue15).
    recoveredValue17 := (recoveredValue16) , (')').
    (recoveredValue11) add: (recoveredValue17).
    ^recoveredValue1
! !

"ASDBase.ic method 0x202f692c; bytecode file offset 0xbf3258"
!ASDImportExportOptions methodsFor: 'recovered'!
initializeExportEditorProjectFormelDatFormatOptions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ExportEditorProjectFormelDatFormatOptions'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Export Project Formula with Comments'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Settings for the Project Formula using the ASCII-Format (*.dat). For Importing in older Versions you have to deactivate option and export without comments.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Export Project Formula with Comments for (*.dat)-Files'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack9 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack10 := 'Appearance\Editors\Project\Formula'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203044a4; bytecode file offset 0xc00d8c"
!ASDImportExportOptions methodsFor: 'recovered'!
availableDefaultImportFormatStrings
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) defaultDefaultImportFormatString.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := EtAxlFile.
    recoveredValue6 := (recoveredValue5) , (' (').
    recoveredValue7 := EtAxlExtension.
    recoveredValue8 := (recoveredValue7) asWildcardExtension.
    recoveredValue9 := (recoveredValue6) , (recoveredValue8).
    recoveredValue10 := (recoveredValue9) , (')').
    (recoveredValue4) add: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := EtAmdFile.
    recoveredValue13 := (recoveredValue12) , (' (').
    recoveredValue14 := EtAmdExtension.
    recoveredValue15 := ('main.') , (recoveredValue14).
    recoveredValue16 := (recoveredValue15) asWildcardExtension.
    recoveredValue17 := (recoveredValue13) , (recoveredValue16).
    recoveredValue18 := (recoveredValue17) , (')').
    (recoveredValue11) add: (recoveredValue18).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20359f60; bytecode file offset 0xc56884"
!ASDImportExportOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    super initialize.
    recoveredValue0 := (self) options.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) initializeDefaultExportFormat.
    (recoveredValue1) add: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) initializeExportIncludeReferencedItems.
    (recoveredValue3) add: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) initializeExportExpFormatOptions.
    (recoveredValue5) add: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) initializeDefaultImportFormat.
    (recoveredValue7) add: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := (self) initializeImportIgnoreDisallowImport.
    (recoveredValue9) add: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := (self) initializeImportDiscardExistingImplementations.
    (recoveredValue11) add: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := (self) initializeImportShowResults.
    (recoveredValue13) add: (recoveredValue14).
    recoveredValue15 := recoveredValue0.
    recoveredValue16 := (self) initializeImportExpFormatOptions.
    (recoveredValue15) add: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    recoveredValue18 := (self) initializeExportEditorProjectFormelDatFormatOptions.
    (recoveredValue17) add: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x203683c0; bytecode file offset 0xc64d14"
!ASDImportExportOptions methodsFor: 'recovered'!
initializeDefaultImportFormat
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) keyDefaultImportFormat.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasEnumerationOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Default Import Format'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Define the default selected import format (EXP, AMD, AXL)'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Default Import Format'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) defaultDefaultImportFormat.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := (recoveredStack9) defaultDefaultImportFormat.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := (recoveredStack10) class.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupStringImport.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack6 := (recoveredStack6) availableDefaultImportFormat.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack5) valueCollection: (recoveredStack6).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := (recoveredStack5) availableDefaultImportFormatStrings.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := (recoveredStack4) stringCollection: (recoveredStack5).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20368414; bytecode file offset 0xc64d14"
!ASDImportExportOptions methodsFor: 'recovered'!
initializeDefaultExportFormat
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) keyDefaultExportFormat.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasEnumerationOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Default Export Format'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Define the default selected export format (EXP, AMD, AXL)'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Default Export Format'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) defaultDefaultExportFormat.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := (recoveredStack9) defaultDefaultExportFormat.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := (recoveredStack10) class.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupStringExport.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack6 := (recoveredStack6) availableDefaultExportFormat.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack5) valueCollection: (recoveredStack6).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := (recoveredStack5) availableDefaultExportFormatStrings.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := (recoveredStack4) stringCollection: (recoveredStack5).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2036a348; bytecode file offset 0xc66c94"
!ASDImportExportOptions methodsFor: 'recovered'!
initializeExportExpFormatOptions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ExportExpFormatOptions'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasContainerOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'EXP Format'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Settings for the binary EXP Format'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Settings for the binary EXP Format'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack9 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack10 := (recoveredStack10) class.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupStringExport.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) changeable: (recoveredStack5).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeExportOneFileForEachItem.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2036a398; bytecode file offset 0xc66c94"
!ASDImportExportOptions methodsFor: 'recovered'!
initializeImportExpFormatOptions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ImportExpFormatOptions'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasContainerOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'EXP Format'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Settings for the binary EXP Format'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Settings for the binary EXP Format'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack9 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack10 := (recoveredStack10) class.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupStringImport.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) changeable: (recoveredStack5).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeImportKeepFolderPath.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


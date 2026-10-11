"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001a3c0; bytecode file offset 0x92209c"
!ASDXMLExportOptions methodsFor: 'recovered'!
groupString
    ^'Interfaces\Export'
! !

"ASDBase.ic method 0x20026b60; bytecode file offset 0x923928"
!ASDXMLExportOptions methodsFor: 'recovered'!
defaultXMLFormatVersion
    ^'V6.4.0'
! !

"ASDBase.ic method 0x2011cc7c; bytecode file offset 0xa19708"
!ASDXMLExportOptions methodsFor: 'recovered'!
optionCreateCompleteHierarchy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^false
].
    recoveredValue1 := (self) optionAt: ('CreateCompleteHierarchy') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011ceb0; bytecode file offset 0xa19b6c"
!ASDXMLExportOptions methodsFor: 'recovered'!
optionExportExperiments
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('ExportExperiments') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011d060; bytecode file offset 0xa19b6c"
!ASDXMLExportOptions methodsFor: 'recovered'!
optionWriteXMLExportLogFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('WriteXMLExportLogFile') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011d0e0; bytecode file offset 0xa19b6c"
!ASDXMLExportOptions methodsFor: 'recovered'!
optionSignXMLExport
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('SignXMLExport') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011d1e0; bytecode file offset 0xa19b6c"
!ASDXMLExportOptions methodsFor: 'recovered'!
optionExportDefaultProjects
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('ExportDefaultProjects') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011d2d4; bytecode file offset 0xa19c5c"
!ASDXMLExportOptions methodsFor: 'recovered'!
optionXMLFormatVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) defaultXMLFormatVersion.
    ^recoveredBlock6Value0
].
    recoveredValue1 := (self) optionAt: ('XMLFormatVersion') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2012fc88; bytecode file offset 0xa2c56c"
!ASDXMLExportOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super initialize.
    recoveredValue0 := (self) options.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) initializeAmdFormatOptions.
    (recoveredValue1) add: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2012fefc; bytecode file offset 0xa2c834"
!ASDXMLExportOptions methodsFor: 'recovered'!
optionXMLEncryptionKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^''
].
    recoveredValue1 := (self) optionAt: ('XMLEncryptionKey') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20130044; bytecode file offset 0xa2c908"
!ASDXMLExportOptions methodsFor: 'recovered'!
optionUseDirectAMDExport
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) library.
    recoveredBlock6Value1 := (recoveredBlock6Value0) isWorkspaceMode.
    ^recoveredBlock6Value1
].
    recoveredValue1 := (self) optionAt: ('UseDirectAMDExport') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2017eb60; bytecode file offset 0xa7b454"
!ASDXMLExportOptions methodsFor: 'recovered'!
optionActivateSeparationMetaData
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
            recoveredStack2 := 'ActivateSeparationMetaData'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'ETASInternal'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOption: (recoveredStack2) fromCategory: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    true
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

"ASDBase.ic method 0x201a37dc; bytecode file offset 0xaa009c"
!ASDXMLExportOptions methodsFor: 'recovered'!
optionExportModifiedDefaultProjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionExportDefaultProjects.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'ExportModifiedDefaultProjects'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    ^true
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202292e8; bytecode file offset 0xb25c90"
!ASDXMLExportOptions methodsFor: 'recovered'!
optionCreateCompleteHierarchy: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc9d4Arg1 | 
    | block280dc9d4Value0 block280dc9d4Value1 block280dc9d4Value2 |
    block280dc9d4Value0 := block280dc9d4Arg1.
    block280dc9d4Value1 := (block280dc9d4Value0) attributeName.
    block280dc9d4Value2 := (block280dc9d4Value1) = ('CreateCompleteHierarchy').
    block280dc9d4Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20234228; bytecode file offset 0xb30b1c"
!ASDXMLExportOptions methodsFor: 'recovered'!
optionWriteXMLExportLogFile: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dd6a0Arg1 | 
    | block280dd6a0Value0 block280dd6a0Value1 block280dd6a0Value2 |
    block280dd6a0Value0 := block280dd6a0Arg1.
    block280dd6a0Value1 := (block280dd6a0Value0) attributeName.
    block280dd6a0Value2 := (block280dd6a0Value1) = ('WriteXMLExportLogFile').
    block280dd6a0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e07d4; bytecode file offset 0xbdd0f8"
!ASDXMLExportOptions methodsFor: 'recovered'!
initializeExportExperiments
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
            recoveredStack3 := 'ExportExperiments'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Export Experiment Environment'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'If checked, experiment environments will be exported together with the component'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Export Experiment Environment'.
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
            recoveredStack10 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
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
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202f2c64; bytecode file offset 0xbef550"
!ASDXMLExportOptions methodsFor: 'recovered'!
initializeXMLEncryptionKey
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
            recoveredStack3 := 'XMLEncryptionKey'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasStringOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Encryption Key'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'The key to be used for encrypting XML files'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Encryption Key'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := ''.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack9 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupString.
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
            recoveredStack5 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20325e30; bytecode file offset 0xc22720"
!ASDXMLExportOptions methodsFor: 'recovered'!
initializeExportDefaultProjects
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_93771'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'ExportDefaultProjects'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := 'Export Default Projects'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack6 := 'If checked, the default project of a component will be exported together with the component.'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack7 := 'Export Default Projects'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack8 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack9 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupString.
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
            recoveredStack5 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20333014; bytecode file offset 0xc2f908"
!ASDXMLExportOptions methodsFor: 'recovered'!
initializeWriteXMLExportLogFile
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
            recoveredStack3 := 'WriteXMLExportLogFile'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Write Log File'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Write all messages, errors and warnings into a log file.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Write all Messages into a Log File'.
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
            recoveredStack10 := (recoveredStack10) groupString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack11 := [
    | block280ecf64Stack0 block280ecf64Stack1 block280ecf64Stack2 block280ecf64Stack3 block280ecf64PC block280ecf64Step block280ecf64Done block280ecf64Result |
    block280ecf64Stack0 := self.
    block280ecf64PC := 4.
    block280ecf64Done := false.
    [block280ecf64Done not] whileTrue: [
        block280ecf64Step := block280ecf64PC.
        block280ecf64Step = 4 ifTrue: [
            block280ecf64Stack1 := false.
            block280ecf64PC := 5.
        ].
        block280ecf64Step = 5 ifTrue: [
            block280ecf64Stack2 := MainController.
            block280ecf64PC := 7.
        ].
        block280ecf64Step = 7 ifTrue: [
            (block280ecf64Stack2 == nil) ifTrue: [block280ecf64PC := 15] ifFalse: [block280ecf64PC := 10].
        ].
        block280ecf64Step = 10 ifTrue: [
            block280ecf64PC := 11.
        ].
        block280ecf64Step = 11 ifTrue: [
            block280ecf64Stack1 := MainController.
            block280ecf64PC := 13.
        ].
        block280ecf64Step = 13 ifTrue: [
            block280ecf64Stack1 := (block280ecf64Stack1) isEtasInternalMode.
            block280ecf64PC := 15.
        ].
        block280ecf64Step = 15 ifTrue: [
            block280ecf64Result := block280ecf64Stack1.
            block280ecf64Done := true.
        ].
    ].
    block280ecf64Result
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2033c608; bytecode file offset 0xc38ef4"
!ASDXMLExportOptions methodsFor: 'recovered'!
initializeUseDirectExport
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 |
    recoveredBlock23Value0 := (self) library.
    recoveredBlock23Value1 := (recoveredBlock23Value0) isWorkspaceMode.
    recoveredBlock23Value1
].
    recoveredValue4 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 |
    recoveredBlock35Value0 := (self) library.
    recoveredBlock35Value1 := (recoveredBlock35Value0) isWorkspaceMode.
    recoveredBlock35Value1
].
    recoveredValue5 := (recoveredValue1) label: ('Direct Export') description: ('If activated, ASCET will only copy AMD files from the workspace instead of exporting them.<br><b>Note:</b>This option is only available for Workspace Mode!!') toolTip: ('Direct Export of AMD Files') value: (true) default: (true) group: (recoveredValue2) visible: (recoveredValue3) sensitive: (recoveredValue4) type: ('USER') userField: (nil).
    recoveredValue6 := (self) userOptionFile.
    recoveredValue7 := (recoveredValue0) xmlCategory: ('ToolSettings') attributeName: ('UseDirectExport') optionClass: (recoveredValue5) optionFile: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20358c44; bytecode file offset 0xc5553c"
!ASDXMLExportOptions methodsFor: 'recovered'!
initializeXMLFormatVersion
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
            recoveredStack3 := 'XMLFormatVersion'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasEnumerationOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'AMD Format Version'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Define the ASCET version the AMD files shall be generated for.<br><b>NOTE:</b> Any kind of information that is not available in the target version will be dropped!!'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'AMD Format Version'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) defaultXMLFormatVersion.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := (recoveredStack9) defaultXMLFormatVersion.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack6 := (recoveredStack6) availableXMLFormatVersions.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack5) valueCollection: (recoveredStack6).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := (recoveredStack5) availableXMLFormatVersions.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := (recoveredStack4) stringCollection: (recoveredStack5).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2038a0a4; bytecode file offset 0xc86994"
!ASDXMLExportOptions methodsFor: 'recovered'!
initializeSignXMLExport
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
            recoveredStack3 := 'SignXMLExport'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Sign AMD Files'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'If activated, ASCET will sign AMD files on export.<br><b>Note:</b>This will slow down the export significant!!'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Sign AMD Files'.
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
            recoveredStack10 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack11 := [
    | block280f34a4Stack0 block280f34a4Stack1 block280f34a4Stack2 block280f34a4Stack3 block280f34a4PC block280f34a4Step block280f34a4Done block280f34a4Result |
    block280f34a4Stack0 := self.
    block280f34a4PC := 4.
    block280f34a4Done := false.
    [block280f34a4Done not] whileTrue: [
        block280f34a4Step := block280f34a4PC.
        block280f34a4Step = 4 ifTrue: [
            block280f34a4Stack1 := false.
            block280f34a4PC := 5.
        ].
        block280f34a4Step = 5 ifTrue: [
            block280f34a4Stack2 := MainController.
            block280f34a4PC := 7.
        ].
        block280f34a4Step = 7 ifTrue: [
            (block280f34a4Stack2 == nil) ifTrue: [block280f34a4PC := 15] ifFalse: [block280f34a4PC := 10].
        ].
        block280f34a4Step = 10 ifTrue: [
            block280f34a4PC := 11.
        ].
        block280f34a4Step = 11 ifTrue: [
            block280f34a4Stack1 := MainController.
            block280f34a4PC := 13.
        ].
        block280f34a4Step = 13 ifTrue: [
            block280f34a4Stack1 := (block280f34a4Stack1) isEtasInternalMode.
            block280f34a4PC := 15.
        ].
        block280f34a4Step = 15 ifTrue: [
            block280f34a4Result := block280f34a4Stack1.
            block280f34a4Done := true.
        ].
    ].
    block280f34a4Result
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack12 := [
    | block280f34c8Stack0 block280f34c8Stack1 block280f34c8Stack2 block280f34c8Stack3 block280f34c8PC block280f34c8Step block280f34c8Done block280f34c8Result |
    block280f34c8Stack0 := self.
    block280f34c8PC := 4.
    block280f34c8Done := false.
    [block280f34c8Done not] whileTrue: [
        block280f34c8Step := block280f34c8PC.
        block280f34c8Step = 4 ifTrue: [
            block280f34c8Stack1 := false.
            block280f34c8PC := 5.
        ].
        block280f34c8Step = 5 ifTrue: [
            block280f34c8Stack2 := MainController.
            block280f34c8PC := 7.
        ].
        block280f34c8Step = 7 ifTrue: [
            (block280f34c8Stack2 == nil) ifTrue: [block280f34c8PC := 15] ifFalse: [block280f34c8PC := 10].
        ].
        block280f34c8Step = 10 ifTrue: [
            block280f34c8PC := 11.
        ].
        block280f34c8Step = 11 ifTrue: [
            block280f34c8Stack1 := MainController.
            block280f34c8PC := 13.
        ].
        block280f34c8Step = 13 ifTrue: [
            block280f34c8Stack1 := (block280f34c8Stack1) isEtasInternalMode.
            block280f34c8PC := 15.
        ].
        block280f34c8Step = 15 ifTrue: [
            block280f34c8Result := block280f34c8Stack1.
            block280f34c8Done := true.
        ].
    ].
    block280f34c8Result
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2038e890; bytecode file offset 0xc8b184"
!ASDXMLExportOptions methodsFor: 'recovered'!
availableXMLFormatVersions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) add: ('V5.2.1').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) add: ('V5.2.2').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) add: ('V6.0.0').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) add: ('V6.0.1').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) add: ('V6.1.0').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) add: ('V6.1.1').
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) add: ('V6.1.2').
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) add: ('V6.1.3').
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) add: ('V6.1.4').
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) add: ('V6.2.0').
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) add: ('V6.2.1').
    recoveredValue13 := recoveredValue1.
    (recoveredValue13) add: ('V6.3.0').
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) defaultXMLFormatVersion.
    (recoveredValue14) add: (recoveredValue15).
    ^recoveredValue1
! !

"ASDBase.ic method 0x203da630; bytecode file offset 0xcd6f3c"
!ASDXMLExportOptions methodsFor: 'recovered'!
initializeCreateCompleteHierarchy
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
            recoveredStack3 := 'CreateCompleteHierarchy'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Create Complete Hierarchy'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Create complete folder hierarchy on export.<br><b>Note:</b> Export with referenced items require this option to be set!!'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Create complete hierarchy'.
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
            recoveredStack10 := (recoveredStack10) groupString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
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
            recoveredStack5 := [:block280f7e78Arg1 | 
    | block280f7e78Stack0 block280f7e78Stack1 block280f7e78Stack2 block280f7e78Stack3 block280f7e78Stack4 block280f7e78PC block280f7e78Step block280f7e78Done block280f7e78Result |
    block280f7e78Stack0 := self.
    block280f7e78PC := 4.
    block280f7e78Done := false.
    [block280f7e78Done not] whileTrue: [
        block280f7e78Step := block280f7e78PC.
        block280f7e78Step = 4 ifTrue: [
            block280f7e78Stack1 := block280f7e78Arg1.
            block280f7e78PC := 5.
        ].
        block280f7e78Step = 5 ifTrue: [
            block280f7e78Stack2 := ASDImportExportOptions.
            block280f7e78PC := 7.
        ].
        block280f7e78Step = 7 ifTrue: [
            block280f7e78Stack2 := (block280f7e78Stack2) instance.
            block280f7e78PC := 9.
        ].
        block280f7e78Step = 9 ifTrue: [
            block280f7e78Stack2 := (block280f7e78Stack2) optionExportIncludeReferencedItems.
            block280f7e78PC := 11.
        ].
        block280f7e78Step = 11 ifTrue: [
            block280f7e78Stack2 := (block280f7e78Stack2) not.
            block280f7e78PC := 12.
        ].
        block280f7e78Step = 12 ifTrue: [
            (block280f7e78Stack1) sensitive: (block280f7e78Stack2).
            block280f7e78PC := 14.
        ].
        block280f7e78Step = 14 ifTrue: [
            block280f7e78Stack1 := block280f7e78Arg1.
            block280f7e78PC := 15.
        ].
        block280f7e78Step = 15 ifTrue: [
            block280f7e78Stack2 := true.
            block280f7e78PC := 16.
        ].
        block280f7e78Step = 16 ifTrue: [
            block280f7e78Stack3 := block280f7e78Arg1.
            block280f7e78PC := 17.
        ].
        block280f7e78Step = 17 ifTrue: [
            block280f7e78Stack3 := (block280f7e78Stack3) value.
            block280f7e78PC := 19.
        ].
        block280f7e78Step = 19 ifTrue: [
            (block280f7e78Stack3) ifTrue: [block280f7e78PC := 29] ifFalse: [block280f7e78PC := 22].
        ].
        block280f7e78Step = 22 ifTrue: [
            block280f7e78PC := 23.
        ].
        block280f7e78Step = 23 ifTrue: [
            block280f7e78Stack2 := ASDImportExportOptions.
            block280f7e78PC := 25.
        ].
        block280f7e78Step = 25 ifTrue: [
            block280f7e78Stack2 := (block280f7e78Stack2) instance.
            block280f7e78PC := 27.
        ].
        block280f7e78Step = 27 ifTrue: [
            block280f7e78Stack2 := (block280f7e78Stack2) optionExportIncludeReferencedItems.
            block280f7e78PC := 29.
        ].
        block280f7e78Step = 29 ifTrue: [
            block280f7e78Stack1 := (block280f7e78Stack1) value: (block280f7e78Stack2).
            block280f7e78PC := 31.
        ].
        block280f7e78Step = 31 ifTrue: [
            block280f7e78Result := block280f7e78Stack1.
            block280f7e78Done := true.
        ].
    ].
    block280f7e78Result
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := (recoveredStack4) updateField: (recoveredStack5).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204078c0; bytecode file offset 0xd041c8"
!ASDXMLExportOptions methodsFor: 'recovered'!
initializeUseDirectAMDExport
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 |
    recoveredBlock23Value0 := (self) library.
    recoveredBlock23Value1 := (recoveredBlock23Value0) isWorkspaceMode.
    recoveredBlock23Value1
].
    recoveredValue4 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 |
    recoveredBlock35Value0 := (self) library.
    recoveredBlock35Value1 := (recoveredBlock35Value0) isWorkspaceMode.
    recoveredBlock35Value1
].
    recoveredValue5 := (recoveredValue1) label: ('Direct Export') description: ('If activated, ASCET will only copy AMD files from the workspace instead of exporting them.<br><b>Note:</b>This option is only available<br> - for Workspace Mode<br> - with newest AMD Format Version') toolTip: ('Direct Export of AMD Files') value: (true) default: (true) group: (recoveredValue2) visible: (recoveredValue3) sensitive: (recoveredValue4) type: ('USER') userField: (nil).
    recoveredValue6 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Local1 recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53Stack3 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack0 := (recoveredBlock53Stack0) defaultXMLFormatVersion.
            recoveredBlock53PC := 62.
        ].
        recoveredBlock53Step = 62 ifTrue: [
            recoveredBlock53Stack1 := self.
            recoveredBlock53PC := 63.
        ].
        recoveredBlock53Step = 63 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) optionXMLFormatVersion.
            recoveredBlock53PC := 65.
        ].
        recoveredBlock53Step = 65 ifTrue: [
            recoveredBlock53Stack0 := (recoveredBlock53Stack0) equals: (recoveredBlock53Stack1).
            recoveredBlock53PC := 67.
        ].
        recoveredBlock53Step = 67 ifTrue: [
            recoveredBlock53Local1 := recoveredBlock53Stack0.
            recoveredBlock53PC := 68.
        ].
        recoveredBlock53Step = 68 ifTrue: [
            recoveredBlock53Stack0 := recoveredBlock53Arg1.
            recoveredBlock53PC := 69.
        ].
        recoveredBlock53Step = 69 ifTrue: [
            recoveredBlock53Stack1 := recoveredBlock53Local1.
            recoveredBlock53PC := 70.
        ].
        recoveredBlock53Step = 70 ifTrue: [
            (recoveredBlock53Stack0) sensitive: (recoveredBlock53Stack1).
            recoveredBlock53PC := 72.
        ].
        recoveredBlock53Step = 72 ifTrue: [
            recoveredBlock53Stack0 := recoveredBlock53Arg1.
            recoveredBlock53PC := 73.
        ].
        recoveredBlock53Step = 73 ifTrue: [
            recoveredBlock53Stack1 := false.
            recoveredBlock53PC := 74.
        ].
        recoveredBlock53Step = 74 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Arg1.
            recoveredBlock53PC := 75.
        ].
        recoveredBlock53Step = 75 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) value.
            recoveredBlock53PC := 77.
        ].
        recoveredBlock53Step = 77 ifTrue: [
            (recoveredBlock53Stack2) ifTrue: [recoveredBlock53PC := 80] ifFalse: [recoveredBlock53PC := 82].
        ].
        recoveredBlock53Step = 80 ifTrue: [
            recoveredBlock53PC := 81.
        ].
        recoveredBlock53Step = 81 ifTrue: [
            recoveredBlock53Stack1 := recoveredBlock53Local1.
            recoveredBlock53PC := 82.
        ].
        recoveredBlock53Step = 82 ifTrue: [
            recoveredBlock53Stack0 := (recoveredBlock53Stack0) value: (recoveredBlock53Stack1).
            recoveredBlock53PC := 84.
        ].
        recoveredBlock53Step = 84 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack0.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
    recoveredValue7 := (recoveredValue5) updateField: (recoveredValue6).
    recoveredValue8 := (self) userOptionFile.
    recoveredValue9 := (recoveredValue0) xmlCategory: ('ToolSettings') attributeName: ('UseDirectAMDExport') optionClass: (recoveredValue7) optionFile: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x2043af28; bytecode file offset 0xd37840"
!ASDXMLExportOptions methodsFor: 'recovered'!
initializeAmdFormatOptions
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
            recoveredStack3 := 'AmdExportFormatOptions'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasContainerOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'AMD/AXL Format'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Settings for the new AMD (ASCET Model Data) Format'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Settings for the AMD and AXL Format'.
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
            recoveredStack10 := (recoveredStack10) groupString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
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
            recoveredStack5 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) changeable: (recoveredStack5).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeXMLFormatVersion.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeUseDirectAMDExport.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeCreateCompleteHierarchy.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeExportExperiments.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeExportDefaultProjects.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeSignXMLExport.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeXMLEncryptionKey.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeWriteXMLExportLogFile.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


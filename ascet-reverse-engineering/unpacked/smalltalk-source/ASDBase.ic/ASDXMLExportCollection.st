"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003ff58; bytecode file offset 0x93d278"
!ASDXMLExportCollection methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := toExport.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040d38; bytecode file offset 0x93d83c"
!ASDXMLExportCollection methodsFor: 'recovered'!
optionExportIncludeReferencedItems
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := options.
    recoveredValue1 := (recoveredValue0) includeReferencedItems.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200663b4; bytecode file offset 0x963428"
!ASDXMLExportCollection methodsFor: 'recovered'!
toExport
    | recoveredValue0 |
    recoveredValue0 := toExport.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067a7c; bytecode file offset 0x9646f8"
!ASDXMLExportCollection methodsFor: 'recovered'!
options
    | recoveredValue0 |
    recoveredValue0 := options.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200686b4; bytecode file offset 0x965b90"
!ASDXMLExportCollection methodsFor: 'recovered'!
maxPathSize
    | recoveredValue0 |
    recoveredValue0 := maxPathSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069328; bytecode file offset 0x966bdc"
!ASDXMLExportCollection methodsFor: 'recovered'!
exportController
    | recoveredValue0 |
    recoveredValue0 := exportController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20081a08; bytecode file offset 0x97e554"
!ASDXMLExportCollection methodsFor: 'recovered'!
do: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := toExport.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) do: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081b7c; bytecode file offset 0x97e554"
!ASDXMLExportCollection methodsFor: 'recovered'!
collect: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := toExport.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081da4; bytecode file offset 0x97e6e0"
!ASDXMLExportCollection methodsFor: 'recovered'!
shouldExportDefaultProject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := options.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) shouldExportDefaultProject: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20097ff4; bytecode file offset 0x995850"
!ASDXMLExportCollection methodsFor: 'recovered'!
addIssue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exportController.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addIssue: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b88c4; bytecode file offset 0x9b517c"
!ASDXMLExportCollection methodsFor: 'recovered'!
reject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := toExport.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) reject: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    toExport := recoveredValue3.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c0e48; bytecode file offset 0x9bdf14"
!ASDXMLExportCollection methodsFor: 'recovered'!
exportController: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    exportController := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011f230; bytecode file offset 0xa1baec"
!ASDXMLExportCollection methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    options := recoveredValue0.
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    toExport := recoveredValue2.
    maxPathSize := 0.
    ^self
! !

"ASDBase.ic method 0x2012e6c8; bytecode file offset 0xa2b0c4"
!ASDXMLExportCollection methodsFor: 'recovered'!
issueList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) issues.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280caa88Arg1 | 
    | block280caa88Value0 block280caa88Value1 |
    block280caa88Value0 := block280caa88Arg1.
    block280caa88Value1 := (block280caa88Value0) displayString.
    block280caa88Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012e71c; bytecode file offset 0xa2b0c4"
!ASDXMLExportCollection methodsFor: 'recovered'!
hasErrors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) issues.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280caaf4Arg1 | 
    | block280caaf4Value0 block280caaf4Value1 |
    block280caaf4Value0 := block280caaf4Arg1.
    block280caaf4Value1 := (block280caaf4Value0) isError.
    block280caaf4Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20299ca4; bytecode file offset 0xb9657c"
!ASDXMLExportCollection methodsFor: 'recovered'!
performAllChecksFor: recoveredArg1 destinationDirectory: recoveredArg2 localPath: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    (self) checkAccessRights: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) checkCompatibility: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) checkValueCompatibility: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg2.
    (self) checkPathLength: (recoveredValue3) path: (recoveredValue4) exportDir: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) checkHandwrittenCode: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) checkCustomerDatas: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (self) checkConsecutiveEnumIndex: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (self) checkConfigs: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    (self) checkMultiMapping: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x202eb644; bytecode file offset 0xbe7f34"
!ASDXMLExportCollection methodsFor: 'recovered'!
checkAccessRights: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRead.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'Missing Access Right: %1 can not be exported due to missing read access.'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) ascetLink: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) addErrorText: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := ASDXMLExportIssueAccessRightViolation.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack3) initOn: (recoveredStack4) isError: (recoveredStack5).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := 'Missing Access Right: Read'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack3) errorDescription: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := 'Item will not be exported.'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack3) description: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) ascetLink: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) ascetLink: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) addIssue: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203988a0; bytecode file offset 0xc951a0"
!ASDXMLExportCollection methodsFor: 'recovered'!
checkCompatibility: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) destVersion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) asEtasVersion.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := ASDXMLExportOptions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultXMLFormatVersion.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) minToolVersion: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) asEtasVersion.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxToolVersion: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) asEtasVersion.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'Incompatible component: %1 can not be exported for %2.'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) ascetLink: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) addErrorText: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := ASDXMLExportIssueIncompatibleItem.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042a91c; bytecode file offset 0xd27220"
!ASDXMLExportCollection methodsFor: 'recovered'!
checkHandwrittenCode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_2010403010'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasHandwrittenCode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlHandwrittenImplCode.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Local1 recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33Stack3 recoveredBlock33Stack4 recoveredBlock33Stack5 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack1 := nil.
            recoveredBlock33PC := 41.
        ].
        recoveredBlock33Step = 41 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Arg1.
            recoveredBlock33PC := 42.
        ].
        recoveredBlock33Step = 42 ifTrue: [
            recoveredBlock33Stack3 := [].
            recoveredBlock33PC := 44.
        ].
        recoveredBlock33Step = 44 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) getObjectIfUndefined: (recoveredBlock33Stack3).
            recoveredBlock33PC := 46.
        ].
        recoveredBlock33Step = 46 ifTrue: [
            (recoveredBlock33Stack2 == nil) ifTrue: [recoveredBlock33PC := 70] ifFalse: [recoveredBlock33PC := 50].
        ].
        recoveredBlock33Step = 50 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Arg1.
            recoveredBlock33PC := 51.
        ].
        recoveredBlock33Step = 51 ifTrue: [
            recoveredBlock33Stack3 := [].
            recoveredBlock33PC := 53.
        ].
        recoveredBlock33Step = 53 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) getObjectIfUndefined: (recoveredBlock33Stack3).
            recoveredBlock33PC := 55.
        ].
        recoveredBlock33Step = 55 ifTrue: [
            recoveredBlock33Stack3 := recoveredBlock33Stack2.
            recoveredBlock33PC := 56.
        ].
        recoveredBlock33Step = 56 ifTrue: [
            recoveredBlock33Local1 := recoveredBlock33Stack3.
            recoveredBlock33PC := 57.
        ].
        recoveredBlock33Step = 57 ifTrue: [
            (recoveredBlock33Stack2 == nil) ifTrue: [recoveredBlock33PC := 100] ifFalse: [recoveredBlock33PC := 60].
        ].
        recoveredBlock33Step = 60 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Local1.
            recoveredBlock33PC := 61.
        ].
        recoveredBlock33Step = 61 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) sgClass.
            recoveredBlock33PC := 63.
        ].
        recoveredBlock33Step = 63 ifTrue: [
            recoveredBlock33Stack3 := recoveredArg1.
            recoveredBlock33PC := 66.
        ].
        recoveredBlock33Step = 66 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) ~= (recoveredBlock33Stack3).
            recoveredBlock33PC := 67.
        ].
        recoveredBlock33Step = 67 ifTrue: [
            (recoveredBlock33Stack2) ifTrue: [recoveredBlock33PC := 70] ifFalse: [recoveredBlock33PC := 100].
        ].
        recoveredBlock33Step = 70 ifTrue: [
            recoveredBlock33PC := 71.
        ].
        recoveredBlock33Step = 71 ifTrue: [
            recoveredBlock33Stack1 := SGMonitorStreamDummy.
            recoveredBlock33PC := 73.
        ].
        recoveredBlock33Step = 73 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) create.
            recoveredBlock33PC := 75.
        ].
        recoveredBlock33Step = 75 ifTrue: [
            recoveredBlock33Stack2 := 'Missing implementation: C-code refering to a missing implementation in component %1. This C-code will get lost!!'.
            recoveredBlock33PC := 77.
        ].
        recoveredBlock33Step = 77 ifTrue: [
            recoveredBlock33Stack3 := recoveredArg1.
            recoveredBlock33PC := 80.
        ].
        recoveredBlock33Step = 80 ifTrue: [
            recoveredBlock33Stack4 := nil.
            recoveredBlock33PC := 81.
        ].
        recoveredBlock33Step = 81 ifTrue: [
            recoveredBlock33Stack3 := (recoveredBlock33Stack3) ascetLink: (recoveredBlock33Stack4).
            recoveredBlock33PC := 83.
        ].
        recoveredBlock33Step = 83 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) bindWith: (recoveredBlock33Stack3).
            recoveredBlock33PC := 85.
        ].
        recoveredBlock33Step = 85 ifTrue: [
            (recoveredBlock33Stack1) addWarningText: (recoveredBlock33Stack2).
            recoveredBlock33PC := 87.
        ].
        recoveredBlock33Step = 87 ifTrue: [
            recoveredBlock33Stack1 := self.
            recoveredBlock33PC := 88.
        ].
        recoveredBlock33Step = 88 ifTrue: [
            recoveredBlock33Stack2 := ASDXMLExportIssueMissingImplementation.
            recoveredBlock33PC := 90.
        ].
        recoveredBlock33Step = 90 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) new.
            recoveredBlock33PC := 92.
        ].
        recoveredBlock33Step = 92 ifTrue: [
            recoveredBlock33Stack3 := recoveredArg1.
            recoveredBlock33PC := 95.
        ].
        recoveredBlock33Step = 95 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) initOn: (recoveredBlock33Stack3).
            recoveredBlock33PC := 97.
        ].
        recoveredBlock33Step = 97 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) addIssue: (recoveredBlock33Stack2).
            recoveredBlock33PC := 99.
        ].
        recoveredBlock33Step = 99 ifTrue: [
            ^recoveredBlock33Stack1
        ].
        recoveredBlock33Step = 100 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack1.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042e558; bytecode file offset 0xd2ae50"
!ASDXMLExportCollection methodsFor: 'recovered'!
addAvailableDefaultProjects
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Local1 recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10Stack5 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isModule.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 22] ifFalse: [recoveredBlock10PC := 79].
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) defaultProjectKey.
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            (recoveredBlock10Stack2 == nil) ifTrue: [recoveredBlock10PC := 79] ifFalse: [recoveredBlock10PC := 28].
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) defaultProjectForItem.
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack1.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Local1.
            recoveredBlock10PC := 35.
        ].
        recoveredBlock10Step = 35 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) primitiveVariables.
            recoveredBlock10PC := 37.
        ].
        recoveredBlock10Step = 37 ifTrue: [
            recoveredBlock10Stack3 := [:block280fd3f8Arg1 | 
    | block280fd3f8Stack0 block280fd3f8Stack1 block280fd3f8Stack2 block280fd3f8Stack3 block280fd3f8PC block280fd3f8Step block280fd3f8Done block280fd3f8Result |
    block280fd3f8Stack0 := self.
    block280fd3f8PC := 4.
    block280fd3f8Done := false.
    [block280fd3f8Done not] whileTrue: [
        block280fd3f8Step := block280fd3f8PC.
        block280fd3f8Step = 4 ifTrue: [
            block280fd3f8Stack1 := false.
            block280fd3f8PC := 5.
        ].
        block280fd3f8Step = 5 ifTrue: [
            block280fd3f8Stack2 := block280fd3f8Arg1.
            block280fd3f8PC := 6.
        ].
        block280fd3f8Step = 6 ifTrue: [
            block280fd3f8Stack2 := (block280fd3f8Stack2) isVector.
            block280fd3f8PC := 8.
        ].
        block280fd3f8Step = 8 ifTrue: [
            (block280fd3f8Stack2) ifTrue: [block280fd3f8PC := 18] ifFalse: [block280fd3f8PC := 12].
        ].
        block280fd3f8Step = 12 ifTrue: [
            block280fd3f8Stack2 := block280fd3f8Arg1.
            block280fd3f8PC := 13.
        ].
        block280fd3f8Step = 13 ifTrue: [
            block280fd3f8Stack2 := (block280fd3f8Stack2) isMatrix.
            block280fd3f8PC := 15.
        ].
        block280fd3f8Step = 15 ifTrue: [
            (block280fd3f8Stack2) ifTrue: [block280fd3f8PC := 18] ifFalse: [block280fd3f8PC := 24].
        ].
        block280fd3f8Step = 18 ifTrue: [
            block280fd3f8PC := 19.
        ].
        block280fd3f8Step = 19 ifTrue: [
            block280fd3f8Stack1 := block280fd3f8Arg1.
            block280fd3f8PC := 20.
        ].
        block280fd3f8Step = 20 ifTrue: [
            block280fd3f8Stack1 := (block280fd3f8Stack1) sgClass.
            block280fd3f8PC := 22.
        ].
        block280fd3f8Step = 22 ifTrue: [
            block280fd3f8Stack1 := (block280fd3f8Stack1) hasMaxSizeValue.
            block280fd3f8PC := 24.
        ].
        block280fd3f8Step = 24 ifTrue: [
            block280fd3f8Result := block280fd3f8Stack1.
            block280fd3f8Done := true.
        ].
    ].
    block280fd3f8Result
].
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            recoveredBlock10PC := 63.
        ].
        recoveredBlock10Step = 63 ifTrue: [
            recoveredBlock10Stack4 := [].
            recoveredBlock10PC := 65.
        ].
        recoveredBlock10Step = 65 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) detect: (recoveredBlock10Stack3) ifNone: (recoveredBlock10Stack4).
            recoveredBlock10PC := 67.
        ].
        recoveredBlock10Step = 67 ifTrue: [
            (recoveredBlock10Stack2 == nil) ifTrue: [recoveredBlock10PC := 77] ifFalse: [recoveredBlock10PC := 70].
        ].
        recoveredBlock10Step = 70 ifTrue: [
            recoveredBlock10PC := 71.
        ].
        recoveredBlock10Step = 71 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 74.
        ].
        recoveredBlock10Step = 74 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Local1.
            recoveredBlock10PC := 75.
        ].
        recoveredBlock10Step = 75 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) add: (recoveredBlock10Stack2).
            recoveredBlock10PC := 77.
        ].
        recoveredBlock10Step = 77 ifTrue: [
            recoveredBlock10Stack2 := nil.
            recoveredBlock10PC := 78.
        ].
        recoveredBlock10Step = 78 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 79.
        ].
        recoveredBlock10Step = 79 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (self) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [:recoveredBlock85Arg1 | 
    | recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 recoveredBlock85Value3 recoveredBlock85Value4 |
    recoveredBlock85Value0 := toExport.
    recoveredBlock85Value1 := recoveredBlock85Arg1.
    recoveredBlock85Value2 := (recoveredBlock85Value1) componentDatabasePath.
    recoveredBlock85Value3 := recoveredBlock85Arg1.
    recoveredBlock85Value4 := (recoveredBlock85Value0) at: (recoveredBlock85Value2) put: (recoveredBlock85Value3).
    recoveredBlock85Value4
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2044e6c0; bytecode file offset 0xd4afc8"
!ASDXMLExportCollection methodsFor: 'recovered'!
checkConfigs: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) datas.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) addAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) implementations.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) addAll: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36Stack5 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Arg1.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) label.
            recoveredBlock36PC := 45.
        ].
        recoveredBlock36Step = 45 ifTrue: [
            recoveredBlock36Stack2 := $ .
            recoveredBlock36PC := 48.
        ].
        recoveredBlock36Step = 48 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) includes: (recoveredBlock36Stack2).
            recoveredBlock36PC := 50.
        ].
        recoveredBlock36Step = 50 ifTrue: [
            (recoveredBlock36Stack1) ifTrue: [recoveredBlock36PC := 54] ifFalse: [recoveredBlock36PC := 68].
        ].
        recoveredBlock36Step = 54 ifTrue: [
            recoveredBlock36Stack1 := SGMonitorStreamDummy.
            recoveredBlock36PC := 56.
        ].
        recoveredBlock36Step = 56 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) create.
            recoveredBlock36PC := 58.
        ].
        recoveredBlock36Step = 58 ifTrue: [
            recoveredBlock36Stack2 := 'Label includes Blanks in component %1. The label will be converted!!'.
            recoveredBlock36PC := 60.
        ].
        recoveredBlock36Step = 60 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Arg1.
            recoveredBlock36PC := 61.
        ].
        recoveredBlock36Step = 61 ifTrue: [
            recoveredBlock36Stack4 := nil.
            recoveredBlock36PC := 62.
        ].
        recoveredBlock36Step = 62 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) ascetLink: (recoveredBlock36Stack4).
            recoveredBlock36PC := 64.
        ].
        recoveredBlock36Step = 64 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) bindWith: (recoveredBlock36Stack3).
            recoveredBlock36PC := 66.
        ].
        recoveredBlock36Step = 66 ifTrue: [
            (recoveredBlock36Stack1) addWarningText: (recoveredBlock36Stack2).
            recoveredBlock36PC := 68.
        ].
        recoveredBlock36Step = 68 ifTrue: [
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 69.
        ].
        recoveredBlock36Step = 69 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 70.
        ].
        recoveredBlock36Step = 70 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) sgClass.
            recoveredBlock36PC := 72.
        ].
        recoveredBlock36Step = 72 ifTrue: [
            (recoveredBlock36Stack2 ~~ nil) ifTrue: [recoveredBlock36PC := 105] ifFalse: [recoveredBlock36PC := 76].
        ].
        recoveredBlock36Step = 76 ifTrue: [
            recoveredBlock36PC := 77.
        ].
        recoveredBlock36Step = 77 ifTrue: [
            recoveredBlock36Stack1 := SGMonitorStreamDummy.
            recoveredBlock36PC := 79.
        ].
        recoveredBlock36Step = 79 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) create.
            recoveredBlock36PC := 81.
        ].
        recoveredBlock36Step = 81 ifTrue: [
            recoveredBlock36Stack2 := 'Wrong config back reference: Implementation/Data refering to a deleted component in component %1. Use Menu Tools>>Database>>Performance Utilities and mark repair and mark check before executing'.
            recoveredBlock36PC := 83.
        ].
        recoveredBlock36Step = 83 ifTrue: [
            recoveredBlock36Stack3 := recoveredArg1.
            recoveredBlock36PC := 86.
        ].
        recoveredBlock36Step = 86 ifTrue: [
            recoveredBlock36Stack4 := nil.
            recoveredBlock36PC := 87.
        ].
        recoveredBlock36Step = 87 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) ascetLink: (recoveredBlock36Stack4).
            recoveredBlock36PC := 89.
        ].
        recoveredBlock36Step = 89 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) bindWith: (recoveredBlock36Stack3).
            recoveredBlock36PC := 91.
        ].
        recoveredBlock36Step = 91 ifTrue: [
            (recoveredBlock36Stack1) addErrorText: (recoveredBlock36Stack2).
            recoveredBlock36PC := 93.
        ].
        recoveredBlock36Step = 93 ifTrue: [
            recoveredBlock36Stack1 := self.
            recoveredBlock36PC := 94.
        ].
        recoveredBlock36Step = 94 ifTrue: [
            recoveredBlock36Stack2 := ASDXMLExportIssueWrongBackReferenceConfig.
            recoveredBlock36PC := 96.
        ].
        recoveredBlock36Step = 96 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) new.
            recoveredBlock36PC := 97.
        ].
        recoveredBlock36Step = 97 ifTrue: [
            recoveredBlock36Stack3 := recoveredArg1.
            recoveredBlock36PC := 100.
        ].
        recoveredBlock36Step = 100 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) initOn: (recoveredBlock36Stack3).
            recoveredBlock36PC := 102.
        ].
        recoveredBlock36Step = 102 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) addIssue: (recoveredBlock36Stack2).
            recoveredBlock36PC := 104.
        ].
        recoveredBlock36Step = 104 ifTrue: [
            ^recoveredBlock36Stack1
        ].
        recoveredBlock36Step = 105 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046645c; bytecode file offset 0xd62d58"
!ASDXMLExportCollection methodsFor: 'recovered'!
checkPathLength: recoveredArg1 path: recoveredArg2 exportDir: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := maxPathSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            maxPathSize := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := '.project.implementationTypes.dp.amd'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := Util.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxPathLen.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportController.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxPathLengthHandling.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := '.project.implementationTypes.dp.amd'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := Util.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxPathLen.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := toExport.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 'Too long export path: Resulting export path for component %1 is too long. This component can not be exported!!'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) ascetLink: (recoveredStack4).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) addErrorText: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := '.project.implementationTypes.dp.amd'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := Util.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxPathLen.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := ASDXMLExportIssueTooLongPath.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := (recoveredStack4) exportController.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := (recoveredStack4) maxPathLengthHandling.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := (recoveredStack4) not.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) initOn: (recoveredStack3) isError: (recoveredStack4).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) addIssue: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := ASDXMLExportIssueTooLongPath.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) initOn: (recoveredStack3) isError: (recoveredStack4).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) addIssue: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20475fd0; bytecode file offset 0xd728dc"
!ASDXMLExportCollection methodsFor: 'recovered'!
checkConsecutiveEnumIndex: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) destVersion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) asEtasVersion.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ASDXMLExportOptions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultXMLFormatVersion.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 'V6.2.0'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGEnumeration.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumerationCodes.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [:recoveredBlock53Arg1 :recoveredBlock53Arg2 | 
    | recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53Stack3 recoveredBlock53Stack4 recoveredBlock53Stack5 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack1 := recoveredBlock53Arg1.
            recoveredBlock53PC := 61.
        ].
        recoveredBlock53Step = 61 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Arg2.
            recoveredBlock53PC := 62.
        ].
        recoveredBlock53Step = 62 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) + (-1).
            recoveredBlock53PC := 63.
        ].
        recoveredBlock53Step = 63 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) equals: (recoveredBlock53Stack2).
            recoveredBlock53PC := 65.
        ].
        recoveredBlock53Step = 65 ifTrue: [
            (recoveredBlock53Stack1) ifTrue: [recoveredBlock53PC := 72] ifFalse: [recoveredBlock53PC := 68].
        ].
        recoveredBlock53Step = 68 ifTrue: [
            recoveredBlock53Stack1 := false.
            recoveredBlock53PC := 69.
        ].
        recoveredBlock53Step = 69 ifTrue: [
            recoveredLocal1 := recoveredBlock53Stack1.
            recoveredBlock53PC := 72.
        ].
        recoveredBlock53Step = 72 ifTrue: [
            recoveredBlock53Stack1 := nil.
            recoveredBlock53PC := 73.
        ].
        recoveredBlock53Step = 73 ifTrue: [
            recoveredBlock53Stack2 := recoveredLocal1.
            recoveredBlock53PC := 76.
        ].
        recoveredBlock53Step = 76 ifTrue: [
            (recoveredBlock53Stack2) ifTrue: [recoveredBlock53PC := 115] ifFalse: [recoveredBlock53PC := 80].
        ].
        recoveredBlock53Step = 80 ifTrue: [
            recoveredBlock53PC := 81.
        ].
        recoveredBlock53Step = 81 ifTrue: [
            recoveredBlock53Stack1 := SGMonitorStreamDummy.
            recoveredBlock53PC := 83.
        ].
        recoveredBlock53Step = 83 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) create.
            recoveredBlock53PC := 85.
        ].
        recoveredBlock53Step = 85 ifTrue: [
            recoveredBlock53Stack2 := 'Incompatible enumeration value in component: %1 can not be exported for %2 because the enumeration values do NOT start with 0 and/or are NOT in a consecutive order.'.
            recoveredBlock53PC := 87.
        ].
        recoveredBlock53Step = 87 ifTrue: [
            recoveredBlock53Stack3 := recoveredArg1.
            recoveredBlock53PC := 90.
        ].
        recoveredBlock53Step = 90 ifTrue: [
            recoveredBlock53Stack4 := nil.
            recoveredBlock53PC := 91.
        ].
        recoveredBlock53Step = 91 ifTrue: [
            recoveredBlock53Stack3 := (recoveredBlock53Stack3) ascetLink: (recoveredBlock53Stack4).
            recoveredBlock53PC := 93.
        ].
        recoveredBlock53Step = 93 ifTrue: [
            recoveredBlock53Stack4 := recoveredLocal3.
            recoveredBlock53PC := 96.
        ].
        recoveredBlock53Step = 96 ifTrue: [
            recoveredBlock53Stack4 := (recoveredBlock53Stack4) asString.
            recoveredBlock53PC := 98.
        ].
        recoveredBlock53Step = 98 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) bindWith: (recoveredBlock53Stack3) with: (recoveredBlock53Stack4).
            recoveredBlock53PC := 100.
        ].
        recoveredBlock53Step = 100 ifTrue: [
            (recoveredBlock53Stack1) addErrorText: (recoveredBlock53Stack2).
            recoveredBlock53PC := 102.
        ].
        recoveredBlock53Step = 102 ifTrue: [
            recoveredBlock53Stack1 := self.
            recoveredBlock53PC := 103.
        ].
        recoveredBlock53Step = 103 ifTrue: [
            recoveredBlock53Stack2 := ASDXMLExportIssueNonConsecutiveEnumIndex.
            recoveredBlock53PC := 105.
        ].
        recoveredBlock53Step = 105 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) new.
            recoveredBlock53PC := 107.
        ].
        recoveredBlock53Step = 107 ifTrue: [
            recoveredBlock53Stack3 := recoveredArg1.
            recoveredBlock53PC := 110.
        ].
        recoveredBlock53Step = 110 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) initOn: (recoveredBlock53Stack3).
            recoveredBlock53PC := 112.
        ].
        recoveredBlock53Step = 112 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) addIssue: (recoveredBlock53Stack2).
            recoveredBlock53PC := 114.
        ].
        recoveredBlock53Step = 114 ifTrue: [
            ^recoveredBlock53Stack1
        ].
        recoveredBlock53Step = 115 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack1.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ca664; bytecode file offset 0xdc6f7c"
!ASDXMLExportCollection methodsFor: 'recovered'!
checkMultiMapping: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) destVersion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) asEtasVersion.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'V6.2.1'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAtomicSoftwareComponent.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasMappedRecordElements.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'The Software Component %1 is not compatible with this verion of ASCET. Mapped Record elements are not allowed.'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) ascetLink: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) addErrorText: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := ASDXMLExportIssueMapping.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) asEtasVersion.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 'V6.2.0'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAtomicSoftwareComponent.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingsAreEmpty.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 'The Software Component %1 is not compatible with this verion of ASCET. The mappings have a different format.'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) ascetLink: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) addErrorText: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := ASDXMLExportIssueMapping.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) asEtasVersion.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := 'V6.2.0'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAtomicSoftwareComponent.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 151].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMultiMappingLabels.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 151].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := 'The Software Component %1 is not compatible with older versions of ASCET. There exists multiple mappings for following source objects.
			%2 The export will work. But while importing with the old version only one of the multiple mappings get imported.'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) ascetLink: (recoveredStack3).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) addWarningText: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := ASDXMLExportIssueIncompatibleMultiMapping.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204fafa8; bytecode file offset 0xdf78b0"
!ASDXMLExportCollection methodsFor: 'recovered'!
performAllChecks: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := toExport.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock21Local1 recoveredBlock21Local2 recoveredBlock21Local3 recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 |
    recoveredBlock21Value0 := recoveredLocal1.
    recoveredBlock21Value1 := (recoveredBlock21Value0) activateProgressBar.
    recoveredBlock21Local3 := recoveredBlock21Value1.
    recoveredBlock21Value2 := toExport.
    recoveredBlock21Value3 := (recoveredBlock21Value2) size.
    recoveredBlock21Local2 := recoveredBlock21Value3.
    recoveredBlock21Local1 := 0.
    recoveredBlock21Value4 := toExport.
    recoveredBlock21Value5 := (recoveredBlock21Value4) copy.
    recoveredBlock21Value6 := [:recoveredBlock21Block50Arg1 :recoveredBlock21Block50Arg2 | 
    | recoveredBlock21Block50Stack0 recoveredBlock21Block50Stack1 recoveredBlock21Block50Stack2 recoveredBlock21Block50Stack3 recoveredBlock21Block50Stack4 recoveredBlock21Block50Stack5 recoveredBlock21Block50Stack6 recoveredBlock21Block50PC recoveredBlock21Block50Step recoveredBlock21Block50Done recoveredBlock21Block50Result |
    recoveredBlock21Block50Stack0 := self.
    recoveredBlock21Block50PC := 56.
    recoveredBlock21Block50Done := false.
    [recoveredBlock21Block50Done not] whileTrue: [
        recoveredBlock21Block50Step := recoveredBlock21Block50PC.
        recoveredBlock21Block50Step = 56 ifTrue: [
            recoveredBlock21Block50Stack1 := recoveredBlock21Local1.
            recoveredBlock21Block50PC := 59.
        ].
        recoveredBlock21Block50Step = 59 ifTrue: [
            recoveredBlock21Block50Stack1 := (recoveredBlock21Block50Stack1) + (1).
            recoveredBlock21Block50PC := 60.
        ].
        recoveredBlock21Block50Step = 60 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Block50Stack1.
            recoveredBlock21Block50PC := 63.
        ].
        recoveredBlock21Block50Step = 63 ifTrue: [
            recoveredBlock21Block50Stack1 := recoveredLocal1.
            recoveredBlock21Block50PC := 66.
        ].
        recoveredBlock21Block50Step = 66 ifTrue: [
            recoveredBlock21Block50Stack1 := (recoveredBlock21Block50Stack1) view.
            recoveredBlock21Block50PC := 68.
        ].
        recoveredBlock21Block50Step = 68 ifTrue: [
            recoveredBlock21Block50Stack1 := (recoveredBlock21Block50Stack1) widgetProgressLabel.
            recoveredBlock21Block50PC := 70.
        ].
        recoveredBlock21Block50Step = 70 ifTrue: [
            recoveredBlock21Block50Stack2 := recoveredBlock21Block50Stack1.
            recoveredBlock21Block50PC := 71.
        ].
        recoveredBlock21Block50Step = 71 ifTrue: [
            recoveredBlock21Block50Stack3 := 'Checking component %1 / %2'.
            recoveredBlock21Block50PC := 73.
        ].
        recoveredBlock21Block50Step = 73 ifTrue: [
            recoveredBlock21Block50Stack4 := recoveredBlock21Local1.
            recoveredBlock21Block50PC := 76.
        ].
        recoveredBlock21Block50Step = 76 ifTrue: [
            recoveredBlock21Block50Stack5 := recoveredBlock21Local2.
            recoveredBlock21Block50PC := 79.
        ].
        recoveredBlock21Block50Step = 79 ifTrue: [
            recoveredBlock21Block50Stack3 := (recoveredBlock21Block50Stack3) bindWith: (recoveredBlock21Block50Stack4) with: (recoveredBlock21Block50Stack5).
            recoveredBlock21Block50PC := 81.
        ].
        recoveredBlock21Block50Step = 81 ifTrue: [
            (recoveredBlock21Block50Stack2) labelString: (recoveredBlock21Block50Stack3).
            recoveredBlock21Block50PC := 83.
        ].
        recoveredBlock21Block50Step = 83 ifTrue: [
            (recoveredBlock21Block50Stack1) updateWidget.
            recoveredBlock21Block50PC := 85.
        ].
        recoveredBlock21Block50Step = 85 ifTrue: [
            recoveredBlock21Block50Stack1 := recoveredBlock21Block50Arg2.
            recoveredBlock21Block50PC := 86.
        ].
        recoveredBlock21Block50Step = 86 ifTrue: [
            recoveredBlock21Block50Stack2 := recoveredArg1.
            recoveredBlock21Block50PC := 89.
        ].
        recoveredBlock21Block50Step = 89 ifTrue: [
            recoveredBlock21Block50Stack3 := recoveredBlock21Block50Arg1.
            recoveredBlock21Block50PC := 90.
        ].
        recoveredBlock21Block50Step = 90 ifTrue: [
            (recoveredBlock21Block50Stack0) performAllChecksFor: (recoveredBlock21Block50Stack1) destinationDirectory: (recoveredBlock21Block50Stack2) localPath: (recoveredBlock21Block50Stack3).
            recoveredBlock21Block50PC := 93.
        ].
        recoveredBlock21Block50Step = 93 ifTrue: [
            recoveredBlock21Block50Stack0 := 'MultiInstance'.
            recoveredBlock21Block50PC := 95.
        ].
        recoveredBlock21Block50Step = 95 ifTrue: [
            recoveredBlock21Block50Stack1 := 'Kk'.
            recoveredBlock21Block50PC := 97.
        ].
        recoveredBlock21Block50Step = 97 ifTrue: [
            recoveredBlock21Block50Stack0 := (recoveredBlock21Block50Stack0) == (recoveredBlock21Block50Stack1).
            recoveredBlock21Block50PC := 98.
        ].
        recoveredBlock21Block50Step = 98 ifTrue: [
            recoveredBlock21Block50PC := 99.
        ].
        recoveredBlock21Block50Step = 99 ifTrue: [
            recoveredBlock21Block50Stack0 := nil.
            recoveredBlock21Block50PC := 100.
        ].
        recoveredBlock21Block50Step = 100 ifTrue: [
            recoveredBlock21Block50Stack1 := recoveredBlock21Local3.
            recoveredBlock21Block50PC := 103.
        ].
        recoveredBlock21Block50Step = 103 ifTrue: [
            (recoveredBlock21Block50Stack1 == nil) ifTrue: [recoveredBlock21Block50PC := 132] ifFalse: [recoveredBlock21Block50PC := 106].
        ].
        recoveredBlock21Block50Step = 106 ifTrue: [
            recoveredBlock21Block50PC := 107.
        ].
        recoveredBlock21Block50Step = 107 ifTrue: [
            recoveredBlock21Block50Stack0 := recoveredBlock21Local3.
            recoveredBlock21Block50PC := 110.
        ].
        recoveredBlock21Block50Step = 110 ifTrue: [
            recoveredBlock21Block50Stack1 := recoveredBlock21Local1.
            recoveredBlock21Block50PC := 113.
        ].
        recoveredBlock21Block50Step = 113 ifTrue: [
            recoveredBlock21Block50Stack2 := recoveredBlock21Local2.
            recoveredBlock21Block50PC := 116.
        ].
        recoveredBlock21Block50Step = 116 ifTrue: [
            recoveredBlock21Block50Stack1 := (recoveredBlock21Block50Stack1) / (recoveredBlock21Block50Stack2).
            recoveredBlock21Block50PC := 118.
        ].
        recoveredBlock21Block50Step = 118 ifTrue: [
            recoveredBlock21Block50Stack2 := 100.
            recoveredBlock21Block50PC := 122.
        ].
        recoveredBlock21Block50Step = 122 ifTrue: [
            recoveredBlock21Block50Stack1 := (recoveredBlock21Block50Stack1) * (recoveredBlock21Block50Stack2).
            recoveredBlock21Block50PC := 123.
        ].
        recoveredBlock21Block50Step = 123 ifTrue: [
            recoveredBlock21Block50Stack1 := (recoveredBlock21Block50Stack1) asInteger.
            recoveredBlock21Block50PC := 125.
        ].
        recoveredBlock21Block50Step = 125 ifTrue: [
            (recoveredBlock21Block50Stack0) value: (recoveredBlock21Block50Stack1).
            recoveredBlock21Block50PC := 127.
        ].
        recoveredBlock21Block50Step = 127 ifTrue: [
            recoveredBlock21Block50Stack0 := recoveredBlock21Local3.
            recoveredBlock21Block50PC := 130.
        ].
        recoveredBlock21Block50Step = 130 ifTrue: [
            recoveredBlock21Block50Stack0 := (recoveredBlock21Block50Stack0) updateWidget.
            recoveredBlock21Block50PC := 132.
        ].
        recoveredBlock21Block50Step = 132 ifTrue: [
            recoveredBlock21Block50Result := recoveredBlock21Block50Stack0.
            recoveredBlock21Block50Done := true.
        ].
    ].
    recoveredBlock21Block50Result
].
    (recoveredBlock21Value5) keysAndValuesDo: (recoveredBlock21Value6).
    recoveredBlock21Value7 := recoveredLocal1.
    recoveredBlock21Value8 := (recoveredBlock21Value7) deactivateProgressBar.
    recoveredBlock21Value8
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := 'Checking AMD Compatibility'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) measureTimeFor: (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredPC := 173.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := toExport.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := [:recoveredBlock156Arg1 :recoveredBlock156Arg2 | 
    | recoveredBlock156Value0 recoveredBlock156Value1 recoveredBlock156Value2 recoveredBlock156Value3 |
    recoveredBlock156Value0 := recoveredBlock156Arg2.
    recoveredBlock156Value1 := recoveredArg1.
    recoveredBlock156Value2 := recoveredBlock156Arg1.
    recoveredBlock156Value3 := (self) performAllChecksFor: (recoveredBlock156Value0) destinationDirectory: (recoveredBlock156Value1) localPath: (recoveredBlock156Value2).
    recoveredBlock156Value3
].
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20520ee8; bytecode file offset 0xe1d7d8"
!ASDXMLExportCollection methodsFor: 'recovered'!
collectItems: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := Set.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := LookupTable.
    recoveredValue7 := (recoveredValue6) new.
    recoveredLocal3 := recoveredValue7.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Local1 recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31Stack4 recoveredBlock31Stack5 recoveredBlock31Stack6 recoveredBlock31Stack7 recoveredBlock31Stack8 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := options.
            recoveredBlock31PC := 40.
        ].
        recoveredBlock31Step = 40 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) createCompleteHierarchy.
            recoveredBlock31PC := 41.
        ].
        recoveredBlock31Step = 41 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 44] ifFalse: [recoveredBlock31PC := 72].
        ].
        recoveredBlock31Step = 44 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 47.
        ].
        recoveredBlock31Step = 47 ifTrue: [
            recoveredBlock31Stack2 := nil.
            recoveredBlock31PC := 48.
        ].
        recoveredBlock31Step = 48 ifTrue: [
            recoveredBlock31Stack3 := [
    | recoveredBlock31Block48Value0 recoveredBlock31Block48Value1 recoveredBlock31Block48Value2 |
    recoveredBlock31Block48Value0 := recoveredLocal1.
    recoveredBlock31Block48Value1 := recoveredBlock31Arg1.
    recoveredBlock31Block48Value2 := (recoveredBlock31Block48Value0) add: (recoveredBlock31Block48Value1).
    recoveredBlock31Block48Value2
].
            recoveredBlock31PC := 63.
        ].
        recoveredBlock31Step = 63 ifTrue: [
            (recoveredBlock31Stack1) xmlPathUpTo: (recoveredBlock31Stack2) badNameBlock: (recoveredBlock31Stack3).
            recoveredBlock31PC := 65.
        ].
        recoveredBlock31Step = 65 ifTrue: [
            recoveredBlock31Stack1 := nil.
            recoveredBlock31PC := 66.
        ].
        recoveredBlock31Step = 66 ifTrue: [
            recoveredBlock31Local1 := recoveredBlock31Stack1.
            recoveredBlock31PC := 69.
        ].
        recoveredBlock31Step = 69 ifTrue: [
            recoveredBlock31PC := 78.
        ].
        recoveredBlock31Step = 72 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 75.
        ].
        recoveredBlock31Step = 75 ifTrue: [
            recoveredBlock31Local1 := recoveredBlock31Stack1.
            recoveredBlock31PC := 78.
        ].
        recoveredBlock31Step = 78 ifTrue: [
            recoveredBlock31Stack1 := nil.
            recoveredBlock31PC := 79.
        ].
        recoveredBlock31Step = 79 ifTrue: [
            recoveredBlock31Stack2 := recoveredLocal1.
            recoveredBlock31PC := 82.
        ].
        recoveredBlock31Step = 82 ifTrue: [
            recoveredBlock31Stack3 := recoveredBlock31Arg1.
            recoveredBlock31PC := 85.
        ].
        recoveredBlock31Step = 85 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) includes: (recoveredBlock31Stack3).
            recoveredBlock31PC := 87.
        ].
        recoveredBlock31Step = 87 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 112] ifFalse: [recoveredBlock31PC := 90].
        ].
        recoveredBlock31Step = 90 ifTrue: [
            recoveredBlock31PC := 91.
        ].
        recoveredBlock31Step = 91 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 94.
        ].
        recoveredBlock31Step = 94 ifTrue: [
            recoveredBlock31Stack2 := toExport.
            recoveredBlock31PC := 96.
        ].
        recoveredBlock31Step = 96 ifTrue: [
            recoveredBlock31Stack3 := recoveredBlock31Local1.
            recoveredBlock31PC := 99.
        ].
        recoveredBlock31Step = 99 ifTrue: [
            recoveredBlock31Stack4 := recoveredLocal1.
            recoveredBlock31PC := 102.
        ].
        recoveredBlock31Step = 102 ifTrue: [
            recoveredBlock31Stack5 := recoveredLocal2.
            recoveredBlock31PC := 105.
        ].
        recoveredBlock31Step = 105 ifTrue: [
            recoveredBlock31Stack6 := recoveredLocal4.
            recoveredBlock31PC := 108.
        ].
        recoveredBlock31Step = 108 ifTrue: [
            recoveredBlock31Stack7 := self.
            recoveredBlock31PC := 109.
        ].
        recoveredBlock31Step = 109 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) xmlCollectExportItems: (recoveredBlock31Stack2) root: (recoveredBlock31Stack3) invalid: (recoveredBlock31Stack4) ambigous: (recoveredBlock31Stack5) seen: (recoveredBlock31Stack6) controller: (recoveredBlock31Stack7).
            recoveredBlock31PC := 112.
        ].
        recoveredBlock31Step = 112 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := [:recoveredBlock118Arg1 | 
    | recoveredBlock118Local1 recoveredBlock118Stack0 recoveredBlock118Stack1 recoveredBlock118Stack2 recoveredBlock118Stack3 recoveredBlock118Stack4 recoveredBlock118Stack5 recoveredBlock118Stack6 recoveredBlock118PC recoveredBlock118Step recoveredBlock118Done recoveredBlock118Result |
    recoveredBlock118Stack0 := self.
    recoveredBlock118PC := 124.
    recoveredBlock118Done := false.
    [recoveredBlock118Done not] whileTrue: [
        recoveredBlock118Step := recoveredBlock118PC.
        recoveredBlock118Step = 124 ifTrue: [
            recoveredBlock118Stack1 := nil.
            recoveredBlock118PC := 125.
        ].
        recoveredBlock118Step = 125 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Arg1.
            recoveredBlock118PC := 126.
        ].
        recoveredBlock118Step = 126 ifTrue: [
            recoveredBlock118Stack2 := (recoveredBlock118Stack2) size.
            recoveredBlock118PC := 128.
        ].
        recoveredBlock118Step = 128 ifTrue: [
            recoveredBlock118Stack3 := 1.
            recoveredBlock118PC := 130.
        ].
        recoveredBlock118Step = 130 ifTrue: [
            recoveredBlock118Stack2 := (recoveredBlock118Stack2) > (recoveredBlock118Stack3).
            recoveredBlock118PC := 131.
        ].
        recoveredBlock118Step = 131 ifTrue: [
            (recoveredBlock118Stack2) ifTrue: [recoveredBlock118PC := 134] ifFalse: [recoveredBlock118PC := 170].
        ].
        recoveredBlock118Step = 134 ifTrue: [
            recoveredBlock118PC := 135.
        ].
        recoveredBlock118Step = 135 ifTrue: [
            recoveredBlock118Stack1 := 1.
            recoveredBlock118PC := 137.
        ].
        recoveredBlock118Step = 137 ifTrue: [
            recoveredBlock118Local1 := recoveredBlock118Stack1.
            recoveredBlock118PC := 138.
        ].
        recoveredBlock118Step = 138 ifTrue: [
            recoveredBlock118Stack1 := recoveredBlock118Arg1.
            recoveredBlock118PC := 139.
        ].
        recoveredBlock118Step = 139 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) size.
            recoveredBlock118PC := 141.
        ].
        recoveredBlock118Step = 141 ifTrue: [
            recoveredBlock118PC := 156.
        ].
        recoveredBlock118Step = 144 ifTrue: [
            recoveredBlock118Stack2 := self.
            recoveredBlock118PC := 145.
        ].
        recoveredBlock118Step = 145 ifTrue: [
            recoveredBlock118Stack3 := ASDXMLExportIssueDuplicatedPath.
            recoveredBlock118PC := 147.
        ].
        recoveredBlock118Step = 147 ifTrue: [
            recoveredBlock118Stack3 := (recoveredBlock118Stack3) new.
            recoveredBlock118PC := 148.
        ].
        recoveredBlock118Step = 148 ifTrue: [
            recoveredBlock118Stack4 := recoveredBlock118Arg1.
            recoveredBlock118PC := 149.
        ].
        recoveredBlock118Step = 149 ifTrue: [
            recoveredBlock118Stack5 := recoveredBlock118Local1.
            recoveredBlock118PC := 150.
        ].
        recoveredBlock118Step = 150 ifTrue: [
            recoveredBlock118Stack4 := (recoveredBlock118Stack4) at: (recoveredBlock118Stack5).
            recoveredBlock118PC := 152.
        ].
        recoveredBlock118Step = 152 ifTrue: [
            recoveredBlock118Stack3 := (recoveredBlock118Stack3) initOn: (recoveredBlock118Stack4).
            recoveredBlock118PC := 154.
        ].
        recoveredBlock118Step = 154 ifTrue: [
            (recoveredBlock118Stack2) addIssue: (recoveredBlock118Stack3).
            recoveredBlock118PC := 156.
        ].
        recoveredBlock118Step = 156 ifTrue: [
            (recoveredBlock118Stack1 isInteger and: [recoveredBlock118Local1 isInteger]) ifTrue: [(recoveredBlock118Local1 + 1 <= recoveredBlock118Stack1) ifTrue: [recoveredBlock118Local1 := recoveredBlock118Local1 + 1. recoveredBlock118PC := 144] ifFalse: [recoveredBlock118Local1 := nil. recoveredBlock118PC := 170]] ifFalse: [recoveredBlock118PC := 160].
        ].
        recoveredBlock118Step = 160 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Stack1.
            recoveredBlock118PC := 161.
        ].
        recoveredBlock118Step = 161 ifTrue: [
            recoveredBlock118Stack3 := recoveredBlock118Local1.
            recoveredBlock118PC := 162.
        ].
        recoveredBlock118Step = 162 ifTrue: [
            recoveredBlock118Stack3 := (recoveredBlock118Stack3) + (1).
            recoveredBlock118PC := 163.
        ].
        recoveredBlock118Step = 163 ifTrue: [
            recoveredBlock118Stack4 := recoveredBlock118Stack3.
            recoveredBlock118PC := 164.
        ].
        recoveredBlock118Step = 164 ifTrue: [
            recoveredBlock118Local1 := recoveredBlock118Stack4.
            recoveredBlock118PC := 165.
        ].
        recoveredBlock118Step = 165 ifTrue: [
            recoveredBlock118Stack2 := (recoveredBlock118Stack2) < (recoveredBlock118Stack3).
            recoveredBlock118PC := 166.
        ].
        recoveredBlock118Step = 166 ifTrue: [
            (recoveredBlock118Stack2) ifTrue: [recoveredBlock118PC := 168] ifFalse: [recoveredBlock118PC := 144].
        ].
        recoveredBlock118Step = 168 ifTrue: [
            recoveredBlock118Stack2 := nil.
            recoveredBlock118PC := 169.
        ].
        recoveredBlock118Step = 169 ifTrue: [
            recoveredBlock118Local1 := recoveredBlock118Stack2.
            recoveredBlock118PC := 170.
        ].
        recoveredBlock118Step = 170 ifTrue: [
            recoveredBlock118Result := recoveredBlock118Stack1.
            recoveredBlock118Done := true.
        ].
    ].
    recoveredBlock118Result
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := [:recoveredBlock176Arg1 | 
    | recoveredBlock176Value0 recoveredBlock176Value1 recoveredBlock176Value2 recoveredBlock176Value3 recoveredBlock176Value4 |
    recoveredBlock176Value0 := ASDXMLExportIssueInvalidPath.
    recoveredBlock176Value1 := (recoveredBlock176Value0) new.
    recoveredBlock176Value2 := recoveredBlock176Arg1.
    recoveredBlock176Value3 := (recoveredBlock176Value1) initOn: (recoveredBlock176Value2).
    recoveredBlock176Value4 := (self) addIssue: (recoveredBlock176Value3).
    recoveredBlock176Value4
].
    (recoveredValue12) do: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x205747a8; bytecode file offset 0xe710f0"
!ASDXMLExportCollection methodsFor: 'recovered'!
checkCustomerDatas: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := SGComponent.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) customerDataBasic.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) updatePSLData.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) destVersion.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) asEtasVersion.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := ASDXMLExportOptions.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultXMLFormatVersion.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) destVersion.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'V6.0.0'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerDataBasic.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) destVersion.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 'V6.0.0'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'Incompatible <CustomerData> in component: %1 can not be exported for %2.'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) ascetLink: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) options.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) destVersion.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) addWarningText: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := ASDXMLExportIssueIncompatibleCustomerData.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasDatas.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasImplementations.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementationKeys.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataKeys.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) classDataConfigKey.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := (recoveredStack3) classImplConfigKey.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := [:recoveredBlock164Arg1 | 
    | recoveredBlock164Stack0 recoveredBlock164Stack1 recoveredBlock164Stack2 recoveredBlock164Stack3 recoveredBlock164PC recoveredBlock164Step recoveredBlock164Done recoveredBlock164Result |
    recoveredBlock164Stack0 := self.
    recoveredBlock164PC := 170.
    recoveredBlock164Done := false.
    [recoveredBlock164Done not] whileTrue: [
        recoveredBlock164Step := recoveredBlock164PC.
        recoveredBlock164Step = 170 ifTrue: [
            recoveredBlock164Stack1 := recoveredBlock164Arg1.
            recoveredBlock164PC := 171.
        ].
        recoveredBlock164Step = 171 ifTrue: [
            recoveredBlock164Stack2 := [:block2811209cArg1 | 
    nil
].
            recoveredBlock164PC := 173.
        ].
        recoveredBlock164Step = 173 ifTrue: [
            recoveredBlock164PC := 178.
        ].
        recoveredBlock164Step = 178 ifTrue: [
            recoveredBlock164Stack1 := (recoveredBlock164Stack1) readKeyIfUndefined: (recoveredBlock164Stack2).
            recoveredBlock164PC := 180.
        ].
        recoveredBlock164Step = 180 ifTrue: [
            recoveredBlock164Stack2 := [:recoveredBlock164Block180Arg1 | 
    | recoveredBlock164Block180Stack0 recoveredBlock164Block180Stack1 recoveredBlock164Block180Stack2 recoveredBlock164Block180Stack3 recoveredBlock164Block180Stack4 recoveredBlock164Block180Stack5 recoveredBlock164Block180PC recoveredBlock164Block180Step recoveredBlock164Block180Done recoveredBlock164Block180Result |
    recoveredBlock164Block180Stack0 := self.
    recoveredBlock164Block180PC := 186.
    recoveredBlock164Block180Done := false.
    [recoveredBlock164Block180Done not] whileTrue: [
        recoveredBlock164Block180Step := recoveredBlock164Block180PC.
        recoveredBlock164Block180Step = 186 ifTrue: [
            recoveredBlock164Block180Stack1 := nil.
            recoveredBlock164Block180PC := 187.
        ].
        recoveredBlock164Block180Step = 187 ifTrue: [
            recoveredBlock164Block180Stack2 := recoveredBlock164Block180Arg1.
            recoveredBlock164Block180PC := 188.
        ].
        recoveredBlock164Block180Step = 188 ifTrue: [
            recoveredBlock164Block180Stack2 := (recoveredBlock164Block180Stack2) customerDataBasic.
            recoveredBlock164Block180PC := 189.
        ].
        recoveredBlock164Block180Step = 189 ifTrue: [
            (recoveredBlock164Block180Stack2 == nil) ifTrue: [recoveredBlock164Block180PC := 242] ifFalse: [recoveredBlock164Block180PC := 192].
        ].
        recoveredBlock164Block180Step = 192 ifTrue: [
            recoveredBlock164Block180PC := 193.
        ].
        recoveredBlock164Block180Step = 193 ifTrue: [
            recoveredBlock164Block180Stack1 := nil.
            recoveredBlock164Block180PC := 194.
        ].
        recoveredBlock164Block180Step = 194 ifTrue: [
            recoveredBlock164Block180Stack2 := self.
            recoveredBlock164Block180PC := 195.
        ].
        recoveredBlock164Block180Step = 195 ifTrue: [
            recoveredBlock164Block180Stack2 := (recoveredBlock164Block180Stack2) options.
            recoveredBlock164Block180PC := 197.
        ].
        recoveredBlock164Block180Step = 197 ifTrue: [
            recoveredBlock164Block180Stack2 := (recoveredBlock164Block180Stack2) destVersion.
            recoveredBlock164Block180PC := 199.
        ].
        recoveredBlock164Block180Step = 199 ifTrue: [
            recoveredBlock164Block180Stack3 := 'V6.0.0'.
            recoveredBlock164Block180PC := 201.
        ].
        recoveredBlock164Block180Step = 201 ifTrue: [
            recoveredBlock164Block180Stack2 := (recoveredBlock164Block180Stack2) < (recoveredBlock164Block180Stack3).
            recoveredBlock164Block180PC := 202.
        ].
        recoveredBlock164Block180Step = 202 ifTrue: [
            (recoveredBlock164Block180Stack2) ifTrue: [recoveredBlock164Block180PC := 206] ifFalse: [recoveredBlock164Block180PC := 242].
        ].
        recoveredBlock164Block180Step = 206 ifTrue: [
            recoveredBlock164Block180PC := 207.
        ].
        recoveredBlock164Block180Step = 207 ifTrue: [
            recoveredBlock164Block180Stack1 := SGMonitorStreamDummy.
            recoveredBlock164Block180PC := 209.
        ].
        recoveredBlock164Block180Step = 209 ifTrue: [
            recoveredBlock164Block180Stack1 := (recoveredBlock164Block180Stack1) create.
            recoveredBlock164Block180PC := 211.
        ].
        recoveredBlock164Block180Step = 211 ifTrue: [
            recoveredBlock164Block180Stack2 := 'Incompatible <CustomerData> in component: %1 can not be exported for %2.'.
            recoveredBlock164Block180PC := 213.
        ].
        recoveredBlock164Block180Step = 213 ifTrue: [
            recoveredBlock164Block180Stack3 := recoveredArg1.
            recoveredBlock164Block180PC := 216.
        ].
        recoveredBlock164Block180Step = 216 ifTrue: [
            recoveredBlock164Block180Stack3 := (recoveredBlock164Block180Stack3) componentDatabasePath.
            recoveredBlock164Block180PC := 218.
        ].
        recoveredBlock164Block180Step = 218 ifTrue: [
            recoveredBlock164Block180Stack4 := self.
            recoveredBlock164Block180PC := 219.
        ].
        recoveredBlock164Block180Step = 219 ifTrue: [
            recoveredBlock164Block180Stack4 := (recoveredBlock164Block180Stack4) options.
            recoveredBlock164Block180PC := 221.
        ].
        recoveredBlock164Block180Step = 221 ifTrue: [
            recoveredBlock164Block180Stack4 := (recoveredBlock164Block180Stack4) destVersion.
            recoveredBlock164Block180PC := 223.
        ].
        recoveredBlock164Block180Step = 223 ifTrue: [
            recoveredBlock164Block180Stack4 := (recoveredBlock164Block180Stack4) asString.
            recoveredBlock164Block180PC := 225.
        ].
        recoveredBlock164Block180Step = 225 ifTrue: [
            recoveredBlock164Block180Stack2 := (recoveredBlock164Block180Stack2) bindWith: (recoveredBlock164Block180Stack3) with: (recoveredBlock164Block180Stack4).
            recoveredBlock164Block180PC := 227.
        ].
        recoveredBlock164Block180Step = 227 ifTrue: [
            (recoveredBlock164Block180Stack1) addErrorText: (recoveredBlock164Block180Stack2).
            recoveredBlock164Block180PC := 229.
        ].
        recoveredBlock164Block180Step = 229 ifTrue: [
            recoveredBlock164Block180Stack1 := self.
            recoveredBlock164Block180PC := 230.
        ].
        recoveredBlock164Block180Step = 230 ifTrue: [
            recoveredBlock164Block180Stack2 := ASDXMLExportIssueIncompatibleCustomerData.
            recoveredBlock164Block180PC := 232.
        ].
        recoveredBlock164Block180Step = 232 ifTrue: [
            recoveredBlock164Block180Stack2 := (recoveredBlock164Block180Stack2) new.
            recoveredBlock164Block180PC := 234.
        ].
        recoveredBlock164Block180Step = 234 ifTrue: [
            recoveredBlock164Block180Stack3 := recoveredArg1.
            recoveredBlock164Block180PC := 237.
        ].
        recoveredBlock164Block180Step = 237 ifTrue: [
            recoveredBlock164Block180Stack2 := (recoveredBlock164Block180Stack2) initOn: (recoveredBlock164Block180Stack3).
            recoveredBlock164Block180PC := 239.
        ].
        recoveredBlock164Block180Step = 239 ifTrue: [
            recoveredBlock164Block180Stack1 := (recoveredBlock164Block180Stack1) addIssue: (recoveredBlock164Block180Stack2).
            recoveredBlock164Block180PC := 241.
        ].
        recoveredBlock164Block180Step = 241 ifTrue: [
            ^recoveredBlock164Block180Stack1
        ].
        recoveredBlock164Block180Step = 242 ifTrue: [
            recoveredBlock164Block180Result := recoveredBlock164Block180Stack1.
            recoveredBlock164Block180Done := true.
        ].
    ].
    recoveredBlock164Block180Result
].
            recoveredBlock164PC := 243.
        ].
        recoveredBlock164Step = 243 ifTrue: [
            recoveredBlock164Stack1 := (recoveredBlock164Stack1) ifNotNil: (recoveredBlock164Stack2).
            recoveredBlock164PC := 245.
        ].
        recoveredBlock164Step = 245 ifTrue: [
            recoveredBlock164Result := recoveredBlock164Stack1.
            recoveredBlock164Done := true.
        ].
    ].
    recoveredBlock164Result
].
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e16d0; bytecode file offset 0xede050"
!ASDXMLExportCollection methodsFor: 'recovered'!
checkValueCompatibility: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) destVersion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) asEtasVersion.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ASDXMLExportOptions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultXMLFormatVersion.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 'V6.2.0'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) allElements.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41Stack4 recoveredBlock41Stack5 recoveredBlock41Stack6 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 49.
        ].
        recoveredBlock41Step = 49 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Arg1.
            recoveredBlock41PC := 50.
        ].
        recoveredBlock41Step = 50 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) isVariantSizeConfiguredX.
            recoveredBlock41PC := 52.
        ].
        recoveredBlock41Step = 52 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 62] ifFalse: [recoveredBlock41PC := 56].
        ].
        recoveredBlock41Step = 56 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Arg1.
            recoveredBlock41PC := 57.
        ].
        recoveredBlock41Step = 57 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) isVariantSizeConfiguredY.
            recoveredBlock41PC := 59.
        ].
        recoveredBlock41Step = 59 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 62] ifFalse: [recoveredBlock41PC := 119].
        ].
        recoveredBlock41Step = 62 ifTrue: [
            recoveredBlock41PC := 63.
        ].
        recoveredBlock41Step = 63 ifTrue: [
            recoveredBlock41Stack1 := SGMonitorStreamDummy.
            recoveredBlock41PC := 65.
        ].
        recoveredBlock41Step = 65 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) create.
            recoveredBlock41PC := 67.
        ].
        recoveredBlock41Step = 67 ifTrue: [
            recoveredBlock41Stack2 := 'Incompatible value: Element %1 uses variant size component structure. This information will get lost when exporting to %2.'.
            recoveredBlock41PC := 69.
        ].
        recoveredBlock41Step = 69 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Arg1.
            recoveredBlock41PC := 70.
        ].
        recoveredBlock41Step = 70 ifTrue: [
            recoveredBlock41Stack4 := nil.
            recoveredBlock41PC := 71.
        ].
        recoveredBlock41Step = 71 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) ascetLink: (recoveredBlock41Stack4).
            recoveredBlock41PC := 73.
        ].
        recoveredBlock41Step = 73 ifTrue: [
            recoveredBlock41Stack4 := recoveredLocal2.
            recoveredBlock41PC := 76.
        ].
        recoveredBlock41Step = 76 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) asString.
            recoveredBlock41PC := 78.
        ].
        recoveredBlock41Step = 78 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) bindWith: (recoveredBlock41Stack3) with: (recoveredBlock41Stack4).
            recoveredBlock41PC := 80.
        ].
        recoveredBlock41Step = 80 ifTrue: [
            (recoveredBlock41Stack1) addWarningText: (recoveredBlock41Stack2).
            recoveredBlock41PC := 82.
        ].
        recoveredBlock41Step = 82 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 83.
        ].
        recoveredBlock41Step = 83 ifTrue: [
            recoveredBlock41Stack2 := ASDXMLExportIssueIncompatibleValue.
            recoveredBlock41PC := 85.
        ].
        recoveredBlock41Step = 85 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) new.
            recoveredBlock41PC := 87.
        ].
        recoveredBlock41Step = 87 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Stack2.
            recoveredBlock41PC := 88.
        ].
        recoveredBlock41Step = 88 ifTrue: [
            recoveredBlock41Stack4 := recoveredArg1.
            recoveredBlock41PC := 91.
        ].
        recoveredBlock41Step = 91 ifTrue: [
            recoveredBlock41Stack5 := false.
            recoveredBlock41PC := 92.
        ].
        recoveredBlock41Step = 92 ifTrue: [
            (recoveredBlock41Stack3) initOn: (recoveredBlock41Stack4) isError: (recoveredBlock41Stack5).
            recoveredBlock41Stack3 := recoveredBlock41Stack2.
            recoveredBlock41PC := 95.
        ].
        recoveredBlock41Step = 95 ifTrue: [
            recoveredBlock41Stack4 := 'Element uses variant size component structure'.
            recoveredBlock41PC := 97.
        ].
        recoveredBlock41Step = 97 ifTrue: [
            (recoveredBlock41Stack3) errorDescription: (recoveredBlock41Stack4).
            recoveredBlock41Stack3 := recoveredBlock41Stack2.
            recoveredBlock41PC := 100.
        ].
        recoveredBlock41Step = 100 ifTrue: [
            recoveredBlock41Stack4 := 'The variant size property will be removed. Note: This may lead to different code in %1'.
            recoveredBlock41PC := 102.
        ].
        recoveredBlock41Step = 102 ifTrue: [
            recoveredBlock41Stack5 := recoveredLocal2.
            recoveredBlock41PC := 105.
        ].
        recoveredBlock41Step = 105 ifTrue: [
            recoveredBlock41Stack5 := (recoveredBlock41Stack5) asString.
            recoveredBlock41PC := 107.
        ].
        recoveredBlock41Step = 107 ifTrue: [
            recoveredBlock41Stack4 := (recoveredBlock41Stack4) bindWith: (recoveredBlock41Stack5).
            recoveredBlock41PC := 109.
        ].
        recoveredBlock41Step = 109 ifTrue: [
            (recoveredBlock41Stack3) description: (recoveredBlock41Stack4).
            recoveredBlock41PC := 111.
        ].
        recoveredBlock41Step = 111 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Arg1.
            recoveredBlock41PC := 112.
        ].
        recoveredBlock41Step = 112 ifTrue: [
            recoveredBlock41Stack4 := nil.
            recoveredBlock41PC := 113.
        ].
        recoveredBlock41Step = 113 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) ascetLink: (recoveredBlock41Stack4).
            recoveredBlock41PC := 115.
        ].
        recoveredBlock41Step = 115 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) ascetLink: (recoveredBlock41Stack3).
            recoveredBlock41PC := 117.
        ].
        recoveredBlock41Step = 117 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) addIssue: (recoveredBlock41Stack2).
            recoveredBlock41PC := 119.
        ].
        recoveredBlock41Step = 119 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := 'V6.2.0'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasMethods.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := [:recoveredBlock143Arg1 | 
    | recoveredBlock143Stack0 recoveredBlock143Stack1 recoveredBlock143Stack2 recoveredBlock143Stack3 recoveredBlock143Stack4 recoveredBlock143Stack5 recoveredBlock143Stack6 recoveredBlock143PC recoveredBlock143Step recoveredBlock143Done recoveredBlock143Result |
    recoveredBlock143Stack0 := self.
    recoveredBlock143PC := 150.
    recoveredBlock143Done := false.
    [recoveredBlock143Done not] whileTrue: [
        recoveredBlock143Step := recoveredBlock143PC.
        recoveredBlock143Step = 150 ifTrue: [
            recoveredBlock143Stack1 := nil.
            recoveredBlock143PC := 151.
        ].
        recoveredBlock143Step = 151 ifTrue: [
            recoveredBlock143Stack2 := recoveredBlock143Arg1.
            recoveredBlock143PC := 152.
        ].
        recoveredBlock143Step = 152 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) isLocal.
            recoveredBlock143PC := 154.
        ].
        recoveredBlock143Step = 154 ifTrue: [
            (recoveredBlock143Stack2) ifTrue: [recoveredBlock143PC := 164] ifFalse: [recoveredBlock143PC := 158].
        ].
        recoveredBlock143Step = 158 ifTrue: [
            recoveredBlock143Stack2 := recoveredBlock143Arg1.
            recoveredBlock143PC := 159.
        ].
        recoveredBlock143Step = 159 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) isReturn.
            recoveredBlock143PC := 161.
        ].
        recoveredBlock143Step = 161 ifTrue: [
            (recoveredBlock143Stack2) ifTrue: [recoveredBlock143PC := 164] ifFalse: [recoveredBlock143PC := 223].
        ].
        recoveredBlock143Step = 164 ifTrue: [
            recoveredBlock143PC := 165.
        ].
        recoveredBlock143Step = 165 ifTrue: [
            recoveredBlock143Stack1 := nil.
            recoveredBlock143PC := 166.
        ].
        recoveredBlock143Step = 166 ifTrue: [
            recoveredBlock143Stack2 := recoveredBlock143Arg1.
            recoveredBlock143PC := 167.
        ].
        recoveredBlock143Step = 167 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) isRead.
            recoveredBlock143PC := 169.
        ].
        recoveredBlock143Step = 169 ifTrue: [
            (recoveredBlock143Stack2) ifTrue: [recoveredBlock143PC := 172] ifFalse: [recoveredBlock143PC := 178].
        ].
        recoveredBlock143Step = 172 ifTrue: [
            recoveredBlock143Stack2 := recoveredBlock143Arg1.
            recoveredBlock143PC := 173.
        ].
        recoveredBlock143Step = 173 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) isWrite.
            recoveredBlock143PC := 175.
        ].
        recoveredBlock143Step = 175 ifTrue: [
            (recoveredBlock143Stack2) ifTrue: [recoveredBlock143PC := 223] ifFalse: [recoveredBlock143PC := 178].
        ].
        recoveredBlock143Step = 178 ifTrue: [
            recoveredBlock143PC := 179.
        ].
        recoveredBlock143Step = 179 ifTrue: [
            recoveredBlock143Stack1 := SGMonitorStreamDummy.
            recoveredBlock143PC := 181.
        ].
        recoveredBlock143Step = 181 ifTrue: [
            recoveredBlock143Stack1 := (recoveredBlock143Stack1) create.
            recoveredBlock143PC := 183.
        ].
        recoveredBlock143Step = 183 ifTrue: [
            recoveredBlock143Stack2 := 'Incompatible value: Element %1 has incompatible read/write properties and may cause undetected invalid memory access when used in %2.'.
            recoveredBlock143PC := 185.
        ].
        recoveredBlock143Step = 185 ifTrue: [
            recoveredBlock143Stack3 := recoveredBlock143Arg1.
            recoveredBlock143PC := 186.
        ].
        recoveredBlock143Step = 186 ifTrue: [
            recoveredBlock143Stack4 := nil.
            recoveredBlock143PC := 187.
        ].
        recoveredBlock143Step = 187 ifTrue: [
            recoveredBlock143Stack3 := (recoveredBlock143Stack3) ascetLink: (recoveredBlock143Stack4).
            recoveredBlock143PC := 189.
        ].
        recoveredBlock143Step = 189 ifTrue: [
            recoveredBlock143Stack4 := recoveredLocal2.
            recoveredBlock143PC := 192.
        ].
        recoveredBlock143Step = 192 ifTrue: [
            recoveredBlock143Stack4 := (recoveredBlock143Stack4) asString.
            recoveredBlock143PC := 194.
        ].
        recoveredBlock143Step = 194 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) bindWith: (recoveredBlock143Stack3) with: (recoveredBlock143Stack4).
            recoveredBlock143PC := 196.
        ].
        recoveredBlock143Step = 196 ifTrue: [
            (recoveredBlock143Stack1) addErrorText: (recoveredBlock143Stack2).
            recoveredBlock143PC := 198.
        ].
        recoveredBlock143Step = 198 ifTrue: [
            recoveredBlock143Stack1 := self.
            recoveredBlock143PC := 199.
        ].
        recoveredBlock143Step = 199 ifTrue: [
            recoveredBlock143Stack2 := ASDXMLExportIssueIncompatibleValue.
            recoveredBlock143PC := 201.
        ].
        recoveredBlock143Step = 201 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) new.
            recoveredBlock143PC := 203.
        ].
        recoveredBlock143Step = 203 ifTrue: [
            recoveredBlock143Stack3 := recoveredBlock143Stack2.
            recoveredBlock143PC := 204.
        ].
        recoveredBlock143Step = 204 ifTrue: [
            recoveredBlock143Stack4 := recoveredArg1.
            recoveredBlock143PC := 207.
        ].
        recoveredBlock143Step = 207 ifTrue: [
            recoveredBlock143Stack5 := false.
            recoveredBlock143PC := 208.
        ].
        recoveredBlock143Step = 208 ifTrue: [
            (recoveredBlock143Stack3) initOn: (recoveredBlock143Stack4) isError: (recoveredBlock143Stack5).
            recoveredBlock143Stack3 := recoveredBlock143Stack2.
            recoveredBlock143PC := 211.
        ].
        recoveredBlock143Step = 211 ifTrue: [
            recoveredBlock143Stack4 := 'Element has incompatible read/write properties'.
            recoveredBlock143PC := 213.
        ].
        recoveredBlock143Step = 213 ifTrue: [
            (recoveredBlock143Stack3) errorDescription: (recoveredBlock143Stack4).
            recoveredBlock143PC := 215.
        ].
        recoveredBlock143Step = 215 ifTrue: [
            recoveredBlock143Stack3 := recoveredBlock143Arg1.
            recoveredBlock143PC := 216.
        ].
        recoveredBlock143Step = 216 ifTrue: [
            recoveredBlock143Stack4 := nil.
            recoveredBlock143PC := 217.
        ].
        recoveredBlock143Step = 217 ifTrue: [
            recoveredBlock143Stack3 := (recoveredBlock143Stack3) ascetLink: (recoveredBlock143Stack4).
            recoveredBlock143PC := 219.
        ].
        recoveredBlock143Step = 219 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) ascetLink: (recoveredBlock143Stack3).
            recoveredBlock143PC := 221.
        ].
        recoveredBlock143Step = 221 ifTrue: [
            recoveredBlock143Stack1 := (recoveredBlock143Stack1) addIssue: (recoveredBlock143Stack2).
            recoveredBlock143PC := 223.
        ].
        recoveredBlock143Step = 223 ifTrue: [
            recoveredBlock143Result := recoveredBlock143Stack1.
            recoveredBlock143Done := true.
        ].
    ].
    recoveredBlock143Result
].
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) allMethodElementsDo: (recoveredStack1).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := 'V6.2.0'.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 374].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAtomicSoftwareComponent.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 374].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) specifications.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := [:recoveredBlock249Arg1 | 
    | recoveredBlock249Stack0 recoveredBlock249Stack1 recoveredBlock249Stack2 recoveredBlock249Stack3 recoveredBlock249PC recoveredBlock249Step recoveredBlock249Done recoveredBlock249Result |
    recoveredBlock249Stack0 := self.
    recoveredBlock249PC := 256.
    recoveredBlock249Done := false.
    [recoveredBlock249Done not] whileTrue: [
        recoveredBlock249Step := recoveredBlock249PC.
        recoveredBlock249Step = 256 ifTrue: [
            recoveredBlock249Stack1 := recoveredBlock249Arg1.
            recoveredBlock249PC := 257.
        ].
        recoveredBlock249Step = 257 ifTrue: [
            recoveredBlock249Stack1 := (recoveredBlock249Stack1) sourceKey.
            recoveredBlock249PC := 259.
        ].
        recoveredBlock249Step = 259 ifTrue: [
            recoveredBlock249Stack2 := [:block2811a6c4Arg1 | 
    nil
].
            recoveredBlock249PC := 261.
        ].
        recoveredBlock249Step = 261 ifTrue: [
            recoveredBlock249PC := 266.
        ].
        recoveredBlock249Step = 266 ifTrue: [
            recoveredBlock249Stack1 := (recoveredBlock249Stack1) getObjectIfUndefined: (recoveredBlock249Stack2).
            recoveredBlock249PC := 268.
        ].
        recoveredBlock249Step = 268 ifTrue: [
            recoveredBlock249Stack2 := [:recoveredBlock249Block268Arg1 | 
    | recoveredBlock249Block268Value0 recoveredBlock249Block268Value1 recoveredBlock249Block268Value2 recoveredBlock249Block268Value3 |
    recoveredBlock249Block268Value0 := recoveredBlock249Block268Arg1.
    recoveredBlock249Block268Value1 := (recoveredBlock249Block268Value0) blocks.
    recoveredBlock249Block268Value2 := [:recoveredBlock249Block268Block277Arg1 | 
    | recoveredBlock249Block268Block277Stack0 recoveredBlock249Block268Block277Stack1 recoveredBlock249Block268Block277Stack2 recoveredBlock249Block268Block277Stack3 recoveredBlock249Block268Block277Stack4 recoveredBlock249Block268Block277Stack5 recoveredBlock249Block268Block277Stack6 recoveredBlock249Block268Block277PC recoveredBlock249Block268Block277Step recoveredBlock249Block268Block277Done recoveredBlock249Block268Block277Result |
    recoveredBlock249Block268Block277Stack0 := self.
    recoveredBlock249Block268Block277PC := 284.
    recoveredBlock249Block268Block277Done := false.
    [recoveredBlock249Block268Block277Done not] whileTrue: [
        recoveredBlock249Block268Block277Step := recoveredBlock249Block268Block277PC.
        recoveredBlock249Block268Block277Step = 284 ifTrue: [
            recoveredBlock249Block268Block277Stack1 := nil.
            recoveredBlock249Block268Block277PC := 285.
        ].
        recoveredBlock249Block268Block277Step = 285 ifTrue: [
            recoveredBlock249Block268Block277Stack2 := recoveredBlock249Block268Block277Arg1.
            recoveredBlock249Block268Block277PC := 286.
        ].
        recoveredBlock249Block268Block277Step = 286 ifTrue: [
            recoveredBlock249Block268Block277Stack3 := SGControlGODB.
            recoveredBlock249Block268Block277PC := 288.
        ].
        recoveredBlock249Block268Block277Step = 288 ifTrue: [
            recoveredBlock249Block268Block277Stack2 := (recoveredBlock249Block268Block277Stack2) isKindOf: (recoveredBlock249Block268Block277Stack3).
            recoveredBlock249Block268Block277PC := 290.
        ].
        recoveredBlock249Block268Block277Step = 290 ifTrue: [
            (recoveredBlock249Block268Block277Stack2) ifTrue: [recoveredBlock249Block268Block277PC := 294] ifFalse: [recoveredBlock249Block268Block277PC := 365].
        ].
        recoveredBlock249Block268Block277Step = 294 ifTrue: [
            recoveredBlock249Block268Block277PC := 295.
        ].
        recoveredBlock249Block268Block277Step = 295 ifTrue: [
            recoveredBlock249Block268Block277Stack1 := nil.
            recoveredBlock249Block268Block277PC := 296.
        ].
        recoveredBlock249Block268Block277Step = 296 ifTrue: [
            recoveredBlock249Block268Block277Stack2 := recoveredBlock249Block268Block277Arg1.
            recoveredBlock249Block268Block277PC := 297.
        ].
        recoveredBlock249Block268Block277Step = 297 ifTrue: [
            recoveredBlock249Block268Block277Stack2 := (recoveredBlock249Block268Block277Stack2) controlGOSymbol.
            recoveredBlock249Block268Block277PC := 299.
        ].
        recoveredBlock249Block268Block277Step = 299 ifTrue: [
            recoveredBlock249Block268Block277Stack3 := 'ASDAccessOpGO'.
            recoveredBlock249Block268Block277PC := 301.
        ].
        recoveredBlock249Block268Block277Step = 301 ifTrue: [
            recoveredBlock249Block268Block277Stack2 := (recoveredBlock249Block268Block277Stack2) = (recoveredBlock249Block268Block277Stack3).
            recoveredBlock249Block268Block277PC := 302.
        ].
        recoveredBlock249Block268Block277Step = 302 ifTrue: [
            (recoveredBlock249Block268Block277Stack2) ifTrue: [recoveredBlock249Block268Block277PC := 306] ifFalse: [recoveredBlock249Block268Block277PC := 365].
        ].
        recoveredBlock249Block268Block277Step = 306 ifTrue: [
            recoveredBlock249Block268Block277PC := 307.
        ].
        recoveredBlock249Block268Block277Step = 307 ifTrue: [
            recoveredBlock249Block268Block277Stack1 := recoveredBlock249Block268Block277Arg1.
            recoveredBlock249Block268Block277PC := 308.
        ].
        recoveredBlock249Block268Block277Step = 308 ifTrue: [
            recoveredBlock249Block268Block277Stack1 := (recoveredBlock249Block268Block277Stack1) hasTempVar.
            recoveredBlock249Block268Block277PC := 310.
        ].
        recoveredBlock249Block268Block277Step = 310 ifTrue: [
            (recoveredBlock249Block268Block277Stack1) ifTrue: [recoveredBlock249Block268Block277PC := 314] ifFalse: [recoveredBlock249Block268Block277PC := 328].
        ].
        recoveredBlock249Block268Block277Step = 314 ifTrue: [
            recoveredBlock249Block268Block277Stack1 := SGMonitorStreamDummy.
            recoveredBlock249Block268Block277PC := 316.
        ].
        recoveredBlock249Block268Block277Step = 316 ifTrue: [
            recoveredBlock249Block268Block277Stack1 := (recoveredBlock249Block268Block277Stack1) create.
            recoveredBlock249Block268Block277PC := 318.
        ].
        recoveredBlock249Block268Block277Step = 318 ifTrue: [
            recoveredBlock249Block268Block277Stack2 := 'RTE Access Operator with tempVar only supported with ASCET V6.2.0 or higher. (%1)'.
            recoveredBlock249Block268Block277PC := 320.
        ].
        recoveredBlock249Block268Block277Step = 320 ifTrue: [
            recoveredBlock249Block268Block277Stack3 := recoveredBlock249Block268Block277Arg1.
            recoveredBlock249Block268Block277PC := 321.
        ].
        recoveredBlock249Block268Block277Step = 321 ifTrue: [
            recoveredBlock249Block268Block277Stack4 := nil.
            recoveredBlock249Block268Block277PC := 322.
        ].
        recoveredBlock249Block268Block277Step = 322 ifTrue: [
            recoveredBlock249Block268Block277Stack3 := (recoveredBlock249Block268Block277Stack3) ascetLink: (recoveredBlock249Block268Block277Stack4).
            recoveredBlock249Block268Block277PC := 324.
        ].
        recoveredBlock249Block268Block277Step = 324 ifTrue: [
            recoveredBlock249Block268Block277Stack2 := (recoveredBlock249Block268Block277Stack2) bindWith: (recoveredBlock249Block268Block277Stack3).
            recoveredBlock249Block268Block277PC := 326.
        ].
        recoveredBlock249Block268Block277Step = 326 ifTrue: [
            (recoveredBlock249Block268Block277Stack1) addWarningText: (recoveredBlock249Block268Block277Stack2).
            recoveredBlock249Block268Block277PC := 328.
        ].
        recoveredBlock249Block268Block277Step = 328 ifTrue: [
            recoveredBlock249Block268Block277Stack1 := self.
            recoveredBlock249Block268Block277PC := 329.
        ].
        recoveredBlock249Block268Block277Step = 329 ifTrue: [
            recoveredBlock249Block268Block277Stack2 := ASDXMLExportIssueIncompatibleValue.
            recoveredBlock249Block268Block277PC := 331.
        ].
        recoveredBlock249Block268Block277Step = 331 ifTrue: [
            recoveredBlock249Block268Block277Stack2 := (recoveredBlock249Block268Block277Stack2) new.
            recoveredBlock249Block268Block277PC := 333.
        ].
        recoveredBlock249Block268Block277Step = 333 ifTrue: [
            recoveredBlock249Block268Block277Stack3 := recoveredBlock249Block268Block277Stack2.
            recoveredBlock249Block268Block277PC := 334.
        ].
        recoveredBlock249Block268Block277Step = 334 ifTrue: [
            recoveredBlock249Block268Block277Stack4 := recoveredArg1.
            recoveredBlock249Block268Block277PC := 337.
        ].
        recoveredBlock249Block268Block277Step = 337 ifTrue: [
            recoveredBlock249Block268Block277Stack5 := false.
            recoveredBlock249Block268Block277PC := 338.
        ].
        recoveredBlock249Block268Block277Step = 338 ifTrue: [
            (recoveredBlock249Block268Block277Stack3) initOn: (recoveredBlock249Block268Block277Stack4) isError: (recoveredBlock249Block268Block277Stack5).
            recoveredBlock249Block268Block277Stack3 := recoveredBlock249Block268Block277Stack2.
            recoveredBlock249Block268Block277PC := 341.
        ].
        recoveredBlock249Block268Block277Step = 341 ifTrue: [
            recoveredBlock249Block268Block277Stack4 := 'RTE Access Operator has tempVar specified'.
            recoveredBlock249Block268Block277PC := 343.
        ].
        recoveredBlock249Block268Block277Step = 343 ifTrue: [
            (recoveredBlock249Block268Block277Stack3) errorDescription: (recoveredBlock249Block268Block277Stack4).
            recoveredBlock249Block268Block277Stack3 := recoveredBlock249Block268Block277Stack2.
            recoveredBlock249Block268Block277PC := 346.
        ].
        recoveredBlock249Block268Block277Step = 346 ifTrue: [
            recoveredBlock249Block268Block277Stack4 := 'The tempVar property will be removed. Note: This will lead to different code in %1'.
            recoveredBlock249Block268Block277PC := 348.
        ].
        recoveredBlock249Block268Block277Step = 348 ifTrue: [
            recoveredBlock249Block268Block277Stack5 := recoveredLocal2.
            recoveredBlock249Block268Block277PC := 351.
        ].
        recoveredBlock249Block268Block277Step = 351 ifTrue: [
            recoveredBlock249Block268Block277Stack5 := (recoveredBlock249Block268Block277Stack5) asString.
            recoveredBlock249Block268Block277PC := 353.
        ].
        recoveredBlock249Block268Block277Step = 353 ifTrue: [
            recoveredBlock249Block268Block277Stack4 := (recoveredBlock249Block268Block277Stack4) bindWith: (recoveredBlock249Block268Block277Stack5).
            recoveredBlock249Block268Block277PC := 355.
        ].
        recoveredBlock249Block268Block277Step = 355 ifTrue: [
            (recoveredBlock249Block268Block277Stack3) description: (recoveredBlock249Block268Block277Stack4).
            recoveredBlock249Block268Block277PC := 357.
        ].
        recoveredBlock249Block268Block277Step = 357 ifTrue: [
            recoveredBlock249Block268Block277Stack3 := recoveredBlock249Block268Block277Arg1.
            recoveredBlock249Block268Block277PC := 358.
        ].
        recoveredBlock249Block268Block277Step = 358 ifTrue: [
            recoveredBlock249Block268Block277Stack4 := nil.
            recoveredBlock249Block268Block277PC := 359.
        ].
        recoveredBlock249Block268Block277Step = 359 ifTrue: [
            recoveredBlock249Block268Block277Stack3 := (recoveredBlock249Block268Block277Stack3) ascetLink: (recoveredBlock249Block268Block277Stack4).
            recoveredBlock249Block268Block277PC := 361.
        ].
        recoveredBlock249Block268Block277Step = 361 ifTrue: [
            recoveredBlock249Block268Block277Stack2 := (recoveredBlock249Block268Block277Stack2) ascetLink: (recoveredBlock249Block268Block277Stack3).
            recoveredBlock249Block268Block277PC := 363.
        ].
        recoveredBlock249Block268Block277Step = 363 ifTrue: [
            recoveredBlock249Block268Block277Stack1 := (recoveredBlock249Block268Block277Stack1) addIssue: (recoveredBlock249Block268Block277Stack2).
            recoveredBlock249Block268Block277PC := 365.
        ].
        recoveredBlock249Block268Block277Step = 365 ifTrue: [
            recoveredBlock249Block268Block277Result := recoveredBlock249Block268Block277Stack1.
            recoveredBlock249Block268Block277Done := true.
        ].
    ].
    recoveredBlock249Block268Block277Result
].
    recoveredBlock249Block268Value3 := (recoveredBlock249Block268Value1) do: (recoveredBlock249Block268Value2).
    recoveredBlock249Block268Value3
].
            recoveredBlock249PC := 369.
        ].
        recoveredBlock249Step = 369 ifTrue: [
            recoveredBlock249Stack1 := (recoveredBlock249Stack1) ifNotNil: (recoveredBlock249Stack2).
            recoveredBlock249PC := 371.
        ].
        recoveredBlock249Step = 371 ifTrue: [
            recoveredBlock249Result := recoveredBlock249Stack1.
            recoveredBlock249Done := true.
        ].
    ].
    recoveredBlock249Result
].
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


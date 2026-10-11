"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200658ac; bytecode file offset 0x963428"
!SGLinkSourceCollector methodsFor: 'recovered'!
toBeLinkedSOsTable
    | recoveredValue0 |
    recoveredValue0 := toBeLinkedSOsTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067d0c; bytecode file offset 0x9646f8"
!SGLinkSourceCollector methodsFor: 'recovered'!
requiresLinking
    | recoveredValue0 |
    recoveredValue0 := requiresLinking.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200683e4; bytecode file offset 0x965b90"
!SGLinkSourceCollector methodsFor: 'recovered'!
useCGen
    | recoveredValue0 |
    recoveredValue0 := useCGen.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200697c0; bytecode file offset 0x966bdc"
!SGLinkSourceCollector methodsFor: 'recovered'!
loadableTimeStamp
    | recoveredValue0 |
    recoveredValue0 := loadableTimeStamp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200847ec; bytecode file offset 0x981ca4"
!SGLinkSourceCollector methodsFor: 'recovered'!
anyMakeNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) visitMakeNode: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200be75c; bytecode file offset 0x9bb178"
!SGLinkSourceCollector methodsFor: 'recovered'!
toBeLinkedSOsTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    toBeLinkedSOsTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bec38; bytecode file offset 0x9bc0b4"
!SGLinkSourceCollector methodsFor: 'recovered'!
requiresLinking: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    requiresLinking := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0894; bytecode file offset 0x9bd228"
!SGLinkSourceCollector methodsFor: 'recovered'!
useCGen: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    useCGen := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0b60; bytecode file offset 0x9bdf14"
!SGLinkSourceCollector methodsFor: 'recovered'!
loadableTimeStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    loadableTimeStamp := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d8ad4; bytecode file offset 0x9d53a0"
!SGLinkSourceCollector methodsFor: 'recovered'!
makeComponentNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) toBeLinkedExternalSOs: (self).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) toBeLinkedAdditionalFiles: (self).
    ^self
! !

"ASDBase.ic method 0x20142a78; bytecode file offset 0xa3f334"
!SGLinkSourceCollector methodsFor: 'recovered'!
checkTimeStamp: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := requiresLinking.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) applicationTimeStamp.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) loadableTimeStamp.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            requiresLinking := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201622c4; bytecode file offset 0xa5eb88"
!SGLinkSourceCollector methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    toBeLinkedSOsTable := recoveredValue1.
    requiresLinking := false.
    useCGen := false.
    ^self
! !

"ASDBase.ic method 0x201e7ccc; bytecode file offset 0xae4598"
!SGLinkSourceCollector methodsFor: 'recovered'!
makeModuleNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super makeModuleNode: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsUsefulCode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isComponentNotInstantiated.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) moduleCodeStorageHandle.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) addModuleCodeHandle: (recoveredStack1) makeNode: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20224ff4; bytecode file offset 0xb218c8"
!SGLinkSourceCollector methodsFor: 'recovered'!
toBeLinkedSOs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresLinking.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBeLinkedSOsTable.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280dc1f4Arg1 :block280dc1f4Arg2 | 
    | block280dc1f4Value0 block280dc1f4Value1 block280dc1f4Value2 block280dc1f4Value3 block280dc1f4Value4 |
    block280dc1f4Value0 := block280dc1f4Arg1.
    block280dc1f4Value1 := (block280dc1f4Value0) description.
    block280dc1f4Value2 := block280dc1f4Arg2.
    block280dc1f4Value3 := (block280dc1f4Value2) description.
    block280dc1f4Value4 := (block280dc1f4Value1) <= (block280dc1f4Value3).
    block280dc1f4Value4
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023e754; bytecode file offset 0xb3b024"
!SGLinkSourceCollector methodsFor: 'recovered'!
makeRecordNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsUsefulCode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasGenericCode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) moduleCodeStorageHandle.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) addModuleCodeHandle: (recoveredStack2) makeNode: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComponentNotInstantiated.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) initCodeStorageHandle.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) addInitCodeHandle: (recoveredStack2) makeNode: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20261dc0; bytecode file offset 0xb5e698"
!SGLinkSourceCollector methodsFor: 'recovered'!
makeProjectNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super makeProjectNode: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) genOSConfiguration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) osCodeStorageHandle.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) addOSCodeHandle: (recoveredStack1) makeNode: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) genPIDCode.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) pidCodeStorageHandle.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) addPIDCodeHandle: (recoveredStack1) makeNode: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20277614; bytecode file offset 0xb73eec"
!SGLinkSourceCollector methodsFor: 'recovered'!
makeClassNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super makeClassNode: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsUsefulCode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) moduleCodeStorageHandle.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) addModuleCodeHandle: (recoveredStack1) makeNode: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasGenericCode.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMissingDataConfig.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) initCodeStorageHandle.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) addInitCodeHandle: (recoveredStack1) makeNode: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030deac; bytecode file offset 0xc0a784"
!SGLinkSourceCollector methodsFor: 'recovered'!
addExternCodeHandle: recoveredArg1 oSource: recoveredArg2 useCGen: recoveredArg3 makeNode: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) checkTimeStamp: (recoveredValue0).
    recoveredValue1 := (self) toBeLinkedSOsTable.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 recoveredBlock14Value8 recoveredBlock14Value9 recoveredBlock14Value10 |
    recoveredBlock14Value0 := recoveredArg4.
    (recoveredBlock14Value0) checkPermissionToLink.
    recoveredBlock14Value1 := TGCompilingSourceObject.
    recoveredBlock14Value2 := recoveredArg4.
    recoveredBlock14Value3 := (recoveredBlock14Value2) externFileName.
    recoveredBlock14Value4 := recoveredArg4.
    recoveredBlock14Value5 := (recoveredBlock14Value4) externDescription.
    recoveredBlock14Value6 := recoveredArg2.
    recoveredBlock14Value7 := recoveredArg4.
    recoveredBlock14Value8 := (recoveredBlock14Value7) makeExternalSource.
    recoveredBlock14Value9 := recoveredArg3.
    recoveredBlock14Value10 := (recoveredBlock14Value1) fileName: (recoveredBlock14Value3) description: (recoveredBlock14Value5) oSource: (recoveredBlock14Value6) userReference: (recoveredBlock14Value8) useCGen: (recoveredBlock14Value9).
    recoveredBlock14Value10
].
    (recoveredValue1) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20347c00; bytecode file offset 0xc444dc"
!SGLinkSourceCollector methodsFor: 'recovered'!
addAdditionalFilesHandle: recoveredArg1 makeNode: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg2.
    (recoveredValue0) checkPermissionToLink.
    recoveredValue1 := recoveredArg1.
    (self) checkTimeStamp: (recoveredValue1).
    recoveredValue2 := (self) toBeLinkedSOsTable.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 |
    recoveredBlock19Value0 := SGAdditionalFileSource.
    recoveredBlock19Value1 := recoveredArg2.
    recoveredBlock19Value2 := (recoveredBlock19Value1) moduleFileName.
    recoveredBlock19Value3 := recoveredArg2.
    recoveredBlock19Value4 := (recoveredBlock19Value3) additionalFilesDescription.
    recoveredBlock19Value5 := recoveredArg2.
    recoveredBlock19Value6 := (recoveredBlock19Value5) makeAdditionalFileSource.
    recoveredBlock19Value7 := (recoveredBlock19Value0) fileName: (recoveredBlock19Value2) description: (recoveredBlock19Value4) userReference: (recoveredBlock19Value6) sourceCollector: (self).
    recoveredBlock19Value7
].
    recoveredValue5 := (recoveredValue2) at: (recoveredValue3) ifAbsentPut: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) oSource: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20369b38; bytecode file offset 0xc66454"
!SGLinkSourceCollector methodsFor: 'recovered'!
addPIDCodeHandle: recoveredArg1 makeNode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) checkTimeStamp: (recoveredValue0).
    recoveredValue1 := (self) toBeLinkedSOsTable.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14Stack6 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg2.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            (recoveredBlock14Stack1) checkPermissionToLink.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack1 := TGCompilingSourceObject.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg2.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) pidFileNameNoExtension.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) pidDescription.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack4 := self.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) useCGen.
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            (recoveredBlock14Stack4) ifTrue: [recoveredBlock14PC := 44] ifFalse: [recoveredBlock14PC := 48].
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack4 := nil.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Stack4 := TGSourceHandle.
            recoveredBlock14PC := 50.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack5 := recoveredArg1.
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) create: (recoveredBlock14Stack5).
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Stack5 := recoveredArg2.
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Stack5 := (recoveredBlock14Stack5) makePIDSource.
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) fileName: (recoveredBlock14Stack2) description: (recoveredBlock14Stack3) oSource: (recoveredBlock14Stack4) userReference: (recoveredBlock14Stack5).
            recoveredBlock14PC := 63.
        ].
        recoveredBlock14Step = 63 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue1) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20369b70; bytecode file offset 0xc66454"
!SGLinkSourceCollector methodsFor: 'recovered'!
addInitCodeHandle: recoveredArg1 makeNode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) checkTimeStamp: (recoveredValue0).
    recoveredValue1 := (self) toBeLinkedSOsTable.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14Stack6 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg2.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            (recoveredBlock14Stack1) checkPermissionToLink.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack1 := TGCompilingSourceObject.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg2.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) initFileName.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) initInstDescription.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack4 := self.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) useCGen.
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            (recoveredBlock14Stack4) ifTrue: [recoveredBlock14PC := 44] ifFalse: [recoveredBlock14PC := 48].
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack4 := nil.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Stack4 := TGSourceHandle.
            recoveredBlock14PC := 50.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack5 := recoveredArg1.
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) create: (recoveredBlock14Stack5).
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Stack5 := recoveredArg2.
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Stack5 := (recoveredBlock14Stack5) makeInitSource.
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) fileName: (recoveredBlock14Stack2) description: (recoveredBlock14Stack3) oSource: (recoveredBlock14Stack4) userReference: (recoveredBlock14Stack5).
            recoveredBlock14PC := 63.
        ].
        recoveredBlock14Step = 63 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue1) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x203b54a8; bytecode file offset 0xcb1ddc"
!SGLinkSourceCollector methodsFor: 'recovered'!
addOSCodeHandle: recoveredArg1 makeNode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) checkTimeStamp: (recoveredValue0).
    recoveredValue1 := (self) toBeLinkedSOsTable.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14Stack6 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg2.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            (recoveredBlock14Stack1) checkPermissionToLink.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack1 := 'Rl'.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack2 := 'Call_73303'.
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) == (recoveredBlock14Stack2).
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack1 := TGCompilingSourceObject.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg2.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) osFilename.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) osDescription.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack4 := self.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) useCGen.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            (recoveredBlock14Stack4) ifTrue: [recoveredBlock14PC := 50] ifFalse: [recoveredBlock14PC := 54].
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack4 := nil.
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14PC := 61.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Stack4 := TGSourceHandle.
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack5 := recoveredArg1.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) create: (recoveredBlock14Stack5).
            recoveredBlock14PC := 61.
        ].
        recoveredBlock14Step = 61 ifTrue: [
            recoveredBlock14Stack5 := recoveredArg2.
            recoveredBlock14PC := 64.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack5 := (recoveredBlock14Stack5) makeOSSource.
            recoveredBlock14PC := 66.
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) fileName: (recoveredBlock14Stack2) description: (recoveredBlock14Stack3) oSource: (recoveredBlock14Stack4) userReference: (recoveredBlock14Stack5).
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 70.
        ].
        recoveredBlock14Step = 70 ifTrue: [
            recoveredBlock14Stack3 := self.
            recoveredBlock14PC := 71.
        ].
        recoveredBlock14Step = 71 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) useCGen.
            recoveredBlock14PC := 73.
        ].
        recoveredBlock14Step = 73 ifTrue: [
            (recoveredBlock14Stack2) useCGen: (recoveredBlock14Stack3).
            recoveredBlock14PC := 75.
        ].
        recoveredBlock14Step = 75 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue1) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x203b54ec; bytecode file offset 0xcb1ddc"
!SGLinkSourceCollector methodsFor: 'recovered'!
addModuleCodeHandle: recoveredArg1 makeNode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) checkTimeStamp: (recoveredValue0).
    recoveredValue1 := (self) toBeLinkedSOsTable.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14Stack6 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg2.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            (recoveredBlock14Stack1) checkPermissionToLink.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack1 := 'Rl'.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack2 := 'Call_73303'.
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) == (recoveredBlock14Stack2).
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack1 := TGCompilingSourceObject.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg2.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) moduleFileName.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) moduleDescription.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack4 := self.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) useCGen.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            (recoveredBlock14Stack4) ifTrue: [recoveredBlock14PC := 50] ifFalse: [recoveredBlock14PC := 54].
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack4 := nil.
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14PC := 61.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Stack4 := TGSourceHandle.
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack5 := recoveredArg1.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) create: (recoveredBlock14Stack5).
            recoveredBlock14PC := 61.
        ].
        recoveredBlock14Step = 61 ifTrue: [
            recoveredBlock14Stack5 := recoveredArg2.
            recoveredBlock14PC := 64.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack5 := (recoveredBlock14Stack5) makeModuleSource.
            recoveredBlock14PC := 66.
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) fileName: (recoveredBlock14Stack2) description: (recoveredBlock14Stack3) oSource: (recoveredBlock14Stack4) userReference: (recoveredBlock14Stack5).
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 70.
        ].
        recoveredBlock14Step = 70 ifTrue: [
            recoveredBlock14Stack3 := self.
            recoveredBlock14PC := 71.
        ].
        recoveredBlock14Step = 71 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) useCGen.
            recoveredBlock14PC := 73.
        ].
        recoveredBlock14Step = 73 ifTrue: [
            (recoveredBlock14Stack2) useCGen: (recoveredBlock14Stack3).
            recoveredBlock14PC := 75.
        ].
        recoveredBlock14Step = 75 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue1) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^self
! !


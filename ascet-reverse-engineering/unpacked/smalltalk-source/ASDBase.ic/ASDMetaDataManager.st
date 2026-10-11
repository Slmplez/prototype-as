"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004edc8; bytecode file offset 0x94d048"
!ASDMetaDataManager methodsFor: 'recovered'!
shutDown
    (self) removeCallbacksPersistenceController.
    ^self
! !

"ASDBase.ic method 0x2005301c; bytecode file offset 0x9505d0"
!ASDMetaDataManager methodsFor: 'recovered'!
eventCloseDataStorage: recoveredArg1
    (self) resetTables.
    ^self
! !

"ASDBase.ic method 0x200858c8; bytecode file offset 0x9821c4"
!ASDMetaDataManager methodsFor: 'recovered'!
createMetaDataForItem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) dbObject.
    recoveredValue2 := (recoveredValue1) globalId.
    recoveredValue3 := (self) createMetaDataForItemID: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009c554; bytecode file offset 0x998e50"
!ASDMetaDataManager methodsFor: 'recovered'!
removeCallbacksPersistenceController
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDCallbackManager.
    recoveredValue1 := (recoveredValue0) instance.
    (recoveredValue1) removeCallbacksFor: (self).
    ^self
! !

"ASDBase.ic method 0x2009e14c; bytecode file offset 0x99aa00"
!ASDMetaDataManager methodsFor: 'recovered'!
resetTables
    itemTable := nil.
    metaDataTable := nil.
    ^self
! !

"ASDBase.ic method 0x200a5b50; bytecode file offset 0x9a248c"
!ASDMetaDataManager methodsFor: 'recovered'!
getItemForIDString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) library.
    recoveredValue1 := (recoveredValue0) globalIdServer.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) fromAlphaNumString: (recoveredValue2).
    recoveredValue4 := (self) getItemForID: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a8460; bytecode file offset 0x9a4d3c"
!ASDMetaDataManager methodsFor: 'recovered'!
eventOpenDataStorage: recoveredArg1
    (self) resetTables.
    (self) initialize.
    ^self
! !

"ASDBase.ic method 0x200abe88; bytecode file offset 0x9a874c"
!ASDMetaDataManager methodsFor: 'recovered'!
getMetaDataForID: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) library.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) makeProxy: (recoveredValue1).
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue2) getObjectIfUndefined: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20128f50; bytecode file offset 0xa258cc"
!ASDMetaDataManager methodsFor: 'recovered'!
metaDataTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := metaDataTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            metaDataTable := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := metaDataTable.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129318; bytecode file offset 0xa25c54"
!ASDMetaDataManager methodsFor: 'recovered'!
itemTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := itemTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            itemTable := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := itemTable.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014ceb4; bytecode file offset 0xa4976c"
!ASDMetaDataManager methodsFor: 'recovered'!
checkInitializedTables
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := itemTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := metaDataTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) initialize.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20196624; bytecode file offset 0xa92ee4"
!ASDMetaDataManager methodsFor: 'recovered'!
getOrCreateMetaDataForItemID: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getMetaDataForItemID: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    ^recoveredBlock8Value0
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) createMetaDataForItemID: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201db270; bytecode file offset 0xad7b30"
!ASDMetaDataManager methodsFor: 'recovered'!
getItemForID: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeProxy: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    ^nil
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eb6e8; bytecode file offset 0xae7fb4"
!ASDMetaDataManager methodsFor: 'recovered'!
initializeCallbacksPersistenceController
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ASDPersistenceController.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := ASDCallbackManager.
    recoveredValue3 := (recoveredValue2) instance.
    recoveredValue4 := ASDDataStorageOpenCallback.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue3) addCallback: (recoveredValue4) receiver: (self) for: (recoveredValue5).
    recoveredValue6 := ASDCallbackManager.
    recoveredValue7 := (recoveredValue6) instance.
    recoveredValue8 := ASDDataStorageCloseCallback.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) for: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x20207c2c; bytecode file offset 0xb044ec"
!ASDMetaDataManager methodsFor: 'recovered'!
aboutToOverwriteItemID: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getMetaDataForItemID: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [
    ^nil
].
    (recoveredValue1) ifNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) aboutToOverwriteItem.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20211448; bytecode file offset 0xb0dd18"
!ASDMetaDataManager methodsFor: 'recovered'!
createMetaDataForCurrentDatabase
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGDatabaseAccess.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) allChildren.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) dbObject.
    recoveredBlock16Value2 := (recoveredBlock16Value1) globalId.
    recoveredBlock16Value3 := (self) getOrCreateMetaDataForItemID: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021423c; bytecode file offset 0xb10b08"
!ASDMetaDataManager methodsFor: 'recovered'!
getItemForMetaDataID: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) metaDataTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := DBProxy.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) createWithBytesInDefaultInterface: (recoveredValue5).
    recoveredValue7 := [].
    recoveredValue8 := (recoveredValue6) getObjectIfUndefined: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2022cac8; bytecode file offset 0xb2939c"
!ASDMetaDataManager methodsFor: 'recovered'!
createMetaDataForItemID: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) metaDataTable.
    recoveredValue1 := ASDMetaData.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) create: ('ASDMetaData') for: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (recoveredValue3) dbObject.
    recoveredValue6 := (recoveredValue5) globalId.
    recoveredValue7 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue6) put: (recoveredValue7).
    recoveredValue8 := (self) itemTable.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) dbObject.
    recoveredValue12 := (recoveredValue11) globalId.
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20294d58; bytecode file offset 0xb91630"
!ASDMetaDataManager methodsFor: 'recovered'!
clearMetaDataID: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMetaDataForID: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280e3034Arg1 | 
    | block280e3034Value0 block280e3034Value1 |
    block280e3034Value0 := block280e3034Arg1.
    block280e3034Value1 := (block280e3034Value0) delete.
    block280e3034Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) metaDataTable.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemTable.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) metaDataTable.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20300d74; bytecode file offset 0xbfd64c"
!ASDMetaDataManager methodsFor: 'recovered'!
clearMetaDataForItemID: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getMetaDataForItemID: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [
    ^nil
].
    (recoveredValue1) ifNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) delete.
    recoveredValue5 := (self) itemTable.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [].
    (recoveredValue5) removeKey: (recoveredValue6) ifAbsent: (recoveredValue7).
    recoveredValue8 := (self) metaDataTable.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) dbObject.
    recoveredValue11 := (recoveredValue10) globalId.
    recoveredValue12 := [].
    (recoveredValue8) removeKey: (recoveredValue11) ifAbsent: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20302988; bytecode file offset 0xbff25c"
!ASDMetaDataManager methodsFor: 'recovered'!
getMetaDataForItemID: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) itemTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (self) library.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue4) makeProxy: (recoveredValue5).
    recoveredValue7 := [].
    recoveredValue8 := (recoveredValue6) getObjectIfUndefined: (recoveredValue7).
    recoveredValue9 := recoveredValue8.
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 |
    recoveredBlock35Value0 := recoveredLocal2.
    recoveredBlock35Value1 := (self) clearMetaDataID: (recoveredBlock35Value0).
    recoveredBlock35Value1
].
    (recoveredValue8) ifNil: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x20338fec; bytecode file offset 0xc358b8"
!ASDMetaDataManager methodsFor: 'recovered'!
metaDataAsDictionaryOfObjects
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := (self) metaDataTable.
    recoveredValue3 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) getItemForID: (recoveredBlock11Stack1).
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredLocal2 := recoveredBlock11Stack0.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack0 := self.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) getItemForID: (recoveredBlock11Stack1).
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack0.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack0 := nil.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal2.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            (recoveredBlock11Stack1 == nil) ifTrue: [recoveredBlock11PC := 54] ifFalse: [recoveredBlock11PC := 36].
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            (recoveredBlock11Stack1 == nil) ifTrue: [recoveredBlock11PC := 54] ifFalse: [recoveredBlock11PC := 42].
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack0 := recoveredLocal3.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal2.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Stack2 := recoveredLocal1.
            recoveredBlock11PC := 52.
        ].
        recoveredBlock11Step = 52 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) at: (recoveredBlock11Stack1) put: (recoveredBlock11Stack2).
            recoveredBlock11PC := 54.
        ].
        recoveredBlock11Step = 54 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack0.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal3.
    ^recoveredValue4
! !

"ASDBase.ic method 0x204062c4; bytecode file offset 0xd02bb4"
!ASDMetaDataManager methodsFor: 'recovered'!
clearMetaData
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    (self) cleanUpMetaData.
    recoveredValue0 := (self) metaDataTable.
    recoveredValue1 := [:recoveredBlock8Arg1 :recoveredBlock8Arg2 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredBlock8Arg2.
    recoveredBlock8Value1 := (self) clearMetaDataForItemID: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    recoveredValue2 := SGDatabaseAccess.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := ASDMetaData.
    recoveredValue5 := (recoveredValue3) readExactClassKeys: (recoveredValue4).
    recoveredValue6 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 |
    (self) etasDevHalt.
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := (recoveredBlock27Value0) delete.
    recoveredBlock27Value1
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := SGDatabaseAccess.
    recoveredValue8 := (recoveredValue7) create.
    recoveredValue9 := Smalltalk.
    recoveredValue10 := (recoveredValue9) at: ('ASDSCMCurrentData').
    recoveredValue11 := (recoveredValue8) readExactClassKeys: (recoveredValue10).
    recoveredValue12 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 |
    (self) etasDevHalt.
    recoveredBlock54Value0 := recoveredBlock54Arg1.
    recoveredBlock54Value1 := (recoveredBlock54Value0) delete.
    recoveredBlock54Value1
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := SGDatabaseAccess.
    recoveredValue14 := (recoveredValue13) create.
    recoveredValue15 := Smalltalk.
    recoveredValue16 := (recoveredValue15) at: ('ASDSCMStoredData').
    recoveredValue17 := (recoveredValue14) readExactClassKeys: (recoveredValue16).
    recoveredValue18 := [:recoveredBlock80Arg1 | 
    | recoveredBlock80Value0 recoveredBlock80Value1 |
    (self) etasDevHalt.
    recoveredBlock80Value0 := recoveredBlock80Arg1.
    recoveredBlock80Value1 := (recoveredBlock80Value0) delete.
    recoveredBlock80Value1
].
    (recoveredValue17) do: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x204067b0; bytecode file offset 0xd03090"
!ASDMetaDataManager methodsFor: 'recovered'!
cleanUpMetaData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) metaDataTable.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg2.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) getItemForID: (recoveredBlock5Stack1).
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            (recoveredBlock5Stack0 ~~ nil) ifTrue: [recoveredBlock5PC := 58] ifFalse: [recoveredBlock5PC := 20].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) getMetaDataForID: (recoveredBlock5Stack1).
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := [:block280fa644Arg1 | 
    | block280fa644Value0 block280fa644Value1 |
    block280fa644Value0 := block280fa644Arg1.
    block280fa644Value1 := (block280fa644Value0) delete.
    block280fa644Value1
].
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            (recoveredBlock5Stack0) ifNotNil: (recoveredBlock5Stack1).
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) itemTable.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg2.
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack2 := [].
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            (recoveredBlock5Stack0) removeKey: (recoveredBlock5Stack1) ifAbsent: (recoveredBlock5Stack2).
            recoveredBlock5PC := 46.
        ].
        recoveredBlock5Step = 46 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) metaDataTable.
            recoveredBlock5PC := 48.
        ].
        recoveredBlock5Step = 48 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            recoveredBlock5Stack2 := [].
            recoveredBlock5PC := 53.
        ].
        recoveredBlock5Step = 53 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) removeKey: (recoveredBlock5Stack1) ifAbsent: (recoveredBlock5Stack2).
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5PC := 91.
        ].
        recoveredBlock5Step = 58 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 59.
        ].
        recoveredBlock5Step = 59 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 62.
        ].
        recoveredBlock5Step = 62 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) getMetaDataForID: (recoveredBlock5Stack1).
            recoveredBlock5PC := 63.
        ].
        recoveredBlock5Step = 63 ifTrue: [
            recoveredBlock5Stack1 := [
    | recoveredBlock5Block63Value0 recoveredBlock5Block63Value1 recoveredBlock5Block63Value2 recoveredBlock5Block63Value3 recoveredBlock5Block63Value4 recoveredBlock5Block63Value5 recoveredBlock5Block63Value6 |
    recoveredBlock5Block63Value0 := (self) itemTable.
    recoveredBlock5Block63Value1 := recoveredBlock5Arg2.
    recoveredBlock5Block63Value2 := [].
    (recoveredBlock5Block63Value0) removeKey: (recoveredBlock5Block63Value1) ifAbsent: (recoveredBlock5Block63Value2).
    recoveredBlock5Block63Value3 := (self) metaDataTable.
    recoveredBlock5Block63Value4 := recoveredBlock5Arg1.
    recoveredBlock5Block63Value5 := [].
    recoveredBlock5Block63Value6 := (recoveredBlock5Block63Value3) removeKey: (recoveredBlock5Block63Value4) ifAbsent: (recoveredBlock5Block63Value5).
    recoveredBlock5Block63Value6
].
            recoveredBlock5PC := 89.
        ].
        recoveredBlock5Step = 89 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) ifNil: (recoveredBlock5Stack1).
            recoveredBlock5PC := 91.
        ].
        recoveredBlock5Step = 91 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack0.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2040d058; bytecode file offset 0xd09930"
!ASDMetaDataManager methodsFor: 'recovered'!
removeFromManager: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isByteArray.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMetaDataForItemID: (recoveredStack2).
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
    ^nil
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComponentOrFolder.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalId.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMetaDataForItemID: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasSCMData.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) deleteSCMData.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) checkDelete.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20463178; bytecode file offset 0xd5fa70"
!ASDMetaDataManager methodsFor: 'recovered'!
integrityTest
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) metaDataTable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemTable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'MetaDataManagerError'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'MetaTableSize: '.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) metaDataTable.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := ' ItemTableSize: '.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) itemTable.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) metaDataTable.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:recoveredBlock54Arg1 :recoveredBlock54Arg2 | 
    | recoveredBlock54Stack0 recoveredBlock54Stack1 recoveredBlock54Stack2 recoveredBlock54Stack3 recoveredBlock54Stack4 recoveredBlock54Stack5 recoveredBlock54PC recoveredBlock54Step recoveredBlock54Done recoveredBlock54Result |
    recoveredBlock54Stack0 := self.
    recoveredBlock54PC := 60.
    recoveredBlock54Done := false.
    [recoveredBlock54Done not] whileTrue: [
        recoveredBlock54Step := recoveredBlock54PC.
        recoveredBlock54Step = 60 ifTrue: [
            recoveredBlock54Stack1 := nil.
            recoveredBlock54PC := 61.
        ].
        recoveredBlock54Step = 61 ifTrue: [
            recoveredBlock54Stack2 := self.
            recoveredBlock54PC := 62.
        ].
        recoveredBlock54Step = 62 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) itemTable.
            recoveredBlock54PC := 64.
        ].
        recoveredBlock54Step = 64 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Arg2.
            recoveredBlock54PC := 65.
        ].
        recoveredBlock54Step = 65 ifTrue: [
            recoveredBlock54Stack4 := [].
            recoveredBlock54PC := 67.
        ].
        recoveredBlock54Step = 67 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) at: (recoveredBlock54Stack3) ifAbsent: (recoveredBlock54Stack4).
            recoveredBlock54PC := 69.
        ].
        recoveredBlock54Step = 69 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Arg1.
            recoveredBlock54PC := 70.
        ].
        recoveredBlock54Step = 70 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) ~= (recoveredBlock54Stack3).
            recoveredBlock54PC := 71.
        ].
        recoveredBlock54Step = 71 ifTrue: [
            (recoveredBlock54Stack2) ifTrue: [recoveredBlock54PC := 74] ifFalse: [recoveredBlock54PC := 102].
        ].
        recoveredBlock54Step = 74 ifTrue: [
            recoveredBlock54PC := 75.
        ].
        recoveredBlock54Step = 75 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal1.
            recoveredBlock54PC := 78.
        ].
        recoveredBlock54Step = 78 ifTrue: [
            recoveredBlock54Stack2 := 'MetaDataManagerError'.
            recoveredBlock54PC := 80.
        ].
        recoveredBlock54Step = 80 ifTrue: [
            recoveredBlock54Stack3 := 'DifferentEntry at itemId: '.
            recoveredBlock54PC := 82.
        ].
        recoveredBlock54Step = 82 ifTrue: [
            recoveredBlock54Stack4 := recoveredBlock54Arg2.
            recoveredBlock54PC := 83.
        ].
        recoveredBlock54Step = 83 ifTrue: [
            recoveredBlock54Stack4 := (recoveredBlock54Stack4) asString.
            recoveredBlock54PC := 85.
        ].
        recoveredBlock54Step = 85 ifTrue: [
            recoveredBlock54Stack3 := (recoveredBlock54Stack3) , (recoveredBlock54Stack4).
            recoveredBlock54PC := 87.
        ].
        recoveredBlock54Step = 87 ifTrue: [
            recoveredBlock54Stack4 := ' metaDataId: '.
            recoveredBlock54PC := 89.
        ].
        recoveredBlock54Step = 89 ifTrue: [
            recoveredBlock54Stack3 := (recoveredBlock54Stack3) , (recoveredBlock54Stack4).
            recoveredBlock54PC := 91.
        ].
        recoveredBlock54Step = 91 ifTrue: [
            recoveredBlock54Stack4 := recoveredBlock54Arg1.
            recoveredBlock54PC := 92.
        ].
        recoveredBlock54Step = 92 ifTrue: [
            recoveredBlock54Stack4 := (recoveredBlock54Stack4) asString.
            recoveredBlock54PC := 94.
        ].
        recoveredBlock54Step = 94 ifTrue: [
            recoveredBlock54Stack3 := (recoveredBlock54Stack3) , (recoveredBlock54Stack4).
            recoveredBlock54PC := 96.
        ].
        recoveredBlock54Step = 96 ifTrue: [
            (recoveredBlock54Stack1) at: (recoveredBlock54Stack2) put: (recoveredBlock54Stack3).
            recoveredBlock54PC := 98.
        ].
        recoveredBlock54Step = 98 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal1.
            recoveredBlock54PC := 101.
        ].
        recoveredBlock54Step = 101 ifTrue: [
            ^recoveredBlock54Stack1
        ].
        recoveredBlock54Step = 102 ifTrue: [
            recoveredBlock54Result := recoveredBlock54Stack1.
            recoveredBlock54Done := true.
        ].
    ].
    recoveredBlock54Result
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := 'MetaDataManagerError'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a8f6c; bytecode file offset 0xea58b8"
!ASDMetaDataManager methodsFor: 'recovered'!
initialize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    super initialize.
    (self) itemTable.
    (self) metaDataTable.
    recoveredValue0 := CwAppContext.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 |
    recoveredBlock18Value0 := SGMonitorStreamDummy.
    recoveredBlock18Value1 := (recoveredBlock18Value0) create.
    recoveredBlock18Value2 := recoveredBlock18Value1.
    recoveredLocal1 := recoveredBlock18Value2.
    recoveredBlock18Value3 := [
    | recoveredBlock18Block32Local1 recoveredBlock18Block32Local2 recoveredBlock18Block32Stack0 recoveredBlock18Block32Stack1 recoveredBlock18Block32Stack2 recoveredBlock18Block32Stack3 recoveredBlock18Block32PC recoveredBlock18Block32Step recoveredBlock18Block32Done recoveredBlock18Block32Result |
    recoveredBlock18Block32Stack0 := self.
    recoveredBlock18Block32PC := 38.
    recoveredBlock18Block32Done := false.
    [recoveredBlock18Block32Done not] whileTrue: [
        recoveredBlock18Block32Step := recoveredBlock18Block32PC.
        recoveredBlock18Block32Step = 38 ifTrue: [
            recoveredBlock18Block32Stack1 := recoveredLocal1.
            recoveredBlock18Block32PC := 41.
        ].
        recoveredBlock18Block32Step = 41 ifTrue: [
            recoveredBlock18Block32Stack1 := (recoveredBlock18Block32Stack1) hasProgressBar.
            recoveredBlock18Block32PC := 43.
        ].
        recoveredBlock18Block32Step = 43 ifTrue: [
            recoveredBlock18Block32Stack1 := (recoveredBlock18Block32Stack1) not.
            recoveredBlock18Block32PC := 44.
        ].
        recoveredBlock18Block32Step = 44 ifTrue: [
            recoveredBlock18Block32Local1 := recoveredBlock18Block32Stack1.
            recoveredBlock18Block32PC := 47.
        ].
        recoveredBlock18Block32Step = 47 ifTrue: [
            recoveredBlock18Block32Stack1 := recoveredLocal1.
            recoveredBlock18Block32PC := 50.
        ].
        recoveredBlock18Block32Step = 50 ifTrue: [
            recoveredBlock18Block32Stack1 := (recoveredBlock18Block32Stack1) activateProgressBar.
            recoveredBlock18Block32PC := 52.
        ].
        recoveredBlock18Block32Step = 52 ifTrue: [
            recoveredBlock18Block32Local2 := recoveredBlock18Block32Stack1.
            recoveredBlock18Block32PC := 55.
        ].
        recoveredBlock18Block32Step = 55 ifTrue: [
            recoveredBlock18Block32Stack1 := SGDatabaseAccess.
            recoveredBlock18Block32PC := 57.
        ].
        recoveredBlock18Block32Step = 57 ifTrue: [
            recoveredBlock18Block32Stack1 := (recoveredBlock18Block32Stack1) create.
            recoveredBlock18Block32PC := 59.
        ].
        recoveredBlock18Block32Step = 59 ifTrue: [
            recoveredBlock18Block32Stack2 := [:recoveredBlock18Block32Block59Arg1 | 
    | recoveredBlock18Block32Block59Local1 recoveredBlock18Block32Block59Local2 recoveredBlock18Block32Block59Local3 recoveredBlock18Block32Block59Local4 recoveredBlock18Block32Block59Stack0 recoveredBlock18Block32Block59Stack1 recoveredBlock18Block32Block59Stack2 recoveredBlock18Block32Block59Stack3 recoveredBlock18Block32Block59PC recoveredBlock18Block32Block59Step recoveredBlock18Block32Block59Done recoveredBlock18Block32Block59Result |
    recoveredBlock18Block32Block59Stack0 := self.
    recoveredBlock18Block32Block59PC := 66.
    recoveredBlock18Block32Block59Done := false.
    [recoveredBlock18Block32Block59Done not] whileTrue: [
        recoveredBlock18Block32Block59Step := recoveredBlock18Block32Block59PC.
        recoveredBlock18Block32Block59Step = 66 ifTrue: [
            recoveredBlock18Block32Block59Stack1 := recoveredBlock18Block32Block59Arg1.
            recoveredBlock18Block32Block59PC := 69.
        ].
        recoveredBlock18Block32Block59Step = 69 ifTrue: [
            recoveredBlock18Block32Block59Stack2 := ASDMetaData.
            recoveredBlock18Block32Block59PC := 71.
        ].
        recoveredBlock18Block32Block59Step = 71 ifTrue: [
            recoveredBlock18Block32Block59Stack1 := (recoveredBlock18Block32Block59Stack1) readExactClassKeys: (recoveredBlock18Block32Block59Stack2).
            recoveredBlock18Block32Block59PC := 73.
        ].
        recoveredBlock18Block32Block59Step = 73 ifTrue: [
            recoveredBlock18Block32Block59Local4 := recoveredBlock18Block32Block59Stack1.
            recoveredBlock18Block32Block59PC := 76.
        ].
        recoveredBlock18Block32Block59Step = 76 ifTrue: [
            recoveredBlock18Block32Block59Stack1 := recoveredBlock18Block32Block59Local4.
            recoveredBlock18Block32Block59PC := 79.
        ].
        recoveredBlock18Block32Block59Step = 79 ifTrue: [
            recoveredBlock18Block32Block59Stack1 := (recoveredBlock18Block32Block59Stack1) size.
            recoveredBlock18Block32Block59PC := 81.
        ].
        recoveredBlock18Block32Block59Step = 81 ifTrue: [
            recoveredBlock18Block32Block59Local3 := recoveredBlock18Block32Block59Stack1.
            recoveredBlock18Block32Block59PC := 84.
        ].
        recoveredBlock18Block32Block59Step = 84 ifTrue: [
            recoveredBlock18Block32Block59Stack1 := recoveredBlock18Block32Block59Local3.
            recoveredBlock18Block32Block59PC := 87.
        ].
        recoveredBlock18Block32Block59Step = 87 ifTrue: [
            recoveredBlock18Block32Block59Stack2 := 20.
            recoveredBlock18Block32Block59PC := 89.
        ].
        recoveredBlock18Block32Block59Step = 89 ifTrue: [
            recoveredBlock18Block32Block59Stack1 := (recoveredBlock18Block32Block59Stack1) // (recoveredBlock18Block32Block59Stack2).
            recoveredBlock18Block32Block59PC := 90.
        ].
        recoveredBlock18Block32Block59Step = 90 ifTrue: [
            recoveredBlock18Block32Block59Stack2 := 1.
            recoveredBlock18Block32Block59PC := 92.
        ].
        recoveredBlock18Block32Block59Step = 92 ifTrue: [
            recoveredBlock18Block32Block59Stack1 := (recoveredBlock18Block32Block59Stack1) max: (recoveredBlock18Block32Block59Stack2).
            recoveredBlock18Block32Block59PC := 94.
        ].
        recoveredBlock18Block32Block59Step = 94 ifTrue: [
            recoveredBlock18Block32Block59Local1 := recoveredBlock18Block32Block59Stack1.
            recoveredBlock18Block32Block59PC := 97.
        ].
        recoveredBlock18Block32Block59Step = 97 ifTrue: [
            recoveredBlock18Block32Block59Stack1 := 0.
            recoveredBlock18Block32Block59PC := 99.
        ].
        recoveredBlock18Block32Block59Step = 99 ifTrue: [
            recoveredBlock18Block32Block59Local2 := recoveredBlock18Block32Block59Stack1.
            recoveredBlock18Block32Block59PC := 102.
        ].
        recoveredBlock18Block32Block59Step = 102 ifTrue: [
            recoveredBlock18Block32Block59Stack1 := recoveredBlock18Block32Block59Local4.
            recoveredBlock18Block32Block59PC := 105.
        ].
        recoveredBlock18Block32Block59Step = 105 ifTrue: [
            recoveredBlock18Block32Block59Stack2 := [:recoveredBlock18Block32Block59Block105Arg1 | 
    | recoveredBlock18Block32Block59Block105Stack0 recoveredBlock18Block32Block59Block105Stack1 recoveredBlock18Block32Block59Block105Stack2 recoveredBlock18Block32Block59Block105Stack3 recoveredBlock18Block32Block59Block105Stack4 recoveredBlock18Block32Block59Block105Stack5 recoveredBlock18Block32Block59Block105PC recoveredBlock18Block32Block59Block105Step recoveredBlock18Block32Block59Block105Done recoveredBlock18Block32Block59Block105Result |
    recoveredBlock18Block32Block59Block105Stack0 := self.
    recoveredBlock18Block32Block59Block105PC := 112.
    recoveredBlock18Block32Block59Block105Done := false.
    [recoveredBlock18Block32Block59Block105Done not] whileTrue: [
        recoveredBlock18Block32Block59Block105Step := recoveredBlock18Block32Block59Block105PC.
        recoveredBlock18Block32Block59Block105Step = 112 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := recoveredBlock18Block32Block59Local2.
            recoveredBlock18Block32Block59Block105PC := 115.
        ].
        recoveredBlock18Block32Block59Block105Step = 115 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := (recoveredBlock18Block32Block59Block105Stack1) + (1).
            recoveredBlock18Block32Block59Block105PC := 116.
        ].
        recoveredBlock18Block32Block59Block105Step = 116 ifTrue: [
            recoveredBlock18Block32Block59Local2 := recoveredBlock18Block32Block59Block105Stack1.
            recoveredBlock18Block32Block59Block105PC := 119.
        ].
        recoveredBlock18Block32Block59Block105Step = 119 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := recoveredBlock18Block32Block59Block105Arg1.
            recoveredBlock18Block32Block59Block105PC := 120.
        ].
        recoveredBlock18Block32Block59Block105Step = 120 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := (recoveredBlock18Block32Block59Block105Stack1) getObject.
            recoveredBlock18Block32Block59Block105PC := 122.
        ].
        recoveredBlock18Block32Block59Block105Step = 122 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := (recoveredBlock18Block32Block59Block105Stack1) itemID.
            recoveredBlock18Block32Block59Block105PC := 124.
        ].
        recoveredBlock18Block32Block59Block105Step = 124 ifTrue: [
            (recoveredBlock18Block32Block59Block105Stack1 == nil) ifTrue: [recoveredBlock18Block32Block59Block105PC := 156] ifFalse: [recoveredBlock18Block32Block59Block105PC := 128].
        ].
        recoveredBlock18Block32Block59Block105Step = 128 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := self.
            recoveredBlock18Block32Block59Block105PC := 129.
        ].
        recoveredBlock18Block32Block59Block105Step = 129 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := (recoveredBlock18Block32Block59Block105Stack1) metaDataTable.
            recoveredBlock18Block32Block59Block105PC := 130.
        ].
        recoveredBlock18Block32Block59Block105Step = 130 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := recoveredBlock18Block32Block59Block105Arg1.
            recoveredBlock18Block32Block59Block105PC := 131.
        ].
        recoveredBlock18Block32Block59Block105Step = 131 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := (recoveredBlock18Block32Block59Block105Stack2) globalId.
            recoveredBlock18Block32Block59Block105PC := 133.
        ].
        recoveredBlock18Block32Block59Block105Step = 133 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack3 := recoveredBlock18Block32Block59Block105Arg1.
            recoveredBlock18Block32Block59Block105PC := 134.
        ].
        recoveredBlock18Block32Block59Block105Step = 134 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack3 := (recoveredBlock18Block32Block59Block105Stack3) getObject.
            recoveredBlock18Block32Block59Block105PC := 136.
        ].
        recoveredBlock18Block32Block59Block105Step = 136 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack3 := (recoveredBlock18Block32Block59Block105Stack3) itemID.
            recoveredBlock18Block32Block59Block105PC := 138.
        ].
        recoveredBlock18Block32Block59Block105Step = 138 ifTrue: [
            (recoveredBlock18Block32Block59Block105Stack1) at: (recoveredBlock18Block32Block59Block105Stack2) put: (recoveredBlock18Block32Block59Block105Stack3).
            recoveredBlock18Block32Block59Block105PC := 140.
        ].
        recoveredBlock18Block32Block59Block105Step = 140 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := self.
            recoveredBlock18Block32Block59Block105PC := 141.
        ].
        recoveredBlock18Block32Block59Block105Step = 141 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := (recoveredBlock18Block32Block59Block105Stack1) itemTable.
            recoveredBlock18Block32Block59Block105PC := 142.
        ].
        recoveredBlock18Block32Block59Block105Step = 142 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := recoveredBlock18Block32Block59Block105Arg1.
            recoveredBlock18Block32Block59Block105PC := 143.
        ].
        recoveredBlock18Block32Block59Block105Step = 143 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := (recoveredBlock18Block32Block59Block105Stack2) getObject.
            recoveredBlock18Block32Block59Block105PC := 145.
        ].
        recoveredBlock18Block32Block59Block105Step = 145 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := (recoveredBlock18Block32Block59Block105Stack2) itemID.
            recoveredBlock18Block32Block59Block105PC := 147.
        ].
        recoveredBlock18Block32Block59Block105Step = 147 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack3 := recoveredBlock18Block32Block59Block105Arg1.
            recoveredBlock18Block32Block59Block105PC := 148.
        ].
        recoveredBlock18Block32Block59Block105Step = 148 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack3 := (recoveredBlock18Block32Block59Block105Stack3) globalId.
            recoveredBlock18Block32Block59Block105PC := 150.
        ].
        recoveredBlock18Block32Block59Block105Step = 150 ifTrue: [
            (recoveredBlock18Block32Block59Block105Stack1) at: (recoveredBlock18Block32Block59Block105Stack2) put: (recoveredBlock18Block32Block59Block105Stack3).
            recoveredBlock18Block32Block59Block105PC := 152.
        ].
        recoveredBlock18Block32Block59Block105Step = 152 ifTrue: [
            recoveredBlock18Block32Block59Block105PC := 172.
        ].
        recoveredBlock18Block32Block59Block105Step = 156 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := recoveredLocal1.
            recoveredBlock18Block32Block59Block105PC := 159.
        ].
        recoveredBlock18Block32Block59Block105Step = 159 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := [
    'Found and deleted ASDMetaData object without item reference.'
].
            recoveredBlock18Block32Block59Block105PC := 161.
        ].
        recoveredBlock18Block32Block59Block105Step = 161 ifTrue: [
            recoveredBlock18Block32Block59Block105PC := 167.
        ].
        recoveredBlock18Block32Block59Block105Step = 167 ifTrue: [
            (recoveredBlock18Block32Block59Block105Stack1) addDebugTextBlock: (recoveredBlock18Block32Block59Block105Stack2).
            recoveredBlock18Block32Block59Block105PC := 169.
        ].
        recoveredBlock18Block32Block59Block105Step = 169 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := recoveredBlock18Block32Block59Block105Arg1.
            recoveredBlock18Block32Block59Block105PC := 170.
        ].
        recoveredBlock18Block32Block59Block105Step = 170 ifTrue: [
            (recoveredBlock18Block32Block59Block105Stack1) delete.
            recoveredBlock18Block32Block59Block105PC := 172.
        ].
        recoveredBlock18Block32Block59Block105Step = 172 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := nil.
            recoveredBlock18Block32Block59Block105PC := 173.
        ].
        recoveredBlock18Block32Block59Block105Step = 173 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := recoveredBlock18Block32Block59Local2.
            recoveredBlock18Block32Block59Block105PC := 176.
        ].
        recoveredBlock18Block32Block59Block105Step = 176 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack3 := recoveredBlock18Block32Block59Local1.
            recoveredBlock18Block32Block59Block105PC := 179.
        ].
        recoveredBlock18Block32Block59Block105Step = 179 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := (recoveredBlock18Block32Block59Block105Stack2) modulo: (recoveredBlock18Block32Block59Block105Stack3).
            recoveredBlock18Block32Block59Block105PC := 181.
        ].
        recoveredBlock18Block32Block59Block105Step = 181 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack3 := 0.
            recoveredBlock18Block32Block59Block105PC := 183.
        ].
        recoveredBlock18Block32Block59Block105Step = 183 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := (recoveredBlock18Block32Block59Block105Stack2) = (recoveredBlock18Block32Block59Block105Stack3).
            recoveredBlock18Block32Block59Block105PC := 184.
        ].
        recoveredBlock18Block32Block59Block105Step = 184 ifTrue: [
            (recoveredBlock18Block32Block59Block105Stack2) ifTrue: [recoveredBlock18Block32Block59Block105PC := 188] ifFalse: [recoveredBlock18Block32Block59Block105PC := 257].
        ].
        recoveredBlock18Block32Block59Block105Step = 188 ifTrue: [
            recoveredBlock18Block32Block59Block105PC := 189.
        ].
        recoveredBlock18Block32Block59Block105Step = 189 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := nil.
            recoveredBlock18Block32Block59Block105PC := 190.
        ].
        recoveredBlock18Block32Block59Block105Step = 190 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := recoveredBlock18Block32Local2.
            recoveredBlock18Block32Block59Block105PC := 193.
        ].
        recoveredBlock18Block32Block59Block105Step = 193 ifTrue: [
            (recoveredBlock18Block32Block59Block105Stack2 == nil) ifTrue: [recoveredBlock18Block32Block59Block105PC := 257] ifFalse: [recoveredBlock18Block32Block59Block105PC := 196].
        ].
        recoveredBlock18Block32Block59Block105Step = 196 ifTrue: [
            recoveredBlock18Block32Block59Block105PC := 197.
        ].
        recoveredBlock18Block32Block59Block105Step = 197 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := recoveredBlock18Block32Local2.
            recoveredBlock18Block32Block59Block105PC := 200.
        ].
        recoveredBlock18Block32Block59Block105Step = 200 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := 'Loading Meta Data %1 / %2'.
            recoveredBlock18Block32Block59Block105PC := 202.
        ].
        recoveredBlock18Block32Block59Block105Step = 202 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack3 := recoveredBlock18Block32Block59Local2.
            recoveredBlock18Block32Block59Block105PC := 205.
        ].
        recoveredBlock18Block32Block59Block105Step = 205 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack4 := recoveredBlock18Block32Block59Local3.
            recoveredBlock18Block32Block59Block105PC := 208.
        ].
        recoveredBlock18Block32Block59Block105Step = 208 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := (recoveredBlock18Block32Block59Block105Stack2) bindWith: (recoveredBlock18Block32Block59Block105Stack3) with: (recoveredBlock18Block32Block59Block105Stack4).
            recoveredBlock18Block32Block59Block105PC := 210.
        ].
        recoveredBlock18Block32Block59Block105Step = 210 ifTrue: [
            (recoveredBlock18Block32Block59Block105Stack1) messageString: (recoveredBlock18Block32Block59Block105Stack2).
            recoveredBlock18Block32Block59Block105PC := 212.
        ].
        recoveredBlock18Block32Block59Block105Step = 212 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := recoveredBlock18Block32Local2.
            recoveredBlock18Block32Block59Block105PC := 215.
        ].
        recoveredBlock18Block32Block59Block105Step = 215 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := recoveredBlock18Block32Block59Local2.
            recoveredBlock18Block32Block59Block105PC := 218.
        ].
        recoveredBlock18Block32Block59Block105Step = 218 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack3 := recoveredBlock18Block32Block59Local3.
            recoveredBlock18Block32Block59Block105PC := 221.
        ].
        recoveredBlock18Block32Block59Block105Step = 221 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := (recoveredBlock18Block32Block59Block105Stack2) / (recoveredBlock18Block32Block59Block105Stack3).
            recoveredBlock18Block32Block59Block105PC := 223.
        ].
        recoveredBlock18Block32Block59Block105Step = 223 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack3 := 100.
            recoveredBlock18Block32Block59Block105PC := 226.
        ].
        recoveredBlock18Block32Block59Block105Step = 226 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := (recoveredBlock18Block32Block59Block105Stack2) * (recoveredBlock18Block32Block59Block105Stack3).
            recoveredBlock18Block32Block59Block105PC := 227.
        ].
        recoveredBlock18Block32Block59Block105Step = 227 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := (recoveredBlock18Block32Block59Block105Stack2) asInteger.
            recoveredBlock18Block32Block59Block105PC := 229.
        ].
        recoveredBlock18Block32Block59Block105Step = 229 ifTrue: [
            (recoveredBlock18Block32Block59Block105Stack1) value: (recoveredBlock18Block32Block59Block105Stack2).
            recoveredBlock18Block32Block59Block105PC := 231.
        ].
        recoveredBlock18Block32Block59Block105Step = 231 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := recoveredLocal1.
            recoveredBlock18Block32Block59Block105PC := 234.
        ].
        recoveredBlock18Block32Block59Block105Step = 234 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack2 := [
    | recoveredBlock18Block32Block59Block105Block234Value0 recoveredBlock18Block32Block59Block105Block234Value1 recoveredBlock18Block32Block59Block105Block234Value2 recoveredBlock18Block32Block59Block105Block234Value3 recoveredBlock18Block32Block59Block105Block234Value4 |
    recoveredBlock18Block32Block59Block105Block234Value0 := recoveredBlock18Block32Block59Local2.
    recoveredBlock18Block32Block59Block105Block234Value1 := (recoveredBlock18Block32Block59Block105Block234Value0) asString.
    recoveredBlock18Block32Block59Block105Block234Value2 := recoveredBlock18Block32Block59Local3.
    recoveredBlock18Block32Block59Block105Block234Value3 := (recoveredBlock18Block32Block59Block105Block234Value2) asString.
    recoveredBlock18Block32Block59Block105Block234Value4 := ('Loading Meta Data Object %1 of %2') bindWith: (recoveredBlock18Block32Block59Block105Block234Value1) with: (recoveredBlock18Block32Block59Block105Block234Value3).
    recoveredBlock18Block32Block59Block105Block234Value4
].
            recoveredBlock18Block32Block59Block105PC := 255.
        ].
        recoveredBlock18Block32Block59Block105Step = 255 ifTrue: [
            recoveredBlock18Block32Block59Block105Stack1 := (recoveredBlock18Block32Block59Block105Stack1) addDebugTextBlock: (recoveredBlock18Block32Block59Block105Stack2).
            recoveredBlock18Block32Block59Block105PC := 257.
        ].
        recoveredBlock18Block32Block59Block105Step = 257 ifTrue: [
            recoveredBlock18Block32Block59Block105Result := recoveredBlock18Block32Block59Block105Stack1.
            recoveredBlock18Block32Block59Block105Done := true.
        ].
    ].
    recoveredBlock18Block32Block59Block105Result
].
            recoveredBlock18Block32Block59PC := 258.
        ].
        recoveredBlock18Block32Block59Step = 258 ifTrue: [
            (recoveredBlock18Block32Block59Stack1) do: (recoveredBlock18Block32Block59Stack2).
            recoveredBlock18Block32Block59PC := 260.
        ].
        recoveredBlock18Block32Block59Step = 260 ifTrue: [
            recoveredBlock18Block32Block59Stack1 := nil.
            recoveredBlock18Block32Block59PC := 261.
        ].
        recoveredBlock18Block32Block59Step = 261 ifTrue: [
            recoveredBlock18Block32Block59Stack2 := recoveredBlock18Block32Local2.
            recoveredBlock18Block32Block59PC := 264.
        ].
        recoveredBlock18Block32Block59Step = 264 ifTrue: [
            (recoveredBlock18Block32Block59Stack2 == nil) ifTrue: [recoveredBlock18Block32Block59PC := 276] ifFalse: [recoveredBlock18Block32Block59PC := 268].
        ].
        recoveredBlock18Block32Block59Step = 268 ifTrue: [
            recoveredBlock18Block32Block59PC := 269.
        ].
        recoveredBlock18Block32Block59Step = 269 ifTrue: [
            recoveredBlock18Block32Block59Stack1 := recoveredBlock18Block32Local2.
            recoveredBlock18Block32Block59PC := 272.
        ].
        recoveredBlock18Block32Block59Step = 272 ifTrue: [
            recoveredBlock18Block32Block59Stack2 := 1.
            recoveredBlock18Block32Block59PC := 274.
        ].
        recoveredBlock18Block32Block59Step = 274 ifTrue: [
            recoveredBlock18Block32Block59Stack1 := (recoveredBlock18Block32Block59Stack1) value: (recoveredBlock18Block32Block59Stack2).
            recoveredBlock18Block32Block59PC := 276.
        ].
        recoveredBlock18Block32Block59Step = 276 ifTrue: [
            recoveredBlock18Block32Block59Result := recoveredBlock18Block32Block59Stack1.
            recoveredBlock18Block32Block59Done := true.
        ].
    ].
    recoveredBlock18Block32Block59Result
].
            recoveredBlock18Block32PC := 277.
        ].
        recoveredBlock18Block32Step = 277 ifTrue: [
            (recoveredBlock18Block32Stack1) ifNotNil: (recoveredBlock18Block32Stack2).
            recoveredBlock18Block32PC := 279.
        ].
        recoveredBlock18Block32Step = 279 ifTrue: [
            recoveredBlock18Block32Stack1 := nil.
            recoveredBlock18Block32PC := 280.
        ].
        recoveredBlock18Block32Step = 280 ifTrue: [
            recoveredBlock18Block32Stack2 := recoveredBlock18Block32Local1.
            recoveredBlock18Block32PC := 283.
        ].
        recoveredBlock18Block32Step = 283 ifTrue: [
            (recoveredBlock18Block32Stack2) ifTrue: [recoveredBlock18Block32PC := 286] ifFalse: [recoveredBlock18Block32PC := 292].
        ].
        recoveredBlock18Block32Step = 286 ifTrue: [
            recoveredBlock18Block32PC := 287.
        ].
        recoveredBlock18Block32Step = 287 ifTrue: [
            recoveredBlock18Block32Stack1 := recoveredLocal1.
            recoveredBlock18Block32PC := 290.
        ].
        recoveredBlock18Block32Step = 290 ifTrue: [
            recoveredBlock18Block32Stack1 := (recoveredBlock18Block32Stack1) deactivateProgressBar.
            recoveredBlock18Block32PC := 292.
        ].
        recoveredBlock18Block32Step = 292 ifTrue: [
            recoveredBlock18Block32Result := recoveredBlock18Block32Stack1.
            recoveredBlock18Block32Done := true.
        ].
    ].
    recoveredBlock18Block32Result
].
    recoveredBlock18Value4 := (recoveredBlock18Value1) measureTimeFor: (recoveredBlock18Value3) description: ('Loading Meta Data').
    recoveredBlock18Value4
].
    (recoveredValue1) syncExecInUI: (recoveredValue2).
    ^self
! !


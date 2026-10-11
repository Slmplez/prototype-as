"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006fbc; bytecode file offset 0x908be4"
!DBUiController methodsFor: 'recovered'!
createDBReferences
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007754; bytecode file offset 0x908be4"
!DBUiController methodsFor: 'recovered'!
rebuildDatabase
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bd50; bytecode file offset 0x908be4"
!DBUiController methodsFor: 'recovered'!
compactDatabaseBasic
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200404e0; bytecode file offset 0x93d278"
!DBUiController methodsFor: 'recovered'!
fractionComplete
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbInterface.
    recoveredValue1 := (recoveredValue0) fractionComplete.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200409d4; bytecode file offset 0x93d298"
!DBUiController methodsFor: 'recovered'!
rewriteRecords
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbInterface.
    recoveredValue1 := (self) rewriteRecords: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200409e0; bytecode file offset 0x93d298"
!DBUiController methodsFor: 'recovered'!
readWriteAll
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbInterface.
    recoveredValue1 := (self) readWriteAllIn: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066364; bytecode file offset 0x963428"
!DBUiController methodsFor: 'recovered'!
dbInterface
    | recoveredValue0 |
    recoveredValue0 := dbInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006907c; bytecode file offset 0x965b90"
!DBUiController methodsFor: 'recovered'!
progressCount
    | recoveredValue0 |
    recoveredValue0 := progressCount.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20089878; bytecode file offset 0x986134"
!DBUiController methodsFor: 'recovered'!
initializeGlobalIdMapping
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    globalIdMap := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20092634; bytecode file offset 0x98ef64"
!DBUiController methodsFor: 'recovered'!
changePath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbInterface.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) changePath: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009cc8c; bytecode file offset 0x999628"
!DBUiController methodsFor: 'recovered'!
initializeInstances
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBDummyProgressReporter.
    recoveredValue1 := (recoveredValue0) new.
    (self) progressWindow: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c17f4; bytecode file offset 0x9beac8"
!DBUiController methodsFor: 'recovered'!
progressWindow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    progressWindow := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d010c; bytecode file offset 0x9cc9c8"
!DBUiController methodsFor: 'recovered'!
progressWindow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('Call_71182').
    recoveredValue1 := progressWindow.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d84e8; bytecode file offset 0x9d4da4"
!DBUiController methodsFor: 'recovered'!
dbInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    dbInterface := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) internalLibraryLegacy.
    (self) setDBInterfaceGlobal: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2013fef0; bytecode file offset 0xa3c7b4"
!DBUiController methodsFor: 'recovered'!
compactDataBase
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsDefragmentation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := dbInterface.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) closeDataStorage.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) compactDatabaseBasic.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b2914; bytecode file offset 0xdaf210"
!DBUiController methodsFor: 'recovered'!
rewriteRecords: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isOpen.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDatabaseSize.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            progressCount := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectCache.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) clearCaching.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Local1 recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 45.
        ].
        recoveredBlock35Step = 45 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg1.
            recoveredBlock35PC := 46.
        ].
        recoveredBlock35Step = 46 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) readRecord: (recoveredBlock35Stack2).
            recoveredBlock35PC := 48.
        ].
        recoveredBlock35Step = 48 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 49.
        ].
        recoveredBlock35Step = 49 ifTrue: [
            recoveredBlock35Local1 := recoveredBlock35Stack2.
            recoveredBlock35PC := 50.
        ].
        recoveredBlock35Step = 50 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isError.
            recoveredBlock35PC := 52.
        ].
        recoveredBlock35Step = 52 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 63] ifFalse: [recoveredBlock35PC := 56].
        ].
        recoveredBlock35Step = 56 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 59.
        ].
        recoveredBlock35Step = 59 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg1.
            recoveredBlock35PC := 60.
        ].
        recoveredBlock35Step = 60 ifTrue: [
            recoveredBlock35Stack3 := recoveredBlock35Local1.
            recoveredBlock35PC := 61.
        ].
        recoveredBlock35Step = 61 ifTrue: [
            (recoveredBlock35Stack1) write: (recoveredBlock35Stack2) record: (recoveredBlock35Stack3).
            recoveredBlock35PC := 63.
        ].
        recoveredBlock35Step = 63 ifTrue: [
            recoveredBlock35Stack1 := progressCount.
            recoveredBlock35PC := 65.
        ].
        recoveredBlock35Step = 65 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) + (-1).
            recoveredBlock35PC := 66.
        ].
        recoveredBlock35Step = 66 ifTrue: [
            progressCount := recoveredBlock35Stack1.
            recoveredBlock35PC := 68.
        ].
        recoveredBlock35Step = 68 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 69.
        ].
        recoveredBlock35Step = 69 ifTrue: [
            recoveredBlock35Stack2 := progressCount.
            recoveredBlock35PC := 71.
        ].
        recoveredBlock35Step = 71 ifTrue: [
            recoveredBlock35Stack3 := 100.
            recoveredBlock35PC := 74.
        ].
        recoveredBlock35Step = 74 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) \\ (recoveredBlock35Stack3).
            recoveredBlock35PC := 75.
        ].
        recoveredBlock35Step = 75 ifTrue: [
            recoveredBlock35Stack3 := 0.
            recoveredBlock35PC := 77.
        ].
        recoveredBlock35Step = 77 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) = (recoveredBlock35Stack3).
            recoveredBlock35PC := 78.
        ].
        recoveredBlock35Step = 78 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 82] ifFalse: [recoveredBlock35PC := 134].
        ].
        recoveredBlock35Step = 82 ifTrue: [
            recoveredBlock35PC := 83.
        ].
        recoveredBlock35Step = 83 ifTrue: [
            recoveredBlock35Stack1 := progressWindow.
            recoveredBlock35PC := 85.
        ].
        recoveredBlock35Step = 85 ifTrue: [
            recoveredBlock35Stack2 := [:recoveredBlock35Block85Arg1 | 
    | recoveredBlock35Block85Value0 recoveredBlock35Block85Value1 recoveredBlock35Block85Value2 recoveredBlock35Block85Value3 recoveredBlock35Block85Value4 recoveredBlock35Block85Value5 recoveredBlock35Block85Value6 recoveredBlock35Block85Value7 recoveredBlock35Block85Value8 recoveredBlock35Block85Value9 recoveredBlock35Block85Value10 recoveredBlock35Block85Value11 recoveredBlock35Block85Value12 recoveredBlock35Block85Value13 recoveredBlock35Block85Value14 recoveredBlock35Block85Value15 |
    recoveredBlock35Block85Value0 := recoveredBlock35Block85Arg1.
    recoveredBlock35Block85Value1 := progressCount.
    recoveredBlock35Block85Value2 := recoveredLocal1.
    recoveredBlock35Block85Value3 := (recoveredBlock35Block85Value1) / (recoveredBlock35Block85Value2).
    recoveredBlock35Block85Value4 := (1) - (recoveredBlock35Block85Value3).
    (recoveredBlock35Block85Value0) fractionComplete: (recoveredBlock35Block85Value4).
    recoveredBlock35Block85Value5 := recoveredBlock35Block85Arg1.
    recoveredBlock35Block85Value6 := recoveredLocal1.
    recoveredBlock35Block85Value7 := progressCount.
    recoveredBlock35Block85Value8 := (recoveredBlock35Block85Value6) - (recoveredBlock35Block85Value7).
    recoveredBlock35Block85Value9 := (recoveredBlock35Block85Value8) asString.
    recoveredBlock35Block85Value10 := ('Processing ') , (recoveredBlock35Block85Value9).
    recoveredBlock35Block85Value11 := (recoveredBlock35Block85Value10) , (' of ').
    recoveredBlock35Block85Value12 := recoveredLocal1.
    recoveredBlock35Block85Value13 := (recoveredBlock35Block85Value12) asString.
    recoveredBlock35Block85Value14 := (recoveredBlock35Block85Value11) , (recoveredBlock35Block85Value13).
    recoveredBlock35Block85Value15 := (recoveredBlock35Block85Value5) messageString: (recoveredBlock35Block85Value14).
    recoveredBlock35Block85Value15
].
            recoveredBlock35PC := 132.
        ].
        recoveredBlock35Step = 132 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) ifNotNil: (recoveredBlock35Stack2).
            recoveredBlock35PC := 134.
        ].
        recoveredBlock35Step = 134 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack1.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) allProxysDo: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectCache.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) setCaching.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204da1fc; bytecode file offset 0xdd6b04"
!DBUiController methodsFor: 'recovered'!
recoverDB: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'Open Database for Recovery'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOpen.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) openCurrentDataStorage.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'ReadAndWrite all records (without loading objects)'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 recoveredBlock56Value3 recoveredBlock56Value4 recoveredBlock56Value5 recoveredBlock56Value6 recoveredBlock56Value7 recoveredBlock56Value8 recoveredBlock56Value9 recoveredBlock56Value10 recoveredBlock56Value11 recoveredBlock56Value12 recoveredBlock56Value13 recoveredBlock56Value14 recoveredBlock56Value15 recoveredBlock56Value16 recoveredBlock56Value17 |
    recoveredBlock56Value0 := recoveredBlock56Arg1.
    progressWindow := recoveredBlock56Value0.
    recoveredBlock56Value1 := recoveredBlock56Arg1.
    recoveredBlock56Value2 := recoveredLocal1.
    (recoveredBlock56Value1) messageString: (recoveredBlock56Value2).
    (self) rewriteRecords.
    recoveredBlock56Value3 := recoveredLocal2.
    recoveredLocal1 := 'Rebuilding FileHeaders'.
    (recoveredBlock56Value3) addText: ('Rebuilding FileHeaders').
    recoveredBlock56Value4 := recoveredBlock56Arg1.
    recoveredBlock56Value5 := recoveredLocal1.
    (recoveredBlock56Value4) messageString: (recoveredBlock56Value5).
    recoveredBlock56Value6 := dbInterface.
    (recoveredBlock56Value6) closeDataStorage.
    (self) rebuildDatabase.
    recoveredBlock56Value7 := recoveredLocal2.
    recoveredLocal1 := 'Compact DataFiles'.
    (recoveredBlock56Value7) addText: ('Compact DataFiles').
    recoveredBlock56Value8 := recoveredBlock56Arg1.
    recoveredBlock56Value9 := recoveredLocal1.
    (recoveredBlock56Value8) messageString: (recoveredBlock56Value9).
    recoveredBlock56Value10 := dbInterface.
    (recoveredBlock56Value10) closeDataStorage.
    (self) compactDatabaseBasic.
    recoveredBlock56Value11 := recoveredLocal2.
    recoveredLocal1 := 'Create new DBReferences'.
    (recoveredBlock56Value11) addText: ('Create new DBReferences').
    recoveredBlock56Value12 := recoveredBlock56Arg1.
    recoveredBlock56Value13 := recoveredLocal1.
    (recoveredBlock56Value12) messageString: (recoveredBlock56Value13).
    recoveredBlock56Value14 := dbInterface.
    (recoveredBlock56Value14) reopenDataBase.
    (self) createDBReferences.
    recoveredBlock56Value15 := recoveredLocal2.
    (recoveredBlock56Value15) printReady.
    recoveredBlock56Value16 := recoveredBlock56Arg1.
    recoveredBlock56Value17 := (recoveredBlock56Value16) messageString: ('finished...').
    recoveredBlock56Value17
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) doWithProgressBar: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204eaff0; bytecode file offset 0xde78fc"
!DBUiController methodsFor: 'recovered'!
readWriteAllIn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOpen.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOpen.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDatabaseSize.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            progressCount := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectCache.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) clearCaching.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Local1 recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41Stack4 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
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
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) isStringProxy.
            recoveredBlock41PC := 52.
        ].
        recoveredBlock41Step = 52 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 154] ifFalse: [recoveredBlock41PC := 56].
        ].
        recoveredBlock41Step = 56 ifTrue: [
            recoveredBlock41PC := 57.
        ].
        recoveredBlock41Step = 57 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 58.
        ].
        recoveredBlock41Step = 58 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) getDBObject.
            recoveredBlock41PC := 60.
        ].
        recoveredBlock41Step = 60 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Stack1.
            recoveredBlock41PC := 61.
        ].
        recoveredBlock41Step = 61 ifTrue: [
            recoveredBlock41Local1 := recoveredBlock41Stack2.
            recoveredBlock41PC := 62.
        ].
        recoveredBlock41Step = 62 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) isError.
            recoveredBlock41PC := 64.
        ].
        recoveredBlock41Step = 64 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 79] ifFalse: [recoveredBlock41PC := 68].
        ].
        recoveredBlock41Step = 68 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Local1.
            recoveredBlock41PC := 69.
        ].
        recoveredBlock41Step = 69 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) dbObject.
            recoveredBlock41PC := 71.
        ].
        recoveredBlock41Step = 71 ifTrue: [
            (recoveredBlock41Stack1) setModified.
            recoveredBlock41PC := 73.
        ].
        recoveredBlock41Step = 73 ifTrue: [
            recoveredBlock41Stack1 := recoveredArg1.
            recoveredBlock41PC := 76.
        ].
        recoveredBlock41Step = 76 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Local1.
            recoveredBlock41PC := 77.
        ].
        recoveredBlock41Step = 77 ifTrue: [
            (recoveredBlock41Stack1) writeToDatabase: (recoveredBlock41Stack2).
            recoveredBlock41PC := 79.
        ].
        recoveredBlock41Step = 79 ifTrue: [
            recoveredBlock41Stack1 := progressCount.
            recoveredBlock41PC := 81.
        ].
        recoveredBlock41Step = 81 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) + (-1).
            recoveredBlock41PC := 82.
        ].
        recoveredBlock41Step = 82 ifTrue: [
            progressCount := recoveredBlock41Stack1.
            recoveredBlock41PC := 84.
        ].
        recoveredBlock41Step = 84 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 85.
        ].
        recoveredBlock41Step = 85 ifTrue: [
            recoveredBlock41Stack2 := progressCount.
            recoveredBlock41PC := 87.
        ].
        recoveredBlock41Step = 87 ifTrue: [
            recoveredBlock41Stack3 := 100.
            recoveredBlock41PC := 90.
        ].
        recoveredBlock41Step = 90 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) \\ (recoveredBlock41Stack3).
            recoveredBlock41PC := 91.
        ].
        recoveredBlock41Step = 91 ifTrue: [
            recoveredBlock41Stack3 := 0.
            recoveredBlock41PC := 93.
        ].
        recoveredBlock41Step = 93 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) = (recoveredBlock41Stack3).
            recoveredBlock41PC := 94.
        ].
        recoveredBlock41Step = 94 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 98] ifFalse: [recoveredBlock41PC := 154].
        ].
        recoveredBlock41Step = 98 ifTrue: [
            recoveredBlock41PC := 99.
        ].
        recoveredBlock41Step = 99 ifTrue: [
            recoveredBlock41Stack1 := progressWindow.
            recoveredBlock41PC := 101.
        ].
        recoveredBlock41Step = 101 ifTrue: [
            recoveredBlock41Stack2 := [:recoveredBlock41Block101Arg1 | 
    | recoveredBlock41Block101Value0 recoveredBlock41Block101Value1 recoveredBlock41Block101Value2 recoveredBlock41Block101Value3 recoveredBlock41Block101Value4 recoveredBlock41Block101Value5 recoveredBlock41Block101Value6 recoveredBlock41Block101Value7 recoveredBlock41Block101Value8 recoveredBlock41Block101Value9 recoveredBlock41Block101Value10 recoveredBlock41Block101Value11 recoveredBlock41Block101Value12 recoveredBlock41Block101Value13 recoveredBlock41Block101Value14 recoveredBlock41Block101Value15 recoveredBlock41Block101Value16 |
    recoveredBlock41Block101Value0 := recoveredBlock41Block101Arg1.
    recoveredBlock41Block101Value1 := progressCount.
    recoveredBlock41Block101Value2 := recoveredLocal1.
    recoveredBlock41Block101Value3 := (recoveredBlock41Block101Value1) / (recoveredBlock41Block101Value2).
    recoveredBlock41Block101Value4 := (1) - (recoveredBlock41Block101Value3).
    (recoveredBlock41Block101Value0) fractionComplete: (recoveredBlock41Block101Value4).
    recoveredBlock41Block101Value5 := recoveredBlock41Block101Arg1.
    recoveredBlock41Block101Value6 := recoveredLocal1.
    recoveredBlock41Block101Value7 := progressCount.
    recoveredBlock41Block101Value8 := (recoveredBlock41Block101Value6) - (recoveredBlock41Block101Value7).
    recoveredBlock41Block101Value9 := (recoveredBlock41Block101Value8) asString.
    recoveredBlock41Block101Value10 := ('Read And Write!! Processing ') , (recoveredBlock41Block101Value9).
    recoveredBlock41Block101Value11 := (recoveredBlock41Block101Value10) , (' of (').
    recoveredBlock41Block101Value12 := recoveredLocal1.
    recoveredBlock41Block101Value13 := (recoveredBlock41Block101Value12) asString.
    recoveredBlock41Block101Value14 := (recoveredBlock41Block101Value11) , (recoveredBlock41Block101Value13).
    recoveredBlock41Block101Value15 := (recoveredBlock41Block101Value14) , (')').
    recoveredBlock41Block101Value16 := (recoveredBlock41Block101Value5) messageString: (recoveredBlock41Block101Value15).
    recoveredBlock41Block101Value16
].
            recoveredBlock41PC := 152.
        ].
        recoveredBlock41Step = 152 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) ifNotNil: (recoveredBlock41Stack2).
            recoveredBlock41PC := 154.
        ].
        recoveredBlock41Step = 154 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) allProxysDo: (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            progressWindow := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectCache.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) setCaching.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ef0a8; bytecode file offset 0xdeb9ac"
!DBUiController methodsFor: 'recovered'!
readWriteAllProxies: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOpen.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            progressCount := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:recoveredBlock25Arg1 :recoveredBlock25Arg2 | 
    | recoveredBlock25Local1 recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) isStringProxy.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 151] ifFalse: [recoveredBlock25PC := 38].
        ].
        recoveredBlock25Step = 38 ifTrue: [
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 40.
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) getDBObject.
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 42.
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25Local1 := recoveredBlock25Stack2.
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) isError.
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 58] ifFalse: [recoveredBlock25PC := 48].
        ].
        recoveredBlock25Step = 48 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Local1.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) dbObject.
            recoveredBlock25PC := 51.
        ].
        recoveredBlock25Step = 51 ifTrue: [
            (recoveredBlock25Stack1) setModified.
            recoveredBlock25PC := 53.
        ].
        recoveredBlock25Step = 53 ifTrue: [
            recoveredBlock25Stack1 := dbInterface.
            recoveredBlock25PC := 55.
        ].
        recoveredBlock25Step = 55 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Local1.
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            (recoveredBlock25Stack1) writeToDatabase: (recoveredBlock25Stack2).
            recoveredBlock25PC := 58.
        ].
        recoveredBlock25Step = 58 ifTrue: [
            recoveredBlock25Stack1 := progressCount.
            recoveredBlock25PC := 60.
        ].
        recoveredBlock25Step = 60 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) + (-1).
            recoveredBlock25PC := 61.
        ].
        recoveredBlock25Step = 61 ifTrue: [
            progressCount := recoveredBlock25Stack1.
            recoveredBlock25PC := 63.
        ].
        recoveredBlock25Step = 63 ifTrue: [
            recoveredBlock25Stack1 := progressCount.
            recoveredBlock25PC := 65.
        ].
        recoveredBlock25Step = 65 ifTrue: [
            recoveredBlock25Stack2 := 100.
            recoveredBlock25PC := 68.
        ].
        recoveredBlock25Step = 68 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) \\ (recoveredBlock25Stack2).
            recoveredBlock25PC := 69.
        ].
        recoveredBlock25Step = 69 ifTrue: [
            recoveredBlock25Stack2 := 0.
            recoveredBlock25PC := 71.
        ].
        recoveredBlock25Step = 71 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) = (recoveredBlock25Stack2).
            recoveredBlock25PC := 72.
        ].
        recoveredBlock25Step = 72 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 76] ifFalse: [recoveredBlock25PC := 126].
        ].
        recoveredBlock25Step = 76 ifTrue: [
            recoveredBlock25Stack1 := progressWindow.
            recoveredBlock25PC := 78.
        ].
        recoveredBlock25Step = 78 ifTrue: [
            recoveredBlock25Stack2 := [:recoveredBlock25Block78Arg1 | 
    | recoveredBlock25Block78Value0 recoveredBlock25Block78Value1 recoveredBlock25Block78Value2 recoveredBlock25Block78Value3 recoveredBlock25Block78Value4 recoveredBlock25Block78Value5 recoveredBlock25Block78Value6 recoveredBlock25Block78Value7 recoveredBlock25Block78Value8 recoveredBlock25Block78Value9 recoveredBlock25Block78Value10 recoveredBlock25Block78Value11 recoveredBlock25Block78Value12 recoveredBlock25Block78Value13 recoveredBlock25Block78Value14 recoveredBlock25Block78Value15 |
    recoveredBlock25Block78Value0 := recoveredBlock25Block78Arg1.
    recoveredBlock25Block78Value1 := progressCount.
    recoveredBlock25Block78Value2 := recoveredLocal1.
    recoveredBlock25Block78Value3 := (recoveredBlock25Block78Value1) / (recoveredBlock25Block78Value2).
    recoveredBlock25Block78Value4 := (1) - (recoveredBlock25Block78Value3).
    (recoveredBlock25Block78Value0) fractionComplete: (recoveredBlock25Block78Value4).
    recoveredBlock25Block78Value5 := recoveredBlock25Block78Arg1.
    recoveredBlock25Block78Value6 := recoveredLocal1.
    recoveredBlock25Block78Value7 := progressCount.
    recoveredBlock25Block78Value8 := (recoveredBlock25Block78Value6) - (recoveredBlock25Block78Value7).
    recoveredBlock25Block78Value9 := (recoveredBlock25Block78Value8) asString.
    recoveredBlock25Block78Value10 := ('Processing ') , (recoveredBlock25Block78Value9).
    recoveredBlock25Block78Value11 := (recoveredBlock25Block78Value10) , (' of ').
    recoveredBlock25Block78Value12 := recoveredLocal1.
    recoveredBlock25Block78Value13 := (recoveredBlock25Block78Value12) asString.
    recoveredBlock25Block78Value14 := (recoveredBlock25Block78Value11) , (recoveredBlock25Block78Value13).
    recoveredBlock25Block78Value15 := (recoveredBlock25Block78Value5) messageString: (recoveredBlock25Block78Value14).
    recoveredBlock25Block78Value15
].
            recoveredBlock25PC := 124.
        ].
        recoveredBlock25Step = 124 ifTrue: [
            (recoveredBlock25Stack1) ifNotNil: (recoveredBlock25Stack2).
            recoveredBlock25PC := 126.
        ].
        recoveredBlock25Step = 126 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 127.
        ].
        recoveredBlock25Step = 127 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg2.
            recoveredBlock25PC := 128.
        ].
        recoveredBlock25Step = 128 ifTrue: [
            recoveredBlock25Stack3 := 100.
            recoveredBlock25PC := 132.
        ].
        recoveredBlock25Step = 132 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) \\ (recoveredBlock25Stack3).
            recoveredBlock25PC := 133.
        ].
        recoveredBlock25Step = 133 ifTrue: [
            recoveredBlock25Stack3 := 0.
            recoveredBlock25PC := 135.
        ].
        recoveredBlock25Step = 135 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) = (recoveredBlock25Stack3).
            recoveredBlock25PC := 136.
        ].
        recoveredBlock25Step = 136 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 140] ifFalse: [recoveredBlock25PC := 151].
        ].
        recoveredBlock25Step = 140 ifTrue: [
            recoveredBlock25PC := 141.
        ].
        recoveredBlock25Step = 141 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 142.
        ].
        recoveredBlock25Step = 142 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) library.
            recoveredBlock25PC := 144.
        ].
        recoveredBlock25Step = 144 ifTrue: [
            (recoveredBlock25Stack1) commit.
            recoveredBlock25PC := 146.
        ].
        recoveredBlock25Step = 146 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 147.
        ].
        recoveredBlock25Step = 147 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) library.
            recoveredBlock25PC := 149.
        ].
        recoveredBlock25Step = 149 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) emptyCache.
            recoveredBlock25PC := 151.
        ].
        recoveredBlock25Step = 151 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            progressWindow := recoveredStack1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) commit.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) emptyCache.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20545630; bytecode file offset 0xe41f38"
!DBUiController methodsFor: 'recovered'!
updateReferences
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := globalIdMap.
    recoveredValue5 := [:recoveredBlock18Arg1 :recoveredBlock18Arg2 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isCollection.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 43] ifFalse: [recoveredBlock18PC := 30].
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg2.
            recoveredBlock18PC := 41.
        ].
        recoveredBlock18Step = 41 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) addAll: (recoveredBlock18Stack2).
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue4) keysAndValuesDo: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 recoveredBlock49Value4 recoveredBlock49Value5 |
    recoveredBlock49Value0 := globalIdMap.
    recoveredBlock49Value1 := recoveredBlock49Arg1.
    recoveredBlock49Value2 := (recoveredBlock49Value1) globalId.
    recoveredBlock49Value3 := [].
    recoveredBlock49Value4 := [:recoveredBlock49Block65Arg1 | 
    | recoveredBlock49Block65Local1 recoveredBlock49Block65Local2 recoveredBlock49Block65Stack0 recoveredBlock49Block65Stack1 recoveredBlock49Block65Stack2 recoveredBlock49Block65Stack3 recoveredBlock49Block65PC recoveredBlock49Block65Step recoveredBlock49Block65Done recoveredBlock49Block65Result |
    recoveredBlock49Block65Stack0 := self.
    recoveredBlock49Block65PC := 72.
    recoveredBlock49Block65Done := false.
    [recoveredBlock49Block65Done not] whileTrue: [
        recoveredBlock49Block65Step := recoveredBlock49Block65PC.
        recoveredBlock49Block65Step = 72 ifTrue: [
            recoveredBlock49Block65Stack1 := recoveredBlock49Block65Arg1.
            recoveredBlock49Block65PC := 75.
        ].
        recoveredBlock49Block65Step = 75 ifTrue: [
            recoveredBlock49Block65Stack1 := (recoveredBlock49Block65Stack1) first.
            recoveredBlock49Block65PC := 77.
        ].
        recoveredBlock49Block65Step = 77 ifTrue: [
            recoveredBlock49Block65Local2 := recoveredBlock49Block65Stack1.
            recoveredBlock49Block65PC := 80.
        ].
        recoveredBlock49Block65Step = 80 ifTrue: [
            recoveredBlock49Block65Stack1 := recoveredBlock49Block65Arg1.
            recoveredBlock49Block65PC := 83.
        ].
        recoveredBlock49Block65Step = 83 ifTrue: [
            recoveredBlock49Block65Stack1 := (recoveredBlock49Block65Stack1) last.
            recoveredBlock49Block65PC := 85.
        ].
        recoveredBlock49Block65Step = 85 ifTrue: [
            recoveredBlock49Block65Local1 := recoveredBlock49Block65Stack1.
            recoveredBlock49Block65PC := 88.
        ].
        recoveredBlock49Block65Step = 88 ifTrue: [
            recoveredBlock49Block65Stack1 := recoveredLocal1.
            recoveredBlock49Block65PC := 91.
        ].
        recoveredBlock49Block65Step = 91 ifTrue: [
            recoveredBlock49Block65Stack2 := [:block2810e73cArg1 | 
    | block2810e73cValue0 block2810e73cValue1 block2810e73cValue2 |
    block2810e73cValue0 := block2810e73cArg1.
    block2810e73cValue1 := (block2810e73cValue0) isError.
    block2810e73cValue2 := (block2810e73cValue1) not.
    block2810e73cValue2
].
            recoveredBlock49Block65PC := 93.
        ].
        recoveredBlock49Block65Step = 93 ifTrue: [
            recoveredBlock49Block65PC := 101.
        ].
        recoveredBlock49Block65Step = 101 ifTrue: [
            recoveredBlock49Block65Stack1 := (recoveredBlock49Block65Stack1) select: (recoveredBlock49Block65Stack2).
            recoveredBlock49Block65PC := 103.
        ].
        recoveredBlock49Block65Step = 103 ifTrue: [
            recoveredBlock49Block65Stack2 := [:recoveredBlock49Block65Block103Arg1 | 
    | recoveredBlock49Block65Block103Stack0 recoveredBlock49Block65Block103Stack1 recoveredBlock49Block65Block103Stack2 recoveredBlock49Block65Block103Stack3 recoveredBlock49Block65Block103Stack4 recoveredBlock49Block65Block103PC recoveredBlock49Block65Block103Step recoveredBlock49Block65Block103Done recoveredBlock49Block65Block103Result |
    recoveredBlock49Block65Block103Stack0 := self.
    recoveredBlock49Block65Block103PC := 110.
    recoveredBlock49Block65Block103Done := false.
    [recoveredBlock49Block65Block103Done not] whileTrue: [
        recoveredBlock49Block65Block103Step := recoveredBlock49Block65Block103PC.
        recoveredBlock49Block65Block103Step = 110 ifTrue: [
            recoveredBlock49Block65Block103Stack1 := nil.
            recoveredBlock49Block65Block103PC := 111.
        ].
        recoveredBlock49Block65Block103Step = 111 ifTrue: [
            recoveredBlock49Block65Block103Stack2 := recoveredBlock49Block65Block103Arg1.
            recoveredBlock49Block65Block103PC := 112.
        ].
        recoveredBlock49Block65Block103Step = 112 ifTrue: [
            recoveredBlock49Block65Block103Stack2 := (recoveredBlock49Block65Block103Stack2) globalId.
            recoveredBlock49Block65Block103PC := 114.
        ].
        recoveredBlock49Block65Block103Step = 114 ifTrue: [
            recoveredBlock49Block65Block103Stack3 := recoveredBlock49Block65Local2.
            recoveredBlock49Block65Block103PC := 117.
        ].
        recoveredBlock49Block65Block103Step = 117 ifTrue: [
            recoveredBlock49Block65Block103Stack2 := (recoveredBlock49Block65Block103Stack2) = (recoveredBlock49Block65Block103Stack3).
            recoveredBlock49Block65Block103PC := 118.
        ].
        recoveredBlock49Block65Block103Step = 118 ifTrue: [
            (recoveredBlock49Block65Block103Stack2) ifTrue: [recoveredBlock49Block65Block103PC := 122] ifFalse: [recoveredBlock49Block65Block103PC := 148].
        ].
        recoveredBlock49Block65Block103Step = 122 ifTrue: [
            recoveredBlock49Block65Block103PC := 123.
        ].
        recoveredBlock49Block65Block103Step = 123 ifTrue: [
            recoveredBlock49Block65Block103Stack1 := recoveredBlock49Block65Block103Arg1.
            recoveredBlock49Block65Block103PC := 124.
        ].
        recoveredBlock49Block65Block103Step = 124 ifTrue: [
            recoveredBlock49Block65Block103Stack2 := recoveredBlock49Arg1.
            recoveredBlock49Block65Block103PC := 127.
        ].
        recoveredBlock49Block65Block103Step = 127 ifTrue: [
            recoveredBlock49Block65Block103Stack2 := (recoveredBlock49Block65Block103Stack2) globalId.
            recoveredBlock49Block65Block103PC := 129.
        ].
        recoveredBlock49Block65Block103Step = 129 ifTrue: [
            (recoveredBlock49Block65Block103Stack1) globalId: (recoveredBlock49Block65Block103Stack2).
            recoveredBlock49Block65Block103PC := 131.
        ].
        recoveredBlock49Block65Block103Step = 131 ifTrue: [
            recoveredBlock49Block65Block103Stack1 := nil.
            recoveredBlock49Block65Block103PC := 132.
        ].
        recoveredBlock49Block65Block103Step = 132 ifTrue: [
            recoveredBlock49Block65Block103Stack2 := recoveredBlock49Block65Local1.
            recoveredBlock49Block65Block103PC := 135.
        ].
        recoveredBlock49Block65Block103Step = 135 ifTrue: [
            recoveredBlock49Block65Block103Stack2 := (recoveredBlock49Block65Block103Stack2) dbObject.
            recoveredBlock49Block65Block103PC := 137.
        ].
        recoveredBlock49Block65Block103Step = 137 ifTrue: [
            recoveredBlock49Block65Block103Stack3 := recoveredBlock49Arg1.
            recoveredBlock49Block65Block103PC := 140.
        ].
        recoveredBlock49Block65Block103Step = 140 ifTrue: [
            recoveredBlock49Block65Block103Stack2 := (recoveredBlock49Block65Block103Stack2) = (recoveredBlock49Block65Block103Stack3).
            recoveredBlock49Block65Block103PC := 141.
        ].
        recoveredBlock49Block65Block103Step = 141 ifTrue: [
            (recoveredBlock49Block65Block103Stack2) ifTrue: [recoveredBlock49Block65Block103PC := 148] ifFalse: [recoveredBlock49Block65Block103PC := 144].
        ].
        recoveredBlock49Block65Block103Step = 144 ifTrue: [
            recoveredBlock49Block65Block103PC := 145.
        ].
        recoveredBlock49Block65Block103Step = 145 ifTrue: [
            recoveredBlock49Block65Block103Stack1 := self.
            recoveredBlock49Block65Block103PC := 146.
        ].
        recoveredBlock49Block65Block103Step = 146 ifTrue: [
            recoveredBlock49Block65Block103Stack1 := (recoveredBlock49Block65Block103Stack1) etasDevHalt.
            recoveredBlock49Block65Block103PC := 148.
        ].
        recoveredBlock49Block65Block103Step = 148 ifTrue: [
            recoveredBlock49Block65Block103Result := recoveredBlock49Block65Block103Stack1.
            recoveredBlock49Block65Block103Done := true.
        ].
    ].
    recoveredBlock49Block65Block103Result
].
            recoveredBlock49Block65PC := 149.
        ].
        recoveredBlock49Block65Step = 149 ifTrue: [
            (recoveredBlock49Block65Stack1) do: (recoveredBlock49Block65Stack2).
            recoveredBlock49Block65PC := 151.
        ].
        recoveredBlock49Block65Step = 151 ifTrue: [
            recoveredBlock49Block65Stack1 := recoveredBlock49Arg1.
            recoveredBlock49Block65PC := 154.
        ].
        recoveredBlock49Block65Step = 154 ifTrue: [
            recoveredBlock49Block65Stack1 := (recoveredBlock49Block65Stack1) setModified.
            recoveredBlock49Block65PC := 156.
        ].
        recoveredBlock49Block65Step = 156 ifTrue: [
            recoveredBlock49Block65Result := recoveredBlock49Block65Stack1.
            recoveredBlock49Block65Done := true.
        ].
    ].
    recoveredBlock49Block65Result
].
    recoveredBlock49Value5 := (recoveredBlock49Value0) at: (recoveredBlock49Value2) ifAbsent: (recoveredBlock49Value3) ifPresent: (recoveredBlock49Value4).
    recoveredBlock49Value5
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := [:recoveredBlock166Arg1 | 
    | recoveredBlock166Value0 recoveredBlock166Value1 recoveredBlock166Value2 recoveredBlock166Value3 recoveredBlock166Value4 recoveredBlock166Value5 |
    recoveredBlock166Value0 := globalIdMap.
    recoveredBlock166Value1 := recoveredBlock166Arg1.
    recoveredBlock166Value2 := (recoveredBlock166Value1) globalId.
    recoveredBlock166Value3 := [].
    recoveredBlock166Value4 := [:recoveredBlock166Block181Arg1 | 
    | recoveredBlock166Block181Local1 recoveredBlock166Block181Local2 recoveredBlock166Block181Stack0 recoveredBlock166Block181Stack1 recoveredBlock166Block181Stack2 recoveredBlock166Block181Stack3 recoveredBlock166Block181PC recoveredBlock166Block181Step recoveredBlock166Block181Done recoveredBlock166Block181Result |
    recoveredBlock166Block181Stack0 := self.
    recoveredBlock166Block181PC := 188.
    recoveredBlock166Block181Done := false.
    [recoveredBlock166Block181Done not] whileTrue: [
        recoveredBlock166Block181Step := recoveredBlock166Block181PC.
        recoveredBlock166Block181Step = 188 ifTrue: [
            recoveredBlock166Block181Stack1 := recoveredBlock166Block181Arg1.
            recoveredBlock166Block181PC := 189.
        ].
        recoveredBlock166Block181Step = 189 ifTrue: [
            recoveredBlock166Block181Stack1 := (recoveredBlock166Block181Stack1) last.
            recoveredBlock166Block181PC := 191.
        ].
        recoveredBlock166Block181Step = 191 ifTrue: [
            recoveredBlock166Block181Local1 := recoveredBlock166Block181Stack1.
            recoveredBlock166Block181PC := 192.
        ].
        recoveredBlock166Block181Step = 192 ifTrue: [
            recoveredBlock166Block181Stack1 := nil.
            recoveredBlock166Block181PC := 193.
        ].
        recoveredBlock166Block181Step = 193 ifTrue: [
            recoveredBlock166Block181Stack2 := recoveredBlock166Arg1.
            recoveredBlock166Block181PC := 196.
        ].
        recoveredBlock166Block181Step = 196 ifTrue: [
            recoveredBlock166Block181Stack2 := (recoveredBlock166Block181Stack2) isModified.
            recoveredBlock166Block181PC := 198.
        ].
        recoveredBlock166Block181Step = 198 ifTrue: [
            (recoveredBlock166Block181Stack2) ifTrue: [recoveredBlock166Block181PC := 202] ifFalse: [recoveredBlock166Block181PC := 208].
        ].
        recoveredBlock166Block181Step = 202 ifTrue: [
            recoveredBlock166Block181PC := 203.
        ].
        recoveredBlock166Block181Step = 203 ifTrue: [
            recoveredBlock166Block181Stack1 := dbInterface.
            recoveredBlock166Block181PC := 205.
        ].
        recoveredBlock166Block181Step = 205 ifTrue: [
            recoveredBlock166Block181Stack2 := recoveredBlock166Block181Local1.
            recoveredBlock166Block181PC := 206.
        ].
        recoveredBlock166Block181Step = 206 ifTrue: [
            recoveredBlock166Block181Stack1 := (recoveredBlock166Block181Stack1) writeToCache: (recoveredBlock166Block181Stack2).
            recoveredBlock166Block181PC := 208.
        ].
        recoveredBlock166Block181Step = 208 ifTrue: [
            recoveredBlock166Block181Result := recoveredBlock166Block181Stack1.
            recoveredBlock166Block181Done := true.
        ].
    ].
    recoveredBlock166Block181Result
].
    recoveredBlock166Value5 := (recoveredBlock166Value0) at: (recoveredBlock166Value2) ifAbsent: (recoveredBlock166Value3) ifPresent: (recoveredBlock166Value4).
    recoveredBlock166Value5
].
    (recoveredValue8) do: (recoveredValue9).
    ^self
! !


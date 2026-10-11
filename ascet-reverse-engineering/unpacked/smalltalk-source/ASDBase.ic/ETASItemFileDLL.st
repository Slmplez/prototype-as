"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000988; bytecode file offset 0x8ffcfc"
!ETASItemFileDLL methodsFor: 'recovered'!
removeGroups
    ^self
! !

"ASDBase.ic method 0x20003970; bytecode file offset 0x90206c"
!ETASItemFileDLL methodsFor: 'recovered'!
addGroupFrom: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20006680; bytecode file offset 0x902f34"
!ETASItemFileDLL methodsFor: 'recovered'!
prepareRead
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 |
    ^self
! !

"ASDBase.ic method 0x20009c80; bytecode file offset 0x908be4"
!ETASItemFileDLL methodsFor: 'recovered'!
updateHeader
    | recoveredValue0 |
    recoveredValue0 := (self) preClose.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000e0a0; bytecode file offset 0x90ab8c"
!ETASItemFileDLL methodsFor: 'recovered'!
readNextBlockOfData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) readNextRecord.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000e22c; bytecode file offset 0x90ab8c"
!ETASItemFileDLL methodsFor: 'recovered'!
readFirstBlockOfData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) readFirstRecord.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014f34; bytecode file offset 0x912098"
!ETASItemFileDLL methodsFor: 'recovered'!
ItemFileAPIFunctions
    | recoveredValue0 |
    recoveredValue0 := ItemFileAPIFunctions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015714; bytecode file offset 0x912098"
!ETASItemFileDLL methodsFor: 'recovered'!
groupClass
    | recoveredValue0 |
    recoveredValue0 := ETASGroupItemFileDLL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ea2c; bytecode file offset 0x94d048"
!ETASItemFileDLL methodsFor: 'recovered'!
finalize
    (self) closeDLL.
    ^self
! !

"ASDBase.ic method 0x200582a8; bytecode file offset 0x956284"
!ETASItemFileDLL methodsFor: 'recovered'!
signalPathIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) signalPathIn: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200589e8; bytecode file offset 0x956284"
!ETASItemFileDLL methodsFor: 'recovered'!
createFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createFrom: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200633bc; bytecode file offset 0x95fcb8"
!ETASItemFileDLL methodsFor: 'recovered'!
recordFormat
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) nameTableRecordFormat.
    recoveredValue1 := (recoveredValue0) at: (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006b2c0; bytecode file offset 0x96873c"
!ETASItemFileDLL methodsFor: 'recovered'!
dll
    | recoveredValue0 |
    recoveredValue0 := dll.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e484; bytecode file offset 0x96af48"
!ETASItemFileDLL methodsFor: 'recovered'!
fileExtension
    | recoveredValue0 |
    recoveredValue0 := fileExtension.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006eaa0; bytecode file offset 0x96b41c"
!ETASItemFileDLL methodsFor: 'recovered'!
fileTypeString
    | recoveredValue0 |
    recoveredValue0 := fileTypeString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ee44; bytecode file offset 0x96b8a0"
!ETASItemFileDLL methodsFor: 'recovered'!
fileTypeSymbol
    | recoveredValue0 |
    recoveredValue0 := fileTypeSymbol.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007e21c; bytecode file offset 0x97c330"
!ETASItemFileDLL methodsFor: 'recovered'!
doesFormulaHandling
    ^false
! !

"ASDBase.ic method 0x200855d0; bytecode file offset 0x981e88"
!ETASItemFileDLL methodsFor: 'recovered'!
dll: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asPSZ.
    dll := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200ab410; bytecode file offset 0x9a7ccc"
!ETASItemFileDLL methodsFor: 'recovered'!
determineUniqueSignalFileNamesIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := fileExtension.
    recoveredValue3 := (recoveredValue0) determineUniqueSignalFileNameIn: (recoveredValue1) fileExtension: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200af920; bytecode file offset 0x9ac23c"
!ETASItemFileDLL methodsFor: 'recovered'!
addItemArray: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arrayOfItemsAsRecord: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) addRecord: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bbc84; bytecode file offset 0x9b8544"
!ETASItemFileDLL methodsFor: 'recovered'!
path: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asPSZ.
    super path: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c4174; bytecode file offset 0x9c0bf0"
!ETASItemFileDLL methodsFor: 'recovered'!
groupIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    groupIndex := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c51e0; bytecode file offset 0x9c1afc"
!ETASItemFileDLL methodsFor: 'recovered'!
fileTypeString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileTypeString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5338; bytecode file offset 0x9c1f64"
!ETASItemFileDLL methodsFor: 'recovered'!
fileTypeSymbol: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileTypeSymbol := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d50a0; bytecode file offset 0x9d1964"
!ETASItemFileDLL methodsFor: 'recovered'!
name
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := (recoveredValue1) , (' : ').
    recoveredValue3 := fileExtension.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dd408; bytecode file offset 0x9d9cc4"
!ETASItemFileDLL methodsFor: 'recovered'!
record: recoveredArg1 itemAt: recoveredArg2 put: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := access.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue2) putItem: (recoveredValue3) in: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200de41c; bytecode file offset 0x9dacd4"
!ETASItemFileDLL methodsFor: 'recovered'!
createFile: recoveredArg1 recordFormat: recoveredArg2 nameTable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createFile: (recoveredValue0) recordFormat: (recoveredValue1) nameTable: (recoveredValue2) sampleCount: (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e7124; bytecode file offset 0x9e39e8"
!ETASItemFileDLL methodsFor: 'recovered'!
getFileNameForGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := path.
    recoveredValue1 := (recoveredValue0) , ('.').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    recoveredValue5 := (self) generateFileName: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20126c3c; bytecode file offset 0xa234fc"
!ETASItemFileDLL methodsFor: 'recovered'!
readRecord: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) seekTo: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) readCurrentRecord.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20127ba0; bytecode file offset 0xa24460"
!ETASItemFileDLL methodsFor: 'recovered'!
copyGroup: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) copyObjectGraph.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := recoveredLocal2.
    recoveredValue2 := path.
    (recoveredValue1) path: (recoveredValue2).
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) prepareRead: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20128ef8; bytecode file offset 0xa257b8"
!ETASItemFileDLL methodsFor: 'recovered'!
nameTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := path.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameTableRecordFormat.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013179c; bytecode file offset 0xa2e060"
!ETASItemFileDLL methodsFor: 'recovered'!
prepareRead: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    groupIndex := recoveredValue0.
    (self) initializeElementAccess.
    recoveredValue1 := ByteArray.
    recoveredValue2 := (self) recordSize.
    recoveredValue3 := (recoveredValue1) new: (recoveredValue2).
    recordBuffer := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20136510; bytecode file offset 0xa32dd4"
!ETASItemFileDLL methodsFor: 'recovered'!
createGroups: recoveredArg1 recordFormats: recoveredArg2 nameTables: recoveredArg3 itemFile: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ETASGroupItemFileDLL.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) generateFileName: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue5) sampleCnts.
    recoveredValue7 := (recoveredValue0) createGroups: (recoveredValue2) recordFormats: (recoveredValue3) nameTables: (recoveredValue4) class: (self) sampleCnts: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2013b714; bytecode file offset 0xa37fcc"
!ETASItemFileDLL methodsFor: 'recovered'!
recordSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recordSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := access.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRecordSizeFrom: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recordSize := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recordSize.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20140d78; bytecode file offset 0xa3d63c"
!ETASItemFileDLL methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    groupIndex := -1.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    functions := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2017e2f8; bytecode file offset 0xa7abb8"
!ETASItemFileDLL methodsFor: 'recovered'!
initializeElementAccess
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) nameTableRecordFormat.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := recoveredLocal3.
    recoveredValue2 := (recoveredValue1) at: (2).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (recoveredValue3) at: (1).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (self) initializeElementAccess: (recoveredValue5) formats: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20189948; bytecode file offset 0xa86218"
!ETASItemFileDLL methodsFor: 'recovered'!
test
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) initializeFunctions.
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) testApi: (recoveredValue2).
    (self) closeDLL.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) contents.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201de94c; bytecode file offset 0xadb210"
!ETASItemFileDLL methodsFor: 'recovered'!
defaultItemArray
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) openFile.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    ^recoveredBlock5Value0
].
    (recoveredValue0) ifError: (recoveredValue1).
    recoveredValue2 := (self) readLastItemArray.
    recoveredLocal1 := recoveredValue2.
    (self) closeFile.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201f5230; bytecode file offset 0xaf1af0"
!ETASItemFileDLL methodsFor: 'recovered'!
fileExtension: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) firstOrNil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            fileExtension := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            fileExtension := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020a514; bytecode file offset 0xb06de0"
!ETASItemFileDLL methodsFor: 'recovered'!
cleanupDLL
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := functions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CleanupDLL'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) createUndefinedAPIFunctionError: ('cleanupDLL').
    recoveredBlock8Value0
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := [:block280d9adcArg1 | 
    | block280d9adcValue0 block280d9adcValue1 |
    block280d9adcValue0 := block280d9adcArg1.
    block280d9adcValue1 := (block280d9adcValue0) call.
    block280d9adcValue1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20248408; bytecode file offset 0xb44cd0"
!ETASItemFileDLL methodsFor: 'recovered'!
preOpenItemFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) initializeFunctions.
    recoveredValue0 := functions.
    recoveredValue1 := [
    (self) createUndefinedAPIFunctionError: ('PreOpenItemFile').
    false
].
    recoveredValue2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := path.
    recoveredBlock22Value2 := (recoveredBlock22Value0) callWith: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    recoveredValue3 := (recoveredValue0) at: ('PreOpenItemFile') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2024f2e4; bytecode file offset 0xb4bbbc"
!ETASItemFileDLL methodsFor: 'recovered'!
createUndefinedAPIFunctionError: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('Undefined MeasureItemFileAPI call ').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) nextPutAll: (' in ').
    recoveredValue7 := dll.
    (recoveredValue2) nextPutAll: (recoveredValue7).
    recoveredValue8 := DBMeasureFileAPIError.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) contents.
    recoveredValue11 := (recoveredValue8) create: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x20251224; bytecode file offset 0xb4daf0"
!ETASItemFileDLL methodsFor: 'recovered'!
testReadFirstRecord
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) openFileReadOnly.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) readFirstItemArray.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) sampleCnt.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) readNextItemArray.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20252d4c; bytecode file offset 0xb4f614"
!ETASItemFileDLL methodsFor: 'recovered'!
closeFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := functions.
    recoveredValue1 := [].
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
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
            recoveredBlock10Stack2 := fHandle.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack2 == nil) ifTrue: [recoveredBlock10PC := 33] ifFalse: [recoveredBlock10PC := 22].
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10Stack2 := fHandle.
            recoveredBlock10PC := 26.
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) reference.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            (recoveredBlock10Stack1) callWith: (recoveredBlock10Stack2).
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            fHandle := recoveredBlock10Stack2.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    recoveredValue3 := (recoveredValue0) at: ('CloseItemFile') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20256ef0; bytecode file offset 0xb537bc"
!ETASItemFileDLL methodsFor: 'recovered'!
createOneFileNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) createUndefinedAPIFunctionError: ('CreateOneFileNamed').
    recoveredBlock8Value0
].
    recoveredValue2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredArg1.
    recoveredBlock18Value2 := (self) generateFileName: (recoveredBlock18Value1).
    recoveredBlock18Value3 := (recoveredBlock18Value2) asPSZ.
    recoveredBlock18Value4 := (recoveredBlock18Value0) callWith: (recoveredBlock18Value3).
    recoveredBlock18Value4
].
    recoveredValue3 := (recoveredValue0) at: ('CreateOneFileNamed') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20269d0c; bytecode file offset 0xb665d0"
!ETASItemFileDLL methodsFor: 'recovered'!
preClose
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) createUndefinedAPIFunctionError: ('PreCloseItemFile').
    recoveredBlock8Value0
].
    recoveredValue2 := [:recoveredBlock18Arg1 | 
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
            recoveredBlock18Stack2 := fHandle.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            (recoveredBlock18Stack2 == nil) ifTrue: [recoveredBlock18PC := 35] ifFalse: [recoveredBlock18PC := 30].
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack2 := path.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) callWith: (recoveredBlock18Stack2).
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    recoveredValue3 := (recoveredValue0) at: ('PreCloseItemFile') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20269d4c; bytecode file offset 0xb66640"
!ETASItemFileDLL methodsFor: 'recovered'!
currentRecordNumber
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    (self) createUndefinedAPIFunctionError: ('CurrentRecordNumber').
    0
].
    recoveredValue2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := path.
    recoveredBlock21Value2 := groupIndex.
    recoveredBlock21Value3 := (recoveredBlock21Value0) callWith: (recoveredBlock21Value1) with: (recoveredBlock21Value2).
    recoveredBlock21Value3
].
    recoveredValue3 := (recoveredValue0) at: ('CurrentRecordNumber') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20269d64; bytecode file offset 0xb66640"
!ETASItemFileDLL methodsFor: 'recovered'!
sampleCnt
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    (self) createUndefinedAPIFunctionError: ('SampleCnt').
    0
].
    recoveredValue2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := path.
    recoveredBlock21Value2 := groupIndex.
    recoveredBlock21Value3 := (recoveredBlock21Value0) callWith: (recoveredBlock21Value1) with: (recoveredBlock21Value2).
    recoveredBlock21Value3
].
    recoveredValue3 := (recoveredValue0) at: ('SampleCnt') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20269d7c; bytecode file offset 0xb66640"
!ETASItemFileDLL methodsFor: 'recovered'!
offsetIntoFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    (self) createUndefinedAPIFunctionError: ('OffsetIntoFile').
    0
].
    recoveredValue2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := path.
    recoveredBlock21Value2 := groupIndex.
    recoveredBlock21Value3 := (recoveredBlock21Value0) callWith: (recoveredBlock21Value1) with: (recoveredBlock21Value2).
    recoveredBlock21Value3
].
    recoveredValue3 := (recoveredValue0) at: ('OffsetIntoFile') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2026b9f0; bytecode file offset 0xb682bc"
!ETASItemFileDLL methodsFor: 'recovered'!
hasRecords
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := functions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initializeFunctions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := functions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'HasRecords'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock17Value0 |
    recoveredBlock17Value0 := (self) hasRecord.
    ^recoveredBlock17Value0
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := [:block280e02c8Arg1 | 
    | block280e02c8Value0 block280e02c8Value1 |
    block280e02c8Value0 := block280e02c8Arg1.
    block280e02c8Value1 := (block280e02c8Value0) call.
    block280e02c8Value1
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2026d7a0; bytecode file offset 0xb6a064"
!ETASItemFileDLL methodsFor: 'recovered'!
seekTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) createUndefinedAPIFunctionError: ('SeekTo').
    recoveredBlock8Value0
].
    recoveredValue2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredArg1.
    recoveredBlock18Value2 := path.
    recoveredBlock18Value3 := groupIndex.
    recoveredBlock18Value4 := (recoveredBlock18Value0) callWith: (recoveredBlock18Value1) with: (recoveredBlock18Value2) with: (recoveredBlock18Value3).
    recoveredBlock18Value4
].
    recoveredValue3 := (recoveredValue0) at: ('SeekTo') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20282144; bytecode file offset 0xb7ea30"
!ETASItemFileDLL methodsFor: 'recovered'!
hasRecord
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := functions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initializeFunctions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := functions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'HasRecord'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock17Value0 |
    recoveredBlock17Value0 := (self) createUndefinedAPIFunctionError: ('HasRecord').
    recoveredBlock17Value0
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := [:block280e1480Arg1 | 
    | block280e1480Value0 block280e1480Value1 |
    block280e1480Value0 := block280e1480Arg1.
    block280e1480Value1 := (block280e1480Value0) call.
    block280e1480Value1
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20282164; bytecode file offset 0xb7ea30"
!ETASItemFileDLL methodsFor: 'recovered'!
allowsGroup
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := functions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initializeFunctions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := functions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'AllowGroups'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock17Value0 |
    recoveredBlock17Value0 := (self) createUndefinedAPIFunctionError: ('AllowGroups').
    recoveredBlock17Value0
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := [:block280e14a4Arg1 | 
    | block280e14a4Value0 block280e14a4Value1 |
    block280e14a4Value0 := block280e14a4Arg1.
    block280e14a4Value1 := (block280e14a4Value0) call.
    block280e14a4Value1
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202879b8; bytecode file offset 0xb84278"
!ETASItemFileDLL methodsFor: 'recovered'!
arrayOfItemsAsRecord: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := access.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recordBuffer.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) record: (recoveredStack3) itemAt: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 14] ifFalse: [recoveredLocal1 := nil. recoveredPC := 38]] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recordBuffer.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202934cc; bytecode file offset 0xb8fda0"
!ETASItemFileDLL methodsFor: 'recovered'!
recordFormatCol: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) recordFormatPrim: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := recoveredBlock16Value0.
    recoveredBlock16Value2 := recoveredBlock16Arg1.
    (recoveredBlock16Value1) nextPutAll: (recoveredBlock16Value2).
    recoveredBlock16Value3 := (recoveredBlock16Value0) nextPut: ($ ).
    recoveredBlock16Value3
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) contents.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20295cd0; bytecode file offset 0xb92598"
!ETASItemFileDLL methodsFor: 'recovered'!
isOpen
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := functions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := functions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'IsOpen'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [
    (self) createUndefinedAPIFunctionError: ('IsOpen').
    false
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := path.
    recoveredBlock28Value2 := (recoveredBlock28Value1) asPSZ.
    recoveredBlock28Value3 := (recoveredBlock28Value0) callWith: (recoveredBlock28Value2).
    recoveredBlock28Value3
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202988c0; bytecode file offset 0xb95188"
!ETASItemFileDLL methodsFor: 'recovered'!
addRecord: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) createUndefinedAPIFunctionError: ('AddRecord').
    recoveredBlock8Value0
].
    recoveredValue2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredArg1.
    recoveredBlock18Value2 := recoveredArg1.
    recoveredBlock18Value3 := (recoveredBlock18Value2) size.
    recoveredBlock18Value4 := path.
    recoveredBlock18Value5 := groupIndex.
    recoveredBlock18Value6 := (recoveredBlock18Value0) callWith: (recoveredBlock18Value1) with: (recoveredBlock18Value3) with: (recoveredBlock18Value4) with: (recoveredBlock18Value5).
    recoveredBlock18Value6
].
    recoveredValue3 := (recoveredValue0) at: ('AddRecord') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202a1d64; bytecode file offset 0xb9e62c"
!ETASItemFileDLL methodsFor: 'recovered'!
sampleCnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    (self) createUndefinedAPIFunctionError: ('SetSampleCnt').
    0
].
    recoveredValue2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := recoveredArg1.
    recoveredBlock21Value2 := path.
    recoveredBlock21Value3 := (recoveredBlock21Value2) asPSZ.
    recoveredBlock21Value4 := groupIndex.
    recoveredBlock21Value5 := (recoveredBlock21Value0) callWith: (recoveredBlock21Value1) with: (recoveredBlock21Value3) with: (recoveredBlock21Value4).
    recoveredBlock21Value5
].
    recoveredValue3 := (recoveredValue0) at: ('SetSampleCnt') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202a949c; bytecode file offset 0xba5d88"
!ETASItemFileDLL methodsFor: 'recovered'!
readFirstRecord
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) createUndefinedAPIFunctionError: ('ReadFirstRecord').
    ^recoveredBlock8Value0
].
    recoveredValue2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recordBuffer.
    recoveredBlock18Value2 := recordBuffer.
    recoveredBlock18Value3 := (recoveredBlock18Value2) size.
    recoveredBlock18Value4 := path.
    recoveredBlock18Value5 := groupIndex.
    recoveredBlock18Value6 := (recoveredBlock18Value0) callWith: (recoveredBlock18Value1) with: (recoveredBlock18Value3) with: (recoveredBlock18Value4) with: (recoveredBlock18Value5).
    recoveredBlock18Value6
].
    (recoveredValue0) at: ('ReadFirstRecord') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    recoveredValue3 := recordBuffer.
    recoveredValue4 := (recoveredValue3) copy.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202a94bc; bytecode file offset 0xba5d88"
!ETASItemFileDLL methodsFor: 'recovered'!
readLastRecord
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) createUndefinedAPIFunctionError: ('ReadLastRecord').
    ^recoveredBlock8Value0
].
    recoveredValue2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recordBuffer.
    recoveredBlock18Value2 := recordBuffer.
    recoveredBlock18Value3 := (recoveredBlock18Value2) size.
    recoveredBlock18Value4 := path.
    recoveredBlock18Value5 := groupIndex.
    recoveredBlock18Value6 := (recoveredBlock18Value0) callWith: (recoveredBlock18Value1) with: (recoveredBlock18Value3) with: (recoveredBlock18Value4) with: (recoveredBlock18Value5).
    recoveredBlock18Value6
].
    (recoveredValue0) at: ('ReadLastRecord') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    recoveredValue3 := recordBuffer.
    recoveredValue4 := (recoveredValue3) copy.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20304644; bytecode file offset 0xc00f10"
!ETASItemFileDLL methodsFor: 'recovered'!
groupCnt
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := functions.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isEmpty.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 20] ifFalse: [recoveredBlock8PC := 26].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            (recoveredBlock8Stack1) initializeFunctions.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack2 := 'GroupCnt'.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            (recoveredBlock8Stack1) createUndefinedAPIFunctionError: (recoveredBlock8Stack2).
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack1 := 3.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue2 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 recoveredBlock34Value4 |
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := path.
    recoveredBlock34Value2 := groupIndex.
    recoveredBlock34Value3 := (recoveredBlock34Value2) = (0).
    recoveredBlock34Value4 := (recoveredBlock34Value0) callWith: (recoveredBlock34Value1) with: (recoveredBlock34Value3).
    recoveredBlock34Value4
].
    recoveredValue3 := (recoveredValue0) at: ('GroupCnt') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2031ab98; bytecode file offset 0xc17464"
!ETASItemFileDLL methodsFor: 'recovered'!
nameTable: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    (self) createUndefinedAPIFunctionError: ('SetNameTable').
    #()
].
    recoveredValue2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 |
    recoveredBlock21Value0 := recoveredLocal5.
    recoveredBlock21Value1 := [:recoveredBlock21Block31Arg1 | 
    | recoveredBlock21Block31Value0 recoveredBlock21Block31Value1 recoveredBlock21Block31Value2 recoveredBlock21Block31Value3 recoveredBlock21Block31Value4 |
    recoveredBlock21Block31Value0 := recoveredBlock21Arg1.
    recoveredBlock21Block31Value1 := recoveredBlock21Block31Arg1.
    recoveredBlock21Block31Value2 := path.
    recoveredBlock21Block31Value3 := groupIndex.
    recoveredBlock21Block31Value4 := (recoveredBlock21Block31Value0) callWith: (recoveredBlock21Block31Value1) with: (recoveredBlock21Block31Value2) with: (recoveredBlock21Block31Value3).
    recoveredBlock21Block31Value4
].
    recoveredBlock21Value2 := (recoveredBlock21Value0) do: (recoveredBlock21Value1).
    recoveredBlock21Value2
].
    recoveredValue3 := (recoveredValue0) at: ('SetNameTable') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2031abf4; bytecode file offset 0xc174c0"
!ETASItemFileDLL methodsFor: 'recovered'!
recordFormatPrim: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    (self) createUndefinedAPIFunctionError: ('SetRecordFormat').
    #()
].
    recoveredValue2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 |
    recoveredBlock21Value0 := recoveredArg1.
    recoveredBlock21Value1 := [:recoveredBlock21Block31Arg1 | 
    | recoveredBlock21Block31Value0 recoveredBlock21Block31Value1 recoveredBlock21Block31Value2 recoveredBlock21Block31Value3 recoveredBlock21Block31Value4 |
    recoveredBlock21Block31Value0 := recoveredBlock21Arg1.
    recoveredBlock21Block31Value1 := recoveredBlock21Block31Arg1.
    recoveredBlock21Block31Value2 := path.
    recoveredBlock21Block31Value3 := groupIndex.
    recoveredBlock21Block31Value4 := (recoveredBlock21Block31Value0) callWith: (recoveredBlock21Block31Value1) with: (recoveredBlock21Block31Value2) with: (recoveredBlock21Block31Value3).
    recoveredBlock21Block31Value4
].
    recoveredBlock21Value2 := (recoveredBlock21Value0) do: (recoveredBlock21Value1).
    recoveredBlock21Value2
].
    recoveredValue3 := (recoveredValue0) at: ('SetRecordFormat') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2032c698; bytecode file offset 0xc28f68"
!ETASItemFileDLL methodsFor: 'recovered'!
indexTimeChannel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := functions.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isEmpty.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 20] ifFalse: [recoveredBlock8PC := 26].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            (recoveredBlock8Stack1) initializeFunctions.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack2 := 'SetIndexTimeChannel'.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            (recoveredBlock8Stack1) createUndefinedAPIFunctionError: (recoveredBlock8Stack2).
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) indexTimeChannel: (recoveredBlock8Stack1).
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := path.
    recoveredBlock37Value2 := groupIndex.
    recoveredBlock37Value3 := recoveredArg1.
    recoveredBlock37Value4 := (recoveredBlock37Value0) callWith: (recoveredBlock37Value1) with: (recoveredBlock37Value2) with: (recoveredBlock37Value3).
    recoveredBlock37Value4
].
    recoveredValue3 := (recoveredValue0) at: ('SetIndexTimeChannel') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20333434; bytecode file offset 0xc2fd20"
!ETASItemFileDLL methodsFor: 'recovered'!
closeDLL
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := path.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFunctionTable: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            functions := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := functions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block280ed018Arg1 :block280ed018Arg2 | 
    | block280ed018Value0 block280ed018Value1 |
    block280ed018Value0 := block280ed018Arg2.
    block280ed018Value1 := (block280ed018Value0) unbind.
    block280ed018Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := functions.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            functions := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := dll.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := PlatformLibrary.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := dll.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicalName: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) primClose.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := path.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) removeFunctionTable: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'CloseDLL'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034a188; bytecode file offset 0xc46aac"
!ETASItemFileDLL methodsFor: 'recovered'!
openFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) initializeFunctions.
    recoveredValue0 := groupIndex.
    (self) prepareRead: (recoveredValue0).
    recoveredValue1 := functions.
    recoveredValue2 := [
    | recoveredBlock15Value0 |
    recoveredBlock15Value0 := (self) createUndefinedAPIFunctionError: ('OpenItemFile').
    recoveredBlock15Value0
].
    recoveredValue3 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 recoveredBlock26Value6 recoveredBlock26Value7 recoveredBlock26Value8 recoveredBlock26Value9 recoveredBlock26Value10 |
    recoveredBlock26Value0 := ETASOSHandle.
    recoveredBlock26Value1 := recoveredBlock26Arg1.
    recoveredBlock26Value2 := path.
    recoveredBlock26Value3 := (recoveredBlock26Value2) asPSZ.
    recoveredBlock26Value4 := (recoveredBlock26Value1) callWith: (recoveredBlock26Value3).
    recoveredBlock26Value5 := (recoveredBlock26Value0) immediate: (recoveredBlock26Value4).
    fHandle := recoveredBlock26Value5.
    recoveredBlock26Value6 := fHandle.
    recoveredBlock26Value7 := path.
    recoveredBlock26Value8 := ('OpenItemFile ') , (recoveredBlock26Value7).
    recoveredBlock26Value9 := (recoveredBlock26Value8) , (' failed').
    recoveredBlock26Value10 := (recoveredBlock26Value6) testHandle: (recoveredBlock26Value9).
    recoveredBlock26Value10
].
    recoveredValue4 := (recoveredValue1) at: ('OpenItemFile') ifAbsent: (recoveredValue2) ifPresent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2034a1c4; bytecode file offset 0xc46aac"
!ETASItemFileDLL methodsFor: 'recovered'!
openFileReadOnly
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) initializeFunctions.
    recoveredValue0 := groupIndex.
    (self) prepareRead: (recoveredValue0).
    recoveredValue1 := functions.
    recoveredValue2 := [
    | recoveredBlock15Value0 |
    recoveredBlock15Value0 := (self) createUndefinedAPIFunctionError: ('OpenItemFileReadOnly').
    recoveredBlock15Value0
].
    recoveredValue3 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 recoveredBlock26Value6 recoveredBlock26Value7 recoveredBlock26Value8 recoveredBlock26Value9 recoveredBlock26Value10 |
    recoveredBlock26Value0 := ETASOSHandle.
    recoveredBlock26Value1 := recoveredBlock26Arg1.
    recoveredBlock26Value2 := path.
    recoveredBlock26Value3 := (recoveredBlock26Value2) asPSZ.
    recoveredBlock26Value4 := (recoveredBlock26Value1) callWith: (recoveredBlock26Value3).
    recoveredBlock26Value5 := (recoveredBlock26Value0) immediate: (recoveredBlock26Value4).
    fHandle := recoveredBlock26Value5.
    recoveredBlock26Value6 := fHandle.
    recoveredBlock26Value7 := path.
    recoveredBlock26Value8 := ('OpenItemFileReadOnly ') , (recoveredBlock26Value7).
    recoveredBlock26Value9 := (recoveredBlock26Value8) , (' failed').
    recoveredBlock26Value10 := (recoveredBlock26Value6) testHandle: (recoveredBlock26Value9).
    recoveredBlock26Value10
].
    recoveredValue4 := (recoveredValue1) at: ('OpenItemFileReadOnly') ifAbsent: (recoveredValue2) ifPresent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2034ceb0; bytecode file offset 0xc49788"
!ETASItemFileDLL methodsFor: 'recovered'!
readCurrentRecord
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := functions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ReadCurrentRecord'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) createUndefinedAPIFunctionError: ('ReadCurrentRecord').
    ^recoveredBlock8Value0
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recordBuffer.
    recoveredBlock18Value2 := recordBuffer.
    recoveredBlock18Value3 := (recoveredBlock18Value2) size.
    recoveredBlock18Value4 := path.
    recoveredBlock18Value5 := groupIndex.
    recoveredBlock18Value6 := (recoveredBlock18Value0) callWith: (recoveredBlock18Value1) with: (recoveredBlock18Value3) with: (recoveredBlock18Value4) with: (recoveredBlock18Value5).
    recoveredBlock18Value6
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := DBFileError.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'ReadCurrentRecord failed'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBasic: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recordBuffer.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2034cf1c; bytecode file offset 0xc497f4"
!ETASItemFileDLL methodsFor: 'recovered'!
readNextRecord
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := functions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ReadNextRecord'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) createUndefinedAPIFunctionError: ('ReadNextRecord').
    ^recoveredBlock8Value0
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recordBuffer.
    recoveredBlock18Value2 := recordBuffer.
    recoveredBlock18Value3 := (recoveredBlock18Value2) size.
    recoveredBlock18Value4 := path.
    recoveredBlock18Value5 := groupIndex.
    recoveredBlock18Value6 := (recoveredBlock18Value0) callWith: (recoveredBlock18Value1) with: (recoveredBlock18Value3) with: (recoveredBlock18Value4) with: (recoveredBlock18Value5).
    recoveredBlock18Value6
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := DBFileError.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'readNextRecord failed'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBasic: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recordBuffer.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20359630; bytecode file offset 0xc55f1c"
!ETASItemFileDLL methodsFor: 'recovered'!
createFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) initializeFunctions.
    recoveredValue0 := functions.
    recoveredValue1 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := DBFileError.
    recoveredBlock10Value1 := dll.
    recoveredBlock10Value2 := ('Missing API-Function CreateItemFile in ') , (recoveredBlock10Value1).
    recoveredBlock10Value3 := (recoveredBlock10Value0) create: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    recoveredValue2 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 recoveredBlock27Value6 recoveredBlock27Value7 recoveredBlock27Value8 recoveredBlock27Value9 recoveredBlock27Value10 |
    recoveredBlock27Value0 := ETASOSHandle.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := path.
    recoveredBlock27Value3 := (recoveredBlock27Value2) asPSZ.
    recoveredBlock27Value4 := (recoveredBlock27Value1) callWith: (recoveredBlock27Value3).
    recoveredBlock27Value5 := (recoveredBlock27Value0) immediate: (recoveredBlock27Value4).
    fHandle := recoveredBlock27Value5.
    recoveredBlock27Value6 := fHandle.
    recoveredBlock27Value7 := path.
    recoveredBlock27Value8 := ('CreateItemFile ') , (recoveredBlock27Value7).
    recoveredBlock27Value9 := (recoveredBlock27Value8) , (' failed').
    recoveredBlock27Value10 := (recoveredBlock27Value6) testHandle: (recoveredBlock27Value9).
    recoveredBlock27Value10
].
    recoveredValue3 := (recoveredValue0) at: ('CreateItemFile') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20375b18; bytecode file offset 0xc723ec"
!ETASItemFileDLL methodsFor: 'recovered'!
indexTimeChannel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := functions.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isEmpty.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 20] ifFalse: [recoveredBlock8PC := 26].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            (recoveredBlock8Stack1) initializeFunctions.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack2 := 'IndexTimeChannel'.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            (recoveredBlock8Stack1) createUndefinedAPIFunctionError: (recoveredBlock8Stack2).
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) indexTimeChannel.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue2 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Local1 recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Arg1.
            recoveredBlock34PC := 41.
        ].
        recoveredBlock34Step = 41 ifTrue: [
            recoveredBlock34Stack2 := path.
            recoveredBlock34PC := 43.
        ].
        recoveredBlock34Step = 43 ifTrue: [
            recoveredBlock34Stack3 := groupIndex.
            recoveredBlock34PC := 45.
        ].
        recoveredBlock34Step = 45 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) callWith: (recoveredBlock34Stack2) with: (recoveredBlock34Stack3).
            recoveredBlock34PC := 47.
        ].
        recoveredBlock34Step = 47 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Stack1.
            recoveredBlock34PC := 48.
        ].
        recoveredBlock34Step = 48 ifTrue: [
            recoveredBlock34Local1 := recoveredBlock34Stack2.
            recoveredBlock34PC := 49.
        ].
        recoveredBlock34Step = 49 ifTrue: [
            recoveredBlock34Stack2 := 0.
            recoveredBlock34PC := 51.
        ].
        recoveredBlock34Step = 51 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) = (recoveredBlock34Stack2).
            recoveredBlock34PC := 52.
        ].
        recoveredBlock34Step = 52 ifTrue: [
            (recoveredBlock34Stack1) ifTrue: [recoveredBlock34PC := 56] ifFalse: [recoveredBlock34PC := 64].
        ].
        recoveredBlock34Step = 56 ifTrue: [
            recoveredBlock34Stack1 := self.
            recoveredBlock34PC := 57.
        ].
        recoveredBlock34Step = 57 ifTrue: [
            recoveredBlock34Stack1 := super indexTimeChannel.
            recoveredBlock34PC := 61.
        ].
        recoveredBlock34Step = 61 ifTrue: [
            recoveredBlock34PC := 65.
        ].
        recoveredBlock34Step = 64 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Local1.
            recoveredBlock34PC := 65.
        ].
        recoveredBlock34Step = 65 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
    recoveredValue3 := (recoveredValue0) at: ('IndexTimeChannel') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2037d40c; bytecode file offset 0xc79ce0"
!ETASItemFileDLL methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := groupIndex.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) nextPutAll: ('fileExtension ').
    recoveredValue6 := fileExtension.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) printOn: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) nextPutAll: ('dll ').
    recoveredValue10 := dll.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) printOn: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    (recoveredValue12) cr.
    recoveredValue13 := recoveredArg1.
    (recoveredValue13) nextPutAll: ('fileTypeSymbol ').
    recoveredValue14 := fileTypeSymbol.
    recoveredValue15 := recoveredArg1.
    (recoveredValue14) printOn: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    (recoveredValue16) cr.
    recoveredValue17 := recoveredArg1.
    (recoveredValue17) nextPutAll: ('fileTypeString ').
    recoveredValue18 := fileTypeString.
    recoveredValue19 := recoveredArg1.
    (recoveredValue18) printOn: (recoveredValue19).
    ^self
! !

"ASDBase.ic method 0x203a4d94; bytecode file offset 0xca1678"
!ETASItemFileDLL methodsFor: 'recovered'!
recordFormatPrim
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    (self) createUndefinedAPIFunctionError: ('RecordFormat').
    #()
].
    recoveredValue2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21Stack5 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := OrderedCollection.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) new.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredLocal2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal2.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack2 := recoveredLocal1.
            recoveredBlock21PC := 44.
        ].
        recoveredBlock21Step = 44 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) asString.
            recoveredBlock21PC := 46.
        ].
        recoveredBlock21Step = 46 ifTrue: [
            (recoveredBlock21Stack1) add: (recoveredBlock21Stack2).
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 48 ifTrue: [
            recoveredBlock21Stack1 := OSStringZ.
            recoveredBlock21PC := 50.
        ].
        recoveredBlock21Step = 50 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 51.
        ].
        recoveredBlock21Step = 51 ifTrue: [
            recoveredBlock21Stack3 := path.
            recoveredBlock21PC := 53.
        ].
        recoveredBlock21Step = 53 ifTrue: [
            recoveredBlock21Stack4 := groupIndex.
            recoveredBlock21PC := 55.
        ].
        recoveredBlock21Step = 55 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) callWith: (recoveredBlock21Stack3) with: (recoveredBlock21Stack4).
            recoveredBlock21PC := 57.
        ].
        recoveredBlock21Step = 57 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) address: (recoveredBlock21Stack2).
            recoveredBlock21PC := 59.
        ].
        recoveredBlock21Step = 59 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 62.
        ].
        recoveredBlock21Step = 62 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 65.
        ].
        recoveredBlock21Step = 65 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) isNull.
            recoveredBlock21PC := 67.
        ].
        recoveredBlock21Step = 67 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 69] ifFalse: [recoveredBlock21PC := 38].
        ].
        recoveredBlock21Step = 69 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal2.
            recoveredBlock21PC := 72.
        ].
        recoveredBlock21Step = 72 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    recoveredValue3 := (recoveredValue0) at: ('RecordFormat') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x203c5598; bytecode file offset 0xcc1f34"
!ETASItemFileDLL methodsFor: 'recovered'!
addInspectorMenuEntriesIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super addInspectorMenuEntriesIn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'test'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'test'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'sampleCnt'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 'sampleCnt'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'nameTable'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := 'nameTable'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'recordFormat'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := 'recordFormat'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'closeDLL'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'closeDLL'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := [
    true
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20407bec; bytecode file offset 0xd044e8"
!ETASItemFileDLL methodsFor: 'recovered'!
initializeFunctions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := path.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFunctionTable: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            functions := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) FunctionAPI.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := functions.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'initfunctions'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) FunctionAPI.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:recoveredBlock36Arg1 :recoveredBlock36Arg2 | 
    | recoveredBlock36Local1 recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36Stack5 recoveredBlock36Stack6 recoveredBlock36Stack7 recoveredBlock36Stack8 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := PlatformFunction.
            recoveredBlock36PC := 44.
        ].
        recoveredBlock36Step = 44 ifTrue: [
            recoveredBlock36Stack2 := 'c'.
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Arg1.
            recoveredBlock36PC := 47.
        ].
        recoveredBlock36Step = 47 ifTrue: [
            recoveredBlock36Stack4 := dll.
            recoveredBlock36PC := 49.
        ].
        recoveredBlock36Step = 49 ifTrue: [
            recoveredBlock36Stack5 := recoveredBlock36Arg2.
            recoveredBlock36PC := 50.
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36Stack6 := 2.
            recoveredBlock36PC := 52.
        ].
        recoveredBlock36Step = 52 ifTrue: [
            recoveredBlock36Stack7 := recoveredBlock36Arg2.
            recoveredBlock36PC := 53.
        ].
        recoveredBlock36Step = 53 ifTrue: [
            recoveredBlock36Stack7 := (recoveredBlock36Stack7) size.
            recoveredBlock36PC := 54.
        ].
        recoveredBlock36Step = 54 ifTrue: [
            recoveredBlock36Stack5 := (recoveredBlock36Stack5) copyFrom: (recoveredBlock36Stack6) to: (recoveredBlock36Stack7).
            recoveredBlock36PC := 56.
        ].
        recoveredBlock36Step = 56 ifTrue: [
            recoveredBlock36Stack6 := recoveredBlock36Arg2.
            recoveredBlock36PC := 57.
        ].
        recoveredBlock36Step = 57 ifTrue: [
            recoveredBlock36Stack7 := 1.
            recoveredBlock36PC := 59.
        ].
        recoveredBlock36Step = 59 ifTrue: [
            recoveredBlock36Stack6 := (recoveredBlock36Stack6) at: (recoveredBlock36Stack7).
            recoveredBlock36PC := 61.
        ].
        recoveredBlock36Step = 61 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) callingConvention: (recoveredBlock36Stack2) function: (recoveredBlock36Stack3) library: (recoveredBlock36Stack4) parameterTypes: (recoveredBlock36Stack5) returnType: (recoveredBlock36Stack6).
            recoveredBlock36PC := 64.
        ].
        recoveredBlock36Step = 64 ifTrue: [
            recoveredBlock36Local1 := recoveredBlock36Stack1.
            recoveredBlock36PC := 65.
        ].
        recoveredBlock36Step = 65 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Local1.
            recoveredBlock36PC := 66.
        ].
        recoveredBlock36Step = 66 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) addressOrNull.
            recoveredBlock36PC := 68.
        ].
        recoveredBlock36Step = 68 ifTrue: [
            recoveredBlock36Stack2 := 0.
            recoveredBlock36PC := 70.
        ].
        recoveredBlock36Step = 70 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) ~= (recoveredBlock36Stack2).
            recoveredBlock36PC := 71.
        ].
        recoveredBlock36Step = 71 ifTrue: [
            (recoveredBlock36Stack1) ifTrue: [recoveredBlock36PC := 74] ifFalse: [recoveredBlock36PC := 84].
        ].
        recoveredBlock36Step = 74 ifTrue: [
            recoveredBlock36Stack1 := functions.
            recoveredBlock36PC := 76.
        ].
        recoveredBlock36Step = 76 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 77.
        ].
        recoveredBlock36Step = 77 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Local1.
            recoveredBlock36PC := 78.
        ].
        recoveredBlock36Step = 78 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) at: (recoveredBlock36Stack2) put: (recoveredBlock36Stack3).
            recoveredBlock36PC := 80.
        ].
        recoveredBlock36Step = 80 ifTrue: [
            recoveredBlock36PC := 91.
        ].
        recoveredBlock36Step = 84 ifTrue: [
            recoveredBlock36Stack1 := functions.
            recoveredBlock36PC := 86.
        ].
        recoveredBlock36Step = 86 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 87.
        ].
        recoveredBlock36Step = 87 ifTrue: [
            recoveredBlock36Stack3 := [].
            recoveredBlock36PC := 89.
        ].
        recoveredBlock36Step = 89 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) removeKey: (recoveredBlock36Stack2) ifAbsent: (recoveredBlock36Stack3).
            recoveredBlock36PC := 91.
        ].
        recoveredBlock36Step = 91 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046e160; bytecode file offset 0xd6aa58"
!ETASItemFileDLL methodsFor: 'recovered'!
parse
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) cleanupDLL.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) preOpenItemFile.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupCnt.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            groupIndex := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyObjectGraph.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := path.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) path: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) initializeElementAccess.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := groupIndex.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) getFileNameForGroup: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) path: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            access := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 26] ifFalse: [recoveredLocal2 := nil. recoveredPC := 72]] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := DBFileError.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := dll.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'could not parse the request file '.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := path.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBasic: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := DBFileError.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := dll.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 'could not parse the request file '.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := path.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBasic: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupClass.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := path.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) withItemFiles: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20472704; bytecode file offset 0xd6f028"
!ETASItemFileDLL methodsFor: 'recovered'!
createFile: recoveredArg1 recordFormat: recoveredArg2 nameTable: recoveredArg3 sampleCount: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPSZ.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            path := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) initializeFunctions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateFileName: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPSZ.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) path: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) subStrings.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) initializeElementAccess: (recoveredStack1) formats: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := RBBcrtl32DLL.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) path.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) splitPath: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) path.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := '	'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            groupIndex := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := groupIndex.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := groupIndex.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            groupIndex := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := groupIndex.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := groupIndex.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) groupIndex: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) nameTable: (recoveredStack2) recordFormat: (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) sampleCnt: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFile.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d8c00; bytecode file offset 0xdd5518"
!ETASItemFileDLL methodsFor: 'recovered'!
testApi: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) cr.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) fileTypeSymbol.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) cr.
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) fileExtension.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) printOn: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) nextPutAll: ('sampleCnt ').
    recoveredValue10 := (self) sampleCnt.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) printOn: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    (recoveredValue12) cr.
    recoveredValue13 := (self) recordFormat.
    recoveredValue14 := recoveredArg1.
    (recoveredValue13) printOn: (recoveredValue14).
    recoveredValue15 := recoveredArg1.
    (recoveredValue15) cr.
    recoveredValue16 := (self) nameTable.
    recoveredValue17 := recoveredArg1.
    (recoveredValue16) printOn: (recoveredValue17).
    recoveredValue18 := recoveredArg1.
    (recoveredValue18) cr.
    recoveredValue19 := recoveredArg1.
    (recoveredValue19) nextPutAll: ('indexTimeChannel ').
    recoveredValue20 := (self) indexTimeChannel.
    recoveredValue21 := recoveredArg1.
    (recoveredValue20) printOn: (recoveredValue21).
    recoveredValue22 := recoveredArg1.
    (recoveredValue22) cr.
    recoveredValue23 := recoveredArg1.
    (recoveredValue23) nextPutAll: ('hasRecords ').
    recoveredValue24 := (self) class.
    recoveredValue25 := (recoveredValue24) hasRecords.
    recoveredValue26 := recoveredArg1.
    (recoveredValue25) printOn: (recoveredValue26).
    recoveredValue27 := recoveredArg1.
    (recoveredValue27) cr.
    recoveredValue28 := recoveredArg1.
    (recoveredValue28) nextPutAll: ('allowsGroup ').
    recoveredValue29 := (self) class.
    recoveredValue30 := (recoveredValue29) allowsGroup.
    recoveredValue31 := recoveredArg1.
    (recoveredValue30) printOn: (recoveredValue31).
    recoveredValue32 := recoveredArg1.
    (recoveredValue32) cr.
    recoveredValue33 := recoveredArg1.
    (recoveredValue33) nextPutAll: ('isOpen ').
    recoveredValue34 := (self) isOpen.
    recoveredValue35 := recoveredArg1.
    (recoveredValue34) printOn: (recoveredValue35).
    (self) initializeElementAccess.
    recoveredValue36 := recoveredArg1.
    (recoveredValue36) cr.
    recoveredValue37 := recoveredArg1.
    (recoveredValue37) nextPutAll: ('recordSize ').
    recoveredValue38 := (self) recordSize.
    recoveredValue39 := recoveredArg1.
    (recoveredValue38) printOn: (recoveredValue39).
    recoveredValue40 := recoveredArg1.
    (recoveredValue40) cr.
    recoveredValue41 := recoveredArg1.
    (recoveredValue41) nextPutAll: ('currentRecordNumber ').
    recoveredValue42 := (self) currentRecordNumber.
    recoveredValue43 := recoveredArg1.
    (recoveredValue42) printOn: (recoveredValue43).
    recoveredValue44 := recoveredArg1.
    (recoveredValue44) cr.
    recoveredValue45 := recoveredArg1.
    (recoveredValue45) nextPutAll: ('timeExtent ').
    recoveredValue46 := (self) timeExtent.
    recoveredValue47 := recoveredArg1.
    (recoveredValue46) printOn: (recoveredValue47).
    ^self
! !

"ASDBase.ic method 0x204fa57c; bytecode file offset 0xdf6e74"
!ETASItemFileDLL methodsFor: 'recovered'!
formulas
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    (self) createUndefinedAPIFunctionError: ('Formula').
    #()
].
    recoveredValue2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Local1 recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21Stack5 recoveredBlock21Stack6 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := ByteArray.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := 4.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) new: (recoveredBlock21Stack2).
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredLocal5 := recoveredBlock21Stack1.
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 38.
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21Stack2 := recoveredLocal5.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack3 := path.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            recoveredBlock21Stack4 := groupIndex.
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) callWith: (recoveredBlock21Stack2) with: (recoveredBlock21Stack3) with: (recoveredBlock21Stack4).
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 48 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 51.
        ].
        recoveredBlock21Step = 51 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal5.
            recoveredBlock21PC := 54.
        ].
        recoveredBlock21Step = 54 ifTrue: [
            recoveredBlock21Stack2 := 0.
            recoveredBlock21PC := 56.
        ].
        recoveredBlock21Step = 56 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) uint32At: (recoveredBlock21Stack2).
            recoveredBlock21PC := 58.
        ].
        recoveredBlock21Step = 58 ifTrue: [
            recoveredLocal4 := recoveredBlock21Stack1.
            recoveredBlock21PC := 61.
        ].
        recoveredBlock21Step = 61 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal5.
            recoveredBlock21PC := 64.
        ].
        recoveredBlock21Step = 64 ifTrue: [
            recoveredBlock21Stack2 := 0.
            recoveredBlock21PC := 66.
        ].
        recoveredBlock21Step = 66 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) = (recoveredBlock21Stack2).
            recoveredBlock21PC := 67.
        ].
        recoveredBlock21Step = 67 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 70] ifFalse: [recoveredBlock21PC := 76].
        ].
        recoveredBlock21Step = 70 ifTrue: [
            recoveredBlock21Stack1 := #().
            recoveredBlock21PC := 72.
        ].
        recoveredBlock21Step = 72 ifTrue: [
            recoveredBlock21PC := 168.
        ].
        recoveredBlock21Step = 76 ifTrue: [
            recoveredBlock21Stack1 := OSPtr.
            recoveredBlock21PC := 78.
        ].
        recoveredBlock21Step = 78 ifTrue: [
            recoveredBlock21Stack2 := recoveredLocal4.
            recoveredBlock21PC := 81.
        ].
        recoveredBlock21Step = 81 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) address: (recoveredBlock21Stack2).
            recoveredBlock21PC := 83.
        ].
        recoveredBlock21Step = 83 ifTrue: [
            recoveredLocal5 := recoveredBlock21Stack1.
            recoveredBlock21PC := 86.
        ].
        recoveredBlock21Step = 86 ifTrue: [
            recoveredBlock21Stack1 := OrderedCollection.
            recoveredBlock21PC := 88.
        ].
        recoveredBlock21Step = 88 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) new.
            recoveredBlock21PC := 90.
        ].
        recoveredBlock21Step = 90 ifTrue: [
            recoveredLocal6 := recoveredBlock21Stack1.
            recoveredBlock21PC := 93.
        ].
        recoveredBlock21Step = 93 ifTrue: [
            recoveredBlock21Stack1 := 0.
            recoveredBlock21PC := 95.
        ].
        recoveredBlock21Step = 95 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 96.
        ].
        recoveredBlock21Step = 96 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 99.
        ].
        recoveredBlock21Step = 99 ifTrue: [
            recoveredBlock21PC := 150.
        ].
        recoveredBlock21Step = 102 ifTrue: [
            recoveredBlock21Stack2 := OSPtr.
            recoveredBlock21PC := 104.
        ].
        recoveredBlock21Step = 104 ifTrue: [
            recoveredBlock21Stack3 := recoveredLocal5.
            recoveredBlock21PC := 107.
        ].
        recoveredBlock21Step = 107 ifTrue: [
            recoveredBlock21Stack4 := recoveredBlock21Local1.
            recoveredBlock21PC := 108.
        ].
        recoveredBlock21Step = 108 ifTrue: [
            recoveredBlock21Stack4 := (recoveredBlock21Stack4) + (-1).
            recoveredBlock21PC := 109.
        ].
        recoveredBlock21Step = 109 ifTrue: [
            recoveredBlock21Stack5 := 4.
            recoveredBlock21PC := 111.
        ].
        recoveredBlock21Step = 111 ifTrue: [
            recoveredBlock21Stack4 := (recoveredBlock21Stack4) * (recoveredBlock21Stack5).
            recoveredBlock21PC := 112.
        ].
        recoveredBlock21Step = 112 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) uint32At: (recoveredBlock21Stack4).
            recoveredBlock21PC := 114.
        ].
        recoveredBlock21Step = 114 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) address: (recoveredBlock21Stack3).
            recoveredBlock21PC := 116.
        ].
        recoveredBlock21Step = 116 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Stack2.
            recoveredBlock21PC := 117.
        ].
        recoveredBlock21Step = 117 ifTrue: [
            recoveredLocal3 := recoveredBlock21Stack3.
            recoveredBlock21PC := 120.
        ].
        recoveredBlock21Step = 120 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) isNull.
            recoveredBlock21PC := 122.
        ].
        recoveredBlock21Step = 122 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 126] ifFalse: [recoveredBlock21PC := 136].
        ].
        recoveredBlock21Step = 126 ifTrue: [
            recoveredBlock21Stack2 := recoveredLocal6.
            recoveredBlock21PC := 129.
        ].
        recoveredBlock21Step = 129 ifTrue: [
            recoveredBlock21Stack3 := nil.
            recoveredBlock21PC := 130.
        ].
        recoveredBlock21Step = 130 ifTrue: [
            (recoveredBlock21Stack2) add: (recoveredBlock21Stack3).
            recoveredBlock21PC := 132.
        ].
        recoveredBlock21Step = 132 ifTrue: [
            recoveredBlock21PC := 150.
        ].
        recoveredBlock21Step = 136 ifTrue: [
            recoveredBlock21Stack2 := recoveredLocal6.
            recoveredBlock21PC := 139.
        ].
        recoveredBlock21Step = 139 ifTrue: [
            recoveredBlock21Stack3 := MDFCCBlock.
            recoveredBlock21PC := 141.
        ].
        recoveredBlock21Step = 141 ifTrue: [
            recoveredBlock21Stack4 := recoveredLocal3.
            recoveredBlock21PC := 144.
        ].
        recoveredBlock21Step = 144 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) fromPointer: (recoveredBlock21Stack4).
            recoveredBlock21PC := 146.
        ].
        recoveredBlock21Step = 146 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) asMDFFormula.
            recoveredBlock21PC := 148.
        ].
        recoveredBlock21Step = 148 ifTrue: [
            (recoveredBlock21Stack2) add: (recoveredBlock21Stack3).
            recoveredBlock21PC := 150.
        ].
        recoveredBlock21Step = 150 ifTrue: [
            (recoveredBlock21Stack1 isInteger and: [recoveredBlock21Local1 isInteger]) ifTrue: [(recoveredBlock21Local1 + 1 <= recoveredBlock21Stack1) ifTrue: [recoveredBlock21Local1 := recoveredBlock21Local1 + 1. recoveredBlock21PC := 102] ifFalse: [recoveredBlock21Local1 := nil. recoveredBlock21PC := 164]] ifFalse: [recoveredBlock21PC := 154].
        ].
        recoveredBlock21Step = 154 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 155.
        ].
        recoveredBlock21Step = 155 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Local1.
            recoveredBlock21PC := 156.
        ].
        recoveredBlock21Step = 156 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) + (1).
            recoveredBlock21PC := 157.
        ].
        recoveredBlock21Step = 157 ifTrue: [
            recoveredBlock21Stack4 := recoveredBlock21Stack3.
            recoveredBlock21PC := 158.
        ].
        recoveredBlock21Step = 158 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack4.
            recoveredBlock21PC := 159.
        ].
        recoveredBlock21Step = 159 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) < (recoveredBlock21Stack3).
            recoveredBlock21PC := 160.
        ].
        recoveredBlock21Step = 160 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 162] ifFalse: [recoveredBlock21PC := 102].
        ].
        recoveredBlock21Step = 162 ifTrue: [
            recoveredBlock21Stack2 := nil.
            recoveredBlock21PC := 163.
        ].
        recoveredBlock21Step = 163 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack2.
            recoveredBlock21PC := 164.
        ].
        recoveredBlock21Step = 164 ifTrue: [
            recoveredBlock21PC := 165.
        ].
        recoveredBlock21Step = 165 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal6.
            recoveredBlock21PC := 168.
        ].
        recoveredBlock21Step = 168 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    recoveredValue3 := (recoveredValue0) at: ('Formula') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x204ff8c4; bytecode file offset 0xdfc1b4"
!ETASItemFileDLL methodsFor: 'recovered'!
nameTable: recoveredArg1 recordFormat: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    (self) createUndefinedAPIFunctionError: ('SetGroupChannel').
    #()
].
    recoveredValue2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Local1 recoveredBlock21Local2 recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21Stack5 recoveredBlock21Stack6 recoveredBlock21Stack7 recoveredBlock21Stack8 recoveredBlock21Stack9 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := access.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := 1.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) at: (recoveredBlock21Stack2).
            recoveredBlock21PC := 33.
        ].
        recoveredBlock21Step = 33 ifTrue: [
            recoveredBlock21Local2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Local2.
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) class.
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) isDBBitItem.
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 42] ifFalse: [recoveredBlock21PC := 52].
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Local2.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) bitMask.
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 48 ifTrue: [
            recoveredBlock21PC := 57.
        ].
        recoveredBlock21Step = 52 ifTrue: [
            recoveredBlock21Stack1 := 0.
            recoveredBlock21PC := 54.
        ].
        recoveredBlock21Step = 54 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 57.
        ].
        recoveredBlock21Step = 57 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 58.
        ].
        recoveredBlock21Step = 58 ifTrue: [
            recoveredBlock21Stack2 := path.
            recoveredBlock21PC := 60.
        ].
        recoveredBlock21Step = 60 ifTrue: [
            recoveredBlock21Stack3 := groupIndex.
            recoveredBlock21PC := 62.
        ].
        recoveredBlock21Step = 62 ifTrue: [
            recoveredBlock21Stack4 := recoveredBlock21Local2.
            recoveredBlock21PC := 63.
        ].
        recoveredBlock21Step = 63 ifTrue: [
            recoveredBlock21Stack4 := (recoveredBlock21Stack4) name.
            recoveredBlock21PC := 65.
        ].
        recoveredBlock21Step = 65 ifTrue: [
            recoveredBlock21Stack4 := (recoveredBlock21Stack4) asPSZ.
            recoveredBlock21PC := 67.
        ].
        recoveredBlock21Step = 67 ifTrue: [
            recoveredBlock21Stack5 := recoveredBlock21Local2.
            recoveredBlock21PC := 68.
        ].
        recoveredBlock21Step = 68 ifTrue: [
            recoveredBlock21Stack5 := (recoveredBlock21Stack5) class.
            recoveredBlock21PC := 70.
        ].
        recoveredBlock21Step = 70 ifTrue: [
            recoveredBlock21Stack5 := (recoveredBlock21Stack5) dbFormatString.
            recoveredBlock21PC := 72.
        ].
        recoveredBlock21Step = 72 ifTrue: [
            recoveredBlock21Stack6 := 3.
            recoveredBlock21PC := 74.
        ].
        recoveredBlock21Step = 74 ifTrue: [
            recoveredBlock21Stack5 := (recoveredBlock21Stack5) addBlankTo: (recoveredBlock21Stack6).
            recoveredBlock21PC := 76.
        ].
        recoveredBlock21Step = 76 ifTrue: [
            recoveredBlock21Stack5 := (recoveredBlock21Stack5) asPSZ.
            recoveredBlock21PC := 78.
        ].
        recoveredBlock21Step = 78 ifTrue: [
            recoveredBlock21Stack6 := recoveredLocal1.
            recoveredBlock21PC := 81.
        ].
        recoveredBlock21Step = 81 ifTrue: [
            recoveredBlock21Stack6 := (recoveredBlock21Stack6) asInteger.
            recoveredBlock21PC := 83.
        ].
        recoveredBlock21Step = 83 ifTrue: [
            recoveredBlock21Stack7 := true.
            recoveredBlock21PC := 84.
        ].
        recoveredBlock21Step = 84 ifTrue: [
            (recoveredBlock21Stack1) callWith: (recoveredBlock21Stack2) with: (recoveredBlock21Stack3) with: (recoveredBlock21Stack4) with: (recoveredBlock21Stack5) with: (recoveredBlock21Stack6) with: (recoveredBlock21Stack7).
            recoveredBlock21PC := 87.
        ].
        recoveredBlock21Step = 87 ifTrue: [
            recoveredBlock21Stack1 := 1.
            recoveredBlock21PC := 89.
        ].
        recoveredBlock21Step = 89 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 90.
        ].
        recoveredBlock21Step = 90 ifTrue: [
            recoveredBlock21Stack1 := access.
            recoveredBlock21PC := 92.
        ].
        recoveredBlock21Step = 92 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) size.
            recoveredBlock21PC := 94.
        ].
        recoveredBlock21Step = 94 ifTrue: [
            recoveredBlock21PC := 157.
        ].
        recoveredBlock21Step = 98 ifTrue: [
            recoveredBlock21Stack2 := access.
            recoveredBlock21PC := 100.
        ].
        recoveredBlock21Step = 100 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Local1.
            recoveredBlock21PC := 101.
        ].
        recoveredBlock21Step = 101 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) at: (recoveredBlock21Stack3).
            recoveredBlock21PC := 102.
        ].
        recoveredBlock21Step = 102 ifTrue: [
            recoveredBlock21Local2 := recoveredBlock21Stack2.
            recoveredBlock21PC := 103.
        ].
        recoveredBlock21Step = 103 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local2.
            recoveredBlock21PC := 104.
        ].
        recoveredBlock21Step = 104 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) class.
            recoveredBlock21PC := 106.
        ].
        recoveredBlock21Step = 106 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) isDBBitItem.
            recoveredBlock21PC := 108.
        ].
        recoveredBlock21Step = 108 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 112] ifFalse: [recoveredBlock21PC := 122].
        ].
        recoveredBlock21Step = 112 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local2.
            recoveredBlock21PC := 113.
        ].
        recoveredBlock21Step = 113 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) bitMask.
            recoveredBlock21PC := 115.
        ].
        recoveredBlock21Step = 115 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack2.
            recoveredBlock21PC := 118.
        ].
        recoveredBlock21Step = 118 ifTrue: [
            recoveredBlock21PC := 127.
        ].
        recoveredBlock21Step = 122 ifTrue: [
            recoveredBlock21Stack2 := 0.
            recoveredBlock21PC := 124.
        ].
        recoveredBlock21Step = 124 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack2.
            recoveredBlock21PC := 127.
        ].
        recoveredBlock21Step = 127 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 128.
        ].
        recoveredBlock21Step = 128 ifTrue: [
            recoveredBlock21Stack3 := path.
            recoveredBlock21PC := 130.
        ].
        recoveredBlock21Step = 130 ifTrue: [
            recoveredBlock21Stack4 := groupIndex.
            recoveredBlock21PC := 132.
        ].
        recoveredBlock21Step = 132 ifTrue: [
            recoveredBlock21Stack5 := recoveredBlock21Local2.
            recoveredBlock21PC := 133.
        ].
        recoveredBlock21Step = 133 ifTrue: [
            recoveredBlock21Stack5 := (recoveredBlock21Stack5) name.
            recoveredBlock21PC := 135.
        ].
        recoveredBlock21Step = 135 ifTrue: [
            recoveredBlock21Stack5 := (recoveredBlock21Stack5) asPSZ.
            recoveredBlock21PC := 137.
        ].
        recoveredBlock21Step = 137 ifTrue: [
            recoveredBlock21Stack6 := recoveredBlock21Local2.
            recoveredBlock21PC := 138.
        ].
        recoveredBlock21Step = 138 ifTrue: [
            recoveredBlock21Stack6 := (recoveredBlock21Stack6) class.
            recoveredBlock21PC := 140.
        ].
        recoveredBlock21Step = 140 ifTrue: [
            recoveredBlock21Stack6 := (recoveredBlock21Stack6) dbFormatString.
            recoveredBlock21PC := 142.
        ].
        recoveredBlock21Step = 142 ifTrue: [
            recoveredBlock21Stack7 := 3.
            recoveredBlock21PC := 144.
        ].
        recoveredBlock21Step = 144 ifTrue: [
            recoveredBlock21Stack6 := (recoveredBlock21Stack6) addBlankTo: (recoveredBlock21Stack7).
            recoveredBlock21PC := 146.
        ].
        recoveredBlock21Step = 146 ifTrue: [
            recoveredBlock21Stack6 := (recoveredBlock21Stack6) asPSZ.
            recoveredBlock21PC := 148.
        ].
        recoveredBlock21Step = 148 ifTrue: [
            recoveredBlock21Stack7 := recoveredLocal1.
            recoveredBlock21PC := 151.
        ].
        recoveredBlock21Step = 151 ifTrue: [
            recoveredBlock21Stack7 := (recoveredBlock21Stack7) asInteger.
            recoveredBlock21PC := 153.
        ].
        recoveredBlock21Step = 153 ifTrue: [
            recoveredBlock21Stack8 := false.
            recoveredBlock21PC := 154.
        ].
        recoveredBlock21Step = 154 ifTrue: [
            (recoveredBlock21Stack2) callWith: (recoveredBlock21Stack3) with: (recoveredBlock21Stack4) with: (recoveredBlock21Stack5) with: (recoveredBlock21Stack6) with: (recoveredBlock21Stack7) with: (recoveredBlock21Stack8).
            recoveredBlock21PC := 157.
        ].
        recoveredBlock21Step = 157 ifTrue: [
            (recoveredBlock21Stack1 isInteger and: [recoveredBlock21Local1 isInteger]) ifTrue: [(recoveredBlock21Local1 + 1 <= recoveredBlock21Stack1) ifTrue: [recoveredBlock21Local1 := recoveredBlock21Local1 + 1. recoveredBlock21PC := 98] ifFalse: [recoveredBlock21Local1 := nil. recoveredBlock21PC := 171]] ifFalse: [recoveredBlock21PC := 161].
        ].
        recoveredBlock21Step = 161 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 162.
        ].
        recoveredBlock21Step = 162 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Local1.
            recoveredBlock21PC := 163.
        ].
        recoveredBlock21Step = 163 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) + (1).
            recoveredBlock21PC := 164.
        ].
        recoveredBlock21Step = 164 ifTrue: [
            recoveredBlock21Stack4 := recoveredBlock21Stack3.
            recoveredBlock21PC := 165.
        ].
        recoveredBlock21Step = 165 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack4.
            recoveredBlock21PC := 166.
        ].
        recoveredBlock21Step = 166 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) < (recoveredBlock21Stack3).
            recoveredBlock21PC := 167.
        ].
        recoveredBlock21Step = 167 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 169] ifFalse: [recoveredBlock21PC := 98].
        ].
        recoveredBlock21Step = 169 ifTrue: [
            recoveredBlock21Stack2 := nil.
            recoveredBlock21PC := 170.
        ].
        recoveredBlock21Step = 170 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack2.
            recoveredBlock21PC := 171.
        ].
        recoveredBlock21Step = 171 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    (recoveredValue0) at: ('SetGroupChannel') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2058c788; bytecode file offset 0xe89068"
!ETASItemFileDLL methodsFor: 'recovered'!
generateFileName: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBBcrtl32DLL.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitPath: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileTypeSymbol.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesSubstring: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileTypeSymbol.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileExtension.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileExtension.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesSubstring: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := RBBcrtl32DLL.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitPath: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileTypeSymbol.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileExtension.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 165].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileTypeSymbol.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := RBBcrtl32DLL.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitPath: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileExtension.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileTypeSymbol.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileExtension.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileTypeSymbol.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileExtension.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205a6168; bytecode file offset 0xea2a70"
!ETASItemFileDLL methodsFor: 'recovered'!
nameTableRecordFormat
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := functions.
    recoveredValue1 := [
    (self) createUndefinedAPIFunctionError: ('GetGroupChannel').
    #()
].
    recoveredValue2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Local1 recoveredBlock21Local2 recoveredBlock21Local3 recoveredBlock21Local4 recoveredBlock21Local5 recoveredBlock21Local6 recoveredBlock21Local7 recoveredBlock21Local8 recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21Stack5 recoveredBlock21Stack6 recoveredBlock21Stack7 recoveredBlock21Stack8 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := String.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := 257.
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) new: (recoveredBlock21Stack2).
            recoveredBlock21PC := 36.
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21Local8 := recoveredBlock21Stack1.
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack1 := String.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack2 := 257.
            recoveredBlock21PC := 44.
        ].
        recoveredBlock21Step = 44 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) new: (recoveredBlock21Stack2).
            recoveredBlock21PC := 46.
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Local7 := recoveredBlock21Stack1.
            recoveredBlock21PC := 49.
        ].
        recoveredBlock21Step = 49 ifTrue: [
            recoveredBlock21Stack1 := ByteArray.
            recoveredBlock21PC := 51.
        ].
        recoveredBlock21Step = 51 ifTrue: [
            recoveredBlock21Stack2 := 4.
            recoveredBlock21PC := 53.
        ].
        recoveredBlock21Step = 53 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) new: (recoveredBlock21Stack2).
            recoveredBlock21PC := 55.
        ].
        recoveredBlock21Step = 55 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 58.
        ].
        recoveredBlock21Step = 58 ifTrue: [
            recoveredBlock21Stack1 := 0.
            recoveredBlock21PC := 60.
        ].
        recoveredBlock21Step = 60 ifTrue: [
            recoveredBlock21Local6 := recoveredBlock21Stack1.
            recoveredBlock21PC := 63.
        ].
        recoveredBlock21Step = 63 ifTrue: [
            recoveredBlock21Stack1 := LookupTable.
            recoveredBlock21PC := 65.
        ].
        recoveredBlock21Step = 65 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) new.
            recoveredBlock21PC := 67.
        ].
        recoveredBlock21Step = 67 ifTrue: [
            recoveredBlock21Local4 := recoveredBlock21Stack1.
            recoveredBlock21PC := 70.
        ].
        recoveredBlock21Step = 70 ifTrue: [
            recoveredBlock21Stack1 := LookupTable.
            recoveredBlock21PC := 72.
        ].
        recoveredBlock21Step = 72 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) new.
            recoveredBlock21PC := 74.
        ].
        recoveredBlock21Step = 74 ifTrue: [
            recoveredBlock21Local5 := recoveredBlock21Stack1.
            recoveredBlock21PC := 77.
        ].
        recoveredBlock21Step = 77 ifTrue: [
            recoveredBlock21Stack1 := LookupTable.
            recoveredBlock21PC := 79.
        ].
        recoveredBlock21Step = 79 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) new.
            recoveredBlock21PC := 81.
        ].
        recoveredBlock21Step = 81 ifTrue: [
            recoveredLocal2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 84.
        ].
        recoveredBlock21Step = 84 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Local6.
            recoveredBlock21PC := 87.
        ].
        recoveredBlock21Step = 87 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) + (1).
            recoveredBlock21PC := 88.
        ].
        recoveredBlock21Step = 88 ifTrue: [
            recoveredBlock21Local6 := recoveredBlock21Stack1.
            recoveredBlock21PC := 91.
        ].
        recoveredBlock21Step = 91 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 94.
        ].
        recoveredBlock21Step = 94 ifTrue: [
            recoveredBlock21Stack2 := path.
            recoveredBlock21PC := 96.
        ].
        recoveredBlock21Step = 96 ifTrue: [
            recoveredBlock21Stack3 := groupIndex.
            recoveredBlock21PC := 98.
        ].
        recoveredBlock21Step = 98 ifTrue: [
            recoveredBlock21Stack4 := recoveredBlock21Local7.
            recoveredBlock21PC := 101.
        ].
        recoveredBlock21Step = 101 ifTrue: [
            recoveredBlock21Stack5 := recoveredBlock21Local8.
            recoveredBlock21PC := 104.
        ].
        recoveredBlock21Step = 104 ifTrue: [
            recoveredBlock21Stack6 := recoveredLocal1.
            recoveredBlock21PC := 107.
        ].
        recoveredBlock21Step = 107 ifTrue: [
            recoveredBlock21Stack7 := recoveredBlock21Local6.
            recoveredBlock21PC := 110.
        ].
        recoveredBlock21Step = 110 ifTrue: [
            (recoveredBlock21Stack1) callWith: (recoveredBlock21Stack2) with: (recoveredBlock21Stack3) with: (recoveredBlock21Stack4) with: (recoveredBlock21Stack5) with: (recoveredBlock21Stack6) with: (recoveredBlock21Stack7).
            recoveredBlock21PC := 113.
        ].
        recoveredBlock21Step = 113 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Local8.
            recoveredBlock21PC := 116.
        ].
        recoveredBlock21Step = 116 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) copyPSZString.
            recoveredBlock21PC := 118.
        ].
        recoveredBlock21Step = 118 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 119.
        ].
        recoveredBlock21Step = 119 ifTrue: [
            recoveredBlock21Local2 := recoveredBlock21Stack2.
            recoveredBlock21PC := 122.
        ].
        recoveredBlock21Step = 122 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) isEmpty.
            recoveredBlock21PC := 124.
        ].
        recoveredBlock21Step = 124 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 128] ifFalse: [recoveredBlock21PC := 209].
        ].
        recoveredBlock21Step = 128 ifTrue: [
            recoveredBlock21Stack1 := Array.
            recoveredBlock21PC := 130.
        ].
        recoveredBlock21Step = 130 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local6.
            recoveredBlock21PC := 133.
        ].
        recoveredBlock21Step = 133 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) + (-1).
            recoveredBlock21PC := 134.
        ].
        recoveredBlock21Step = 134 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) new: (recoveredBlock21Stack2).
            recoveredBlock21PC := 136.
        ].
        recoveredBlock21Step = 136 ifTrue: [
            recoveredLocal4 := recoveredBlock21Stack1.
            recoveredBlock21PC := 139.
        ].
        recoveredBlock21Step = 139 ifTrue: [
            recoveredBlock21Stack1 := Array.
            recoveredBlock21PC := 141.
        ].
        recoveredBlock21Step = 141 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local6.
            recoveredBlock21PC := 144.
        ].
        recoveredBlock21Step = 144 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) + (-1).
            recoveredBlock21PC := 145.
        ].
        recoveredBlock21Step = 145 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) new: (recoveredBlock21Stack2).
            recoveredBlock21PC := 147.
        ].
        recoveredBlock21Step = 147 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 150.
        ].
        recoveredBlock21Step = 150 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Local5.
            recoveredBlock21PC := 153.
        ].
        recoveredBlock21Step = 153 ifTrue: [
            recoveredBlock21Stack2 := [:recoveredBlock21Block153Arg1 :recoveredBlock21Block153Arg2 | 
    | recoveredBlock21Block153Value0 recoveredBlock21Block153Value1 recoveredBlock21Block153Value2 recoveredBlock21Block153Value3 recoveredBlock21Block153Value4 |
    recoveredBlock21Block153Value0 := recoveredLocal4.
    recoveredBlock21Block153Value1 := recoveredBlock21Block153Arg1.
    recoveredBlock21Block153Value2 := recoveredBlock21Block153Arg2.
    recoveredBlock21Block153Value3 := (recoveredBlock21Block153Value2) trimBlanks.
    recoveredBlock21Block153Value4 := (recoveredBlock21Block153Value0) at: (recoveredBlock21Block153Value1) put: (recoveredBlock21Block153Value3).
    recoveredBlock21Block153Value4
].
            recoveredBlock21PC := 170.
        ].
        recoveredBlock21Step = 170 ifTrue: [
            (recoveredBlock21Stack1) keysAndValuesDo: (recoveredBlock21Stack2).
            recoveredBlock21PC := 172.
        ].
        recoveredBlock21Step = 172 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Local4.
            recoveredBlock21PC := 175.
        ].
        recoveredBlock21Step = 175 ifTrue: [
            recoveredBlock21Stack2 := [:recoveredBlock21Block175Arg1 :recoveredBlock21Block175Arg2 | 
    | recoveredBlock21Block175Value0 recoveredBlock21Block175Value1 recoveredBlock21Block175Value2 recoveredBlock21Block175Value3 recoveredBlock21Block175Value4 |
    recoveredBlock21Block175Value0 := recoveredBlock21Local1.
    recoveredBlock21Block175Value1 := recoveredBlock21Block175Arg1.
    recoveredBlock21Block175Value2 := recoveredBlock21Block175Arg2.
    recoveredBlock21Block175Value3 := (recoveredBlock21Block175Value2) trimBlanks.
    recoveredBlock21Block175Value4 := (recoveredBlock21Block175Value0) at: (recoveredBlock21Block175Value1) put: (recoveredBlock21Block175Value3).
    recoveredBlock21Block175Value4
].
            recoveredBlock21PC := 192.
        ].
        recoveredBlock21Step = 192 ifTrue: [
            (recoveredBlock21Stack1) keysAndValuesDo: (recoveredBlock21Stack2).
            recoveredBlock21PC := 194.
        ].
        recoveredBlock21Step = 194 ifTrue: [
            recoveredBlock21Stack1 := Array.
            recoveredBlock21PC := 196.
        ].
        recoveredBlock21Step = 196 ifTrue: [
            recoveredBlock21Stack2 := recoveredLocal4.
            recoveredBlock21PC := 199.
        ].
        recoveredBlock21Step = 199 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Local1.
            recoveredBlock21PC := 202.
        ].
        recoveredBlock21Step = 202 ifTrue: [
            recoveredBlock21Stack4 := recoveredLocal2.
            recoveredBlock21PC := 205.
        ].
        recoveredBlock21Step = 205 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) with: (recoveredBlock21Stack2) with: (recoveredBlock21Stack3) with: (recoveredBlock21Stack4).
            recoveredBlock21PC := 208.
        ].
        recoveredBlock21Step = 208 ifTrue: [
            ^recoveredBlock21Stack1
        ].
        recoveredBlock21Step = 209 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Local4.
            recoveredBlock21PC := 212.
        ].
        recoveredBlock21Step = 212 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local6.
            recoveredBlock21PC := 215.
        ].
        recoveredBlock21Step = 215 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Local2.
            recoveredBlock21PC := 218.
        ].
        recoveredBlock21Step = 218 ifTrue: [
            (recoveredBlock21Stack1) at: (recoveredBlock21Stack2) put: (recoveredBlock21Stack3).
            recoveredBlock21PC := 220.
        ].
        recoveredBlock21Step = 220 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Local8.
            recoveredBlock21PC := 223.
        ].
        recoveredBlock21Step = 223 ifTrue: [
            recoveredBlock21Stack2 := Character.
            recoveredBlock21PC := 225.
        ].
        recoveredBlock21Step = 225 ifTrue: [
            recoveredBlock21Stack3 := 0.
            recoveredBlock21PC := 227.
        ].
        recoveredBlock21Step = 227 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) value: (recoveredBlock21Stack3).
            recoveredBlock21PC := 229.
        ].
        recoveredBlock21Step = 229 ifTrue: [
            (recoveredBlock21Stack1) fillWith: (recoveredBlock21Stack2).
            recoveredBlock21PC := 231.
        ].
        recoveredBlock21Step = 231 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Local7.
            recoveredBlock21PC := 234.
        ].
        recoveredBlock21Step = 234 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) copyPSZString.
            recoveredBlock21PC := 236.
        ].
        recoveredBlock21Step = 236 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 237.
        ].
        recoveredBlock21Step = 237 ifTrue: [
            recoveredBlock21Local3 := recoveredBlock21Stack2.
            recoveredBlock21PC := 240.
        ].
        recoveredBlock21Step = 240 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) isEmpty.
            recoveredBlock21PC := 242.
        ].
        recoveredBlock21Step = 242 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 246] ifFalse: [recoveredBlock21PC := 250].
        ].
        recoveredBlock21Step = 246 ifTrue: [
            recoveredBlock21PC := 272.
        ].
        recoveredBlock21Step = 250 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Local5.
            recoveredBlock21PC := 253.
        ].
        recoveredBlock21Step = 253 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local6.
            recoveredBlock21PC := 256.
        ].
        recoveredBlock21Step = 256 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Local3.
            recoveredBlock21PC := 259.
        ].
        recoveredBlock21Step = 259 ifTrue: [
            (recoveredBlock21Stack1) at: (recoveredBlock21Stack2) put: (recoveredBlock21Stack3).
            recoveredBlock21PC := 261.
        ].
        recoveredBlock21Step = 261 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Local7.
            recoveredBlock21PC := 264.
        ].
        recoveredBlock21Step = 264 ifTrue: [
            recoveredBlock21Stack2 := Character.
            recoveredBlock21PC := 266.
        ].
        recoveredBlock21Step = 266 ifTrue: [
            recoveredBlock21Stack3 := 0.
            recoveredBlock21PC := 268.
        ].
        recoveredBlock21Step = 268 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) value: (recoveredBlock21Stack3).
            recoveredBlock21PC := 270.
        ].
        recoveredBlock21Step = 270 ifTrue: [
            (recoveredBlock21Stack1) fillWith: (recoveredBlock21Stack2).
            recoveredBlock21PC := 272.
        ].
        recoveredBlock21Step = 272 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal2.
            recoveredBlock21PC := 275.
        ].
        recoveredBlock21Step = 275 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local6.
            recoveredBlock21PC := 278.
        ].
        recoveredBlock21Step = 278 ifTrue: [
            recoveredBlock21Stack3 := recoveredLocal1.
            recoveredBlock21PC := 281.
        ].
        recoveredBlock21Step = 281 ifTrue: [
            recoveredBlock21Stack4 := 0.
            recoveredBlock21PC := 283.
        ].
        recoveredBlock21Step = 283 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) uint32At: (recoveredBlock21Stack4).
            recoveredBlock21PC := 285.
        ].
        recoveredBlock21Step = 285 ifTrue: [
            (recoveredBlock21Stack1) at: (recoveredBlock21Stack2) put: (recoveredBlock21Stack3).
            recoveredBlock21PC := 287.
        ].
        recoveredBlock21Step = 287 ifTrue: [
            recoveredBlock21Stack1 := true.
            recoveredBlock21PC := 288.
        ].
        recoveredBlock21Step = 288 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 84] ifFalse: [recoveredBlock21PC := 292].
        ].
        recoveredBlock21Step = 292 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 293.
        ].
        recoveredBlock21Step = 293 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    (recoveredValue0) at: ('GetGroupChannel') ifAbsent: (recoveredValue1) ifPresent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20636aa8; bytecode file offset 0xf333d4"
!ETASItemFileDLL methodsFor: 'recovered'!
initializeElementAccess: recoveredArg1 formats: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := access.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            access := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataAccessClasses.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 :recoveredBlock49Arg2 | 
    | recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49Stack5 recoveredBlock49Stack6 recoveredBlock49Stack7 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 57.
        ].
        recoveredBlock49Step = 57 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal6.
            recoveredBlock49PC := 60.
        ].
        recoveredBlock49Step = 60 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Arg1.
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            recoveredBlock49Stack4 := $..
            recoveredBlock49PC := 66.
        ].
        recoveredBlock49Step = 66 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) allSubStrings: (recoveredBlock49Stack4).
            recoveredBlock49PC := 68.
        ].
        recoveredBlock49Step = 68 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) firstOrNil.
            recoveredBlock49PC := 70.
        ].
        recoveredBlock49Step = 70 ifTrue: [
            recoveredBlock49Stack4 := [
    | recoveredBlock49Block70Value0 recoveredBlock49Block70Value1 recoveredBlock49Block70Value2 recoveredBlock49Block70Value3 recoveredBlock49Block70Value4 |
    recoveredBlock49Block70Value0 := recoveredLocal6.
    recoveredBlock49Block70Value1 := recoveredBlock49Arg1.
    recoveredBlock49Block70Value2 := (recoveredBlock49Block70Value1) first.
    recoveredBlock49Block70Value3 := [].
    recoveredBlock49Block70Value4 := (recoveredBlock49Block70Value0) at: (recoveredBlock49Block70Value2) ifAbsent: (recoveredBlock49Block70Value3).
    recoveredBlock49Block70Value4
].
            recoveredBlock49PC := 89.
        ].
        recoveredBlock49Step = 89 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) at: (recoveredBlock49Stack3) ifAbsent: (recoveredBlock49Stack4).
            recoveredBlock49PC := 91.
        ].
        recoveredBlock49Step = 91 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Stack2.
            recoveredBlock49PC := 92.
        ].
        recoveredBlock49Step = 92 ifTrue: [
            recoveredLocal7 := recoveredBlock49Stack3.
            recoveredBlock49PC := 95.
        ].
        recoveredBlock49Step = 95 ifTrue: [
            (recoveredBlock49Stack2 == nil) ifTrue: [recoveredBlock49PC := 643] ifFalse: [recoveredBlock49PC := 98].
        ].
        recoveredBlock49Step = 98 ifTrue: [
            recoveredBlock49PC := 99.
        ].
        recoveredBlock49Step = 99 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal7.
            recoveredBlock49PC := 102.
        ].
        recoveredBlock49Step = 102 ifTrue: [
            recoveredBlock49Stack2 := DBStringConstantItem.
            recoveredBlock49PC := 104.
        ].
        recoveredBlock49Step = 104 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) = (recoveredBlock49Stack2).
            recoveredBlock49PC := 105.
        ].
        recoveredBlock49Step = 105 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 108] ifFalse: [recoveredBlock49PC := 132].
        ].
        recoveredBlock49Step = 108 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal7.
            recoveredBlock49PC := 111.
        ].
        recoveredBlock49Step = 111 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal10.
            recoveredBlock49PC := 114.
        ].
        recoveredBlock49Step = 114 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Arg1.
            recoveredBlock49PC := 117.
        ].
        recoveredBlock49Step = 117 ifTrue: [
            recoveredBlock49Stack4 := 2.
            recoveredBlock49PC := 119.
        ].
        recoveredBlock49Step = 119 ifTrue: [
            recoveredBlock49Stack5 := recoveredBlock49Arg1.
            recoveredBlock49PC := 122.
        ].
        recoveredBlock49Step = 122 ifTrue: [
            recoveredBlock49Stack5 := (recoveredBlock49Stack5) size.
            recoveredBlock49PC := 123.
        ].
        recoveredBlock49Step = 123 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) copyFrom: (recoveredBlock49Stack4) to: (recoveredBlock49Stack5).
            recoveredBlock49PC := 125.
        ].
        recoveredBlock49Step = 125 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) asInteger.
            recoveredBlock49PC := 127.
        ].
        recoveredBlock49Step = 127 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) create: (recoveredBlock49Stack2) size: (recoveredBlock49Stack3).
            recoveredBlock49PC := 129.
        ].
        recoveredBlock49Step = 129 ifTrue: [
            recoveredLocal5 := recoveredBlock49Stack1.
            recoveredBlock49PC := 132.
        ].
        recoveredBlock49Step = 132 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal7.
            recoveredBlock49PC := 135.
        ].
        recoveredBlock49Step = 135 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) isDBBitItem.
            recoveredBlock49PC := 137.
        ].
        recoveredBlock49Step = 137 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 140] ifFalse: [recoveredBlock49PC := 574].
        ].
        recoveredBlock49Step = 140 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 143.
        ].
        recoveredBlock49Step = 143 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) class.
            recoveredBlock49PC := 145.
        ].
        recoveredBlock49Step = 145 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal7.
            recoveredBlock49PC := 148.
        ].
        recoveredBlock49Step = 148 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) = (recoveredBlock49Stack2).
            recoveredBlock49PC := 149.
        ].
        recoveredBlock49Step = 149 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 152] ifFalse: [recoveredBlock49PC := 410].
        ].
        recoveredBlock49Step = 152 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 155.
        ].
        recoveredBlock49Step = 155 ifTrue: [
            recoveredBlock49Stack2 := 1.
            recoveredBlock49PC := 157.
        ].
        recoveredBlock49Step = 157 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) at: (recoveredBlock49Stack2).
            recoveredBlock49PC := 159.
        ].
        recoveredBlock49Step = 159 ifTrue: [
            recoveredBlock49Stack2 := $m.
            recoveredBlock49PC := 162.
        ].
        recoveredBlock49Step = 162 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) = (recoveredBlock49Stack2).
            recoveredBlock49PC := 163.
        ].
        recoveredBlock49Step = 163 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 166] ifFalse: [recoveredBlock49PC := 314].
        ].
        recoveredBlock49Step = 166 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 169.
        ].
        recoveredBlock49Step = 169 ifTrue: [
            recoveredBlock49Stack2 := $..
            recoveredBlock49PC := 172.
        ].
        recoveredBlock49Step = 172 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) allSubStrings: (recoveredBlock49Stack2).
            recoveredBlock49PC := 174.
        ].
        recoveredBlock49Step = 174 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 175.
        ].
        recoveredBlock49Step = 175 ifTrue: [
            recoveredLocal4 := recoveredBlock49Stack2.
            recoveredBlock49PC := 178.
        ].
        recoveredBlock49Step = 178 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) size.
            recoveredBlock49PC := 179.
        ].
        recoveredBlock49Step = 179 ifTrue: [
            recoveredBlock49Stack2 := 1.
            recoveredBlock49PC := 181.
        ].
        recoveredBlock49Step = 181 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) > (recoveredBlock49Stack2).
            recoveredBlock49PC := 182.
        ].
        recoveredBlock49Step = 182 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 186] ifFalse: [recoveredBlock49PC := 222].
        ].
        recoveredBlock49Step = 186 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal7.
            recoveredBlock49PC := 189.
        ].
        recoveredBlock49Step = 189 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal10.
            recoveredBlock49PC := 192.
        ].
        recoveredBlock49Step = 192 ifTrue: [
            recoveredBlock49Stack3 := recoveredLocal4.
            recoveredBlock49PC := 195.
        ].
        recoveredBlock49Step = 195 ifTrue: [
            recoveredBlock49Stack4 := 2.
            recoveredBlock49PC := 197.
        ].
        recoveredBlock49Step = 197 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) at: (recoveredBlock49Stack4).
            recoveredBlock49PC := 199.
        ].
        recoveredBlock49Step = 199 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) asInteger.
            recoveredBlock49PC := 201.
        ].
        recoveredBlock49Step = 201 ifTrue: [
            recoveredBlock49Stack4 := recoveredLocal3.
            recoveredBlock49PC := 204.
        ].
        recoveredBlock49Step = 204 ifTrue: [
            recoveredBlock49Stack5 := recoveredArg1.
            recoveredBlock49PC := 207.
        ].
        recoveredBlock49Step = 207 ifTrue: [
            recoveredBlock49Stack6 := recoveredBlock49Arg2.
            recoveredBlock49PC := 210.
        ].
        recoveredBlock49Step = 210 ifTrue: [
            recoveredBlock49Stack5 := (recoveredBlock49Stack5) at: (recoveredBlock49Stack6).
            recoveredBlock49PC := 212.
        ].
        recoveredBlock49Step = 212 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) create: (recoveredBlock49Stack2) noOfBits: (recoveredBlock49Stack3) bitIndex: (recoveredBlock49Stack4) name: (recoveredBlock49Stack5).
            recoveredBlock49PC := 215.
        ].
        recoveredBlock49Step = 215 ifTrue: [
            recoveredLocal5 := recoveredBlock49Stack1.
            recoveredBlock49PC := 218.
        ].
        recoveredBlock49Step = 218 ifTrue: [
            recoveredBlock49PC := 247.
        ].
        recoveredBlock49Step = 222 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal7.
            recoveredBlock49PC := 225.
        ].
        recoveredBlock49Step = 225 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal10.
            recoveredBlock49PC := 228.
        ].
        recoveredBlock49Step = 228 ifTrue: [
            recoveredBlock49Stack3 := 1.
            recoveredBlock49PC := 230.
        ].
        recoveredBlock49Step = 230 ifTrue: [
            recoveredBlock49Stack4 := recoveredLocal3.
            recoveredBlock49PC := 233.
        ].
        recoveredBlock49Step = 233 ifTrue: [
            recoveredBlock49Stack5 := recoveredArg1.
            recoveredBlock49PC := 236.
        ].
        recoveredBlock49Step = 236 ifTrue: [
            recoveredBlock49Stack6 := recoveredBlock49Arg2.
            recoveredBlock49PC := 239.
        ].
        recoveredBlock49Step = 239 ifTrue: [
            recoveredBlock49Stack5 := (recoveredBlock49Stack5) at: (recoveredBlock49Stack6).
            recoveredBlock49PC := 241.
        ].
        recoveredBlock49Step = 241 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) create: (recoveredBlock49Stack2) noOfBits: (recoveredBlock49Stack3) bitIndex: (recoveredBlock49Stack4) name: (recoveredBlock49Stack5).
            recoveredBlock49PC := 244.
        ].
        recoveredBlock49Step = 244 ifTrue: [
            recoveredLocal5 := recoveredBlock49Stack1.
            recoveredBlock49PC := 247.
        ].
        recoveredBlock49Step = 247 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal3.
            recoveredBlock49PC := 250.
        ].
        recoveredBlock49Step = 250 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal5.
            recoveredBlock49PC := 253.
        ].
        recoveredBlock49Step = 253 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) noOfBits.
            recoveredBlock49PC := 255.
        ].
        recoveredBlock49Step = 255 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) + (recoveredBlock49Stack2).
            recoveredBlock49PC := 256.
        ].
        recoveredBlock49Step = 256 ifTrue: [
            recoveredLocal3 := recoveredBlock49Stack1.
            recoveredBlock49PC := 259.
        ].
        recoveredBlock49Step = 259 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal5.
            recoveredBlock49PC := 262.
        ].
        recoveredBlock49Step = 262 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) bitIndex.
            recoveredBlock49PC := 264.
        ].
        recoveredBlock49Step = 264 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal5.
            recoveredBlock49PC := 267.
        ].
        recoveredBlock49Step = 267 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) noOfBits.
            recoveredBlock49PC := 269.
        ].
        recoveredBlock49Step = 269 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) + (recoveredBlock49Stack2).
            recoveredBlock49PC := 270.
        ].
        recoveredBlock49Step = 270 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal7.
            recoveredBlock49PC := 273.
        ].
        recoveredBlock49Step = 273 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) bitSize.
            recoveredBlock49PC := 275.
        ].
        recoveredBlock49Step = 275 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) >= (recoveredBlock49Stack2).
            recoveredBlock49PC := 276.
        ].
        recoveredBlock49Step = 276 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 280] ifFalse: [recoveredBlock49PC := 314].
        ].
        recoveredBlock49Step = 280 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal10.
            recoveredBlock49PC := 283.
        ].
        recoveredBlock49Step = 283 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal7.
            recoveredBlock49PC := 286.
        ].
        recoveredBlock49Step = 286 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) byteSize.
            recoveredBlock49PC := 288.
        ].
        recoveredBlock49Step = 288 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) + (recoveredBlock49Stack2).
            recoveredBlock49PC := 289.
        ].
        recoveredBlock49Step = 289 ifTrue: [
            recoveredLocal10 := recoveredBlock49Stack1.
            recoveredBlock49PC := 292.
        ].
        recoveredBlock49Step = 292 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal5.
            recoveredBlock49PC := 295.
        ].
        recoveredBlock49Step = 295 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 296.
        ].
        recoveredBlock49Step = 296 ifTrue: [
            recoveredBlock49Stack3 := recoveredLocal10.
            recoveredBlock49PC := 299.
        ].
        recoveredBlock49Step = 299 ifTrue: [
            (recoveredBlock49Stack2) offset: (recoveredBlock49Stack3).
            recoveredBlock49PC := 301.
        ].
        recoveredBlock49Step = 301 ifTrue: [
            recoveredBlock49Stack2 := 1.
            recoveredBlock49PC := 303.
        ].
        recoveredBlock49Step = 303 ifTrue: [
            (recoveredBlock49Stack1) bitIndex: (recoveredBlock49Stack2).
            recoveredBlock49PC := 305.
        ].
        recoveredBlock49Step = 305 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal5.
            recoveredBlock49PC := 308.
        ].
        recoveredBlock49Step = 308 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) noOfBits.
            recoveredBlock49PC := 310.
        ].
        recoveredBlock49Step = 310 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) + (1).
            recoveredBlock49PC := 311.
        ].
        recoveredBlock49Step = 311 ifTrue: [
            recoveredLocal3 := recoveredBlock49Stack1.
            recoveredBlock49PC := 314.
        ].
        recoveredBlock49Step = 314 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 317.
        ].
        recoveredBlock49Step = 317 ifTrue: [
            recoveredBlock49Stack2 := 1.
            recoveredBlock49PC := 319.
        ].
        recoveredBlock49Step = 319 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) at: (recoveredBlock49Stack2).
            recoveredBlock49PC := 321.
        ].
        recoveredBlock49Step = 321 ifTrue: [
            recoveredBlock49Stack2 := $b.
            recoveredBlock49PC := 324.
        ].
        recoveredBlock49Step = 324 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) = (recoveredBlock49Stack2).
            recoveredBlock49PC := 325.
        ].
        recoveredBlock49Step = 325 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 328] ifFalse: [recoveredBlock49PC := 406].
        ].
        recoveredBlock49Step = 328 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal5.
            recoveredBlock49PC := 331.
        ].
        recoveredBlock49Step = 331 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) bitIndex.
            recoveredBlock49PC := 333.
        ].
        recoveredBlock49Step = 333 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) + (1).
            recoveredBlock49PC := 334.
        ].
        recoveredBlock49Step = 334 ifTrue: [
            recoveredLocal3 := recoveredBlock49Stack1.
            recoveredBlock49PC := 337.
        ].
        recoveredBlock49Step = 337 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal7.
            recoveredBlock49PC := 340.
        ].
        recoveredBlock49Step = 340 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal5.
            recoveredBlock49PC := 343.
        ].
        recoveredBlock49Step = 343 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) offset.
            recoveredBlock49PC := 345.
        ].
        recoveredBlock49Step = 345 ifTrue: [
            recoveredBlock49Stack3 := recoveredLocal3.
            recoveredBlock49PC := 348.
        ].
        recoveredBlock49Step = 348 ifTrue: [
            recoveredBlock49Stack4 := recoveredArg1.
            recoveredBlock49PC := 351.
        ].
        recoveredBlock49Step = 351 ifTrue: [
            recoveredBlock49Stack5 := recoveredBlock49Arg2.
            recoveredBlock49PC := 354.
        ].
        recoveredBlock49Step = 354 ifTrue: [
            recoveredBlock49Stack4 := (recoveredBlock49Stack4) at: (recoveredBlock49Stack5).
            recoveredBlock49PC := 356.
        ].
        recoveredBlock49Step = 356 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) create: (recoveredBlock49Stack2) bitIndex: (recoveredBlock49Stack3) name: (recoveredBlock49Stack4).
            recoveredBlock49PC := 359.
        ].
        recoveredBlock49Step = 359 ifTrue: [
            recoveredLocal5 := recoveredBlock49Stack1.
            recoveredBlock49PC := 362.
        ].
        recoveredBlock49Step = 362 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal5.
            recoveredBlock49PC := 365.
        ].
        recoveredBlock49Step = 365 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) bitIndex.
            recoveredBlock49PC := 367.
        ].
        recoveredBlock49Step = 367 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal7.
            recoveredBlock49PC := 370.
        ].
        recoveredBlock49Step = 370 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) bitSize.
            recoveredBlock49PC := 372.
        ].
        recoveredBlock49Step = 372 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) >= (recoveredBlock49Stack2).
            recoveredBlock49PC := 373.
        ].
        recoveredBlock49Step = 373 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 376] ifFalse: [recoveredBlock49PC := 406].
        ].
        recoveredBlock49Step = 376 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal10.
            recoveredBlock49PC := 379.
        ].
        recoveredBlock49Step = 379 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal7.
            recoveredBlock49PC := 382.
        ].
        recoveredBlock49Step = 382 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) byteSize.
            recoveredBlock49PC := 384.
        ].
        recoveredBlock49Step = 384 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) + (recoveredBlock49Stack2).
            recoveredBlock49PC := 385.
        ].
        recoveredBlock49Step = 385 ifTrue: [
            recoveredLocal10 := recoveredBlock49Stack1.
            recoveredBlock49PC := 388.
        ].
        recoveredBlock49Step = 388 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal5.
            recoveredBlock49PC := 391.
        ].
        recoveredBlock49Step = 391 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 392.
        ].
        recoveredBlock49Step = 392 ifTrue: [
            recoveredBlock49Stack3 := recoveredLocal10.
            recoveredBlock49PC := 395.
        ].
        recoveredBlock49Step = 395 ifTrue: [
            (recoveredBlock49Stack2) offset: (recoveredBlock49Stack3).
            recoveredBlock49PC := 397.
        ].
        recoveredBlock49Step = 397 ifTrue: [
            recoveredBlock49Stack2 := 1.
            recoveredBlock49PC := 399.
        ].
        recoveredBlock49Step = 399 ifTrue: [
            (recoveredBlock49Stack1) bitIndex: (recoveredBlock49Stack2).
            recoveredBlock49PC := 401.
        ].
        recoveredBlock49Step = 401 ifTrue: [
            recoveredBlock49Stack1 := 1.
            recoveredBlock49PC := 403.
        ].
        recoveredBlock49Step = 403 ifTrue: [
            recoveredLocal3 := recoveredBlock49Stack1.
            recoveredBlock49PC := 406.
        ].
        recoveredBlock49Step = 406 ifTrue: [
            recoveredBlock49PC := 553.
        ].
        recoveredBlock49Step = 410 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 413.
        ].
        recoveredBlock49Step = 413 ifTrue: [
            recoveredBlock49Stack2 := 1.
            recoveredBlock49PC := 415.
        ].
        recoveredBlock49Step = 415 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) at: (recoveredBlock49Stack2).
            recoveredBlock49PC := 417.
        ].
        recoveredBlock49Step = 417 ifTrue: [
            recoveredBlock49Stack2 := $m.
            recoveredBlock49PC := 420.
        ].
        recoveredBlock49Step = 420 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) = (recoveredBlock49Stack2).
            recoveredBlock49PC := 421.
        ].
        recoveredBlock49Step = 421 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 424] ifFalse: [recoveredBlock49PC := 511].
        ].
        recoveredBlock49Step = 424 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 427.
        ].
        recoveredBlock49Step = 427 ifTrue: [
            recoveredBlock49Stack2 := $..
            recoveredBlock49PC := 430.
        ].
        recoveredBlock49Step = 430 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) allSubStrings: (recoveredBlock49Stack2).
            recoveredBlock49PC := 432.
        ].
        recoveredBlock49Step = 432 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 433.
        ].
        recoveredBlock49Step = 433 ifTrue: [
            recoveredLocal4 := recoveredBlock49Stack2.
            recoveredBlock49PC := 436.
        ].
        recoveredBlock49Step = 436 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) size.
            recoveredBlock49PC := 437.
        ].
        recoveredBlock49Step = 437 ifTrue: [
            recoveredBlock49Stack2 := 1.
            recoveredBlock49PC := 439.
        ].
        recoveredBlock49Step = 439 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) > (recoveredBlock49Stack2).
            recoveredBlock49PC := 440.
        ].
        recoveredBlock49Step = 440 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 444] ifFalse: [recoveredBlock49PC := 478].
        ].
        recoveredBlock49Step = 444 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal7.
            recoveredBlock49PC := 447.
        ].
        recoveredBlock49Step = 447 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal10.
            recoveredBlock49PC := 450.
        ].
        recoveredBlock49Step = 450 ifTrue: [
            recoveredBlock49Stack3 := recoveredLocal4.
            recoveredBlock49PC := 453.
        ].
        recoveredBlock49Step = 453 ifTrue: [
            recoveredBlock49Stack4 := 2.
            recoveredBlock49PC := 455.
        ].
        recoveredBlock49Step = 455 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) at: (recoveredBlock49Stack4).
            recoveredBlock49PC := 457.
        ].
        recoveredBlock49Step = 457 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) asInteger.
            recoveredBlock49PC := 459.
        ].
        recoveredBlock49Step = 459 ifTrue: [
            recoveredBlock49Stack4 := 1.
            recoveredBlock49PC := 461.
        ].
        recoveredBlock49Step = 461 ifTrue: [
            recoveredBlock49Stack5 := recoveredArg1.
            recoveredBlock49PC := 464.
        ].
        recoveredBlock49Step = 464 ifTrue: [
            recoveredBlock49Stack6 := recoveredBlock49Arg2.
            recoveredBlock49PC := 467.
        ].
        recoveredBlock49Step = 467 ifTrue: [
            recoveredBlock49Stack5 := (recoveredBlock49Stack5) at: (recoveredBlock49Stack6).
            recoveredBlock49PC := 469.
        ].
        recoveredBlock49Step = 469 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) create: (recoveredBlock49Stack2) noOfBits: (recoveredBlock49Stack3) bitIndex: (recoveredBlock49Stack4) name: (recoveredBlock49Stack5).
            recoveredBlock49PC := 472.
        ].
        recoveredBlock49Step = 472 ifTrue: [
            recoveredLocal5 := recoveredBlock49Stack1.
            recoveredBlock49PC := 475.
        ].
        recoveredBlock49Step = 475 ifTrue: [
            recoveredBlock49PC := 502.
        ].
        recoveredBlock49Step = 478 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal7.
            recoveredBlock49PC := 481.
        ].
        recoveredBlock49Step = 481 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal10.
            recoveredBlock49PC := 484.
        ].
        recoveredBlock49Step = 484 ifTrue: [
            recoveredBlock49Stack3 := 1.
            recoveredBlock49PC := 486.
        ].
        recoveredBlock49Step = 486 ifTrue: [
            recoveredBlock49Stack4 := 1.
            recoveredBlock49PC := 488.
        ].
        recoveredBlock49Step = 488 ifTrue: [
            recoveredBlock49Stack5 := recoveredArg1.
            recoveredBlock49PC := 491.
        ].
        recoveredBlock49Step = 491 ifTrue: [
            recoveredBlock49Stack6 := recoveredBlock49Arg2.
            recoveredBlock49PC := 494.
        ].
        recoveredBlock49Step = 494 ifTrue: [
            recoveredBlock49Stack5 := (recoveredBlock49Stack5) at: (recoveredBlock49Stack6).
            recoveredBlock49PC := 496.
        ].
        recoveredBlock49Step = 496 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) create: (recoveredBlock49Stack2) noOfBits: (recoveredBlock49Stack3) bitIndex: (recoveredBlock49Stack4) name: (recoveredBlock49Stack5).
            recoveredBlock49PC := 499.
        ].
        recoveredBlock49Step = 499 ifTrue: [
            recoveredLocal5 := recoveredBlock49Stack1.
            recoveredBlock49PC := 502.
        ].
        recoveredBlock49Step = 502 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal5.
            recoveredBlock49PC := 505.
        ].
        recoveredBlock49Step = 505 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) noOfBits.
            recoveredBlock49PC := 507.
        ].
        recoveredBlock49Step = 507 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) + (1).
            recoveredBlock49PC := 508.
        ].
        recoveredBlock49Step = 508 ifTrue: [
            recoveredLocal3 := recoveredBlock49Stack1.
            recoveredBlock49PC := 511.
        ].
        recoveredBlock49Step = 511 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 514.
        ].
        recoveredBlock49Step = 514 ifTrue: [
            recoveredBlock49Stack2 := 1.
            recoveredBlock49PC := 516.
        ].
        recoveredBlock49Step = 516 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) at: (recoveredBlock49Stack2).
            recoveredBlock49PC := 518.
        ].
        recoveredBlock49Step = 518 ifTrue: [
            recoveredBlock49Stack2 := $b.
            recoveredBlock49PC := 522.
        ].
        recoveredBlock49Step = 522 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) = (recoveredBlock49Stack2).
            recoveredBlock49PC := 523.
        ].
        recoveredBlock49Step = 523 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 526] ifFalse: [recoveredBlock49PC := 553].
        ].
        recoveredBlock49Step = 526 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal7.
            recoveredBlock49PC := 529.
        ].
        recoveredBlock49Step = 529 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal10.
            recoveredBlock49PC := 532.
        ].
        recoveredBlock49Step = 532 ifTrue: [
            recoveredBlock49Stack3 := 1.
            recoveredBlock49PC := 534.
        ].
        recoveredBlock49Step = 534 ifTrue: [
            recoveredBlock49Stack4 := recoveredArg1.
            recoveredBlock49PC := 537.
        ].
        recoveredBlock49Step = 537 ifTrue: [
            recoveredBlock49Stack5 := recoveredBlock49Arg2.
            recoveredBlock49PC := 540.
        ].
        recoveredBlock49Step = 540 ifTrue: [
            recoveredBlock49Stack4 := (recoveredBlock49Stack4) at: (recoveredBlock49Stack5).
            recoveredBlock49PC := 542.
        ].
        recoveredBlock49Step = 542 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) create: (recoveredBlock49Stack2) bitIndex: (recoveredBlock49Stack3) name: (recoveredBlock49Stack4).
            recoveredBlock49PC := 545.
        ].
        recoveredBlock49Step = 545 ifTrue: [
            recoveredLocal5 := recoveredBlock49Stack1.
            recoveredBlock49PC := 548.
        ].
        recoveredBlock49Step = 548 ifTrue: [
            recoveredBlock49Stack1 := 1.
            recoveredBlock49PC := 550.
        ].
        recoveredBlock49Step = 550 ifTrue: [
            recoveredLocal3 := recoveredBlock49Stack1.
            recoveredBlock49PC := 553.
        ].
        recoveredBlock49Step = 553 ifTrue: [
            recoveredBlock49Stack1 := access.
            recoveredBlock49PC := 555.
        ].
        recoveredBlock49Step = 555 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg2.
            recoveredBlock49PC := 558.
        ].
        recoveredBlock49Step = 558 ifTrue: [
            recoveredBlock49Stack3 := recoveredLocal5.
            recoveredBlock49PC := 561.
        ].
        recoveredBlock49Step = 561 ifTrue: [
            (recoveredBlock49Stack1) at: (recoveredBlock49Stack2) put: (recoveredBlock49Stack3).
            recoveredBlock49PC := 563.
        ].
        recoveredBlock49Step = 563 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal5.
            recoveredBlock49PC := 566.
        ].
        recoveredBlock49Step = 566 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 567.
        ].
        recoveredBlock49Step = 567 ifTrue: [
            recoveredLocal1 := recoveredBlock49Stack2.
            recoveredBlock49PC := 570.
        ].
        recoveredBlock49Step = 570 ifTrue: [
            recoveredBlock49PC := 643.
        ].
        recoveredBlock49Step = 574 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 577.
        ].
        recoveredBlock49Step = 577 ifTrue: [
            (recoveredBlock49Stack1 == nil) ifTrue: [recoveredBlock49PC := 602] ifFalse: [recoveredBlock49PC := 580].
        ].
        recoveredBlock49Step = 580 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 583.
        ].
        recoveredBlock49Step = 583 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) class.
            recoveredBlock49PC := 585.
        ].
        recoveredBlock49Step = 585 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) isDBBitItem.
            recoveredBlock49PC := 587.
        ].
        recoveredBlock49Step = 587 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 590] ifFalse: [recoveredBlock49PC := 602].
        ].
        recoveredBlock49Step = 590 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal10.
            recoveredBlock49PC := 593.
        ].
        recoveredBlock49Step = 593 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal1.
            recoveredBlock49PC := 596.
        ].
        recoveredBlock49Step = 596 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) byteSize.
            recoveredBlock49PC := 598.
        ].
        recoveredBlock49Step = 598 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) + (recoveredBlock49Stack2).
            recoveredBlock49PC := 599.
        ].
        recoveredBlock49Step = 599 ifTrue: [
            recoveredLocal10 := recoveredBlock49Stack1.
            recoveredBlock49PC := 602.
        ].
        recoveredBlock49Step = 602 ifTrue: [
            recoveredBlock49Stack1 := self.
            recoveredBlock49PC := 603.
        ].
        recoveredBlock49Step = 603 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal10.
            recoveredBlock49PC := 606.
        ].
        recoveredBlock49Step = 606 ifTrue: [
            recoveredBlock49Stack3 := access.
            recoveredBlock49PC := 608.
        ].
        recoveredBlock49Step = 608 ifTrue: [
            recoveredBlock49Stack4 := recoveredBlock49Arg1.
            recoveredBlock49PC := 611.
        ].
        recoveredBlock49Step = 611 ifTrue: [
            recoveredBlock49Stack5 := recoveredBlock49Arg2.
            recoveredBlock49PC := 614.
        ].
        recoveredBlock49Step = 614 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) initializeByteElementAccess: (recoveredBlock49Stack2) accessors: (recoveredBlock49Stack3) format: (recoveredBlock49Stack4) index: (recoveredBlock49Stack5).
            recoveredBlock49PC := 617.
        ].
        recoveredBlock49Step = 617 ifTrue: [
            recoveredLocal10 := recoveredBlock49Stack1.
            recoveredBlock49PC := 620.
        ].
        recoveredBlock49Step = 620 ifTrue: [
            recoveredBlock49Stack1 := access.
            recoveredBlock49PC := 622.
        ].
        recoveredBlock49Step = 622 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg2.
            recoveredBlock49PC := 625.
        ].
        recoveredBlock49Step = 625 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) at: (recoveredBlock49Stack2).
            recoveredBlock49PC := 627.
        ].
        recoveredBlock49Step = 627 ifTrue: [
            recoveredLocal1 := recoveredBlock49Stack1.
            recoveredBlock49PC := 630.
        ].
        recoveredBlock49Step = 630 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 633.
        ].
        recoveredBlock49Step = 633 ifTrue: [
            recoveredBlock49Stack2 := recoveredArg1.
            recoveredBlock49PC := 636.
        ].
        recoveredBlock49Step = 636 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Arg2.
            recoveredBlock49PC := 639.
        ].
        recoveredBlock49Step = 639 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) at: (recoveredBlock49Stack3).
            recoveredBlock49PC := 641.
        ].
        recoveredBlock49Step = 641 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) name: (recoveredBlock49Stack2).
            recoveredBlock49PC := 643.
        ].
        recoveredBlock49Step = 643 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


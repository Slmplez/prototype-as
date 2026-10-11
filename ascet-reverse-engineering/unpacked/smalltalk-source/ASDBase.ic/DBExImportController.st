"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001a12c; bytecode file offset 0x92209c"
!DBExImportController methodsFor: 'recovered'!
exportFileTag
    ^18364757930599072546
! !

"ASDBase.ic method 0x2001f058; bytecode file offset 0x92209c"
!DBExImportController methodsFor: 'recovered'!
exportFormat
    ^196608
! !

"ASDBase.ic method 0x20023d98; bytecode file offset 0x92209c"
!DBExImportController methodsFor: 'recovered'!
recordClassKey
    ^'//..RecordClasses..\\'
! !

"ASDBase.ic method 0x200360e4; bytecode file offset 0x934580"
!DBExImportController methodsFor: 'recovered'!
attachedClassNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) AttachedClassNames.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200380a0; bytecode file offset 0x934b68"
!DBExImportController methodsFor: 'recovered'!
attachedKey: recoveredArg1
    ^'//..AttachedFiles..\\'
! !

"ASDBase.ic method 0x200409c0; bytecode file offset 0x93d278"
!DBExImportController methodsFor: 'recovered'!
recordClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbInterface.
    recoveredValue1 := (recoveredValue0) interfaceRecordClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d368; bytecode file offset 0x959d74"
!DBExImportController methodsFor: 'recovered'!
attributeRecordClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dbInterface.
    recoveredValue1 := (recoveredValue0) attributeInterface.
    recoveredValue2 := (recoveredValue1) recordClass.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d4a8; bytecode file offset 0x959d74"
!DBExImportController methodsFor: 'recovered'!
proxyClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dbInterface.
    recoveredValue1 := (recoveredValue0) interface.
    recoveredValue2 := (recoveredValue1) proxyClass.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20087b18; bytecode file offset 0x9845b8"
!DBExImportController methodsFor: 'recovered'!
wrongFormat
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DBError.
    recoveredValue1 := DBErrorWrongImportFormat.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bb098; bytecode file offset 0x9b7958"
!DBExImportController methodsFor: 'recovered'!
removeRecordClasses: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) recordClassKey.
    recoveredValue2 := [].
    (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c3b88; bytecode file offset 0x9c058c"
!DBExImportController methodsFor: 'recovered'!
fHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fHandle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ef240; bytecode file offset 0x9ebafc"
!DBExImportController methodsFor: 'recovered'!
importRecordsFromFile: recoveredArg1 objects: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) trimBlanks.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) importRecordsFromFile: (recoveredValue2) objects: (recoveredValue3) newGlobalId: (false).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2010c584; bytecode file offset 0xa08e44"
!DBExImportController methodsFor: 'recovered'!
setImportController: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := DBImportController3.
    recoveredValue1 := (recoveredValue0) createFrom: (self).
    importController := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := importController.
    recoveredValue4 := (recoveredValue3) exportFormat.
    recoveredValue5 := (recoveredValue2) = (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2011f5d8; bytecode file offset 0xa1be9c"
!DBExImportController methodsFor: 'recovered'!
removeImportedRecords: recoveredArg1
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
            recoveredStack2 := [:block280c8c4cArg1 | 
    | block280c8c4cValue0 block280c8c4cValue1 block280c8c4cValue2 |
    block280c8c4cValue0 := block280c8c4cArg1.
    block280c8c4cValue1 := (block280c8c4cValue0) asDBProxy.
    block280c8c4cValue2 := (block280c8c4cValue1) delete.
    block280c8c4cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015aea0; bytecode file offset 0xa57760"
!DBExImportController methodsFor: 'recovered'!
readBytes: recoveredArg1 from: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) readBytes: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) closeFile.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20165a10; bytecode file offset 0xa622e0"
!DBExImportController methodsFor: 'recovered'!
addRecordClasses: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) recordClassKey.
    recoveredValue2 := Array.
    recoveredValue3 := (self) recordClass.
    recoveredValue4 := (recoveredValue3) name.
    recoveredValue5 := (self) attributeRecordClass.
    recoveredValue6 := (recoveredValue5) name.
    recoveredValue7 := (recoveredValue2) with: (recoveredValue4) with: (recoveredValue6).
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201ef4d8; bytecode file offset 0xaebda0"
!DBExImportController methodsFor: 'recovered'!
checkRequiredSpace: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) stSize.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkRequiredSpace: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2026c098; bytecode file offset 0xb68970"
!DBExImportController methodsFor: 'recovered'!
createExportHeaderForHeaderDump: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ('Kk') == ('ASC_MaxDatabaseSize').
    recoveredValue1 := ByteArray.
    recoveredValue2 := (recoveredValue1) new: (16).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) size.
    (recoveredValue3) uint32At: (0) put: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := (self) exportFormat.
    (recoveredValue6) uint32At: (4) put: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := (self) exportFileTag.
    (recoveredValue8) uint64At: (8) put: (recoveredValue9).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2026d648; bytecode file offset 0xb69f14"
!DBExImportController methodsFor: 'recovered'!
setImportController2: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CTreeOldInterface'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    ^false
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := DBImportController2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrom: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            importController := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := importController.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) exportFormat.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2030f4f0; bytecode file offset 0xc0bdd0"
!DBExImportController methodsFor: 'recovered'!
dumpExportDictionary: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_71182'.
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
            recoveredStack1 := 'Kk'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'ASC_MaxDatabaseSize'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) addRecordClasses: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := dbInterface.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) linDeLin.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) swapper.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) clearClassReplacement.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := dbInterface.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) dumpObject: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := dbInterface.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) linDeLin.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) swapper.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) setClassReplacement.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) removeRecordClasses: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203102d4; bytecode file offset 0xc0cb9c"
!DBExImportController methodsFor: 'recovered'!
estimateExportExtSpace: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredLocal1 := 0.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := [:recoveredBlock12Block19Arg1 | 
    | recoveredBlock12Block19Stack0 recoveredBlock12Block19Stack1 recoveredBlock12Block19Stack2 recoveredBlock12Block19Stack3 recoveredBlock12Block19PC recoveredBlock12Block19Step recoveredBlock12Block19Done recoveredBlock12Block19Result |
    recoveredBlock12Block19Stack0 := nil.
    recoveredBlock12Block19PC := 26.
    recoveredBlock12Block19Done := false.
    [recoveredBlock12Block19Done not] whileTrue: [
        recoveredBlock12Block19Step := recoveredBlock12Block19PC.
        recoveredBlock12Block19Step = 26 ifTrue: [
            recoveredBlock12Block19Stack1 := nil.
            recoveredBlock12Block19PC := 27.
        ].
        recoveredBlock12Block19Step = 27 ifTrue: [
            recoveredBlock12Block19Stack2 := recoveredBlock12Block19Arg1.
            recoveredBlock12Block19PC := 28.
        ].
        recoveredBlock12Block19Step = 28 ifTrue: [
            recoveredBlock12Block19Stack2 := (recoveredBlock12Block19Stack2) isError.
            recoveredBlock12Block19PC := 29.
        ].
        recoveredBlock12Block19Step = 29 ifTrue: [
            (recoveredBlock12Block19Stack2) ifTrue: [recoveredBlock12Block19PC := 43] ifFalse: [recoveredBlock12Block19PC := 32].
        ].
        recoveredBlock12Block19Step = 32 ifTrue: [
            recoveredBlock12Block19PC := 33.
        ].
        recoveredBlock12Block19Step = 33 ifTrue: [
            recoveredBlock12Block19Stack1 := recoveredLocal1.
            recoveredBlock12Block19PC := 36.
        ].
        recoveredBlock12Block19Step = 36 ifTrue: [
            recoveredBlock12Block19Stack2 := recoveredBlock12Block19Arg1.
            recoveredBlock12Block19PC := 37.
        ].
        recoveredBlock12Block19Step = 37 ifTrue: [
            recoveredBlock12Block19Stack2 := (recoveredBlock12Block19Stack2) estimateExportExtSpace.
            recoveredBlock12Block19PC := 38.
        ].
        recoveredBlock12Block19Step = 38 ifTrue: [
            recoveredBlock12Block19Stack1 := (recoveredBlock12Block19Stack1) + (recoveredBlock12Block19Stack2).
            recoveredBlock12Block19PC := 39.
        ].
        recoveredBlock12Block19Step = 39 ifTrue: [
            recoveredBlock12Block19Stack2 := recoveredBlock12Block19Stack1.
            recoveredBlock12Block19PC := 40.
        ].
        recoveredBlock12Block19Step = 40 ifTrue: [
            recoveredLocal1 := recoveredBlock12Block19Stack2.
            recoveredBlock12Block19PC := 43.
        ].
        recoveredBlock12Block19Step = 43 ifTrue: [
            recoveredBlock12Block19Result := recoveredBlock12Block19Stack1.
            recoveredBlock12Block19Done := true.
        ].
    ].
    recoveredBlock12Block19Result
].
    recoveredBlock12Value2 := (recoveredBlock12Value0) do: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := ByteArray.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue2) new: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x203af928; bytecode file offset 0xcac20c"
!DBExImportController methodsFor: 'recovered'!
getRecordClasses: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) recordClassKey.
    recoveredValue2 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9Stack5 recoveredBlock9Stack6 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isCollection.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 29] ifFalse: [recoveredBlock9PC := 22].
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack1 := ETASError.
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9Stack2 := DBErrorWrongImportFormat.
            recoveredBlock9PC := 26.
        ].
        recoveredBlock9Step = 26 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) create: (recoveredBlock9Stack2).
            recoveredBlock9PC := 28.
        ].
        recoveredBlock9Step = 28 ifTrue: [
            ^recoveredBlock9Stack1
        ].
        recoveredBlock9Step = 29 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 30.
        ].
        recoveredBlock9Step = 30 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) size.
            recoveredBlock9PC := 32.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredBlock9Stack2 := 2.
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) >= (recoveredBlock9Stack2).
            recoveredBlock9PC := 35.
        ].
        recoveredBlock9Step = 35 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 45] ifFalse: [recoveredBlock9PC := 38].
        ].
        recoveredBlock9Step = 38 ifTrue: [
            recoveredBlock9Stack1 := ETASError.
            recoveredBlock9PC := 40.
        ].
        recoveredBlock9Step = 40 ifTrue: [
            recoveredBlock9Stack2 := DBErrorWrongImportFormat.
            recoveredBlock9PC := 42.
        ].
        recoveredBlock9Step = 42 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) create: (recoveredBlock9Stack2).
            recoveredBlock9PC := 44.
        ].
        recoveredBlock9Step = 44 ifTrue: [
            ^recoveredBlock9Stack1
        ].
        recoveredBlock9Step = 45 ifTrue: [
            recoveredBlock9Stack1 := importController.
            recoveredBlock9PC := 47.
        ].
        recoveredBlock9Step = 47 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 48.
        ].
        recoveredBlock9Step = 48 ifTrue: [
            recoveredBlock9Stack3 := Smalltalk.
            recoveredBlock9PC := 50.
        ].
        recoveredBlock9Step = 50 ifTrue: [
            recoveredBlock9Stack4 := recoveredBlock9Arg1.
            recoveredBlock9PC := 51.
        ].
        recoveredBlock9Step = 51 ifTrue: [
            recoveredBlock9Stack5 := 1.
            recoveredBlock9PC := 53.
        ].
        recoveredBlock9Step = 53 ifTrue: [
            recoveredBlock9Stack4 := (recoveredBlock9Stack4) at: (recoveredBlock9Stack5).
            recoveredBlock9PC := 55.
        ].
        recoveredBlock9Step = 55 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) at: (recoveredBlock9Stack4).
            recoveredBlock9PC := 57.
        ].
        recoveredBlock9Step = 57 ifTrue: [
            (recoveredBlock9Stack2) recordClass: (recoveredBlock9Stack3).
            recoveredBlock9PC := 59.
        ].
        recoveredBlock9Step = 59 ifTrue: [
            recoveredBlock9Stack2 := Smalltalk.
            recoveredBlock9PC := 61.
        ].
        recoveredBlock9Step = 61 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Arg1.
            recoveredBlock9PC := 62.
        ].
        recoveredBlock9Step = 62 ifTrue: [
            recoveredBlock9Stack4 := 2.
            recoveredBlock9PC := 64.
        ].
        recoveredBlock9Step = 64 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) at: (recoveredBlock9Stack4).
            recoveredBlock9PC := 66.
        ].
        recoveredBlock9Step = 66 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) at: (recoveredBlock9Stack3).
            recoveredBlock9PC := 68.
        ].
        recoveredBlock9Step = 68 ifTrue: [
            (recoveredBlock9Stack1) attributeRecordClass: (recoveredBlock9Stack2).
            recoveredBlock9PC := 70.
        ].
        recoveredBlock9Step = 70 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg1.
            recoveredBlock9PC := 73.
        ].
        recoveredBlock9Step = 73 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) removeRecordClasses: (recoveredBlock9Stack1).
            recoveredBlock9PC := 75.
        ].
        recoveredBlock9Step = 75 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack0.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (recoveredValue0) at: (recoveredValue1) ifPresent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x203b2094; bytecode file offset 0xcae984"
!DBExImportController methodsFor: 'recovered'!
dumpExportHeader: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_71182'.
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
            recoveredStack1 := 'Kk'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'ASC_MaxDatabaseSize'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressWindow.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:block280f5cb8Arg1 | 
    | block280f5cb8Value0 block280f5cb8Value1 block280f5cb8Value2 block280f5cb8Value3 |
    block280f5cb8Value0 := block280f5cb8Arg1.
    (block280f5cb8Value0) setCancelSensitive: (false).
    block280f5cb8Value1 := block280f5cb8Arg1.
    (block280f5cb8Value1) messageString: ('Dumping export header...').
    block280f5cb8Value2 := block280f5cb8Arg1.
    block280f5cb8Value3 := (block280f5cb8Value2) fractionComplete: (0).
    block280f5cb8Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) dumpExportDictionary: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) createExportHeaderForHeaderDump: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressWindow.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:block280f5cdcArg1 | 
    | block280f5cdcValue0 block280f5cdcValue1 |
    block280f5cdcValue0 := block280f5cdcArg1.
    block280f5cdcValue1 := (block280f5cdcValue0) setCancelSensitive: (true).
    block280f5cdcValue1
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20415098; bytecode file offset 0xd11980"
!DBExImportController methodsFor: 'recovered'!
adjustOffsetsIn: recoveredArg1 withOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('ASC_MaxDatabaseSize').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg2.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isString.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 95] ifFalse: [recoveredBlock13PC := 26].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg2.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block28Arg1 | 
    | recoveredBlock13Block28Stack0 recoveredBlock13Block28Stack1 recoveredBlock13Block28Stack2 recoveredBlock13Block28Stack3 recoveredBlock13Block28Stack4 recoveredBlock13Block28PC recoveredBlock13Block28Step recoveredBlock13Block28Done recoveredBlock13Block28Result |
    recoveredBlock13Block28Stack0 := nil.
    recoveredBlock13Block28PC := 34.
    recoveredBlock13Block28Done := false.
    [recoveredBlock13Block28Done not] whileTrue: [
        recoveredBlock13Block28Step := recoveredBlock13Block28PC.
        recoveredBlock13Block28Step = 34 ifTrue: [
            recoveredBlock13Block28Stack1 := nil.
            recoveredBlock13Block28PC := 35.
        ].
        recoveredBlock13Block28Step = 35 ifTrue: [
            recoveredBlock13Block28Stack2 := recoveredBlock13Block28Arg1.
            recoveredBlock13Block28PC := 36.
        ].
        recoveredBlock13Block28Step = 36 ifTrue: [
            recoveredBlock13Block28Stack2 := (recoveredBlock13Block28Stack2) isError.
            recoveredBlock13Block28PC := 37.
        ].
        recoveredBlock13Block28Step = 37 ifTrue: [
            (recoveredBlock13Block28Stack2) ifTrue: [recoveredBlock13Block28PC := 92] ifFalse: [recoveredBlock13Block28PC := 40].
        ].
        recoveredBlock13Block28Step = 40 ifTrue: [
            recoveredBlock13Block28PC := 41.
        ].
        recoveredBlock13Block28Step = 41 ifTrue: [
            recoveredBlock13Block28Stack1 := recoveredBlock13Block28Arg1.
            recoveredBlock13Block28PC := 42.
        ].
        recoveredBlock13Block28Step = 42 ifTrue: [
            recoveredBlock13Block28Stack2 := recoveredBlock13Block28Arg1.
            recoveredBlock13Block28PC := 43.
        ].
        recoveredBlock13Block28Step = 43 ifTrue: [
            recoveredBlock13Block28Stack2 := (recoveredBlock13Block28Stack2) offset.
            recoveredBlock13Block28PC := 45.
        ].
        recoveredBlock13Block28Step = 45 ifTrue: [
            recoveredBlock13Block28Stack3 := recoveredArg2.
            recoveredBlock13Block28PC := 48.
        ].
        recoveredBlock13Block28Step = 48 ifTrue: [
            recoveredBlock13Block28Stack2 := (recoveredBlock13Block28Stack2) + (recoveredBlock13Block28Stack3).
            recoveredBlock13Block28PC := 49.
        ].
        recoveredBlock13Block28Step = 49 ifTrue: [
            (recoveredBlock13Block28Stack1) offset: (recoveredBlock13Block28Stack2).
            recoveredBlock13Block28PC := 51.
        ].
        recoveredBlock13Block28Step = 51 ifTrue: [
            recoveredBlock13Block28Stack1 := recoveredBlock13Block28Arg1.
            recoveredBlock13Block28PC := 52.
        ].
        recoveredBlock13Block28Step = 52 ifTrue: [
            recoveredBlock13Block28Stack2 := recoveredBlock13Block28Arg1.
            recoveredBlock13Block28PC := 53.
        ].
        recoveredBlock13Block28Step = 53 ifTrue: [
            recoveredBlock13Block28Stack2 := (recoveredBlock13Block28Stack2) attributeOffsets.
            recoveredBlock13Block28PC := 55.
        ].
        recoveredBlock13Block28Step = 55 ifTrue: [
            recoveredBlock13Block28Stack3 := [:recoveredBlock13Block28Block55Arg1 | 
    | recoveredBlock13Block28Block55Value0 recoveredBlock13Block28Block55Value1 recoveredBlock13Block28Block55Value2 |
    recoveredBlock13Block28Block55Value0 := recoveredBlock13Block28Block55Arg1.
    recoveredBlock13Block28Block55Value1 := recoveredArg2.
    recoveredBlock13Block28Block55Value2 := (recoveredBlock13Block28Block55Value0) + (recoveredBlock13Block28Block55Value1).
    recoveredBlock13Block28Block55Value2
].
            recoveredBlock13Block28PC := 68.
        ].
        recoveredBlock13Block28Step = 68 ifTrue: [
            recoveredBlock13Block28Stack2 := (recoveredBlock13Block28Stack2) collect: (recoveredBlock13Block28Stack3).
            recoveredBlock13Block28PC := 70.
        ].
        recoveredBlock13Block28Step = 70 ifTrue: [
            (recoveredBlock13Block28Stack1) attributeOffsets: (recoveredBlock13Block28Stack2).
            recoveredBlock13Block28PC := 72.
        ].
        recoveredBlock13Block28Step = 72 ifTrue: [
            recoveredBlock13Block28Stack1 := recoveredBlock13Block28Arg1.
            recoveredBlock13Block28PC := 73.
        ].
        recoveredBlock13Block28Step = 73 ifTrue: [
            recoveredBlock13Block28Stack2 := recoveredBlock13Block28Arg1.
            recoveredBlock13Block28PC := 74.
        ].
        recoveredBlock13Block28Step = 74 ifTrue: [
            recoveredBlock13Block28Stack2 := (recoveredBlock13Block28Stack2) attachedOffsets.
            recoveredBlock13Block28PC := 76.
        ].
        recoveredBlock13Block28Step = 76 ifTrue: [
            recoveredBlock13Block28Stack3 := [:recoveredBlock13Block28Block76Arg1 | 
    | recoveredBlock13Block28Block76Value0 recoveredBlock13Block28Block76Value1 recoveredBlock13Block28Block76Value2 |
    recoveredBlock13Block28Block76Value0 := recoveredBlock13Block28Block76Arg1.
    recoveredBlock13Block28Block76Value1 := recoveredArg2.
    recoveredBlock13Block28Block76Value2 := (recoveredBlock13Block28Block76Value0) + (recoveredBlock13Block28Block76Value1).
    recoveredBlock13Block28Block76Value2
].
            recoveredBlock13Block28PC := 88.
        ].
        recoveredBlock13Block28Step = 88 ifTrue: [
            recoveredBlock13Block28Stack2 := (recoveredBlock13Block28Stack2) collect: (recoveredBlock13Block28Stack3).
            recoveredBlock13Block28PC := 90.
        ].
        recoveredBlock13Block28Step = 90 ifTrue: [
            recoveredBlock13Block28Stack1 := (recoveredBlock13Block28Stack1) attachedOffsets: (recoveredBlock13Block28Stack2).
            recoveredBlock13Block28PC := 92.
        ].
        recoveredBlock13Block28Step = 92 ifTrue: [
            recoveredBlock13Block28Result := recoveredBlock13Block28Stack1.
            recoveredBlock13Block28Done := true.
        ].
    ].
    recoveredBlock13Block28Result
].
            recoveredBlock13PC := 93.
        ].
        recoveredBlock13Step = 93 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) do: (recoveredBlock13Stack2).
            recoveredBlock13PC := 95.
        ].
        recoveredBlock13Step = 95 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue1) keysAndValuesDo: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20419670; bytecode file offset 0xd15f50"
!DBExImportController methodsFor: 'recovered'!
exportAll: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) seekToEOF.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 :recoveredBlock23Arg2 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg2.
            recoveredBlock23PC := 32.
        ].
        recoveredBlock23Step = 32 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) isString.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 96] ifFalse: [recoveredBlock23PC := 36].
        ].
        recoveredBlock23Step = 36 ifTrue: [
            recoveredBlock23PC := 37.
        ].
        recoveredBlock23Step = 37 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg2.
            recoveredBlock23PC := 38.
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23Stack2 := [:recoveredBlock23Block38Arg1 | 
    | recoveredBlock23Block38Local1 recoveredBlock23Block38Local2 recoveredBlock23Block38Stack0 recoveredBlock23Block38Stack1 recoveredBlock23Block38Stack2 recoveredBlock23Block38Stack3 recoveredBlock23Block38Stack4 recoveredBlock23Block38Stack5 recoveredBlock23Block38PC recoveredBlock23Block38Step recoveredBlock23Block38Done recoveredBlock23Block38Result |
    recoveredBlock23Block38Stack0 := self.
    recoveredBlock23Block38PC := 44.
    recoveredBlock23Block38Done := false.
    [recoveredBlock23Block38Done not] whileTrue: [
        recoveredBlock23Block38Step := recoveredBlock23Block38PC.
        recoveredBlock23Block38Step = 44 ifTrue: [
            recoveredBlock23Block38Stack1 := nil.
            recoveredBlock23Block38PC := 45.
        ].
        recoveredBlock23Block38Step = 45 ifTrue: [
            recoveredBlock23Block38Stack2 := recoveredBlock23Block38Arg1.
            recoveredBlock23Block38PC := 46.
        ].
        recoveredBlock23Block38Step = 46 ifTrue: [
            recoveredBlock23Block38Stack2 := (recoveredBlock23Block38Stack2) isError.
            recoveredBlock23Block38PC := 47.
        ].
        recoveredBlock23Block38Step = 47 ifTrue: [
            (recoveredBlock23Block38Stack2) ifTrue: [recoveredBlock23Block38PC := 93] ifFalse: [recoveredBlock23Block38PC := 50].
        ].
        recoveredBlock23Block38Step = 50 ifTrue: [
            recoveredBlock23Block38PC := 51.
        ].
        recoveredBlock23Block38Step = 51 ifTrue: [
            recoveredBlock23Block38Stack1 := nil.
            recoveredBlock23Block38PC := 52.
        ].
        recoveredBlock23Block38Step = 52 ifTrue: [
            recoveredBlock23Block38Stack2 := dbInterface.
            recoveredBlock23Block38PC := 54.
        ].
        recoveredBlock23Block38Step = 54 ifTrue: [
            recoveredBlock23Block38Stack3 := recoveredBlock23Block38Arg1.
            recoveredBlock23Block38PC := 55.
        ].
        recoveredBlock23Block38Step = 55 ifTrue: [
            recoveredBlock23Block38Stack3 := (recoveredBlock23Block38Stack3) getDBObject.
            recoveredBlock23Block38PC := 56.
        ].
        recoveredBlock23Block38Step = 56 ifTrue: [
            recoveredBlock23Block38Stack2 := (recoveredBlock23Block38Stack2) dumpObject: (recoveredBlock23Block38Stack3).
            recoveredBlock23Block38PC := 58.
        ].
        recoveredBlock23Block38Step = 58 ifTrue: [
            recoveredBlock23Block38Stack3 := recoveredBlock23Block38Stack2.
            recoveredBlock23Block38PC := 59.
        ].
        recoveredBlock23Block38Step = 59 ifTrue: [
            recoveredBlock23Block38Local2 := recoveredBlock23Block38Stack3.
            recoveredBlock23Block38PC := 60.
        ].
        recoveredBlock23Block38Step = 60 ifTrue: [
            recoveredBlock23Block38Stack2 := (recoveredBlock23Block38Stack2) isError.
            recoveredBlock23Block38PC := 61.
        ].
        recoveredBlock23Block38Step = 61 ifTrue: [
            (recoveredBlock23Block38Stack2) ifTrue: [recoveredBlock23Block38PC := 93] ifFalse: [recoveredBlock23Block38PC := 64].
        ].
        recoveredBlock23Block38Step = 64 ifTrue: [
            recoveredBlock23Block38PC := 65.
        ].
        recoveredBlock23Block38Step = 65 ifTrue: [
            recoveredBlock23Block38Stack1 := recoveredBlock23Block38Arg1.
            recoveredBlock23Block38PC := 66.
        ].
        recoveredBlock23Block38Step = 66 ifTrue: [
            recoveredBlock23Block38Stack2 := fHandle.
            recoveredBlock23Block38PC := 68.
        ].
        recoveredBlock23Block38Step = 68 ifTrue: [
            recoveredBlock23Block38Stack2 := (recoveredBlock23Block38Stack2) getFileSize.
            recoveredBlock23Block38PC := 70.
        ].
        recoveredBlock23Block38Step = 70 ifTrue: [
            (recoveredBlock23Block38Stack1) offset: (recoveredBlock23Block38Stack2).
            recoveredBlock23Block38PC := 72.
        ].
        recoveredBlock23Block38Step = 72 ifTrue: [
            recoveredBlock23Block38Stack1 := nil.
            recoveredBlock23Block38PC := 73.
        ].
        recoveredBlock23Block38Step = 73 ifTrue: [
            recoveredBlock23Block38Stack2 := fHandle.
            recoveredBlock23Block38PC := 75.
        ].
        recoveredBlock23Block38Step = 75 ifTrue: [
            recoveredBlock23Block38Stack3 := recoveredBlock23Block38Local2.
            recoveredBlock23Block38PC := 76.
        ].
        recoveredBlock23Block38Step = 76 ifTrue: [
            recoveredBlock23Block38Stack4 := true.
            recoveredBlock23Block38PC := 77.
        ].
        recoveredBlock23Block38Step = 77 ifTrue: [
            recoveredBlock23Block38Stack2 := (recoveredBlock23Block38Stack2) writeBytes: (recoveredBlock23Block38Stack3) writeCheck: (recoveredBlock23Block38Stack4).
            recoveredBlock23Block38PC := 79.
        ].
        recoveredBlock23Block38Step = 79 ifTrue: [
            recoveredBlock23Block38Stack3 := recoveredBlock23Block38Stack2.
            recoveredBlock23Block38PC := 80.
        ].
        recoveredBlock23Block38Step = 80 ifTrue: [
            recoveredBlock23Block38Local1 := recoveredBlock23Block38Stack3.
            recoveredBlock23Block38PC := 81.
        ].
        recoveredBlock23Block38Step = 81 ifTrue: [
            recoveredBlock23Block38Stack2 := (recoveredBlock23Block38Stack2) isError.
            recoveredBlock23Block38PC := 82.
        ].
        recoveredBlock23Block38Step = 82 ifTrue: [
            (recoveredBlock23Block38Stack2) ifTrue: [recoveredBlock23Block38PC := 86] ifFalse: [recoveredBlock23Block38PC := 93].
        ].
        recoveredBlock23Block38Step = 86 ifTrue: [
            recoveredBlock23Block38PC := 87.
        ].
        recoveredBlock23Block38Step = 87 ifTrue: [
            recoveredBlock23Block38Stack1 := fHandle.
            recoveredBlock23Block38PC := 89.
        ].
        recoveredBlock23Block38Step = 89 ifTrue: [
            (recoveredBlock23Block38Stack1) closeFile.
            recoveredBlock23Block38PC := 91.
        ].
        recoveredBlock23Block38Step = 91 ifTrue: [
            recoveredBlock23Block38Stack1 := recoveredBlock23Block38Local1.
            recoveredBlock23Block38PC := 92.
        ].
        recoveredBlock23Block38Step = 92 ifTrue: [
            ^recoveredBlock23Block38Stack1
        ].
        recoveredBlock23Block38Step = 93 ifTrue: [
            recoveredBlock23Block38Result := recoveredBlock23Block38Stack1.
            recoveredBlock23Block38Done := true.
        ].
    ].
    recoveredBlock23Block38Result
].
            recoveredBlock23PC := 94.
        ].
        recoveredBlock23Step = 94 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) do: (recoveredBlock23Stack2).
            recoveredBlock23PC := 96.
        ].
        recoveredBlock23Step = 96 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204720d8; bytecode file offset 0xd6e9d8"
!DBExImportController methodsFor: 'recovered'!
writeExportHeader: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_71182'.
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
            recoveredStack1 := 'Kk'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'ASC_MaxDatabaseSize'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressWindow.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:block281016b0Arg1 | 
    | block281016b0Value0 block281016b0Value1 block281016b0Value2 block281016b0Value3 |
    block281016b0Value0 := block281016b0Arg1.
    (block281016b0Value0) setCancelSensitive: (false).
    block281016b0Value1 := block281016b0Arg1.
    (block281016b0Value1) messageString: ('Writing export header...').
    block281016b0Value2 := block281016b0Arg1.
    block281016b0Value3 := (block281016b0Value2) fractionComplete: (0).
    block281016b0Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) dumpExportDictionary: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) createExportHeaderForHeaderDump: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) seekTo: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeBytes: (recoveredStack1) writeCheck: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeBytes: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressWindow.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := [:block281016d4Arg1 | 
    | block281016d4Value0 block281016d4Value1 |
    block281016d4Value0 := block281016d4Arg1.
    block281016d4Value1 := (block281016d4Value0) setCancelSensitive: (true).
    block281016d4Value1
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047a3e0; bytecode file offset 0xd76ccc"
!DBExImportController methodsFor: 'recovered'!
importDirectoryFromFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimBlanks.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) readHeader: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := importController.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLoadedImportObjectFrom: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) rehash.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) attachedKey: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRecordClasses: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := [:recoveredBlock85Arg1 :recoveredBlock85Arg2 | 
    | recoveredBlock85Stack0 recoveredBlock85Stack1 recoveredBlock85Stack2 recoveredBlock85Stack3 recoveredBlock85Stack4 recoveredBlock85Stack5 recoveredBlock85PC recoveredBlock85Step recoveredBlock85Done recoveredBlock85Result |
    recoveredBlock85Stack0 := self.
    recoveredBlock85PC := 92.
    recoveredBlock85Done := false.
    [recoveredBlock85Done not] whileTrue: [
        recoveredBlock85Step := recoveredBlock85PC.
        recoveredBlock85Step = 92 ifTrue: [
            recoveredBlock85Stack1 := nil.
            recoveredBlock85PC := 93.
        ].
        recoveredBlock85Step = 93 ifTrue: [
            recoveredBlock85Stack2 := recoveredBlock85Arg2.
            recoveredBlock85PC := 94.
        ].
        recoveredBlock85Step = 94 ifTrue: [
            (recoveredBlock85Stack2 == nil) ifTrue: [recoveredBlock85PC := 118] ifFalse: [recoveredBlock85PC := 98].
        ].
        recoveredBlock85Step = 98 ifTrue: [
            recoveredBlock85PC := 99.
        ].
        recoveredBlock85Step = 99 ifTrue: [
            recoveredBlock85Stack1 := recoveredLocal4.
            recoveredBlock85PC := 102.
        ].
        recoveredBlock85Step = 102 ifTrue: [
            recoveredBlock85Stack2 := recoveredBlock85Arg1.
            recoveredBlock85PC := 103.
        ].
        recoveredBlock85Step = 103 ifTrue: [
            recoveredBlock85Stack3 := recoveredBlock85Arg2.
            recoveredBlock85PC := 104.
        ].
        recoveredBlock85Step = 104 ifTrue: [
            recoveredBlock85Stack4 := [:block28101f44Arg1 | 
    | block28101f44Value0 block28101f44Value1 |
    block28101f44Value0 := block28101f44Arg1.
    block28101f44Value1 := (block28101f44Value0) isRBDBObject.
    block28101f44Value1
].
            recoveredBlock85PC := 106.
        ].
        recoveredBlock85Step = 106 ifTrue: [
            recoveredBlock85PC := 114.
        ].
        recoveredBlock85Step = 114 ifTrue: [
            recoveredBlock85Stack3 := (recoveredBlock85Stack3) select: (recoveredBlock85Stack4).
            recoveredBlock85PC := 116.
        ].
        recoveredBlock85Step = 116 ifTrue: [
            recoveredBlock85Stack1 := (recoveredBlock85Stack1) at: (recoveredBlock85Stack2) put: (recoveredBlock85Stack3).
            recoveredBlock85PC := 118.
        ].
        recoveredBlock85Step = 118 ifTrue: [
            recoveredBlock85Result := recoveredBlock85Stack1.
            recoveredBlock85Done := true.
        ].
    ].
    recoveredBlock85Result
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20483d40; bytecode file offset 0xd80660"
!DBExImportController methodsFor: 'recovered'!
importAttached: recoveredArg1 overWrite: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) loadFromDatabase.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'attachedFiles'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) attachedFiles.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := DBLinDeLinError.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'importAttached canceled'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBasic: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := dbInterface.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) preExport: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := [:block28102844Arg1 | 
    | block28102844Value0 block28102844Value1 block28102844Value2 |
    block28102844Value0 := CfsStat.
    block28102844Value1 := block28102844Arg1.
    block28102844Value2 := (block28102844Value0) clearReadOnly: (block28102844Value1).
    block28102844Value2
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) removeAll: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) determineUniqueSignalFileNames.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := 'import attachedFiles'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack2) show: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) show: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) importAttached: (recoveredStack1) in: (recoveredStack2) updateFileName: (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) removeFromCache.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := dbInterface.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) writeToDatabase: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) postImport: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049dae0; bytecode file offset 0xd9a3d0"
!DBExImportController methodsFor: 'recovered'!
readAttachedFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ETASOSHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFile: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := fHandle.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) readBytes: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) uint32At: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := fHandle.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) readBytes: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint64At: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 65536.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := fHandle.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) min: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) readNBytes: (recoveredStack2) bytes: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) closeFile.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeNBytes: (recoveredStack2) bytes: (recoveredStack3) writeCheck: (recoveredStack4).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) isError.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) closeFile.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d5758; bytecode file offset 0xdd2064"
!DBExImportController methodsFor: 'recovered'!
writeAttachedFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) seekToEOF.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) printHex.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := ETASOSHandle.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) openFileReadOnly: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFileSize.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 13.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack2) uint32At: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := 12.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack2) replaceFrom: (recoveredStack3) to: (recoveredStack4) with: (recoveredStack5) startingAt: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack2) uint8At: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) uint64At: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := fHandle.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeBytes: (recoveredStack2) writeCheck: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) closeFile.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := 65536.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) readBytes: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 153] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := fHandle.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeNBytes: (recoveredStack2) bytes: (recoveredStack3) writeCheck: (recoveredStack4).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 153] ifFalse: [recoveredPC := 127].
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) closeFile.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e1424; bytecode file offset 0xdddd40"
!DBExImportController methodsFor: 'recovered'!
importAttached: recoveredArg1 in: recoveredArg2 updateFileName: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) attachedFiles: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) attachedOffsets.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 :recoveredBlock16Arg2 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16Stack5 recoveredBlock16Stack6 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack3 := 4294967295.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) = (recoveredBlock16Stack3).
            recoveredBlock16PC := 27.
        ].
        recoveredBlock16Step = 27 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 69] ifFalse: [recoveredBlock16PC := 30].
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Stack1 := fHandle.
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 34.
        ].
        recoveredBlock16Step = 34 ifTrue: [
            (recoveredBlock16Stack1) seekTo: (recoveredBlock16Stack2).
            recoveredBlock16PC := 36.
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredBlock16Stack2 := self.
            recoveredBlock16PC := 38.
        ].
        recoveredBlock16Step = 38 ifTrue: [
            recoveredBlock16Stack3 := recoveredArg3.
            recoveredBlock16PC := 41.
        ].
        recoveredBlock16Step = 41 ifTrue: [
            recoveredBlock16Stack4 := recoveredBlock16Arg2.
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16Stack5 := [
    'missingName.db'
].
            recoveredBlock16PC := 44.
        ].
        recoveredBlock16Step = 44 ifTrue: [
            recoveredBlock16PC := 51.
        ].
        recoveredBlock16Step = 51 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) at: (recoveredBlock16Stack4) ifAbsent: (recoveredBlock16Stack5).
            recoveredBlock16PC := 53.
        ].
        recoveredBlock16Step = 53 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) readAttachedFile: (recoveredBlock16Stack3).
            recoveredBlock16PC := 55.
        ].
        recoveredBlock16Step = 55 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Stack2.
            recoveredBlock16PC := 56.
        ].
        recoveredBlock16Step = 56 ifTrue: [
            recoveredLocal1 := recoveredBlock16Stack3.
            recoveredBlock16PC := 59.
        ].
        recoveredBlock16Step = 59 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) isError.
            recoveredBlock16PC := 61.
        ].
        recoveredBlock16Step = 61 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 64] ifFalse: [recoveredBlock16PC := 69].
        ].
        recoveredBlock16Step = 64 ifTrue: [
            recoveredBlock16PC := 65.
        ].
        recoveredBlock16Step = 65 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal1.
            recoveredBlock16PC := 68.
        ].
        recoveredBlock16Step = 68 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 69 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) modified.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) attachedOffsets.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 161] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := DBFileError.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := DBErrorMissingAttachedFile.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := (recoveredStack4) attachedOffsets.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := (recoveredStack4) class.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack5 := '::'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock123Value0 recoveredBlock123Value1 |
    recoveredBlock123Value0 := recoveredArg2.
    recoveredBlock123Value1 := (recoveredBlock123Value0) name.
    recoveredBlock123Value1
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack6 := ExError.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack7 := [:recoveredBlock138Arg1 | 
    | recoveredBlock138Value0 recoveredBlock138Value1 recoveredBlock138Value2 recoveredBlock138Value3 |
    recoveredBlock138Value0 := recoveredBlock138Arg1.
    recoveredBlock138Value1 := recoveredArg2.
    recoveredBlock138Value2 := (recoveredBlock138Value1) label.
    recoveredBlock138Value3 := (recoveredBlock138Value0) exitWith: (recoveredBlock138Value2).
    recoveredBlock138Value3
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack5 := (recoveredStack5) when: (recoveredStack6) do: (recoveredStack7).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052c2e4; bytecode file offset 0xe28c04"
!DBExImportController methodsFor: 'recovered'!
collectAttached: recoveredArg1 fileName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ASC_MaxDatabaseSize'.
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'Call_71182'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressWindow.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:block2810d008Arg1 | 
    | block2810d008Value0 block2810d008Value1 |
    block2810d008Value0 := block2810d008Arg1.
    block2810d008Value1 := (block2810d008Value0) messageString: ('Setup for attached files').
    block2810d008Value1
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [:recoveredBlock53Arg1 :recoveredBlock53Arg2 | 
    | recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal1.
            recoveredBlock53PC := 63.
        ].
        recoveredBlock53Step = 63 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) + (1).
            recoveredBlock53PC := 64.
        ].
        recoveredBlock53Step = 64 ifTrue: [
            recoveredLocal1 := recoveredBlock53Stack1.
            recoveredBlock53PC := 67.
        ].
        recoveredBlock53Step = 67 ifTrue: [
            recoveredBlock53Stack0 := (recoveredBlock53Stack0) progressWindow.
            recoveredBlock53PC := 69.
        ].
        recoveredBlock53Step = 69 ifTrue: [
            recoveredBlock53Stack1 := [:recoveredBlock53Block69Arg1 | 
    | recoveredBlock53Block69Stack0 recoveredBlock53Block69Stack1 recoveredBlock53Block69Stack2 recoveredBlock53Block69Stack3 recoveredBlock53Block69Stack4 recoveredBlock53Block69PC recoveredBlock53Block69Step recoveredBlock53Block69Done recoveredBlock53Block69Result |
    recoveredBlock53Block69Stack0 := self.
    recoveredBlock53Block69PC := 76.
    recoveredBlock53Block69Done := false.
    [recoveredBlock53Block69Done not] whileTrue: [
        recoveredBlock53Block69Step := recoveredBlock53Block69PC.
        recoveredBlock53Block69Step = 76 ifTrue: [
            recoveredBlock53Block69Stack1 := recoveredBlock53Block69Arg1.
            recoveredBlock53Block69PC := 77.
        ].
        recoveredBlock53Block69Step = 77 ifTrue: [
            recoveredBlock53Block69Stack2 := recoveredLocal1.
            recoveredBlock53Block69PC := 80.
        ].
        recoveredBlock53Block69Step = 80 ifTrue: [
            recoveredBlock53Block69Stack3 := recoveredLocal2.
            recoveredBlock53Block69PC := 83.
        ].
        recoveredBlock53Block69Step = 83 ifTrue: [
            recoveredBlock53Block69Stack2 := (recoveredBlock53Block69Stack2) / (recoveredBlock53Block69Stack3).
            recoveredBlock53Block69PC := 85.
        ].
        recoveredBlock53Block69Step = 85 ifTrue: [
            (recoveredBlock53Block69Stack1) fractionComplete: (recoveredBlock53Block69Stack2).
            recoveredBlock53Block69PC := 87.
        ].
        recoveredBlock53Block69Step = 87 ifTrue: [
            recoveredBlock53Block69Stack1 := nil.
            recoveredBlock53Block69PC := 88.
        ].
        recoveredBlock53Block69Step = 88 ifTrue: [
            recoveredBlock53Block69Stack2 := recoveredBlock53Block69Arg1.
            recoveredBlock53Block69PC := 89.
        ].
        recoveredBlock53Block69Step = 89 ifTrue: [
            recoveredBlock53Block69Stack2 := (recoveredBlock53Block69Stack2) cancelled.
            recoveredBlock53Block69PC := 91.
        ].
        recoveredBlock53Block69Step = 91 ifTrue: [
            (recoveredBlock53Block69Stack2) ifTrue: [recoveredBlock53Block69PC := 94] ifFalse: [recoveredBlock53Block69PC := 100].
        ].
        recoveredBlock53Block69Step = 94 ifTrue: [
            recoveredBlock53Block69PC := 95.
        ].
        recoveredBlock53Block69Step = 95 ifTrue: [
            recoveredBlock53Block69Stack1 := OrderedCollection.
            recoveredBlock53Block69PC := 97.
        ].
        recoveredBlock53Block69Step = 97 ifTrue: [
            recoveredBlock53Block69Stack1 := (recoveredBlock53Block69Stack1) new.
            recoveredBlock53Block69PC := 99.
        ].
        recoveredBlock53Block69Step = 99 ifTrue: [
            ^recoveredBlock53Block69Stack1
        ].
        recoveredBlock53Block69Step = 100 ifTrue: [
            recoveredBlock53Block69Result := recoveredBlock53Block69Stack1.
            recoveredBlock53Block69Done := true.
        ].
    ].
    recoveredBlock53Block69Result
].
            recoveredBlock53PC := 101.
        ].
        recoveredBlock53Step = 101 ifTrue: [
            (recoveredBlock53Stack0) ifNotNil: (recoveredBlock53Stack1).
            recoveredBlock53PC := 103.
        ].
        recoveredBlock53Step = 103 ifTrue: [
            recoveredBlock53Stack0 := nil.
            recoveredBlock53PC := 104.
        ].
        recoveredBlock53Step = 104 ifTrue: [
            recoveredBlock53Stack1 := recoveredBlock53Arg2.
            recoveredBlock53PC := 105.
        ].
        recoveredBlock53Step = 105 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) isString.
            recoveredBlock53PC := 107.
        ].
        recoveredBlock53Step = 107 ifTrue: [
            (recoveredBlock53Stack1) ifTrue: [recoveredBlock53PC := 193] ifFalse: [recoveredBlock53PC := 110].
        ].
        recoveredBlock53Step = 110 ifTrue: [
            recoveredBlock53PC := 111.
        ].
        recoveredBlock53Step = 111 ifTrue: [
            recoveredBlock53Stack0 := recoveredBlock53Arg2.
            recoveredBlock53PC := 112.
        ].
        recoveredBlock53Step = 112 ifTrue: [
            recoveredBlock53Stack1 := [:recoveredBlock53Block112Arg1 :recoveredBlock53Block112Arg2 | 
    | recoveredBlock53Block112Local1 recoveredBlock53Block112Local2 recoveredBlock53Block112Local3 recoveredBlock53Block112Stack0 recoveredBlock53Block112Stack1 recoveredBlock53Block112Stack2 recoveredBlock53Block112Stack3 recoveredBlock53Block112Stack4 recoveredBlock53Block112PC recoveredBlock53Block112Step recoveredBlock53Block112Done recoveredBlock53Block112Result |
    recoveredBlock53Block112Stack0 := self.
    recoveredBlock53Block112PC := 118.
    recoveredBlock53Block112Done := false.
    [recoveredBlock53Block112Done not] whileTrue: [
        recoveredBlock53Block112Step := recoveredBlock53Block112PC.
        recoveredBlock53Block112Step = 118 ifTrue: [
            recoveredBlock53Block112Stack1 := nil.
            recoveredBlock53Block112PC := 119.
        ].
        recoveredBlock53Block112Step = 119 ifTrue: [
            recoveredBlock53Block112Stack2 := recoveredBlock53Block112Arg1.
            recoveredBlock53Block112PC := 121.
        ].
        recoveredBlock53Block112Step = 121 ifTrue: [
            recoveredBlock53Block112Stack2 := (recoveredBlock53Block112Stack2) isError.
            recoveredBlock53Block112PC := 123.
        ].
        recoveredBlock53Block112Step = 123 ifTrue: [
            (recoveredBlock53Block112Stack2) ifTrue: [recoveredBlock53Block112PC := 190] ifFalse: [recoveredBlock53Block112PC := 126].
        ].
        recoveredBlock53Block112Step = 126 ifTrue: [
            recoveredBlock53Block112PC := 127.
        ].
        recoveredBlock53Block112Step = 127 ifTrue: [
            recoveredBlock53Block112Stack1 := nil.
            recoveredBlock53Block112PC := 128.
        ].
        recoveredBlock53Block112Step = 128 ifTrue: [
            recoveredBlock53Block112Stack2 := recoveredBlock53Block112Arg1.
            recoveredBlock53Block112PC := 130.
        ].
        recoveredBlock53Block112Step = 130 ifTrue: [
            recoveredBlock53Block112Stack2 := (recoveredBlock53Block112Stack2) readProxy.
            recoveredBlock53Block112PC := 132.
        ].
        recoveredBlock53Block112Step = 132 ifTrue: [
            recoveredBlock53Block112Stack3 := recoveredBlock53Block112Stack2.
            recoveredBlock53Block112PC := 133.
        ].
        recoveredBlock53Block112Step = 133 ifTrue: [
            recoveredBlock53Block112Local3 := recoveredBlock53Block112Stack3.
            recoveredBlock53Block112PC := 134.
        ].
        recoveredBlock53Block112Step = 134 ifTrue: [
            recoveredBlock53Block112Stack2 := (recoveredBlock53Block112Stack2) isError.
            recoveredBlock53Block112PC := 136.
        ].
        recoveredBlock53Block112Step = 136 ifTrue: [
            (recoveredBlock53Block112Stack2) ifTrue: [recoveredBlock53Block112PC := 190] ifFalse: [recoveredBlock53Block112PC := 140].
        ].
        recoveredBlock53Block112Step = 140 ifTrue: [
            recoveredBlock53Block112PC := 141.
        ].
        recoveredBlock53Block112Step = 141 ifTrue: [
            recoveredBlock53Block112Stack1 := nil.
            recoveredBlock53Block112PC := 142.
        ].
        recoveredBlock53Block112Step = 142 ifTrue: [
            recoveredBlock53Block112Stack2 := self.
            recoveredBlock53Block112PC := 143.
        ].
        recoveredBlock53Block112Step = 143 ifTrue: [
            recoveredBlock53Block112Stack2 := (recoveredBlock53Block112Stack2) attachedClassNames.
            recoveredBlock53Block112PC := 145.
        ].
        recoveredBlock53Block112Step = 145 ifTrue: [
            recoveredBlock53Block112Stack3 := recoveredBlock53Block112Local3.
            recoveredBlock53Block112PC := 146.
        ].
        recoveredBlock53Block112Step = 146 ifTrue: [
            recoveredBlock53Block112Stack3 := (recoveredBlock53Block112Stack3) className.
            recoveredBlock53Block112PC := 148.
        ].
        recoveredBlock53Block112Step = 148 ifTrue: [
            recoveredBlock53Block112Stack2 := (recoveredBlock53Block112Stack2) includes: (recoveredBlock53Block112Stack3).
            recoveredBlock53Block112PC := 150.
        ].
        recoveredBlock53Block112Step = 150 ifTrue: [
            (recoveredBlock53Block112Stack2) ifTrue: [recoveredBlock53Block112PC := 154] ifFalse: [recoveredBlock53Block112PC := 190].
        ].
        recoveredBlock53Block112Step = 154 ifTrue: [
            recoveredBlock53Block112PC := 155.
        ].
        recoveredBlock53Block112Step = 155 ifTrue: [
            recoveredBlock53Block112Stack1 := nil.
            recoveredBlock53Block112PC := 156.
        ].
        recoveredBlock53Block112Step = 156 ifTrue: [
            recoveredBlock53Block112Stack2 := recoveredBlock53Block112Arg1.
            recoveredBlock53Block112PC := 158.
        ].
        recoveredBlock53Block112Step = 158 ifTrue: [
            recoveredBlock53Block112Stack2 := (recoveredBlock53Block112Stack2) getDBObject.
            recoveredBlock53Block112PC := 160.
        ].
        recoveredBlock53Block112Step = 160 ifTrue: [
            recoveredBlock53Block112Stack3 := recoveredBlock53Block112Stack2.
            recoveredBlock53Block112PC := 161.
        ].
        recoveredBlock53Block112Step = 161 ifTrue: [
            recoveredBlock53Block112Local2 := recoveredBlock53Block112Stack3.
            recoveredBlock53Block112PC := 162.
        ].
        recoveredBlock53Block112Step = 162 ifTrue: [
            recoveredBlock53Block112Stack2 := (recoveredBlock53Block112Stack2) isError.
            recoveredBlock53Block112PC := 164.
        ].
        recoveredBlock53Block112Step = 164 ifTrue: [
            (recoveredBlock53Block112Stack2) ifTrue: [recoveredBlock53Block112PC := 190] ifFalse: [recoveredBlock53Block112PC := 168].
        ].
        recoveredBlock53Block112Step = 168 ifTrue: [
            recoveredBlock53Block112PC := 169.
        ].
        recoveredBlock53Block112Step = 169 ifTrue: [
            recoveredBlock53Block112Stack1 := recoveredBlock53Block112Local2.
            recoveredBlock53Block112PC := 170.
        ].
        recoveredBlock53Block112Step = 170 ifTrue: [
            recoveredBlock53Block112Stack2 := dbInterface.
            recoveredBlock53Block112PC := 172.
        ].
        recoveredBlock53Block112Step = 172 ifTrue: [
            (recoveredBlock53Block112Stack1) preExport: (recoveredBlock53Block112Stack2).
            recoveredBlock53Block112PC := 174.
        ].
        recoveredBlock53Block112Step = 174 ifTrue: [
            recoveredBlock53Block112Stack1 := recoveredBlock53Block112Arg1.
            recoveredBlock53Block112PC := 176.
        ].
        recoveredBlock53Block112Step = 176 ifTrue: [
            recoveredBlock53Block112Stack2 := recoveredBlock53Block112Local2.
            recoveredBlock53Block112PC := 177.
        ].
        recoveredBlock53Block112Step = 177 ifTrue: [
            recoveredBlock53Block112Stack2 := (recoveredBlock53Block112Stack2) attachedFilesForImport.
            recoveredBlock53Block112PC := 179.
        ].
        recoveredBlock53Block112Step = 179 ifTrue: [
            (recoveredBlock53Block112Stack1) attachedFiles: (recoveredBlock53Block112Stack2).
            recoveredBlock53Block112PC := 181.
        ].
        recoveredBlock53Block112Step = 181 ifTrue: [
            recoveredBlock53Block112Stack1 := recoveredLocal3.
            recoveredBlock53Block112PC := 184.
        ].
        recoveredBlock53Block112Step = 184 ifTrue: [
            recoveredBlock53Block112Stack2 := recoveredBlock53Block112Arg1.
            recoveredBlock53Block112PC := 186.
        ].
        recoveredBlock53Block112Step = 186 ifTrue: [
            recoveredBlock53Block112Stack1 := (recoveredBlock53Block112Stack1) add: (recoveredBlock53Block112Stack2).
            recoveredBlock53Block112PC := 188.
        ].
        recoveredBlock53Block112Step = 188 ifTrue: [
            recoveredBlock53Block112Stack2 := nil.
            recoveredBlock53Block112PC := 189.
        ].
        recoveredBlock53Block112Step = 189 ifTrue: [
            recoveredBlock53Block112Local1 := recoveredBlock53Block112Stack2.
            recoveredBlock53Block112PC := 190.
        ].
        recoveredBlock53Block112Step = 190 ifTrue: [
            recoveredBlock53Block112Result := recoveredBlock53Block112Stack1.
            recoveredBlock53Block112Done := true.
        ].
    ].
    recoveredBlock53Block112Result
].
            recoveredBlock53PC := 191.
        ].
        recoveredBlock53Step = 191 ifTrue: [
            recoveredBlock53Stack0 := (recoveredBlock53Stack0) doWithIndex: (recoveredBlock53Stack1).
            recoveredBlock53PC := 193.
        ].
        recoveredBlock53Step = 193 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack0.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205474e8; bytecode file offset 0xe43e10"
!DBExImportController methodsFor: 'recovered'!
collectExport: recoveredArg1 fileName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('Kk') == ('ASC_MaxDatabaseSize').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredLocal2 := recoveredValue2.
    recoveredLocal1 := 0.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock25Arg1 :recoveredBlock25Arg2 | 
    | recoveredBlock25Local1 recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg2.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) isString.
            recoveredBlock25PC := 36.
        ].
        recoveredBlock25Step = 36 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 199] ifFalse: [recoveredBlock25PC := 40].
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredBlock25Stack1 := 'Kk'.
            recoveredBlock25PC := 42.
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25Stack2 := 'Call_71182'.
            recoveredBlock25PC := 44.
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) == (recoveredBlock25Stack2).
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            recoveredBlock25PC := 46.
        ].
        recoveredBlock25Step = 46 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal1.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) + (1).
            recoveredBlock25PC := 50.
        ].
        recoveredBlock25Step = 50 ifTrue: [
            recoveredLocal1 := recoveredBlock25Stack1.
            recoveredBlock25PC := 53.
        ].
        recoveredBlock25Step = 53 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 54.
        ].
        recoveredBlock25Step = 54 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) progressWindow.
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            recoveredBlock25Stack2 := [:recoveredBlock25Block56Arg1 | 
    | recoveredBlock25Block56Stack0 recoveredBlock25Block56Stack1 recoveredBlock25Block56Stack2 recoveredBlock25Block56Stack3 recoveredBlock25Block56Stack4 recoveredBlock25Block56PC recoveredBlock25Block56Step recoveredBlock25Block56Done recoveredBlock25Block56Result |
    recoveredBlock25Block56Stack0 := self.
    recoveredBlock25Block56PC := 62.
    recoveredBlock25Block56Done := false.
    [recoveredBlock25Block56Done not] whileTrue: [
        recoveredBlock25Block56Step := recoveredBlock25Block56PC.
        recoveredBlock25Block56Step = 62 ifTrue: [
            recoveredBlock25Block56Stack1 := recoveredBlock25Block56Arg1.
            recoveredBlock25Block56PC := 63.
        ].
        recoveredBlock25Block56Step = 63 ifTrue: [
            recoveredBlock25Block56Stack2 := 'Initialize export dictionary\Item: %1'.
            recoveredBlock25Block56PC := 65.
        ].
        recoveredBlock25Block56Step = 65 ifTrue: [
            recoveredBlock25Block56Stack2 := (recoveredBlock25Block56Stack2) withCrs.
            recoveredBlock25Block56PC := 67.
        ].
        recoveredBlock25Block56Step = 67 ifTrue: [
            recoveredBlock25Block56Stack3 := recoveredBlock25Arg1.
            recoveredBlock25Block56PC := 70.
        ].
        recoveredBlock25Block56Step = 70 ifTrue: [
            recoveredBlock25Block56Stack3 := (recoveredBlock25Block56Stack3) label.
            recoveredBlock25Block56PC := 72.
        ].
        recoveredBlock25Block56Step = 72 ifTrue: [
            recoveredBlock25Block56Stack2 := (recoveredBlock25Block56Stack2) bindWith: (recoveredBlock25Block56Stack3).
            recoveredBlock25Block56PC := 74.
        ].
        recoveredBlock25Block56Step = 74 ifTrue: [
            (recoveredBlock25Block56Stack1) messageString: (recoveredBlock25Block56Stack2).
            recoveredBlock25Block56PC := 76.
        ].
        recoveredBlock25Block56Step = 76 ifTrue: [
            recoveredBlock25Block56Stack1 := recoveredBlock25Block56Arg1.
            recoveredBlock25Block56PC := 77.
        ].
        recoveredBlock25Block56Step = 77 ifTrue: [
            recoveredBlock25Block56Stack2 := recoveredLocal1.
            recoveredBlock25Block56PC := 80.
        ].
        recoveredBlock25Block56Step = 80 ifTrue: [
            recoveredBlock25Block56Stack3 := recoveredLocal2.
            recoveredBlock25Block56PC := 83.
        ].
        recoveredBlock25Block56Step = 83 ifTrue: [
            recoveredBlock25Block56Stack2 := (recoveredBlock25Block56Stack2) / (recoveredBlock25Block56Stack3).
            recoveredBlock25Block56PC := 85.
        ].
        recoveredBlock25Block56Step = 85 ifTrue: [
            (recoveredBlock25Block56Stack1) fractionComplete: (recoveredBlock25Block56Stack2).
            recoveredBlock25Block56PC := 87.
        ].
        recoveredBlock25Block56Step = 87 ifTrue: [
            recoveredBlock25Block56Stack1 := nil.
            recoveredBlock25Block56PC := 88.
        ].
        recoveredBlock25Block56Step = 88 ifTrue: [
            recoveredBlock25Block56Stack2 := recoveredBlock25Block56Arg1.
            recoveredBlock25Block56PC := 89.
        ].
        recoveredBlock25Block56Step = 89 ifTrue: [
            recoveredBlock25Block56Stack2 := (recoveredBlock25Block56Stack2) cancelled.
            recoveredBlock25Block56PC := 91.
        ].
        recoveredBlock25Block56Step = 91 ifTrue: [
            (recoveredBlock25Block56Stack2) ifTrue: [recoveredBlock25Block56PC := 94] ifFalse: [recoveredBlock25Block56PC := 109].
        ].
        recoveredBlock25Block56Step = 94 ifTrue: [
            recoveredBlock25Block56PC := 95.
        ].
        recoveredBlock25Block56Step = 95 ifTrue: [
            recoveredBlock25Block56Stack1 := recoveredArg1.
            recoveredBlock25Block56PC := 98.
        ].
        recoveredBlock25Block56Step = 98 ifTrue: [
            recoveredBlock25Block56Stack2 := recoveredArg1.
            recoveredBlock25Block56PC := 101.
        ].
        recoveredBlock25Block56Step = 101 ifTrue: [
            recoveredBlock25Block56Stack2 := (recoveredBlock25Block56Stack2) keys.
            recoveredBlock25Block56PC := 103.
        ].
        recoveredBlock25Block56Step = 103 ifTrue: [
            (recoveredBlock25Block56Stack1) removeAllKeys: (recoveredBlock25Block56Stack2).
            recoveredBlock25Block56PC := 105.
        ].
        recoveredBlock25Block56Step = 105 ifTrue: [
            recoveredBlock25Block56Stack1 := recoveredArg1.
            recoveredBlock25Block56PC := 108.
        ].
        recoveredBlock25Block56Step = 108 ifTrue: [
            ^recoveredBlock25Block56Stack1
        ].
        recoveredBlock25Block56Step = 109 ifTrue: [
            recoveredBlock25Block56Result := recoveredBlock25Block56Stack1.
            recoveredBlock25Block56Done := true.
        ].
    ].
    recoveredBlock25Block56Result
].
            recoveredBlock25PC := 110.
        ].
        recoveredBlock25Step = 110 ifTrue: [
            (recoveredBlock25Stack1) ifNotNil: (recoveredBlock25Stack2).
            recoveredBlock25PC := 112.
        ].
        recoveredBlock25Step = 112 ifTrue: [
            recoveredBlock25Stack1 := 'Kk'.
            recoveredBlock25PC := 114.
        ].
        recoveredBlock25Step = 114 ifTrue: [
            recoveredBlock25Stack2 := 'ASC_MaxDatabaseSize'.
            recoveredBlock25PC := 116.
        ].
        recoveredBlock25Step = 116 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) == (recoveredBlock25Stack2).
            recoveredBlock25PC := 117.
        ].
        recoveredBlock25Step = 117 ifTrue: [
            recoveredBlock25PC := 118.
        ].
        recoveredBlock25Step = 118 ifTrue: [
            recoveredBlock25Stack1 := 'hw'.
            recoveredBlock25PC := 120.
        ].
        recoveredBlock25Step = 120 ifTrue: [
            recoveredBlock25Stack2 := 'unittest'.
            recoveredBlock25PC := 122.
        ].
        recoveredBlock25Step = 122 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) == (recoveredBlock25Stack2).
            recoveredBlock25PC := 123.
        ].
        recoveredBlock25Step = 123 ifTrue: [
            recoveredBlock25PC := 124.
        ].
        recoveredBlock25Step = 124 ifTrue: [
            recoveredBlock25Stack1 := OrderedCollection.
            recoveredBlock25PC := 126.
        ].
        recoveredBlock25Step = 126 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg2.
            recoveredBlock25PC := 129.
        ].
        recoveredBlock25Step = 129 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) size.
            recoveredBlock25PC := 130.
        ].
        recoveredBlock25Step = 130 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) new: (recoveredBlock25Stack2).
            recoveredBlock25PC := 132.
        ].
        recoveredBlock25Step = 132 ifTrue: [
            recoveredBlock25Local1 := recoveredBlock25Stack1.
            recoveredBlock25PC := 135.
        ].
        recoveredBlock25Step = 135 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg2.
            recoveredBlock25PC := 138.
        ].
        recoveredBlock25Step = 138 ifTrue: [
            recoveredBlock25Stack2 := [:recoveredBlock25Block138Arg1 | 
    | recoveredBlock25Block138Local1 recoveredBlock25Block138Stack0 recoveredBlock25Block138Stack1 recoveredBlock25Block138Stack2 recoveredBlock25Block138Stack3 recoveredBlock25Block138Stack4 recoveredBlock25Block138PC recoveredBlock25Block138Step recoveredBlock25Block138Done recoveredBlock25Block138Result |
    recoveredBlock25Block138Stack0 := nil.
    recoveredBlock25Block138PC := 144.
    recoveredBlock25Block138Done := false.
    [recoveredBlock25Block138Done not] whileTrue: [
        recoveredBlock25Block138Step := recoveredBlock25Block138PC.
        recoveredBlock25Block138Step = 144 ifTrue: [
            recoveredBlock25Block138Stack1 := nil.
            recoveredBlock25Block138PC := 145.
        ].
        recoveredBlock25Block138Step = 145 ifTrue: [
            recoveredBlock25Block138Stack2 := recoveredBlock25Block138Arg1.
            recoveredBlock25Block138PC := 146.
        ].
        recoveredBlock25Block138Step = 146 ifTrue: [
            (recoveredBlock25Block138Stack2 == nil) ifTrue: [recoveredBlock25Block138PC := 196] ifFalse: [recoveredBlock25Block138PC := 150].
        ].
        recoveredBlock25Block138Step = 150 ifTrue: [
            recoveredBlock25Block138PC := 151.
        ].
        recoveredBlock25Block138Step = 151 ifTrue: [
            recoveredBlock25Block138Stack1 := recoveredBlock25Block138Arg1.
            recoveredBlock25Block138PC := 152.
        ].
        recoveredBlock25Block138Step = 152 ifTrue: [
            recoveredBlock25Block138Stack1 := (recoveredBlock25Block138Stack1) isError.
            recoveredBlock25Block138PC := 154.
        ].
        recoveredBlock25Block138Step = 154 ifTrue: [
            (recoveredBlock25Block138Stack1) ifTrue: [recoveredBlock25Block138PC := 158] ifFalse: [recoveredBlock25Block138PC := 168].
        ].
        recoveredBlock25Block138Step = 158 ifTrue: [
            recoveredBlock25Block138Stack1 := recoveredBlock25Local1.
            recoveredBlock25Block138PC := 161.
        ].
        recoveredBlock25Block138Step = 161 ifTrue: [
            recoveredBlock25Block138Stack2 := recoveredBlock25Block138Arg1.
            recoveredBlock25Block138PC := 162.
        ].
        recoveredBlock25Block138Step = 162 ifTrue: [
            recoveredBlock25Block138Stack1 := (recoveredBlock25Block138Stack1) add: (recoveredBlock25Block138Stack2).
            recoveredBlock25Block138PC := 164.
        ].
        recoveredBlock25Block138Step = 164 ifTrue: [
            recoveredBlock25Block138PC := 196.
        ].
        recoveredBlock25Block138Step = 168 ifTrue: [
            recoveredBlock25Block138Stack1 := recoveredBlock25Block138Arg1.
            recoveredBlock25Block138PC := 169.
        ].
        recoveredBlock25Block138Step = 169 ifTrue: [
            recoveredBlock25Block138Stack1 := (recoveredBlock25Block138Stack1) readProxy.
            recoveredBlock25Block138PC := 171.
        ].
        recoveredBlock25Block138Step = 171 ifTrue: [
            recoveredBlock25Block138Stack2 := recoveredBlock25Block138Stack1.
            recoveredBlock25Block138PC := 172.
        ].
        recoveredBlock25Block138Step = 172 ifTrue: [
            recoveredBlock25Block138Local1 := recoveredBlock25Block138Stack2.
            recoveredBlock25Block138PC := 173.
        ].
        recoveredBlock25Block138Step = 173 ifTrue: [
            recoveredBlock25Block138Stack1 := (recoveredBlock25Block138Stack1) isError.
            recoveredBlock25Block138PC := 175.
        ].
        recoveredBlock25Block138Step = 175 ifTrue: [
            (recoveredBlock25Block138Stack1) ifTrue: [recoveredBlock25Block138PC := 188] ifFalse: [recoveredBlock25Block138PC := 178].
        ].
        recoveredBlock25Block138Step = 178 ifTrue: [
            recoveredBlock25Block138Stack1 := recoveredBlock25Block138Local1.
            recoveredBlock25Block138PC := 179.
        ].
        recoveredBlock25Block138Step = 179 ifTrue: [
            recoveredBlock25Block138Stack1 := (recoveredBlock25Block138Stack1) asDBExportProxy.
            recoveredBlock25Block138PC := 181.
        ].
        recoveredBlock25Block138Step = 181 ifTrue: [
            recoveredBlock25Block138Stack2 := recoveredBlock25Block138Stack1.
            recoveredBlock25Block138PC := 182.
        ].
        recoveredBlock25Block138Step = 182 ifTrue: [
            recoveredBlock25Block138Stack3 := recoveredArg2.
            recoveredBlock25Block138PC := 185.
        ].
        recoveredBlock25Block138Step = 185 ifTrue: [
            (recoveredBlock25Block138Stack2) fileName: (recoveredBlock25Block138Stack3).
            recoveredBlock25Block138PC := 187.
        ].
        recoveredBlock25Block138Step = 187 ifTrue: [
            recoveredBlock25Block138Local1 := recoveredBlock25Block138Stack1.
            recoveredBlock25Block138PC := 188.
        ].
        recoveredBlock25Block138Step = 188 ifTrue: [
            recoveredBlock25Block138Stack1 := recoveredBlock25Local1.
            recoveredBlock25Block138PC := 191.
        ].
        recoveredBlock25Block138Step = 191 ifTrue: [
            recoveredBlock25Block138Stack2 := recoveredBlock25Block138Local1.
            recoveredBlock25Block138PC := 192.
        ].
        recoveredBlock25Block138Step = 192 ifTrue: [
            recoveredBlock25Block138Stack1 := (recoveredBlock25Block138Stack1) add: (recoveredBlock25Block138Stack2).
            recoveredBlock25Block138PC := 194.
        ].
        recoveredBlock25Block138Step = 194 ifTrue: [
            recoveredBlock25Block138Stack2 := nil.
            recoveredBlock25Block138PC := 195.
        ].
        recoveredBlock25Block138Step = 195 ifTrue: [
            recoveredBlock25Block138Local1 := recoveredBlock25Block138Stack2.
            recoveredBlock25Block138PC := 196.
        ].
        recoveredBlock25Block138Step = 196 ifTrue: [
            recoveredBlock25Block138Result := recoveredBlock25Block138Stack1.
            recoveredBlock25Block138Done := true.
        ].
    ].
    recoveredBlock25Block138Result
].
            recoveredBlock25PC := 197.
        ].
        recoveredBlock25Step = 197 ifTrue: [
            (recoveredBlock25Stack1) do: (recoveredBlock25Stack2).
            recoveredBlock25PC := 199.
        ].
        recoveredBlock25Step = 199 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 202.
        ].
        recoveredBlock25Step = 202 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 205.
        ].
        recoveredBlock25Step = 205 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Local1.
            recoveredBlock25PC := 208.
        ].
        recoveredBlock25Step = 208 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) at: (recoveredBlock25Stack2) put: (recoveredBlock25Stack3).
            recoveredBlock25PC := 210.
        ].
        recoveredBlock25Step = 210 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
    (recoveredValue3) keysAndValuesDo: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20558dd0; bytecode file offset 0xe55718"
!DBExImportController methodsFor: 'recovered'!
exportAllAttached: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ASC_MaxDatabaseSize'.
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
            recoveredStack1 := fHandle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) seekToEOF.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            progressCount := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := DBExportProxy.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) dummyExportOffset.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 recoveredBlock48Value4 recoveredBlock48Value5 recoveredBlock48Value6 recoveredBlock48Value7 |
    recoveredBlock48Value0 := (self) progressWindow.
    recoveredBlock48Value1 := [:recoveredBlock48Block56Arg1 | 
    | recoveredBlock48Block56Value0 recoveredBlock48Block56Value1 recoveredBlock48Block56Value2 recoveredBlock48Block56Value3 recoveredBlock48Block56Value4 recoveredBlock48Block56Value5 recoveredBlock48Block56Value6 |
    recoveredBlock48Block56Value0 := recoveredBlock48Block56Arg1.
    recoveredBlock48Block56Value1 := progressCount.
    recoveredBlock48Block56Value2 := (recoveredBlock48Block56Value1) + (1).
    recoveredBlock48Block56Value3 := recoveredBlock48Block56Value2.
    progressCount := recoveredBlock48Block56Value3.
    recoveredBlock48Block56Value4 := recoveredLocal3.
    recoveredBlock48Block56Value5 := (recoveredBlock48Block56Value2) / (recoveredBlock48Block56Value4).
    recoveredBlock48Block56Value6 := (recoveredBlock48Block56Value0) fractionComplete: (recoveredBlock48Block56Value5).
    recoveredBlock48Block56Value6
].
    (recoveredBlock48Value0) ifNotNil: (recoveredBlock48Value1).
    recoveredBlock48Value2 := recoveredBlock48Arg1.
    (recoveredBlock48Value2) newAttachedOffsets.
    recoveredBlock48Value3 := recoveredBlock48Arg1.
    recoveredBlock48Value4 := (recoveredBlock48Value3) attachedFiles.
    recoveredBlock48Value5 := [:recoveredBlock48Block89Arg1 | 
    | recoveredBlock48Block89Local1 recoveredBlock48Block89Stack0 recoveredBlock48Block89Stack1 recoveredBlock48Block89Stack2 recoveredBlock48Block89Stack3 recoveredBlock48Block89Stack4 recoveredBlock48Block89PC recoveredBlock48Block89Step recoveredBlock48Block89Done recoveredBlock48Block89Result |
    recoveredBlock48Block89Stack0 := self.
    recoveredBlock48Block89PC := 96.
    recoveredBlock48Block89Done := false.
    [recoveredBlock48Block89Done not] whileTrue: [
        recoveredBlock48Block89Step := recoveredBlock48Block89PC.
        recoveredBlock48Block89Step = 96 ifTrue: [
            recoveredBlock48Block89Stack1 := 'Kk'.
            recoveredBlock48Block89PC := 98.
        ].
        recoveredBlock48Block89Step = 98 ifTrue: [
            recoveredBlock48Block89Stack2 := 'Call_71182'.
            recoveredBlock48Block89PC := 100.
        ].
        recoveredBlock48Block89Step = 100 ifTrue: [
            recoveredBlock48Block89Stack1 := (recoveredBlock48Block89Stack1) == (recoveredBlock48Block89Stack2).
            recoveredBlock48Block89PC := 101.
        ].
        recoveredBlock48Block89Step = 101 ifTrue: [
            recoveredBlock48Block89PC := 102.
        ].
        recoveredBlock48Block89Step = 102 ifTrue: [
            recoveredBlock48Block89Stack0 := (recoveredBlock48Block89Stack0) progressWindow.
            recoveredBlock48Block89PC := 104.
        ].
        recoveredBlock48Block89Step = 104 ifTrue: [
            recoveredBlock48Block89Stack1 := [:recoveredBlock48Block89Block104Arg1 | 
    | recoveredBlock48Block89Block104Stack0 recoveredBlock48Block89Block104Stack1 recoveredBlock48Block89Block104Stack2 recoveredBlock48Block89Block104Stack3 recoveredBlock48Block89Block104Stack4 recoveredBlock48Block89Block104PC recoveredBlock48Block89Block104Step recoveredBlock48Block89Block104Done recoveredBlock48Block89Block104Result |
    recoveredBlock48Block89Block104Stack0 := self.
    recoveredBlock48Block89Block104PC := 110.
    recoveredBlock48Block89Block104Done := false.
    [recoveredBlock48Block89Block104Done not] whileTrue: [
        recoveredBlock48Block89Block104Step := recoveredBlock48Block89Block104PC.
        recoveredBlock48Block89Block104Step = 110 ifTrue: [
            recoveredBlock48Block89Block104Stack1 := recoveredBlock48Block89Block104Arg1.
            recoveredBlock48Block89Block104PC := 111.
        ].
        recoveredBlock48Block89Block104Step = 111 ifTrue: [
            recoveredBlock48Block89Block104Stack2 := 'Writing attached files\Filename: %1'.
            recoveredBlock48Block89Block104PC := 113.
        ].
        recoveredBlock48Block89Block104Step = 113 ifTrue: [
            recoveredBlock48Block89Block104Stack2 := (recoveredBlock48Block89Block104Stack2) withCrs.
            recoveredBlock48Block89Block104PC := 115.
        ].
        recoveredBlock48Block89Block104Step = 115 ifTrue: [
            recoveredBlock48Block89Block104Stack3 := recoveredBlock48Block89Arg1.
            recoveredBlock48Block89Block104PC := 118.
        ].
        recoveredBlock48Block89Block104Step = 118 ifTrue: [
            recoveredBlock48Block89Block104Stack2 := (recoveredBlock48Block89Block104Stack2) bindWith: (recoveredBlock48Block89Block104Stack3).
            recoveredBlock48Block89Block104PC := 120.
        ].
        recoveredBlock48Block89Block104Step = 120 ifTrue: [
            (recoveredBlock48Block89Block104Stack1) messageString: (recoveredBlock48Block89Block104Stack2).
            recoveredBlock48Block89Block104PC := 122.
        ].
        recoveredBlock48Block89Block104Step = 122 ifTrue: [
            recoveredBlock48Block89Block104Stack1 := nil.
            recoveredBlock48Block89Block104PC := 123.
        ].
        recoveredBlock48Block89Block104Step = 123 ifTrue: [
            recoveredBlock48Block89Block104Stack2 := recoveredBlock48Block89Block104Arg1.
            recoveredBlock48Block89Block104PC := 124.
        ].
        recoveredBlock48Block89Block104Step = 124 ifTrue: [
            recoveredBlock48Block89Block104Stack2 := (recoveredBlock48Block89Block104Stack2) cancelled.
            recoveredBlock48Block89Block104PC := 126.
        ].
        recoveredBlock48Block89Block104Step = 126 ifTrue: [
            (recoveredBlock48Block89Block104Stack2) ifTrue: [recoveredBlock48Block89Block104PC := 130] ifFalse: [recoveredBlock48Block89Block104PC := 138].
        ].
        recoveredBlock48Block89Block104Step = 130 ifTrue: [
            recoveredBlock48Block89Block104PC := 131.
        ].
        recoveredBlock48Block89Block104Step = 131 ifTrue: [
            recoveredBlock48Block89Block104Stack1 := ETASError.
            recoveredBlock48Block89Block104PC := 133.
        ].
        recoveredBlock48Block89Block104Step = 133 ifTrue: [
            recoveredBlock48Block89Block104Stack2 := 'Export cancelled'.
            recoveredBlock48Block89Block104PC := 135.
        ].
        recoveredBlock48Block89Block104Step = 135 ifTrue: [
            recoveredBlock48Block89Block104Stack1 := (recoveredBlock48Block89Block104Stack1) create: (recoveredBlock48Block89Block104Stack2).
            recoveredBlock48Block89Block104PC := 137.
        ].
        recoveredBlock48Block89Block104Step = 137 ifTrue: [
            ^recoveredBlock48Block89Block104Stack1
        ].
        recoveredBlock48Block89Block104Step = 138 ifTrue: [
            recoveredBlock48Block89Block104Result := recoveredBlock48Block89Block104Stack1.
            recoveredBlock48Block89Block104Done := true.
        ].
    ].
    recoveredBlock48Block89Block104Result
].
            recoveredBlock48Block89PC := 139.
        ].
        recoveredBlock48Block89Step = 139 ifTrue: [
            (recoveredBlock48Block89Stack0) ifNotNil: (recoveredBlock48Block89Stack1).
            recoveredBlock48Block89PC := 141.
        ].
        recoveredBlock48Block89Step = 141 ifTrue: [
            recoveredBlock48Block89Stack0 := CfsStat.
            recoveredBlock48Block89PC := 143.
        ].
        recoveredBlock48Block89Step = 143 ifTrue: [
            recoveredBlock48Block89Stack1 := recoveredBlock48Block89Arg1.
            recoveredBlock48Block89PC := 146.
        ].
        recoveredBlock48Block89Step = 146 ifTrue: [
            recoveredBlock48Block89Stack0 := (recoveredBlock48Block89Stack0) stat: (recoveredBlock48Block89Stack1).
            recoveredBlock48Block89PC := 148.
        ].
        recoveredBlock48Block89Step = 148 ifTrue: [
            recoveredBlock48Block89Stack0 := (recoveredBlock48Block89Stack0) isCfsError.
            recoveredBlock48Block89PC := 150.
        ].
        recoveredBlock48Block89Step = 150 ifTrue: [
            (recoveredBlock48Block89Stack0) ifTrue: [recoveredBlock48Block89PC := 154] ifFalse: [recoveredBlock48Block89PC := 180].
        ].
        recoveredBlock48Block89Step = 154 ifTrue: [
            recoveredBlock48Block89Stack0 := SGMonitorStreamDummy.
            recoveredBlock48Block89PC := 156.
        ].
        recoveredBlock48Block89Step = 156 ifTrue: [
            recoveredBlock48Block89Stack0 := (recoveredBlock48Block89Stack0) create.
            recoveredBlock48Block89PC := 158.
        ].
        recoveredBlock48Block89Step = 158 ifTrue: [
            recoveredBlock48Block89Stack1 := DBErrorMissingAttachedFile.
            recoveredBlock48Block89PC := 160.
        ].
        recoveredBlock48Block89Step = 160 ifTrue: [
            recoveredBlock48Block89Stack2 := recoveredBlock48Block89Arg1.
            recoveredBlock48Block89PC := 163.
        ].
        recoveredBlock48Block89Step = 163 ifTrue: [
            recoveredBlock48Block89Stack3 := recoveredBlock48Arg1.
            recoveredBlock48Block89PC := 166.
        ].
        recoveredBlock48Block89Step = 166 ifTrue: [
            recoveredBlock48Block89Stack3 := (recoveredBlock48Block89Stack3) name.
            recoveredBlock48Block89PC := 168.
        ].
        recoveredBlock48Block89Step = 168 ifTrue: [
            recoveredBlock48Block89Stack1 := (recoveredBlock48Block89Stack1) bindWith: (recoveredBlock48Block89Stack2) with: (recoveredBlock48Block89Stack3).
            recoveredBlock48Block89PC := 170.
        ].
        recoveredBlock48Block89Step = 170 ifTrue: [
            recoveredBlock48Block89Stack2 := '
						'.
            recoveredBlock48Block89PC := 172.
        ].
        recoveredBlock48Block89Step = 172 ifTrue: [
            recoveredBlock48Block89Stack1 := (recoveredBlock48Block89Stack1) , (recoveredBlock48Block89Stack2).
            recoveredBlock48Block89PC := 174.
        ].
        recoveredBlock48Block89Step = 174 ifTrue: [
            recoveredBlock48Block89Stack0 := (recoveredBlock48Block89Stack0) addText: (recoveredBlock48Block89Stack1).
            recoveredBlock48Block89PC := 176.
        ].
        recoveredBlock48Block89Step = 176 ifTrue: [
            recoveredBlock48Block89PC := 217.
        ].
        recoveredBlock48Block89Step = 180 ifTrue: [
            recoveredBlock48Block89Stack0 := recoveredBlock48Arg1.
            recoveredBlock48Block89PC := 183.
        ].
        recoveredBlock48Block89Step = 183 ifTrue: [
            recoveredBlock48Block89Stack1 := fHandle.
            recoveredBlock48Block89PC := 185.
        ].
        recoveredBlock48Block89Step = 185 ifTrue: [
            recoveredBlock48Block89Stack1 := (recoveredBlock48Block89Stack1) seekToEOF.
            recoveredBlock48Block89PC := 186.
        ].
        recoveredBlock48Block89Step = 186 ifTrue: [
            recoveredBlock48Block89Stack2 := recoveredLocal1.
            recoveredBlock48Block89PC := 189.
        ].
        recoveredBlock48Block89Step = 189 ifTrue: [
            recoveredBlock48Block89Stack1 := (recoveredBlock48Block89Stack1) + (recoveredBlock48Block89Stack2).
            recoveredBlock48Block89PC := 190.
        ].
        recoveredBlock48Block89Step = 190 ifTrue: [
            (recoveredBlock48Block89Stack0) addAttachedOffset: (recoveredBlock48Block89Stack1).
            recoveredBlock48Block89PC := 192.
        ].
        recoveredBlock48Block89Step = 192 ifTrue: [
            recoveredBlock48Block89Stack0 := nil.
            recoveredBlock48Block89PC := 193.
        ].
        recoveredBlock48Block89Step = 193 ifTrue: [
            recoveredBlock48Block89Stack1 := self.
            recoveredBlock48Block89PC := 194.
        ].
        recoveredBlock48Block89Step = 194 ifTrue: [
            recoveredBlock48Block89Stack2 := recoveredBlock48Block89Arg1.
            recoveredBlock48Block89PC := 197.
        ].
        recoveredBlock48Block89Step = 197 ifTrue: [
            recoveredBlock48Block89Stack1 := (recoveredBlock48Block89Stack1) writeAttachedFile: (recoveredBlock48Block89Stack2).
            recoveredBlock48Block89PC := 199.
        ].
        recoveredBlock48Block89Step = 199 ifTrue: [
            recoveredBlock48Block89Stack2 := recoveredBlock48Block89Stack1.
            recoveredBlock48Block89PC := 200.
        ].
        recoveredBlock48Block89Step = 200 ifTrue: [
            recoveredBlock48Block89Local1 := recoveredBlock48Block89Stack2.
            recoveredBlock48Block89PC := 203.
        ].
        recoveredBlock48Block89Step = 203 ifTrue: [
            recoveredBlock48Block89Stack1 := (recoveredBlock48Block89Stack1) isError.
            recoveredBlock48Block89PC := 204.
        ].
        recoveredBlock48Block89Step = 204 ifTrue: [
            (recoveredBlock48Block89Stack1) ifTrue: [recoveredBlock48Block89PC := 208] ifFalse: [recoveredBlock48Block89PC := 213].
        ].
        recoveredBlock48Block89Step = 208 ifTrue: [
            recoveredBlock48Block89PC := 209.
        ].
        recoveredBlock48Block89Step = 209 ifTrue: [
            recoveredBlock48Block89Stack0 := recoveredBlock48Block89Local1.
            recoveredBlock48Block89PC := 212.
        ].
        recoveredBlock48Block89Step = 212 ifTrue: [
            ^recoveredBlock48Block89Stack0
        ].
        recoveredBlock48Block89Step = 213 ifTrue: [
            recoveredBlock48Block89Stack1 := nil.
            recoveredBlock48Block89PC := 214.
        ].
        recoveredBlock48Block89Step = 214 ifTrue: [
            recoveredBlock48Block89Local1 := recoveredBlock48Block89Stack1.
            recoveredBlock48Block89PC := 217.
        ].
        recoveredBlock48Block89Step = 217 ifTrue: [
            recoveredBlock48Block89Result := recoveredBlock48Block89Stack0.
            recoveredBlock48Block89Done := true.
        ].
    ].
    recoveredBlock48Block89Result
].
    (recoveredBlock48Value4) do: (recoveredBlock48Value5).
    recoveredBlock48Value6 := recoveredBlock48Arg1.
    recoveredBlock48Value7 := (recoveredBlock48Value6) minimizeCollections.
    recoveredBlock48Value7
].
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20569628; bytecode file offset 0xe65f3c"
!DBExImportController methodsFor: 'recovered'!
readHeader: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ETASOSHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) openFileReadOnly: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            fHandle := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := fHandle.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := fHandle.
    recoveredBlock19Value1 := (recoveredBlock19Value0) isNil.
    recoveredBlock19Value2 := (recoveredBlock19Value1) not.
    recoveredBlock19Value2
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'Header file handle is nil'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := ByteArray.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) readBytes: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) uint32At: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportFormat.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) setImportController: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := ETASError.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := DBErrorWrongImportFormat.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 141.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportFormat.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) setImportController2: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 127] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := ETASError.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := DBErrorWrongImportFormat.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 141.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := ETASError.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := DBErrorWrongImportFormat.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) uint64At: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportFileTag.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 167] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := ETASError.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := DBErrorWrongImportFormat.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) uint32At: (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := 'Call_68244'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := 'Call_71182'.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := 134217728.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 205].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := ETASError.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := DBErrorWrongImportFormat.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := importController.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) recordClass.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := importController.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := fHandle.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) readBytes: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056e768; bytecode file offset 0xe6b090"
!DBExImportController methodsFor: 'recovered'!
exportAll: recoveredArg1 onFile: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ASC_MaxDatabaseSize'.
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
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectExport: (recoveredStack1) fileName: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            toBeExported := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectAttached: (recoveredStack1) fileName: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := OSCall.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTempPath.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'exp_'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTempFileNameIn: (recoveredStack1) prefix: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := ETASOSHandle.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFile: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            fHandle := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportAllAttached: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) closeHandle.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := toBeExported.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportAll: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) closeHandle.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) closeHandle.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) dumpExportHeader: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := DBExportProxy.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := (recoveredStack3) dummyExportOffset.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) adjustOffsetsIn: (recoveredStack1) withOffset: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := ETASOSHandle.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFile: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            fHandle := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 157].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeExportHeader: (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 177].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) closeHandle.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 213].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeBytes: (recoveredStack1) writeCheck: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 213].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) closeHandle.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) appendFiles: (recoveredStack1).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 243].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c9308; bytecode file offset 0xec5c44"
!DBExImportController methodsFor: 'recovered'!
exportAllRecords: recoveredArg1 onFile: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ASC_MaxDatabaseSize'.
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
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := CfsDirectoryDescriptor.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) getTempPath.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 'exp_'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTempFileNameIn: (recoveredStack2) prefix: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectExport: (recoveredStack1) fileName: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            toBeExported := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectAttached: (recoveredStack1) fileName: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := ETASOSHandle.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFile: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            fHandle := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            progressWindow := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportAllAttached: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            progressWindow := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) closeHandle.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := toBeExported.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportAllRecords: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            progressWindow := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) closeHandle.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) closeHandle.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) dumpExportHeader: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            progressWindow := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := DBExportProxy.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := (recoveredStack3) dummyExportOffset.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) adjustOffsetsIn: (recoveredStack1) withOffset: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := ETASOSHandle.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFile: (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            fHandle := recoveredStack1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            progressWindow := recoveredStack0.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeExportHeader: (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            progressWindow := recoveredStack0.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 247].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := 'Problem in writing export header'.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            progressWindow := recoveredStack0.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) closeHandle.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 292].
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeBytes: (recoveredStack1) writeCheck: (recoveredStack2).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 276] ifFalse: [recoveredPC := 292].
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            progressWindow := recoveredStack0.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) closeHandle.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := (recoveredStack0) appendFiles: (recoveredStack1).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            progressWindow := recoveredStack0.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 318] ifFalse: [recoveredPC := 324].
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := 'Call_2009402696'.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 336] ifFalse: [recoveredPC := 339].
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206018c8; bytecode file offset 0xefe22c"
!DBExImportController methodsFor: 'recovered'!
exportAllRecords: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ASC_MaxDatabaseSize'.
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
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 :recoveredBlock18Arg2 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 |
    recoveredBlock18Value0 := recoveredLocal3.
    recoveredBlock18Value1 := recoveredBlock18Arg2.
    recoveredBlock18Value2 := (recoveredBlock18Value1) size.
    recoveredBlock18Value3 := (recoveredBlock18Value0) + (recoveredBlock18Value2).
    recoveredBlock18Value4 := recoveredBlock18Value3.
    recoveredLocal3 := recoveredBlock18Value4.
    recoveredBlock18Value3
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := DBExportProxy.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) dummyExportOffset.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 'Call_78826'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := ETASError.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'No items to export'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'call_wbsifting'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            progressCount := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := fHandle.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) seekToEOF.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := [:recoveredBlock113Arg1 :recoveredBlock113Arg2 | 
    | recoveredBlock113Stack0 recoveredBlock113Stack1 recoveredBlock113Stack2 recoveredBlock113Stack3 recoveredBlock113PC recoveredBlock113Step recoveredBlock113Done recoveredBlock113Result |
    recoveredBlock113Stack0 := self.
    recoveredBlock113PC := 120.
    recoveredBlock113Done := false.
    [recoveredBlock113Done not] whileTrue: [
        recoveredBlock113Step := recoveredBlock113PC.
        recoveredBlock113Step = 120 ifTrue: [
            recoveredBlock113Stack1 := nil.
            recoveredBlock113PC := 121.
        ].
        recoveredBlock113Step = 121 ifTrue: [
            recoveredBlock113Stack2 := recoveredBlock113Arg2.
            recoveredBlock113PC := 124.
        ].
        recoveredBlock113Step = 124 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) isString.
            recoveredBlock113PC := 126.
        ].
        recoveredBlock113Step = 126 ifTrue: [
            (recoveredBlock113Stack2) ifTrue: [recoveredBlock113PC := 416] ifFalse: [recoveredBlock113PC := 130].
        ].
        recoveredBlock113Step = 130 ifTrue: [
            recoveredBlock113PC := 131.
        ].
        recoveredBlock113Step = 131 ifTrue: [
            recoveredBlock113Stack1 := self.
            recoveredBlock113PC := 132.
        ].
        recoveredBlock113Step = 132 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) progressWindow.
            recoveredBlock113PC := 134.
        ].
        recoveredBlock113Step = 134 ifTrue: [
            recoveredBlock113Stack2 := [:recoveredBlock113Block134Arg1 | 
    | recoveredBlock113Block134Value0 recoveredBlock113Block134Value1 recoveredBlock113Block134Value2 recoveredBlock113Block134Value3 recoveredBlock113Block134Value4 recoveredBlock113Block134Value5 recoveredBlock113Block134Value6 |
    recoveredBlock113Block134Value0 := recoveredBlock113Block134Arg1.
    recoveredBlock113Block134Value1 := ('Exporting Items\Item: %1') withCrs.
    recoveredBlock113Block134Value2 := recoveredBlock113Arg1.
    recoveredBlock113Block134Value3 := (recoveredBlock113Block134Value2) itemKey.
    recoveredBlock113Block134Value4 := (recoveredBlock113Block134Value3) label.
    recoveredBlock113Block134Value5 := (recoveredBlock113Block134Value1) bindWith: (recoveredBlock113Block134Value4).
    recoveredBlock113Block134Value6 := (recoveredBlock113Block134Value0) messageString: (recoveredBlock113Block134Value5).
    recoveredBlock113Block134Value6
].
            recoveredBlock113PC := 157.
        ].
        recoveredBlock113Step = 157 ifTrue: [
            (recoveredBlock113Stack1) ifNotNil: (recoveredBlock113Stack2).
            recoveredBlock113PC := 159.
        ].
        recoveredBlock113Step = 159 ifTrue: [
            recoveredBlock113Stack1 := recoveredBlock113Arg2.
            recoveredBlock113PC := 162.
        ].
        recoveredBlock113Step = 162 ifTrue: [
            recoveredBlock113Stack2 := [:recoveredBlock113Block162Arg1 | 
    | recoveredBlock113Block162Local1 recoveredBlock113Block162Local2 recoveredBlock113Block162Local3 recoveredBlock113Block162Stack0 recoveredBlock113Block162Stack1 recoveredBlock113Block162Stack2 recoveredBlock113Block162Stack3 recoveredBlock113Block162PC recoveredBlock113Block162Step recoveredBlock113Block162Done recoveredBlock113Block162Result |
    recoveredBlock113Block162Stack0 := self.
    recoveredBlock113Block162PC := 168.
    recoveredBlock113Block162Done := false.
    [recoveredBlock113Block162Done not] whileTrue: [
        recoveredBlock113Block162Step := recoveredBlock113Block162PC.
        recoveredBlock113Block162Step = 168 ifTrue: [
            recoveredBlock113Block162Stack1 := progressCount.
            recoveredBlock113Block162PC := 170.
        ].
        recoveredBlock113Block162Step = 170 ifTrue: [
            recoveredBlock113Block162Stack1 := (recoveredBlock113Block162Stack1) + (1).
            recoveredBlock113Block162PC := 171.
        ].
        recoveredBlock113Block162Step = 171 ifTrue: [
            progressCount := recoveredBlock113Block162Stack1.
            recoveredBlock113Block162PC := 173.
        ].
        recoveredBlock113Block162Step = 173 ifTrue: [
            recoveredBlock113Block162Stack0 := (recoveredBlock113Block162Stack0) progressWindow.
            recoveredBlock113Block162PC := 175.
        ].
        recoveredBlock113Block162Step = 175 ifTrue: [
            recoveredBlock113Block162Stack1 := [:recoveredBlock113Block162Block175Arg1 | 
    | recoveredBlock113Block162Block175Stack0 recoveredBlock113Block162Block175Stack1 recoveredBlock113Block162Block175Stack2 recoveredBlock113Block162Block175Stack3 recoveredBlock113Block162Block175Stack4 recoveredBlock113Block162Block175PC recoveredBlock113Block162Block175Step recoveredBlock113Block162Block175Done recoveredBlock113Block162Block175Result |
    recoveredBlock113Block162Block175Stack0 := self.
    recoveredBlock113Block162Block175PC := 182.
    recoveredBlock113Block162Block175Done := false.
    [recoveredBlock113Block162Block175Done not] whileTrue: [
        recoveredBlock113Block162Block175Step := recoveredBlock113Block162Block175PC.
        recoveredBlock113Block162Block175Step = 182 ifTrue: [
            recoveredBlock113Block162Block175Stack1 := recoveredBlock113Block162Block175Arg1.
            recoveredBlock113Block162Block175PC := 183.
        ].
        recoveredBlock113Block162Block175Step = 183 ifTrue: [
            recoveredBlock113Block162Block175Stack1 := (recoveredBlock113Block162Block175Stack1) cancelled.
            recoveredBlock113Block162Block175PC := 185.
        ].
        recoveredBlock113Block162Block175Step = 185 ifTrue: [
            (recoveredBlock113Block162Block175Stack1) ifTrue: [recoveredBlock113Block162Block175PC := 188] ifFalse: [recoveredBlock113Block162Block175PC := 195].
        ].
        recoveredBlock113Block162Block175Step = 188 ifTrue: [
            recoveredBlock113Block162Block175Stack1 := ETASError.
            recoveredBlock113Block162Block175PC := 190.
        ].
        recoveredBlock113Block162Block175Step = 190 ifTrue: [
            recoveredBlock113Block162Block175Stack2 := 'Export cancelled'.
            recoveredBlock113Block162Block175PC := 192.
        ].
        recoveredBlock113Block162Block175Step = 192 ifTrue: [
            recoveredBlock113Block162Block175Stack1 := (recoveredBlock113Block162Block175Stack1) create: (recoveredBlock113Block162Block175Stack2).
            recoveredBlock113Block162Block175PC := 194.
        ].
        recoveredBlock113Block162Block175Step = 194 ifTrue: [
            ^recoveredBlock113Block162Block175Stack1
        ].
        recoveredBlock113Block162Block175Step = 195 ifTrue: [
            recoveredBlock113Block162Block175Stack1 := nil.
            recoveredBlock113Block162Block175PC := 196.
        ].
        recoveredBlock113Block162Block175Step = 196 ifTrue: [
            recoveredBlock113Block162Block175Stack2 := progressCount.
            recoveredBlock113Block162Block175PC := 198.
        ].
        recoveredBlock113Block162Block175Step = 198 ifTrue: [
            recoveredBlock113Block162Block175Stack3 := 100.
            recoveredBlock113Block162Block175PC := 202.
        ].
        recoveredBlock113Block162Block175Step = 202 ifTrue: [
            recoveredBlock113Block162Block175Stack2 := (recoveredBlock113Block162Block175Stack2) / (recoveredBlock113Block162Block175Stack3).
            recoveredBlock113Block162Block175PC := 204.
        ].
        recoveredBlock113Block162Block175Step = 204 ifTrue: [
            recoveredBlock113Block162Block175Stack2 := (recoveredBlock113Block162Block175Stack2) isInteger.
            recoveredBlock113Block162Block175PC := 206.
        ].
        recoveredBlock113Block162Block175Step = 206 ifTrue: [
            (recoveredBlock113Block162Block175Stack2) ifTrue: [recoveredBlock113Block162Block175PC := 210] ifFalse: [recoveredBlock113Block162Block175PC := 221].
        ].
        recoveredBlock113Block162Block175Step = 210 ifTrue: [
            recoveredBlock113Block162Block175PC := 211.
        ].
        recoveredBlock113Block162Block175Step = 211 ifTrue: [
            recoveredBlock113Block162Block175Stack1 := recoveredBlock113Block162Block175Arg1.
            recoveredBlock113Block162Block175PC := 212.
        ].
        recoveredBlock113Block162Block175Step = 212 ifTrue: [
            recoveredBlock113Block162Block175Stack2 := progressCount.
            recoveredBlock113Block162Block175PC := 214.
        ].
        recoveredBlock113Block162Block175Step = 214 ifTrue: [
            recoveredBlock113Block162Block175Stack3 := recoveredLocal3.
            recoveredBlock113Block162Block175PC := 217.
        ].
        recoveredBlock113Block162Block175Step = 217 ifTrue: [
            recoveredBlock113Block162Block175Stack2 := (recoveredBlock113Block162Block175Stack2) / (recoveredBlock113Block162Block175Stack3).
            recoveredBlock113Block162Block175PC := 219.
        ].
        recoveredBlock113Block162Block175Step = 219 ifTrue: [
            recoveredBlock113Block162Block175Stack1 := (recoveredBlock113Block162Block175Stack1) fractionComplete: (recoveredBlock113Block162Block175Stack2).
            recoveredBlock113Block162Block175PC := 221.
        ].
        recoveredBlock113Block162Block175Step = 221 ifTrue: [
            recoveredBlock113Block162Block175Result := recoveredBlock113Block162Block175Stack1.
            recoveredBlock113Block162Block175Done := true.
        ].
    ].
    recoveredBlock113Block162Block175Result
].
            recoveredBlock113Block162PC := 222.
        ].
        recoveredBlock113Block162Step = 222 ifTrue: [
            (recoveredBlock113Block162Stack0) ifNotNil: (recoveredBlock113Block162Stack1).
            recoveredBlock113Block162PC := 224.
        ].
        recoveredBlock113Block162Step = 224 ifTrue: [
            recoveredBlock113Block162Stack0 := nil.
            recoveredBlock113Block162PC := 225.
        ].
        recoveredBlock113Block162Step = 225 ifTrue: [
            recoveredBlock113Block162Stack1 := recoveredBlock113Block162Arg1.
            recoveredBlock113Block162PC := 228.
        ].
        recoveredBlock113Block162Step = 228 ifTrue: [
            recoveredBlock113Block162Stack1 := (recoveredBlock113Block162Stack1) isError.
            recoveredBlock113Block162PC := 230.
        ].
        recoveredBlock113Block162Step = 230 ifTrue: [
            (recoveredBlock113Block162Stack1) ifTrue: [recoveredBlock113Block162PC := 413] ifFalse: [recoveredBlock113Block162PC := 234].
        ].
        recoveredBlock113Block162Step = 234 ifTrue: [
            recoveredBlock113Block162PC := 235.
        ].
        recoveredBlock113Block162Step = 235 ifTrue: [
            recoveredBlock113Block162Stack0 := recoveredBlock113Block162Arg1.
            recoveredBlock113Block162PC := 238.
        ].
        recoveredBlock113Block162Step = 238 ifTrue: [
            (recoveredBlock113Block162Stack0) commit.
            recoveredBlock113Block162PC := 240.
        ].
        recoveredBlock113Block162Step = 240 ifTrue: [
            recoveredBlock113Block162Stack0 := dbInterface.
            recoveredBlock113Block162PC := 242.
        ].
        recoveredBlock113Block162Step = 242 ifTrue: [
            recoveredBlock113Block162Stack1 := recoveredBlock113Block162Arg1.
            recoveredBlock113Block162PC := 245.
        ].
        recoveredBlock113Block162Step = 245 ifTrue: [
            recoveredBlock113Block162Stack0 := (recoveredBlock113Block162Stack0) readRecord: (recoveredBlock113Block162Stack1).
            recoveredBlock113Block162PC := 247.
        ].
        recoveredBlock113Block162Step = 247 ifTrue: [
            recoveredBlock113Block162Stack1 := recoveredBlock113Block162Stack0.
            recoveredBlock113Block162PC := 248.
        ].
        recoveredBlock113Block162Step = 248 ifTrue: [
            recoveredBlock113Block162Local3 := recoveredBlock113Block162Stack1.
            recoveredBlock113Block162PC := 251.
        ].
        recoveredBlock113Block162Step = 251 ifTrue: [
            recoveredBlock113Block162Stack0 := (recoveredBlock113Block162Stack0) isError.
            recoveredBlock113Block162PC := 253.
        ].
        recoveredBlock113Block162Step = 253 ifTrue: [
            (recoveredBlock113Block162Stack0) ifTrue: [recoveredBlock113Block162PC := 256] ifFalse: [recoveredBlock113Block162PC := 260].
        ].
        recoveredBlock113Block162Step = 256 ifTrue: [
            recoveredBlock113Block162Stack0 := recoveredBlock113Block162Local3.
            recoveredBlock113Block162PC := 259.
        ].
        recoveredBlock113Block162Step = 259 ifTrue: [
            ^recoveredBlock113Block162Stack0
        ].
        recoveredBlock113Block162Step = 260 ifTrue: [
            recoveredBlock113Block162Stack0 := recoveredBlock113Block162Arg1.
            recoveredBlock113Block162PC := 263.
        ].
        recoveredBlock113Block162Step = 263 ifTrue: [
            recoveredBlock113Block162Stack1 := fHandle.
            recoveredBlock113Block162PC := 265.
        ].
        recoveredBlock113Block162Step = 265 ifTrue: [
            recoveredBlock113Block162Stack1 := (recoveredBlock113Block162Stack1) getFileSize.
            recoveredBlock113Block162PC := 267.
        ].
        recoveredBlock113Block162Step = 267 ifTrue: [
            recoveredBlock113Block162Stack2 := recoveredLocal1.
            recoveredBlock113Block162PC := 270.
        ].
        recoveredBlock113Block162Step = 270 ifTrue: [
            recoveredBlock113Block162Stack1 := (recoveredBlock113Block162Stack1) + (recoveredBlock113Block162Stack2).
            recoveredBlock113Block162PC := 271.
        ].
        recoveredBlock113Block162Step = 271 ifTrue: [
            (recoveredBlock113Block162Stack0) offset: (recoveredBlock113Block162Stack1).
            recoveredBlock113Block162PC := 273.
        ].
        recoveredBlock113Block162Step = 273 ifTrue: [
            recoveredBlock113Block162Stack0 := fHandle.
            recoveredBlock113Block162PC := 275.
        ].
        recoveredBlock113Block162Step = 275 ifTrue: [
            recoveredBlock113Block162Stack1 := recoveredBlock113Block162Local3.
            recoveredBlock113Block162PC := 278.
        ].
        recoveredBlock113Block162Step = 278 ifTrue: [
            recoveredBlock113Block162Stack2 := true.
            recoveredBlock113Block162PC := 279.
        ].
        recoveredBlock113Block162Step = 279 ifTrue: [
            recoveredBlock113Block162Stack0 := (recoveredBlock113Block162Stack0) writeBytes: (recoveredBlock113Block162Stack1) writeCheck: (recoveredBlock113Block162Stack2).
            recoveredBlock113Block162PC := 281.
        ].
        recoveredBlock113Block162Step = 281 ifTrue: [
            recoveredBlock113Block162Stack1 := recoveredBlock113Block162Stack0.
            recoveredBlock113Block162PC := 282.
        ].
        recoveredBlock113Block162Step = 282 ifTrue: [
            recoveredLocal5 := recoveredBlock113Block162Stack1.
            recoveredBlock113Block162PC := 285.
        ].
        recoveredBlock113Block162Step = 285 ifTrue: [
            recoveredBlock113Block162Stack0 := (recoveredBlock113Block162Stack0) isError.
            recoveredBlock113Block162PC := 287.
        ].
        recoveredBlock113Block162Step = 287 ifTrue: [
            (recoveredBlock113Block162Stack0) ifTrue: [recoveredBlock113Block162PC := 290] ifFalse: [recoveredBlock113Block162PC := 298].
        ].
        recoveredBlock113Block162Step = 290 ifTrue: [
            recoveredBlock113Block162Stack0 := fHandle.
            recoveredBlock113Block162PC := 292.
        ].
        recoveredBlock113Block162Step = 292 ifTrue: [
            (recoveredBlock113Block162Stack0) closeFile.
            recoveredBlock113Block162PC := 294.
        ].
        recoveredBlock113Block162Step = 294 ifTrue: [
            recoveredBlock113Block162Stack0 := recoveredLocal5.
            recoveredBlock113Block162PC := 297.
        ].
        recoveredBlock113Block162Step = 297 ifTrue: [
            ^recoveredBlock113Block162Stack0
        ].
        recoveredBlock113Block162Step = 298 ifTrue: [
            recoveredBlock113Block162Stack0 := recoveredBlock113Block162Arg1.
            recoveredBlock113Block162PC := 301.
        ].
        recoveredBlock113Block162Step = 301 ifTrue: [
            (recoveredBlock113Block162Stack0) newAttributeOffsets.
            recoveredBlock113Block162PC := 303.
        ].
        recoveredBlock113Block162Step = 303 ifTrue: [
            recoveredBlock113Block162Stack0 := dbInterface.
            recoveredBlock113Block162PC := 305.
        ].
        recoveredBlock113Block162Step = 305 ifTrue: [
            recoveredBlock113Block162Stack1 := [:recoveredBlock113Block162Block305Arg1 | 
    | recoveredBlock113Block162Block305Stack0 recoveredBlock113Block162Block305Stack1 recoveredBlock113Block162Block305Stack2 recoveredBlock113Block162Block305Stack3 recoveredBlock113Block162Block305Stack4 recoveredBlock113Block162Block305PC recoveredBlock113Block162Block305Step recoveredBlock113Block162Block305Done recoveredBlock113Block162Block305Result |
    recoveredBlock113Block162Block305Stack0 := self.
    recoveredBlock113Block162Block305PC := 312.
    recoveredBlock113Block162Block305Done := false.
    [recoveredBlock113Block162Block305Done not] whileTrue: [
        recoveredBlock113Block162Block305Step := recoveredBlock113Block162Block305PC.
        recoveredBlock113Block162Block305Step = 312 ifTrue: [
            recoveredBlock113Block162Block305Stack1 := recoveredBlock113Block162Arg1.
            recoveredBlock113Block162Block305PC := 315.
        ].
        recoveredBlock113Block162Block305Step = 315 ifTrue: [
            recoveredBlock113Block162Block305Stack2 := fHandle.
            recoveredBlock113Block162Block305PC := 317.
        ].
        recoveredBlock113Block162Block305Step = 317 ifTrue: [
            recoveredBlock113Block162Block305Stack2 := (recoveredBlock113Block162Block305Stack2) getFileSize.
            recoveredBlock113Block162Block305PC := 319.
        ].
        recoveredBlock113Block162Block305Step = 319 ifTrue: [
            recoveredBlock113Block162Block305Stack3 := recoveredLocal1.
            recoveredBlock113Block162Block305PC := 322.
        ].
        recoveredBlock113Block162Block305Step = 322 ifTrue: [
            recoveredBlock113Block162Block305Stack2 := (recoveredBlock113Block162Block305Stack2) + (recoveredBlock113Block162Block305Stack3).
            recoveredBlock113Block162Block305PC := 323.
        ].
        recoveredBlock113Block162Block305Step = 323 ifTrue: [
            (recoveredBlock113Block162Block305Stack1) addAttributeOffset: (recoveredBlock113Block162Block305Stack2).
            recoveredBlock113Block162Block305PC := 325.
        ].
        recoveredBlock113Block162Block305Step = 325 ifTrue: [
            recoveredBlock113Block162Block305Stack1 := dbInterface.
            recoveredBlock113Block162Block305PC := 327.
        ].
        recoveredBlock113Block162Block305Step = 327 ifTrue: [
            recoveredBlock113Block162Block305Stack2 := recoveredBlock113Block162Block305Arg1.
            recoveredBlock113Block162Block305PC := 328.
        ].
        recoveredBlock113Block162Block305Step = 328 ifTrue: [
            recoveredBlock113Block162Block305Stack1 := (recoveredBlock113Block162Block305Stack1) readAttributeRecord: (recoveredBlock113Block162Block305Stack2).
            recoveredBlock113Block162Block305PC := 330.
        ].
        recoveredBlock113Block162Block305Step = 330 ifTrue: [
            recoveredBlock113Block162Block305Stack2 := recoveredBlock113Block162Block305Stack1.
            recoveredBlock113Block162Block305PC := 331.
        ].
        recoveredBlock113Block162Block305Step = 331 ifTrue: [
            recoveredBlock113Block162Local3 := recoveredBlock113Block162Block305Stack2.
            recoveredBlock113Block162Block305PC := 334.
        ].
        recoveredBlock113Block162Block305Step = 334 ifTrue: [
            recoveredBlock113Block162Block305Stack1 := (recoveredBlock113Block162Block305Stack1) isError.
            recoveredBlock113Block162Block305PC := 336.
        ].
        recoveredBlock113Block162Block305Step = 336 ifTrue: [
            (recoveredBlock113Block162Block305Stack1) ifTrue: [recoveredBlock113Block162Block305PC := 366] ifFalse: [recoveredBlock113Block162Block305PC := 340].
        ].
        recoveredBlock113Block162Block305Step = 340 ifTrue: [
            recoveredBlock113Block162Block305Stack1 := fHandle.
            recoveredBlock113Block162Block305PC := 342.
        ].
        recoveredBlock113Block162Block305Step = 342 ifTrue: [
            recoveredBlock113Block162Block305Stack2 := recoveredBlock113Block162Local3.
            recoveredBlock113Block162Block305PC := 345.
        ].
        recoveredBlock113Block162Block305Step = 345 ifTrue: [
            recoveredBlock113Block162Block305Stack3 := true.
            recoveredBlock113Block162Block305PC := 346.
        ].
        recoveredBlock113Block162Block305Step = 346 ifTrue: [
            recoveredBlock113Block162Block305Stack1 := (recoveredBlock113Block162Block305Stack1) writeBytes: (recoveredBlock113Block162Block305Stack2) writeCheck: (recoveredBlock113Block162Block305Stack3).
            recoveredBlock113Block162Block305PC := 348.
        ].
        recoveredBlock113Block162Block305Step = 348 ifTrue: [
            recoveredBlock113Block162Block305Stack2 := recoveredBlock113Block162Block305Stack1.
            recoveredBlock113Block162Block305PC := 349.
        ].
        recoveredBlock113Block162Block305Step = 349 ifTrue: [
            recoveredLocal5 := recoveredBlock113Block162Block305Stack2.
            recoveredBlock113Block162Block305PC := 352.
        ].
        recoveredBlock113Block162Block305Step = 352 ifTrue: [
            recoveredBlock113Block162Block305Stack1 := (recoveredBlock113Block162Block305Stack1) isError.
            recoveredBlock113Block162Block305PC := 354.
        ].
        recoveredBlock113Block162Block305Step = 354 ifTrue: [
            (recoveredBlock113Block162Block305Stack1) ifTrue: [recoveredBlock113Block162Block305PC := 358] ifFalse: [recoveredBlock113Block162Block305PC := 366].
        ].
        recoveredBlock113Block162Block305Step = 358 ifTrue: [
            recoveredBlock113Block162Block305Stack1 := fHandle.
            recoveredBlock113Block162Block305PC := 360.
        ].
        recoveredBlock113Block162Block305Step = 360 ifTrue: [
            (recoveredBlock113Block162Block305Stack1) closeFile.
            recoveredBlock113Block162Block305PC := 362.
        ].
        recoveredBlock113Block162Block305Step = 362 ifTrue: [
            recoveredBlock113Block162Block305Stack1 := recoveredLocal5.
            recoveredBlock113Block162Block305PC := 365.
        ].
        recoveredBlock113Block162Block305Step = 365 ifTrue: [
            ^recoveredBlock113Block162Block305Stack1
        ].
        recoveredBlock113Block162Block305Step = 366 ifTrue: [
            recoveredBlock113Block162Block305Stack1 := nil.
            recoveredBlock113Block162Block305PC := 367.
        ].
        recoveredBlock113Block162Block305Step = 367 ifTrue: [
            recoveredBlock113Block162Block305Stack2 := recoveredBlock113Block162Block305Arg1.
            recoveredBlock113Block162Block305PC := 368.
        ].
        recoveredBlock113Block162Block305Step = 368 ifTrue: [
            recoveredBlock113Block162Block305Stack2 := (recoveredBlock113Block162Block305Stack2) isModifiedTimeStamp.
            recoveredBlock113Block162Block305PC := 370.
        ].
        recoveredBlock113Block162Block305Step = 370 ifTrue: [
            (recoveredBlock113Block162Block305Stack2) ifTrue: [recoveredBlock113Block162Block305PC := 374] ifFalse: [recoveredBlock113Block162Block305PC := 407].
        ].
        recoveredBlock113Block162Block305Step = 374 ifTrue: [
            recoveredBlock113Block162Block305PC := 375.
        ].
        recoveredBlock113Block162Block305Step = 375 ifTrue: [
            recoveredBlock113Block162Block305Stack1 := nil.
            recoveredBlock113Block162Block305PC := 376.
        ].
        recoveredBlock113Block162Block305Step = 376 ifTrue: [
            recoveredBlock113Block162Block305Stack2 := dbInterface.
            recoveredBlock113Block162Block305PC := 378.
        ].
        recoveredBlock113Block162Block305Step = 378 ifTrue: [
            recoveredBlock113Block162Block305Stack3 := recoveredBlock113Block162Local3.
            recoveredBlock113Block162Block305PC := 381.
        ].
        recoveredBlock113Block162Block305Step = 381 ifTrue: [
            recoveredBlock113Block162Block305Stack2 := (recoveredBlock113Block162Block305Stack2) getLoadedObjectFrom: (recoveredBlock113Block162Block305Stack3).
            recoveredBlock113Block162Block305PC := 383.
        ].
        recoveredBlock113Block162Block305Step = 383 ifTrue: [
            recoveredBlock113Block162Block305Stack3 := recoveredBlock113Block162Block305Stack2.
            recoveredBlock113Block162Block305PC := 384.
        ].
        recoveredBlock113Block162Block305Step = 384 ifTrue: [
            recoveredBlock113Block162Local1 := recoveredBlock113Block162Block305Stack3.
            recoveredBlock113Block162Block305PC := 387.
        ].
        recoveredBlock113Block162Block305Step = 387 ifTrue: [
            recoveredBlock113Block162Block305Stack2 := (recoveredBlock113Block162Block305Stack2) isError.
            recoveredBlock113Block162Block305PC := 389.
        ].
        recoveredBlock113Block162Block305Step = 389 ifTrue: [
            (recoveredBlock113Block162Block305Stack2) ifTrue: [recoveredBlock113Block162Block305PC := 407] ifFalse: [recoveredBlock113Block162Block305PC := 392].
        ].
        recoveredBlock113Block162Block305Step = 392 ifTrue: [
            recoveredBlock113Block162Block305PC := 393.
        ].
        recoveredBlock113Block162Block305Step = 393 ifTrue: [
            recoveredBlock113Block162Block305Stack1 := recoveredLocal4.
            recoveredBlock113Block162Block305PC := 396.
        ].
        recoveredBlock113Block162Block305Step = 396 ifTrue: [
            recoveredBlock113Block162Block305Stack2 := recoveredBlock113Block162Local1.
            recoveredBlock113Block162Block305PC := 399.
        ].
        recoveredBlock113Block162Block305Step = 399 ifTrue: [
            recoveredBlock113Block162Block305Stack2 := (recoveredBlock113Block162Block305Stack2) object.
            recoveredBlock113Block162Block305PC := 401.
        ].
        recoveredBlock113Block162Block305Step = 401 ifTrue: [
            recoveredBlock113Block162Block305Stack1 := (recoveredBlock113Block162Block305Stack1) max: (recoveredBlock113Block162Block305Stack2).
            recoveredBlock113Block162Block305PC := 403.
        ].
        recoveredBlock113Block162Block305Step = 403 ifTrue: [
            recoveredBlock113Block162Block305Stack2 := recoveredBlock113Block162Block305Stack1.
            recoveredBlock113Block162Block305PC := 404.
        ].
        recoveredBlock113Block162Block305Step = 404 ifTrue: [
            recoveredLocal4 := recoveredBlock113Block162Block305Stack2.
            recoveredBlock113Block162Block305PC := 407.
        ].
        recoveredBlock113Block162Block305Step = 407 ifTrue: [
            recoveredBlock113Block162Block305Result := recoveredBlock113Block162Block305Stack1.
            recoveredBlock113Block162Block305Done := true.
        ].
    ].
    recoveredBlock113Block162Block305Result
].
            recoveredBlock113Block162PC := 408.
        ].
        recoveredBlock113Block162Step = 408 ifTrue: [
            recoveredBlock113Block162Stack2 := recoveredBlock113Block162Arg1.
            recoveredBlock113Block162PC := 411.
        ].
        recoveredBlock113Block162Step = 411 ifTrue: [
            recoveredBlock113Block162Stack0 := (recoveredBlock113Block162Stack0) allAttributeSetObjectsDo: (recoveredBlock113Block162Stack1) for: (recoveredBlock113Block162Stack2).
            recoveredBlock113Block162PC := 413.
        ].
        recoveredBlock113Block162Step = 413 ifTrue: [
            recoveredBlock113Block162Result := recoveredBlock113Block162Stack0.
            recoveredBlock113Block162Done := true.
        ].
    ].
    recoveredBlock113Block162Result
].
            recoveredBlock113PC := 414.
        ].
        recoveredBlock113Step = 414 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) do: (recoveredBlock113Stack2).
            recoveredBlock113PC := 416.
        ].
        recoveredBlock113Step = 416 ifTrue: [
            recoveredBlock113Result := recoveredBlock113Stack1.
            recoveredBlock113Done := true.
        ].
    ].
    recoveredBlock113Result
].
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressWindow.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := [:recoveredBlock421Arg1 | 
    | recoveredBlock421Value0 recoveredBlock421Value1 recoveredBlock421Value2 recoveredBlock421Value3 recoveredBlock421Value4 |
    recoveredBlock421Value0 := recoveredBlock421Arg1.
    recoveredBlock421Value1 := progressCount.
    recoveredBlock421Value2 := recoveredLocal3.
    recoveredBlock421Value3 := (recoveredBlock421Value1) / (recoveredBlock421Value2).
    recoveredBlock421Value4 := (recoveredBlock421Value0) fractionComplete: (recoveredBlock421Value3).
    recoveredBlock421Value4
].
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20610718; bytecode file offset 0xf0d098"
!DBExImportController methodsFor: 'recovered'!
importRecordsFromFile: recoveredArg1 objects: recoveredArg2 newGlobalId: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimBlanks.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkRequiredSpace: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := DBFileError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := DBNotEnoughDiskSpace.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := dbInterface.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) driveRoot.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 'import: '.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := importController.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) initializeGlobalIdMapping.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := importController.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) importDirectoryFromFile: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := ETASCachingOSHandle.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) openFileReadOnly: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            fHandle := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock80Value0 recoveredBlock80Value1 recoveredBlock80Value2 |
    recoveredBlock80Value0 := fHandle.
    recoveredBlock80Value1 := (recoveredBlock80Value0) isNil.
    recoveredBlock80Value2 := (recoveredBlock80Value1) not.
    recoveredBlock80Value2
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 'Import file handle is nil'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := importController.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := fHandle.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) fHandle: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressWindow.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := [:recoveredBlock104Arg1 | 
    | recoveredBlock104Value0 recoveredBlock104Value1 recoveredBlock104Value2 recoveredBlock104Value3 recoveredBlock104Value4 recoveredBlock104Value5 |
    recoveredBlock104Value0 := recoveredBlock104Arg1.
    recoveredBlock104Value1 := recoveredBlock104Value0.
    recoveredBlock104Value2 := recoveredLocal4.
    recoveredBlock104Value3 := ('Importing Items from ') , (recoveredBlock104Value2).
    (recoveredBlock104Value1) title: (recoveredBlock104Value3).
    recoveredBlock104Value4 := recoveredBlock104Value0.
    (recoveredBlock104Value4) allowCancel: (false).
    recoveredBlock104Value5 := (recoveredBlock104Value0) open.
    recoveredBlock104Value5
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := [:block2811d964Arg1 :block2811d964Arg2 | 
    | block2811d964Value0 block2811d964Value1 block2811d964Value2 block2811d964Value3 block2811d964Value4 |
    block2811d964Value0 := block2811d964Arg1.
    block2811d964Value1 := (block2811d964Value0) offset.
    block2811d964Value2 := block2811d964Arg2.
    block2811d964Value3 := (block2811d964Value2) offset.
    block2811d964Value4 := (block2811d964Value1) < (block2811d964Value3).
    block2811d964Value4
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            progressCount := recoveredStack0.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock167Value0 recoveredBlock167Value1 recoveredBlock167Value2 recoveredBlock167Value3 recoveredBlock167Value4 recoveredBlock167Value5 recoveredBlock167Value6 |
    recoveredBlock167Value0 := recoveredLocal1.
    recoveredBlock167Value1 := [:recoveredBlock167Block177Arg1 | 
    | recoveredBlock167Block177Local1 recoveredBlock167Block177Stack0 recoveredBlock167Block177Stack1 recoveredBlock167Block177Stack2 recoveredBlock167Block177Stack3 recoveredBlock167Block177PC recoveredBlock167Block177Step recoveredBlock167Block177Done recoveredBlock167Block177Result |
    recoveredBlock167Block177Stack0 := self.
    recoveredBlock167Block177PC := 184.
    recoveredBlock167Block177Done := false.
    [recoveredBlock167Block177Done not] whileTrue: [
        recoveredBlock167Block177Step := recoveredBlock167Block177PC.
        recoveredBlock167Block177Step = 184 ifTrue: [
            recoveredBlock167Block177Stack0 := (recoveredBlock167Block177Stack0) progressWindow.
            recoveredBlock167Block177PC := 186.
        ].
        recoveredBlock167Block177Step = 186 ifTrue: [
            recoveredBlock167Block177Stack1 := [:recoveredBlock167Block177Block186Arg1 | 
    | recoveredBlock167Block177Block186Stack0 recoveredBlock167Block177Block186Stack1 recoveredBlock167Block177Block186Stack2 recoveredBlock167Block177Block186Stack3 recoveredBlock167Block177Block186Stack4 recoveredBlock167Block177Block186PC recoveredBlock167Block177Block186Step recoveredBlock167Block177Block186Done recoveredBlock167Block177Block186Result |
    recoveredBlock167Block177Block186Stack0 := self.
    recoveredBlock167Block177Block186PC := 192.
    recoveredBlock167Block177Block186Done := false.
    [recoveredBlock167Block177Block186Done not] whileTrue: [
        recoveredBlock167Block177Block186Step := recoveredBlock167Block177Block186PC.
        recoveredBlock167Block177Block186Step = 192 ifTrue: [
            recoveredBlock167Block177Block186Stack1 := recoveredBlock167Block177Block186Arg1.
            recoveredBlock167Block177Block186PC := 193.
        ].
        recoveredBlock167Block177Block186Step = 193 ifTrue: [
            recoveredBlock167Block177Block186Stack2 := progressCount.
            recoveredBlock167Block177Block186PC := 195.
        ].
        recoveredBlock167Block177Block186Step = 195 ifTrue: [
            recoveredBlock167Block177Block186Stack2 := (recoveredBlock167Block177Block186Stack2) + (1).
            recoveredBlock167Block177Block186PC := 196.
        ].
        recoveredBlock167Block177Block186Step = 196 ifTrue: [
            recoveredBlock167Block177Block186Stack3 := recoveredBlock167Block177Block186Stack2.
            recoveredBlock167Block177Block186PC := 197.
        ].
        recoveredBlock167Block177Block186Step = 197 ifTrue: [
            progressCount := recoveredBlock167Block177Block186Stack3.
            recoveredBlock167Block177Block186PC := 199.
        ].
        recoveredBlock167Block177Block186Step = 199 ifTrue: [
            recoveredBlock167Block177Block186Stack3 := recoveredLocal1.
            recoveredBlock167Block177Block186PC := 202.
        ].
        recoveredBlock167Block177Block186Step = 202 ifTrue: [
            recoveredBlock167Block177Block186Stack3 := (recoveredBlock167Block177Block186Stack3) size.
            recoveredBlock167Block177Block186PC := 204.
        ].
        recoveredBlock167Block177Block186Step = 204 ifTrue: [
            recoveredBlock167Block177Block186Stack2 := (recoveredBlock167Block177Block186Stack2) / (recoveredBlock167Block177Block186Stack3).
            recoveredBlock167Block177Block186PC := 206.
        ].
        recoveredBlock167Block177Block186Step = 206 ifTrue: [
            (recoveredBlock167Block177Block186Stack1) fractionComplete: (recoveredBlock167Block177Block186Stack2).
            recoveredBlock167Block177Block186PC := 208.
        ].
        recoveredBlock167Block177Block186Step = 208 ifTrue: [
            recoveredBlock167Block177Block186Stack1 := nil.
            recoveredBlock167Block177Block186PC := 209.
        ].
        recoveredBlock167Block177Block186Step = 209 ifTrue: [
            recoveredBlock167Block177Block186Stack2 := recoveredBlock167Block177Block186Arg1.
            recoveredBlock167Block177Block186PC := 210.
        ].
        recoveredBlock167Block177Block186Step = 210 ifTrue: [
            recoveredBlock167Block177Block186Stack2 := (recoveredBlock167Block177Block186Stack2) cancelled.
            recoveredBlock167Block177Block186PC := 212.
        ].
        recoveredBlock167Block177Block186Step = 212 ifTrue: [
            (recoveredBlock167Block177Block186Stack2) ifTrue: [recoveredBlock167Block177Block186PC := 216] ifFalse: [recoveredBlock167Block177Block186PC := 224].
        ].
        recoveredBlock167Block177Block186Step = 216 ifTrue: [
            recoveredBlock167Block177Block186PC := 217.
        ].
        recoveredBlock167Block177Block186Step = 217 ifTrue: [
            recoveredBlock167Block177Block186Stack1 := ETASError.
            recoveredBlock167Block177Block186PC := 219.
        ].
        recoveredBlock167Block177Block186Step = 219 ifTrue: [
            recoveredBlock167Block177Block186Stack2 := 'Export cancelled'.
            recoveredBlock167Block177Block186PC := 221.
        ].
        recoveredBlock167Block177Block186Step = 221 ifTrue: [
            recoveredBlock167Block177Block186Stack1 := (recoveredBlock167Block177Block186Stack1) create: (recoveredBlock167Block177Block186Stack2).
            recoveredBlock167Block177Block186PC := 223.
        ].
        recoveredBlock167Block177Block186Step = 223 ifTrue: [
            ^recoveredBlock167Block177Block186Stack1
        ].
        recoveredBlock167Block177Block186Step = 224 ifTrue: [
            recoveredBlock167Block177Block186Result := recoveredBlock167Block177Block186Stack1.
            recoveredBlock167Block177Block186Done := true.
        ].
    ].
    recoveredBlock167Block177Block186Result
].
            recoveredBlock167Block177PC := 225.
        ].
        recoveredBlock167Block177Step = 225 ifTrue: [
            (recoveredBlock167Block177Stack0) ifNotNil: (recoveredBlock167Block177Stack1).
            recoveredBlock167Block177PC := 227.
        ].
        recoveredBlock167Block177Step = 227 ifTrue: [
            recoveredBlock167Block177Stack0 := nil.
            recoveredBlock167Block177PC := 228.
        ].
        recoveredBlock167Block177Step = 228 ifTrue: [
            recoveredBlock167Block177Stack1 := recoveredBlock167Block177Arg1.
            recoveredBlock167Block177PC := 229.
        ].
        recoveredBlock167Block177Step = 229 ifTrue: [
            recoveredBlock167Block177Stack1 := (recoveredBlock167Block177Stack1) isError.
            recoveredBlock167Block177PC := 231.
        ].
        recoveredBlock167Block177Step = 231 ifTrue: [
            (recoveredBlock167Block177Stack1) ifTrue: [recoveredBlock167Block177PC := 288] ifFalse: [recoveredBlock167Block177PC := 234].
        ].
        recoveredBlock167Block177Step = 234 ifTrue: [
            recoveredBlock167Block177Stack1 := recoveredBlock167Block177Arg1.
            recoveredBlock167Block177PC := 235.
        ].
        recoveredBlock167Block177Step = 235 ifTrue: [
            (recoveredBlock167Block177Stack1 == nil) ifTrue: [recoveredBlock167Block177PC := 288] ifFalse: [recoveredBlock167Block177PC := 238].
        ].
        recoveredBlock167Block177Step = 238 ifTrue: [
            recoveredBlock167Block177PC := 239.
        ].
        recoveredBlock167Block177Step = 239 ifTrue: [
            recoveredBlock167Block177Stack0 := recoveredBlock167Block177Arg1.
            recoveredBlock167Block177PC := 240.
        ].
        recoveredBlock167Block177Step = 240 ifTrue: [
            recoveredBlock167Block177Stack0 := (recoveredBlock167Block177Stack0) exists.
            recoveredBlock167Block177PC := 242.
        ].
        recoveredBlock167Block177Step = 242 ifTrue: [
            recoveredBlock167Block177Local1 := recoveredBlock167Block177Stack0.
            recoveredBlock167Block177PC := 243.
        ].
        recoveredBlock167Block177Step = 243 ifTrue: [
            recoveredBlock167Block177Stack0 := importController.
            recoveredBlock167Block177PC := 245.
        ].
        recoveredBlock167Block177Step = 245 ifTrue: [
            recoveredBlock167Block177Stack1 := recoveredBlock167Block177Arg1.
            recoveredBlock167Block177PC := 246.
        ].
        recoveredBlock167Block177Step = 246 ifTrue: [
            recoveredBlock167Block177Stack2 := recoveredArg3.
            recoveredBlock167Block177PC := 249.
        ].
        recoveredBlock167Block177Step = 249 ifTrue: [
            recoveredBlock167Block177Stack0 := (recoveredBlock167Block177Stack0) importObject: (recoveredBlock167Block177Stack1) newGlobalId: (recoveredBlock167Block177Stack2).
            recoveredBlock167Block177PC := 251.
        ].
        recoveredBlock167Block177Step = 251 ifTrue: [
            recoveredLocal5 := recoveredBlock167Block177Stack0.
            recoveredBlock167Block177PC := 254.
        ].
        recoveredBlock167Block177Step = 254 ifTrue: [
            recoveredBlock167Block177Stack0 := recoveredLocal5.
            recoveredBlock167Block177PC := 257.
        ].
        recoveredBlock167Block177Step = 257 ifTrue: [
            recoveredBlock167Block177Stack0 := (recoveredBlock167Block177Stack0) isError.
            recoveredBlock167Block177PC := 259.
        ].
        recoveredBlock167Block177Step = 259 ifTrue: [
            (recoveredBlock167Block177Stack0) ifTrue: [recoveredBlock167Block177PC := 262] ifFalse: [recoveredBlock167Block177PC := 282].
        ].
        recoveredBlock167Block177Step = 262 ifTrue: [
            recoveredBlock167Block177Stack0 := 'hw'.
            recoveredBlock167Block177PC := 264.
        ].
        recoveredBlock167Block177Step = 264 ifTrue: [
            recoveredBlock167Block177Stack1 := 'call_87299'.
            recoveredBlock167Block177PC := 266.
        ].
        recoveredBlock167Block177Step = 266 ifTrue: [
            recoveredBlock167Block177Stack0 := (recoveredBlock167Block177Stack0) == (recoveredBlock167Block177Stack1).
            recoveredBlock167Block177PC := 267.
        ].
        recoveredBlock167Block177Step = 267 ifTrue: [
            recoveredBlock167Block177PC := 268.
        ].
        recoveredBlock167Block177Step = 268 ifTrue: [
            recoveredBlock167Block177Stack0 := fHandle.
            recoveredBlock167Block177PC := 270.
        ].
        recoveredBlock167Block177Step = 270 ifTrue: [
            (recoveredBlock167Block177Stack0) closeFile.
            recoveredBlock167Block177PC := 272.
        ].
        recoveredBlock167Block177Step = 272 ifTrue: [
            recoveredBlock167Block177Stack0 := self.
            recoveredBlock167Block177PC := 273.
        ].
        recoveredBlock167Block177Step = 273 ifTrue: [
            recoveredBlock167Block177Stack1 := recoveredLocal2.
            recoveredBlock167Block177PC := 276.
        ].
        recoveredBlock167Block177Step = 276 ifTrue: [
            (recoveredBlock167Block177Stack0) removeImportedRecords: (recoveredBlock167Block177Stack1).
            recoveredBlock167Block177PC := 278.
        ].
        recoveredBlock167Block177Step = 278 ifTrue: [
            recoveredBlock167Block177Stack0 := recoveredLocal5.
            recoveredBlock167Block177PC := 281.
        ].
        recoveredBlock167Block177Step = 281 ifTrue: [
            ^recoveredBlock167Block177Stack0
        ].
        recoveredBlock167Block177Step = 282 ifTrue: [
            recoveredBlock167Block177Stack0 := recoveredLocal2.
            recoveredBlock167Block177PC := 285.
        ].
        recoveredBlock167Block177Step = 285 ifTrue: [
            recoveredBlock167Block177Stack1 := recoveredBlock167Block177Arg1.
            recoveredBlock167Block177PC := 286.
        ].
        recoveredBlock167Block177Step = 286 ifTrue: [
            recoveredBlock167Block177Stack0 := (recoveredBlock167Block177Stack0) add: (recoveredBlock167Block177Stack1).
            recoveredBlock167Block177PC := 288.
        ].
        recoveredBlock167Block177Step = 288 ifTrue: [
            recoveredBlock167Block177Result := recoveredBlock167Block177Stack0.
            recoveredBlock167Block177Done := true.
        ].
    ].
    recoveredBlock167Block177Result
].
    (recoveredBlock167Value0) do: (recoveredBlock167Value1).
    recoveredBlock167Value2 := (self) progressWindow.
    recoveredBlock167Value3 := [:recoveredBlock167Block293Arg1 | 
    | recoveredBlock167Block293Value0 recoveredBlock167Block293Value1 recoveredBlock167Block293Value2 recoveredBlock167Block293Value3 |
    recoveredBlock167Block293Value0 := recoveredBlock167Block293Arg1.
    recoveredBlock167Block293Value1 := recoveredLocal4.
    recoveredBlock167Block293Value2 := ('Importing Files from') , (recoveredBlock167Block293Value1).
    recoveredBlock167Block293Value3 := (recoveredBlock167Block293Value0) title: (recoveredBlock167Block293Value2).
    recoveredBlock167Block293Value3
].
    (recoveredBlock167Value2) ifNotNil: (recoveredBlock167Value3).
    progressCount := 0.
    recoveredBlock167Value4 := recoveredLocal1.
    recoveredBlock167Value5 := [:recoveredBlock167Block320Arg1 | 
    | recoveredBlock167Block320Local1 recoveredBlock167Block320Stack0 recoveredBlock167Block320Stack1 recoveredBlock167Block320Stack2 recoveredBlock167Block320Stack3 recoveredBlock167Block320Stack4 recoveredBlock167Block320Stack5 recoveredBlock167Block320PC recoveredBlock167Block320Step recoveredBlock167Block320Done recoveredBlock167Block320Result |
    recoveredBlock167Block320Stack0 := self.
    recoveredBlock167Block320PC := 326.
    recoveredBlock167Block320Done := false.
    [recoveredBlock167Block320Done not] whileTrue: [
        recoveredBlock167Block320Step := recoveredBlock167Block320PC.
        recoveredBlock167Block320Step = 326 ifTrue: [
            recoveredBlock167Block320Stack0 := (recoveredBlock167Block320Stack0) progressWindow.
            recoveredBlock167Block320PC := 328.
        ].
        recoveredBlock167Block320Step = 328 ifTrue: [
            recoveredBlock167Block320Stack1 := [:recoveredBlock167Block320Block328Arg1 | 
    | recoveredBlock167Block320Block328Stack0 recoveredBlock167Block320Block328Stack1 recoveredBlock167Block320Block328Stack2 recoveredBlock167Block320Block328Stack3 recoveredBlock167Block320Block328Stack4 recoveredBlock167Block320Block328PC recoveredBlock167Block320Block328Step recoveredBlock167Block320Block328Done recoveredBlock167Block320Block328Result |
    recoveredBlock167Block320Block328Stack0 := self.
    recoveredBlock167Block320Block328PC := 334.
    recoveredBlock167Block320Block328Done := false.
    [recoveredBlock167Block320Block328Done not] whileTrue: [
        recoveredBlock167Block320Block328Step := recoveredBlock167Block320Block328PC.
        recoveredBlock167Block320Block328Step = 334 ifTrue: [
            recoveredBlock167Block320Block328Stack1 := recoveredBlock167Block320Block328Arg1.
            recoveredBlock167Block320Block328PC := 335.
        ].
        recoveredBlock167Block320Block328Step = 335 ifTrue: [
            recoveredBlock167Block320Block328Stack2 := progressCount.
            recoveredBlock167Block320Block328PC := 337.
        ].
        recoveredBlock167Block320Block328Step = 337 ifTrue: [
            recoveredBlock167Block320Block328Stack2 := (recoveredBlock167Block320Block328Stack2) + (1).
            recoveredBlock167Block320Block328PC := 338.
        ].
        recoveredBlock167Block320Block328Step = 338 ifTrue: [
            recoveredBlock167Block320Block328Stack3 := recoveredBlock167Block320Block328Stack2.
            recoveredBlock167Block320Block328PC := 339.
        ].
        recoveredBlock167Block320Block328Step = 339 ifTrue: [
            progressCount := recoveredBlock167Block320Block328Stack3.
            recoveredBlock167Block320Block328PC := 341.
        ].
        recoveredBlock167Block320Block328Step = 341 ifTrue: [
            recoveredBlock167Block320Block328Stack3 := recoveredLocal1.
            recoveredBlock167Block320Block328PC := 344.
        ].
        recoveredBlock167Block320Block328Step = 344 ifTrue: [
            recoveredBlock167Block320Block328Stack3 := (recoveredBlock167Block320Block328Stack3) size.
            recoveredBlock167Block320Block328PC := 346.
        ].
        recoveredBlock167Block320Block328Step = 346 ifTrue: [
            recoveredBlock167Block320Block328Stack2 := (recoveredBlock167Block320Block328Stack2) / (recoveredBlock167Block320Block328Stack3).
            recoveredBlock167Block320Block328PC := 348.
        ].
        recoveredBlock167Block320Block328Step = 348 ifTrue: [
            (recoveredBlock167Block320Block328Stack1) fractionComplete: (recoveredBlock167Block320Block328Stack2).
            recoveredBlock167Block320Block328PC := 350.
        ].
        recoveredBlock167Block320Block328Step = 350 ifTrue: [
            recoveredBlock167Block320Block328Stack1 := nil.
            recoveredBlock167Block320Block328PC := 351.
        ].
        recoveredBlock167Block320Block328Step = 351 ifTrue: [
            recoveredBlock167Block320Block328Stack2 := recoveredBlock167Block320Block328Arg1.
            recoveredBlock167Block320Block328PC := 352.
        ].
        recoveredBlock167Block320Block328Step = 352 ifTrue: [
            recoveredBlock167Block320Block328Stack2 := (recoveredBlock167Block320Block328Stack2) cancelled.
            recoveredBlock167Block320Block328PC := 354.
        ].
        recoveredBlock167Block320Block328Step = 354 ifTrue: [
            (recoveredBlock167Block320Block328Stack2) ifTrue: [recoveredBlock167Block320Block328PC := 358] ifFalse: [recoveredBlock167Block320Block328PC := 366].
        ].
        recoveredBlock167Block320Block328Step = 358 ifTrue: [
            recoveredBlock167Block320Block328PC := 359.
        ].
        recoveredBlock167Block320Block328Step = 359 ifTrue: [
            recoveredBlock167Block320Block328Stack1 := ETASError.
            recoveredBlock167Block320Block328PC := 361.
        ].
        recoveredBlock167Block320Block328Step = 361 ifTrue: [
            recoveredBlock167Block320Block328Stack2 := 'Export cancelled'.
            recoveredBlock167Block320Block328PC := 363.
        ].
        recoveredBlock167Block320Block328Step = 363 ifTrue: [
            recoveredBlock167Block320Block328Stack1 := (recoveredBlock167Block320Block328Stack1) create: (recoveredBlock167Block320Block328Stack2).
            recoveredBlock167Block320Block328PC := 365.
        ].
        recoveredBlock167Block320Block328Step = 365 ifTrue: [
            ^recoveredBlock167Block320Block328Stack1
        ].
        recoveredBlock167Block320Block328Step = 366 ifTrue: [
            recoveredBlock167Block320Block328Result := recoveredBlock167Block320Block328Stack1.
            recoveredBlock167Block320Block328Done := true.
        ].
    ].
    recoveredBlock167Block320Block328Result
].
            recoveredBlock167Block320PC := 367.
        ].
        recoveredBlock167Block320Step = 367 ifTrue: [
            (recoveredBlock167Block320Stack0) ifNotNil: (recoveredBlock167Block320Stack1).
            recoveredBlock167Block320PC := 369.
        ].
        recoveredBlock167Block320Step = 369 ifTrue: [
            recoveredBlock167Block320Stack0 := nil.
            recoveredBlock167Block320PC := 370.
        ].
        recoveredBlock167Block320Step = 370 ifTrue: [
            recoveredBlock167Block320Stack1 := recoveredBlock167Block320Arg1.
            recoveredBlock167Block320PC := 371.
        ].
        recoveredBlock167Block320Step = 371 ifTrue: [
            recoveredBlock167Block320Stack1 := (recoveredBlock167Block320Stack1) isError.
            recoveredBlock167Block320PC := 373.
        ].
        recoveredBlock167Block320Step = 373 ifTrue: [
            (recoveredBlock167Block320Stack1) ifTrue: [recoveredBlock167Block320PC := 437] ifFalse: [recoveredBlock167Block320PC := 376].
        ].
        recoveredBlock167Block320Step = 376 ifTrue: [
            recoveredBlock167Block320Stack1 := recoveredBlock167Block320Arg1.
            recoveredBlock167Block320PC := 377.
        ].
        recoveredBlock167Block320Step = 377 ifTrue: [
            (recoveredBlock167Block320Stack1 == nil) ifTrue: [recoveredBlock167Block320PC := 437] ifFalse: [recoveredBlock167Block320PC := 380].
        ].
        recoveredBlock167Block320Step = 380 ifTrue: [
            recoveredBlock167Block320PC := 381.
        ].
        recoveredBlock167Block320Step = 381 ifTrue: [
            recoveredBlock167Block320Stack0 := nil.
            recoveredBlock167Block320PC := 382.
        ].
        recoveredBlock167Block320Step = 382 ifTrue: [
            recoveredBlock167Block320Stack1 := recoveredBlock167Block320Arg1.
            recoveredBlock167Block320PC := 383.
        ].
        recoveredBlock167Block320Step = 383 ifTrue: [
            recoveredBlock167Block320Stack1 := (recoveredBlock167Block320Stack1) attachedFiles.
            recoveredBlock167Block320PC := 385.
        ].
        recoveredBlock167Block320Step = 385 ifTrue: [
            (recoveredBlock167Block320Stack1 == nil) ifTrue: [recoveredBlock167Block320PC := 437] ifFalse: [recoveredBlock167Block320PC := 388].
        ].
        recoveredBlock167Block320Step = 388 ifTrue: [
            recoveredBlock167Block320Stack1 := recoveredBlock167Block320Arg1.
            recoveredBlock167Block320PC := 389.
        ].
        recoveredBlock167Block320Step = 389 ifTrue: [
            recoveredBlock167Block320Stack1 := (recoveredBlock167Block320Stack1) attachedFiles.
            recoveredBlock167Block320PC := 391.
        ].
        recoveredBlock167Block320Step = 391 ifTrue: [
            recoveredBlock167Block320Stack1 := (recoveredBlock167Block320Stack1) notEmpty.
            recoveredBlock167Block320PC := 393.
        ].
        recoveredBlock167Block320Step = 393 ifTrue: [
            (recoveredBlock167Block320Stack1) ifTrue: [recoveredBlock167Block320PC := 396] ifFalse: [recoveredBlock167Block320PC := 437].
        ].
        recoveredBlock167Block320Step = 396 ifTrue: [
            recoveredBlock167Block320PC := 397.
        ].
        recoveredBlock167Block320Step = 397 ifTrue: [
            recoveredBlock167Block320Stack0 := recoveredBlock167Block320Arg1.
            recoveredBlock167Block320PC := 398.
        ].
        recoveredBlock167Block320Step = 398 ifTrue: [
            recoveredBlock167Block320Stack0 := (recoveredBlock167Block320Stack0) exists.
            recoveredBlock167Block320PC := 400.
        ].
        recoveredBlock167Block320Step = 400 ifTrue: [
            recoveredBlock167Block320Local1 := recoveredBlock167Block320Stack0.
            recoveredBlock167Block320PC := 401.
        ].
        recoveredBlock167Block320Step = 401 ifTrue: [
            recoveredBlock167Block320Stack0 := nil.
            recoveredBlock167Block320PC := 402.
        ].
        recoveredBlock167Block320Step = 402 ifTrue: [
            recoveredBlock167Block320Stack1 := importController.
            recoveredBlock167Block320PC := 404.
        ].
        recoveredBlock167Block320Step = 404 ifTrue: [
            recoveredBlock167Block320Stack2 := recoveredBlock167Block320Arg1.
            recoveredBlock167Block320PC := 405.
        ].
        recoveredBlock167Block320Step = 405 ifTrue: [
            recoveredBlock167Block320Stack3 := recoveredBlock167Block320Local1.
            recoveredBlock167Block320PC := 406.
        ].
        recoveredBlock167Block320Step = 406 ifTrue: [
            recoveredBlock167Block320Stack4 := recoveredArg3.
            recoveredBlock167Block320PC := 409.
        ].
        recoveredBlock167Block320Step = 409 ifTrue: [
            recoveredBlock167Block320Stack3 := (recoveredBlock167Block320Stack3) or: (recoveredBlock167Block320Stack4).
            recoveredBlock167Block320PC := 411.
        ].
        recoveredBlock167Block320Step = 411 ifTrue: [
            recoveredBlock167Block320Stack1 := (recoveredBlock167Block320Stack1) importAttached: (recoveredBlock167Block320Stack2) overWrite: (recoveredBlock167Block320Stack3).
            recoveredBlock167Block320PC := 413.
        ].
        recoveredBlock167Block320Step = 413 ifTrue: [
            recoveredBlock167Block320Stack2 := recoveredBlock167Block320Stack1.
            recoveredBlock167Block320PC := 414.
        ].
        recoveredBlock167Block320Step = 414 ifTrue: [
            recoveredLocal5 := recoveredBlock167Block320Stack2.
            recoveredBlock167Block320PC := 417.
        ].
        recoveredBlock167Block320Step = 417 ifTrue: [
            recoveredBlock167Block320Stack1 := (recoveredBlock167Block320Stack1) isError.
            recoveredBlock167Block320PC := 419.
        ].
        recoveredBlock167Block320Step = 419 ifTrue: [
            (recoveredBlock167Block320Stack1) ifTrue: [recoveredBlock167Block320PC := 422] ifFalse: [recoveredBlock167Block320PC := 437].
        ].
        recoveredBlock167Block320Step = 422 ifTrue: [
            recoveredBlock167Block320PC := 423.
        ].
        recoveredBlock167Block320Step = 423 ifTrue: [
            recoveredBlock167Block320Stack0 := fHandle.
            recoveredBlock167Block320PC := 425.
        ].
        recoveredBlock167Block320Step = 425 ifTrue: [
            (recoveredBlock167Block320Stack0) closeFile.
            recoveredBlock167Block320PC := 427.
        ].
        recoveredBlock167Block320Step = 427 ifTrue: [
            recoveredBlock167Block320Stack0 := self.
            recoveredBlock167Block320PC := 428.
        ].
        recoveredBlock167Block320Step = 428 ifTrue: [
            recoveredBlock167Block320Stack1 := recoveredLocal2.
            recoveredBlock167Block320PC := 431.
        ].
        recoveredBlock167Block320Step = 431 ifTrue: [
            (recoveredBlock167Block320Stack0) removeImportedRecords: (recoveredBlock167Block320Stack1).
            recoveredBlock167Block320PC := 433.
        ].
        recoveredBlock167Block320Step = 433 ifTrue: [
            recoveredBlock167Block320Stack0 := recoveredLocal5.
            recoveredBlock167Block320PC := 436.
        ].
        recoveredBlock167Block320Step = 436 ifTrue: [
            ^recoveredBlock167Block320Stack0
        ].
        recoveredBlock167Block320Step = 437 ifTrue: [
            recoveredBlock167Block320Result := recoveredBlock167Block320Stack0.
            recoveredBlock167Block320Done := true.
        ].
    ].
    recoveredBlock167Block320Result
].
    recoveredBlock167Value6 := (recoveredBlock167Value4) do: (recoveredBlock167Value5).
    recoveredBlock167Value6
].
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock441Stack0 recoveredBlock441Stack1 recoveredBlock441Stack2 recoveredBlock441PC recoveredBlock441Step recoveredBlock441Done recoveredBlock441Result |
    recoveredBlock441Stack0 := self.
    recoveredBlock441PC := 448.
    recoveredBlock441Done := false.
    [recoveredBlock441Done not] whileTrue: [
        recoveredBlock441Step := recoveredBlock441PC.
        recoveredBlock441Step = 448 ifTrue: [
            recoveredBlock441Stack0 := (recoveredBlock441Stack0) progressWindow.
            recoveredBlock441PC := 450.
        ].
        recoveredBlock441Step = 450 ifTrue: [
            recoveredBlock441Stack1 := [:block2811d988Arg1 | 
    | block2811d988Value0 block2811d988Value1 |
    block2811d988Value0 := block2811d988Arg1.
    block2811d988Value1 := (block2811d988Value0) close.
    block2811d988Value1
].
            recoveredBlock441PC := 452.
        ].
        recoveredBlock441Step = 452 ifTrue: [
            recoveredBlock441PC := 460.
        ].
        recoveredBlock441Step = 460 ifTrue: [
            recoveredBlock441Stack0 := (recoveredBlock441Stack0) ifNotNil: (recoveredBlock441Stack1).
            recoveredBlock441PC := 462.
        ].
        recoveredBlock441Step = 462 ifTrue: [
            recoveredBlock441Result := recoveredBlock441Stack0.
            recoveredBlock441Done := true.
        ].
    ].
    recoveredBlock441Result
].
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            (recoveredStack0) ensure: (recoveredStack1).
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack0 := fHandle.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack0 := importController.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            (recoveredStack0) fHandle: (recoveredStack1).
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 480] ifFalse: [recoveredPC := 484].
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack0 := importController.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            (recoveredStack0) updateReferences.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012bdc; bytecode file offset 0x912098"
!ETASFormatedIndexedFile class methodsFor: 'recovered'!
fileTypeString
    | recoveredValue0 |
    recoveredValue0 := SCFileTypeEtasBinary.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016640; bytecode file offset 0x92209c"
!ETASFormatedIndexedFile class methodsFor: 'recovered'!
fileTypeSymbol
    ^'ETASBinary'
! !

"ASDBase.ic method 0x2001f97c; bytecode file offset 0x92209c"
!ETASFormatedIndexedFile class methodsFor: 'recovered'!
fileTag
    ^18364757930599072545
! !

"ASDBase.ic method 0x2001fb14; bytecode file offset 0x92209c"
!ETASFormatedIndexedFile class methodsFor: 'recovered'!
fileExtension
    ^'etasbin'
! !

"ASDBase.ic method 0x200b6308; bytecode file offset 0x9b39ac"
!ETASFormatedIndexedFile class methodsFor: 'recovered'!
unLinkInstVarNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super unLinkInstVarNames.
    recoveredValue1 := (recoveredValue0) , (#('elementAccessors')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20103c84; bytecode file offset 0xa00540"
!ETASFormatedIndexedFile class methodsFor: 'recovered'!
createFile: recoveredArg1 recordFormat: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) getRecordSizeFromFormat: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) createFile: (recoveredValue2) recordSize: (recoveredValue3) recordFormat: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2014bd30; bytecode file offset 0xa485ec"
!ETASFormatedIndexedFile class methodsFor: 'recovered'!
createFile: recoveredArg1 recordFormat: recoveredArg2 nameTable: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) getRecordSizeFromFormat: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (self) createFile: (recoveredValue2) recordSize: (recoveredValue3) recordFormat: (recoveredValue4) nameTable: (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2016dbf0; bytecode file offset 0xa6a4ac"
!ETASFormatedIndexedFile class methodsFor: 'recovered'!
createFile: recoveredArg1 recordFormat: recoveredArg2 nameTable: recoveredArg3 sampleCount: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) getRecordSizeFromFormat: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (self) createFile: (recoveredValue2) recordSize: (recoveredValue3) recordFormat: (recoveredValue4) nameTable: (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201bd6cc; bytecode file offset 0xab9f94"
!ETASFormatedIndexedFile class methodsFor: 'recovered'!
createFrom: recoveredArg1
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
            recoveredStack0 := super createFrom: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) initializeElementAccess.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a4e74; bytecode file offset 0xba175c"
!ETASFormatedIndexedFile class methodsFor: 'recovered'!
createRecordFormat: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := String.
    recoveredValue1 := (recoveredValue0) new: (256).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := OSCall.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := (self) library.
    recoveredValue5 := (recoveredValue4) location.
    recoveredValue6 := (recoveredValue5) asPSZ.
    recoveredValue7 := ('dbfi') asPSZ.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue3) getTempFileName: (recoveredValue6) lpszPrefixString: (recoveredValue7) uUnique: (0) lpszTempFileName: (recoveredValue8).
    recoveredValue9 := CfsDirectoryDescriptor.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) trimNull.
    recoveredValue12 := (recoveredValue9) extractFileNameFromDosPath: (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (self) createFile: (recoveredValue13) recordFormat: (recoveredValue14).
    ^recoveredValue15
! !

"ASDBase.ic method 0x202b866c; bytecode file offset 0xbb4f54"
!ETASFormatedIndexedFile class methodsFor: 'recovered'!
createRecordFormat: recoveredArg1 nameTable: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := String.
    recoveredValue1 := (recoveredValue0) new: (256).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := OSCall.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := (self) library.
    recoveredValue5 := (recoveredValue4) location.
    recoveredValue6 := (recoveredValue5) asPSZ.
    recoveredValue7 := ('dbfi') asPSZ.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue3) getTempFileName: (recoveredValue6) lpszPrefixString: (recoveredValue7) uUnique: (0) lpszTempFileName: (recoveredValue8).
    recoveredValue9 := CfsDirectoryDescriptor.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) trimNull.
    recoveredValue12 := (recoveredValue9) extractFileNameFromDosPath: (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := recoveredArg2.
    recoveredValue16 := (self) createFile: (recoveredValue13) recordFormat: (recoveredValue14) nameTable: (recoveredValue15).
    ^recoveredValue16
! !

"ASDBase.ic method 0x202f20a4; bytecode file offset 0xbee978"
!ETASFormatedIndexedFile class methodsFor: 'recovered'!
createFile: recoveredArg1 recordSize: recoveredArg2 recordFormat: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) currentRecordNumber: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) recordFormat: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) initializeElementAccess.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFile.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeHeaderRecord.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20350704; bytecode file offset 0xc4cfe8"
!ETASFormatedIndexedFile class methodsFor: 'recovered'!
createFile: recoveredArg1 recordSize: recoveredArg2 recordFormat: recoveredArg3 nameTable: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) recordBuffer: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) currentRecordNumber: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) recordFormat: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) initializeElementAccess.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) setNameTable: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFile.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeHeaderRecord.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054f548; bytecode file offset 0xe4be74"
!ETASFormatedIndexedFile class methodsFor: 'recovered'!
createFile: recoveredArg1 elementAccessors: recoveredArg2 sampleCount: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block2810f3e4Arg1 | 
    | block2810f3e4Stack0 block2810f3e4Stack1 block2810f3e4Stack2 block2810f3e4Stack3 block2810f3e4Stack4 block2810f3e4PC block2810f3e4Step block2810f3e4Done block2810f3e4Result |
    block2810f3e4Stack0 := self.
    block2810f3e4PC := 4.
    block2810f3e4Done := false.
    [block2810f3e4Done not] whileTrue: [
        block2810f3e4Step := block2810f3e4PC.
        block2810f3e4Step = 4 ifTrue: [
            block2810f3e4Stack1 := false.
            block2810f3e4PC := 5.
        ].
        block2810f3e4Step = 5 ifTrue: [
            block2810f3e4Stack2 := block2810f3e4Arg1.
            block2810f3e4PC := 6.
        ].
        block2810f3e4Step = 6 ifTrue: [
            block2810f3e4Stack2 := (block2810f3e4Stack2) dbFormatString.
            block2810f3e4PC := 7.
        ].
        block2810f3e4Step = 7 ifTrue: [
            block2810f3e4Stack2 := (block2810f3e4Stack2) first.
            block2810f3e4PC := 8.
        ].
        block2810f3e4Step = 8 ifTrue: [
            block2810f3e4Stack3 := $S.
            block2810f3e4PC := 12.
        ].
        block2810f3e4Step = 12 ifTrue: [
            block2810f3e4Stack2 := (block2810f3e4Stack2) = (block2810f3e4Stack3).
            block2810f3e4PC := 13.
        ].
        block2810f3e4Step = 13 ifTrue: [
            (block2810f3e4Stack2) ifTrue: [block2810f3e4PC := 16] ifFalse: [block2810f3e4PC := 23].
        ].
        block2810f3e4Step = 16 ifTrue: [
            block2810f3e4PC := 17.
        ].
        block2810f3e4Step = 17 ifTrue: [
            block2810f3e4Stack1 := block2810f3e4Arg1.
            block2810f3e4PC := 18.
        ].
        block2810f3e4Step = 18 ifTrue: [
            block2810f3e4Stack1 := (block2810f3e4Stack1) byteSize.
            block2810f3e4PC := 19.
        ].
        block2810f3e4Step = 19 ifTrue: [
            block2810f3e4Stack2 := 256.
            block2810f3e4PC := 22.
        ].
        block2810f3e4Step = 22 ifTrue: [
            block2810f3e4Stack1 := (block2810f3e4Stack1) ~= (block2810f3e4Stack2).
            block2810f3e4PC := 23.
        ].
        block2810f3e4Step = 23 ifTrue: [
            block2810f3e4Result := block2810f3e4Stack1.
            block2810f3e4Done := true.
        ].
    ].
    block2810f3e4Result
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 recoveredBlock32Value5 |
    recoveredBlock32Value0 := DBFileError.
    recoveredBlock32Value1 := SCItemFileParseError.
    recoveredBlock32Value2 := (self) fileTypeString.
    recoveredBlock32Value3 := recoveredArg1.
    recoveredBlock32Value4 := (recoveredBlock32Value1) bindWith: (recoveredBlock32Value2) with: (recoveredBlock32Value3).
    recoveredBlock32Value5 := (recoveredBlock32Value0) create: (recoveredBlock32Value4).
    ^recoveredBlock32Value5
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) detect: (recoveredStack2) ifOne: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) convertElementAccessors: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) elementAccessors: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementAccessors.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := [:block2810f408Arg1 | 
    | block2810f408Value0 block2810f408Value1 |
    block2810f408Value0 := block2810f408Arg1.
    block2810f408Value1 := (block2810f408Value0) dbFormatString.
    block2810f408Value1
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) recordFormat: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementAccessors.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRecordSizeFrom: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) recordBuffer: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) currentRecordNumber: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementAccessors.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := [:block2810f42cArg1 | 
    | block2810f42cValue0 block2810f42cValue1 |
    block2810f42cValue0 := block2810f42cArg1.
    block2810f42cValue1 := (block2810f42cValue0) name.
    block2810f42cValue1
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) setNameTable: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFile.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeHeaderRecord.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 185].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) readHeaderRecord.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 209].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) initializeElementAccess.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20550f14; bytecode file offset 0xe4d808"
!ETASFormatedIndexedFile class methodsFor: 'recovered'!
getRecordSizeFromFormat: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredLocal2 := 0.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) allSubStrings: ($ ).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23Stack5 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack2 := 'u8'.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) = (recoveredBlock23Stack2).
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 38] ifFalse: [recoveredBlock23PC := 45].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (1).
            recoveredBlock23PC := 42.
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 45.
        ].
        recoveredBlock23Step = 45 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 46.
        ].
        recoveredBlock23Step = 46 ifTrue: [
            recoveredBlock23Stack2 := 'u16'.
            recoveredBlock23PC := 48.
        ].
        recoveredBlock23Step = 48 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) = (recoveredBlock23Stack2).
            recoveredBlock23PC := 49.
        ].
        recoveredBlock23Step = 49 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 52] ifFalse: [recoveredBlock23PC := 61].
        ].
        recoveredBlock23Step = 52 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 55.
        ].
        recoveredBlock23Step = 55 ifTrue: [
            recoveredBlock23Stack2 := 2.
            recoveredBlock23PC := 57.
        ].
        recoveredBlock23Step = 57 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (recoveredBlock23Stack2).
            recoveredBlock23PC := 58.
        ].
        recoveredBlock23Step = 58 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 61.
        ].
        recoveredBlock23Step = 61 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 62.
        ].
        recoveredBlock23Step = 62 ifTrue: [
            recoveredBlock23Stack2 := 'u32'.
            recoveredBlock23PC := 64.
        ].
        recoveredBlock23Step = 64 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) = (recoveredBlock23Stack2).
            recoveredBlock23PC := 65.
        ].
        recoveredBlock23Step = 65 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 68] ifFalse: [recoveredBlock23PC := 77].
        ].
        recoveredBlock23Step = 68 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 71.
        ].
        recoveredBlock23Step = 71 ifTrue: [
            recoveredBlock23Stack2 := 4.
            recoveredBlock23PC := 73.
        ].
        recoveredBlock23Step = 73 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (recoveredBlock23Stack2).
            recoveredBlock23PC := 74.
        ].
        recoveredBlock23Step = 74 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 77.
        ].
        recoveredBlock23Step = 77 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 78.
        ].
        recoveredBlock23Step = 78 ifTrue: [
            recoveredBlock23Stack2 := 'u64'.
            recoveredBlock23PC := 80.
        ].
        recoveredBlock23Step = 80 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) = (recoveredBlock23Stack2).
            recoveredBlock23PC := 81.
        ].
        recoveredBlock23Step = 81 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 84] ifFalse: [recoveredBlock23PC := 93].
        ].
        recoveredBlock23Step = 84 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 87.
        ].
        recoveredBlock23Step = 87 ifTrue: [
            recoveredBlock23Stack2 := 8.
            recoveredBlock23PC := 89.
        ].
        recoveredBlock23Step = 89 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (recoveredBlock23Stack2).
            recoveredBlock23PC := 90.
        ].
        recoveredBlock23Step = 90 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 93.
        ].
        recoveredBlock23Step = 93 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 94.
        ].
        recoveredBlock23Step = 94 ifTrue: [
            recoveredBlock23Stack2 := 's8'.
            recoveredBlock23PC := 96.
        ].
        recoveredBlock23Step = 96 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) = (recoveredBlock23Stack2).
            recoveredBlock23PC := 97.
        ].
        recoveredBlock23Step = 97 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 100] ifFalse: [recoveredBlock23PC := 107].
        ].
        recoveredBlock23Step = 100 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 103.
        ].
        recoveredBlock23Step = 103 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (1).
            recoveredBlock23PC := 104.
        ].
        recoveredBlock23Step = 104 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 107.
        ].
        recoveredBlock23Step = 107 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 108.
        ].
        recoveredBlock23Step = 108 ifTrue: [
            recoveredBlock23Stack2 := 's16'.
            recoveredBlock23PC := 110.
        ].
        recoveredBlock23Step = 110 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) = (recoveredBlock23Stack2).
            recoveredBlock23PC := 111.
        ].
        recoveredBlock23Step = 111 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 114] ifFalse: [recoveredBlock23PC := 123].
        ].
        recoveredBlock23Step = 114 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 117.
        ].
        recoveredBlock23Step = 117 ifTrue: [
            recoveredBlock23Stack2 := 2.
            recoveredBlock23PC := 119.
        ].
        recoveredBlock23Step = 119 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (recoveredBlock23Stack2).
            recoveredBlock23PC := 120.
        ].
        recoveredBlock23Step = 120 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 123.
        ].
        recoveredBlock23Step = 123 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 124.
        ].
        recoveredBlock23Step = 124 ifTrue: [
            recoveredBlock23Stack2 := 's32'.
            recoveredBlock23PC := 126.
        ].
        recoveredBlock23Step = 126 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) = (recoveredBlock23Stack2).
            recoveredBlock23PC := 127.
        ].
        recoveredBlock23Step = 127 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 130] ifFalse: [recoveredBlock23PC := 139].
        ].
        recoveredBlock23Step = 130 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 133.
        ].
        recoveredBlock23Step = 133 ifTrue: [
            recoveredBlock23Stack2 := 4.
            recoveredBlock23PC := 135.
        ].
        recoveredBlock23Step = 135 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (recoveredBlock23Stack2).
            recoveredBlock23PC := 136.
        ].
        recoveredBlock23Step = 136 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 139.
        ].
        recoveredBlock23Step = 139 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 140.
        ].
        recoveredBlock23Step = 140 ifTrue: [
            recoveredBlock23Stack2 := 's64'.
            recoveredBlock23PC := 142.
        ].
        recoveredBlock23Step = 142 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) = (recoveredBlock23Stack2).
            recoveredBlock23PC := 143.
        ].
        recoveredBlock23Step = 143 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 146] ifFalse: [recoveredBlock23PC := 155].
        ].
        recoveredBlock23Step = 146 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 149.
        ].
        recoveredBlock23Step = 149 ifTrue: [
            recoveredBlock23Stack2 := 8.
            recoveredBlock23PC := 151.
        ].
        recoveredBlock23Step = 151 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (recoveredBlock23Stack2).
            recoveredBlock23PC := 152.
        ].
        recoveredBlock23Step = 152 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 155.
        ].
        recoveredBlock23Step = 155 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 156.
        ].
        recoveredBlock23Step = 156 ifTrue: [
            recoveredBlock23Stack2 := 'f4'.
            recoveredBlock23PC := 158.
        ].
        recoveredBlock23Step = 158 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) = (recoveredBlock23Stack2).
            recoveredBlock23PC := 159.
        ].
        recoveredBlock23Step = 159 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 162] ifFalse: [recoveredBlock23PC := 171].
        ].
        recoveredBlock23Step = 162 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 165.
        ].
        recoveredBlock23Step = 165 ifTrue: [
            recoveredBlock23Stack2 := 4.
            recoveredBlock23PC := 167.
        ].
        recoveredBlock23Step = 167 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (recoveredBlock23Stack2).
            recoveredBlock23PC := 168.
        ].
        recoveredBlock23Step = 168 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 171.
        ].
        recoveredBlock23Step = 171 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 172.
        ].
        recoveredBlock23Step = 172 ifTrue: [
            recoveredBlock23Stack2 := 'f8'.
            recoveredBlock23PC := 174.
        ].
        recoveredBlock23Step = 174 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) = (recoveredBlock23Stack2).
            recoveredBlock23PC := 175.
        ].
        recoveredBlock23Step = 175 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 178] ifFalse: [recoveredBlock23PC := 187].
        ].
        recoveredBlock23Step = 178 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 181.
        ].
        recoveredBlock23Step = 181 ifTrue: [
            recoveredBlock23Stack2 := 8.
            recoveredBlock23PC := 183.
        ].
        recoveredBlock23Step = 183 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (recoveredBlock23Stack2).
            recoveredBlock23PC := 184.
        ].
        recoveredBlock23Step = 184 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 187.
        ].
        recoveredBlock23Step = 187 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 188.
        ].
        recoveredBlock23Step = 188 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 189.
        ].
        recoveredBlock23Step = 189 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) firstOrNil.
            recoveredBlock23PC := 191.
        ].
        recoveredBlock23Step = 191 ifTrue: [
            recoveredBlock23Stack3 := $S.
            recoveredBlock23PC := 194.
        ].
        recoveredBlock23Step = 194 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) = (recoveredBlock23Stack3).
            recoveredBlock23PC := 195.
        ].
        recoveredBlock23Step = 195 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 198] ifFalse: [recoveredBlock23PC := 217].
        ].
        recoveredBlock23Step = 198 ifTrue: [
            recoveredBlock23PC := 199.
        ].
        recoveredBlock23Step = 199 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 202.
        ].
        recoveredBlock23Step = 202 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 203.
        ].
        recoveredBlock23Step = 203 ifTrue: [
            recoveredBlock23Stack3 := 2.
            recoveredBlock23PC := 205.
        ].
        recoveredBlock23Step = 205 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 206.
        ].
        recoveredBlock23Step = 206 ifTrue: [
            recoveredBlock23Stack4 := (recoveredBlock23Stack4) size.
            recoveredBlock23PC := 208.
        ].
        recoveredBlock23Step = 208 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) copyFrom: (recoveredBlock23Stack3) to: (recoveredBlock23Stack4).
            recoveredBlock23PC := 210.
        ].
        recoveredBlock23Step = 210 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) asInteger.
            recoveredBlock23PC := 212.
        ].
        recoveredBlock23Step = 212 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (recoveredBlock23Stack2).
            recoveredBlock23PC := 213.
        ].
        recoveredBlock23Step = 213 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 214.
        ].
        recoveredBlock23Step = 214 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack2.
            recoveredBlock23PC := 217.
        ].
        recoveredBlock23Step = 217 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    ^recoveredValue4
! !


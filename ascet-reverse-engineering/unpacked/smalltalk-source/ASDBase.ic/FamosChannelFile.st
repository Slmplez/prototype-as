"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002f78; bytecode file offset 0x8ffcfc"
!FamosChannelFile methodsFor: 'recovered'!
asFamosChannelFile
    ^self
! !

"ASDBase.ic method 0x200095c0; bytecode file offset 0x908be4"
!FamosChannelFile methodsFor: 'recovered'!
prepareRecordAccess
    | recoveredValue0 |
    recoveredValue0 := (self) prepareReadRecordAccess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000cca4; bytecode file offset 0x909658"
!FamosChannelFile methodsFor: 'recovered'!
isRecordCompatible: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000da44; bytecode file offset 0x90a4b8"
!FamosChannelFile methodsFor: 'recovered'!
buildBlockOfDataFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20039e48; bytecode file offset 0x938608"
!FamosChannelFile methodsFor: 'recovered'!
writeNextBlockOfData: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) writeNextRecord: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003abc8; bytecode file offset 0x938608"
!FamosChannelFile methodsFor: 'recovered'!
prepareRecordAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) prepareReadRecordAccess: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006f140; bytecode file offset 0x96bc1c"
!FamosChannelFile methodsFor: 'recovered'!
channelAccess
    | recoveredValue0 |
    recoveredValue0 := channelAccess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072258; bytecode file offset 0x96ee04"
!FamosChannelFile methodsFor: 'recovered'!
recordCacheSize
    ^1
! !

"ASDBase.ic method 0x200d9350; bytecode file offset 0x9d5c08"
!FamosChannelFile methodsFor: 'recovered'!
writeFirstRecord: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) writeRecord: (recoveredValue0).
    currentRecordNumber := 1.
    ^self
! !

"ASDBase.ic method 0x200e6bb0; bytecode file offset 0x9e3478"
!FamosChannelFile methodsFor: 'recovered'!
writeFirstBlockOfData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DBFileError.
    recoveredValue1 := SCItemFileShouldNotImplement.
    recoveredValue2 := (recoveredValue1) bindWith: ('famos channel files').
    recoveredValue3 := (recoveredValue0) create: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e9704; bytecode file offset 0x9e5fbc"
!FamosChannelFile methodsFor: 'recovered'!
writeNextRecord: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) writeRecord: (recoveredValue0).
    recoveredValue1 := currentRecordNumber.
    recoveredValue2 := (recoveredValue1) + (1).
    currentRecordNumber := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x2013965c; bytecode file offset 0xa35f30"
!FamosChannelFile methodsFor: 'recovered'!
readNextBlockOfData: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) readNextRecord.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildBlockOfDataFrom: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20139670; bytecode file offset 0xa35f30"
!FamosChannelFile methodsFor: 'recovered'!
readFirstBlockOfData: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) readFirstRecord.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildBlockOfDataFrom: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c7394; bytecode file offset 0xac3c5c"
!FamosChannelFile methodsFor: 'recovered'!
closeWriteRecord
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := format.
    recoveredValue1 := currentRecordNumber.
    (recoveredValue0) updateChannelHeader: (recoveredValue1).
    recoveredValue2 := format.
    recoveredValue3 := (recoveredValue2) selectBinaries.
    recoveredValue4 := (recoveredValue3) first.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := currentRecordNumber.
    recoveredValue7 := recordSize.
    recoveredValue8 := (recoveredValue6) * (recoveredValue7).
    (recoveredValue5) incWriteStateAndPosition: (recoveredValue8).
    recoveredValue9 := fHandle.
    (recoveredValue4) updateKeyLength: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x201d1b14; bytecode file offset 0xace3d4"
!FamosChannelFile methodsFor: 'recovered'!
readRecord: recoveredArg1
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
            currentRecordNumber := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) readRecord.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recordBuffer.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recordSize.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ebbb4; bytecode file offset 0xae8474"
!FamosChannelFile methodsFor: 'recovered'!
readFirstRecord
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            currentRecordNumber := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) readRecord.
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
            recoveredStack0 := recordBuffer.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recordSize.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ebf1c; bytecode file offset 0xae87e0"
!FamosChannelFile methodsFor: 'recovered'!
readLastRecord
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sampleCnt.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            currentRecordNumber := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) readRecord.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
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
            recoveredStack0 := recordBuffer.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recordSize.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20234790; bytecode file offset 0xb31058"
!FamosChannelFile methodsFor: 'recovered'!
calculateFileOffsetForRecord: recoveredArg1 withAccess: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) offsetInFile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := offsetInFile.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) startingPosition.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) accessClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) recordByteSize.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) offsetInData.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) offsetInFile.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) startingPosition.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) accessClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) recordByteSize.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2023921c; bytecode file offset 0xb35aec"
!FamosChannelFile methodsFor: 'recovered'!
seekTo: recoveredArg1 with: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) calculateFileOffsetForRecord: (recoveredStack1) withAccess: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            currentPosition := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := offsetInFile.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) outOfBounds: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := DBFileError.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'seekTo:with: behind endPosition'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBasic: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) seekTo: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202464d8; bytecode file offset 0xb42db4"
!FamosChannelFile methodsFor: 'recovered'!
sampleCnt
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := format.
    recoveredValue1 := (recoveredValue0) keyGroup.
    recoveredValue2 := (recoveredValue1) dataFieldDefinitions.
    recoveredValue3 := (recoveredValue2) first.
    recoveredValue4 := (recoveredValue3) components.
    recoveredValue5 := (recoveredValue4) first.
    recoveredValue6 := (recoveredValue5) packInfo.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) bufferReference.
    recoveredValue9 := (recoveredValue8) value.
    recoveredValue10 := (recoveredValue9) first.
    recoveredValue11 := (recoveredValue10) used.
    recoveredLocal3 := recoveredValue11.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) significantBytes.
    recoveredValue14 := (recoveredValue13) / (8).
    recoveredLocal2 := recoveredValue14.
    recoveredValue15 := recoveredLocal3.
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := (recoveredValue15) / (recoveredValue16).
    ^recoveredValue17
! !

"ASDBase.ic method 0x2028b448; bytecode file offset 0xb87d1c"
!FamosChannelFile methodsFor: 'recovered'!
createWriteChannelAccess
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    channelAccess := recoveredValue1.
    recoveredValue2 := recordAccess.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := channelAccess.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) offsetInRecord.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack3 := [
    | block280e1e34Value0 block280e1e34Value1 |
    block280e1e34Value0 := OrderedCollection.
    block280e1e34Value1 := (block280e1e34Value0) new.
    block280e1e34Value1
].
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) ifAbsentPut: (recoveredBlock11Stack3).
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2028b49c; bytecode file offset 0xb87d74"
!FamosChannelFile methodsFor: 'recovered'!
createChannelAccess
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    channelAccess := recoveredValue1.
    recoveredValue2 := recordAccess.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := channelAccess.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) offsetInFile.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) startingPosition.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack3 := [
    | block280e1e58Value0 block280e1e58Value1 |
    block280e1e58Value0 := OrderedCollection.
    block280e1e58Value1 := (block280e1e58Value0) new.
    block280e1e58Value1
].
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) ifAbsentPut: (recoveredBlock11Stack3).
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2029f7e8; bytecode file offset 0xb9c0e4"
!FamosChannelFile methodsFor: 'recovered'!
prepareReadRecordAccess
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recordAccess.
    recoveredValue1 := (self) getRecordSizeIn: (recoveredValue0).
    recordSize := recoveredValue1.
    (self) createChannelAccess.
    (self) prepareOffsetsForChannelAccess.
    recoveredValue2 := ByteArray.
    recoveredValue3 := (self) recordCacheSize.
    recoveredValue4 := recordSize.
    recoveredValue5 := (recoveredValue3) * (recoveredValue4).
    recoveredValue6 := (recoveredValue2) new: (recoveredValue5).
    recordBuffer := recoveredValue6.
    recoveredValue7 := recordAccess.
    recoveredValue8 := (self) getStartingRecordPositionIn: (recoveredValue7).
    offsetInFile := recoveredValue8.
    recoveredValue9 := recordAccess.
    (self) createNameTableFromRecordAccess: (recoveredValue9).
    currentRecordNumber := 0.
    ^self
! !

"ASDBase.ic method 0x2029f810; bytecode file offset 0xb9c0e4"
!FamosChannelFile methodsFor: 'recovered'!
prepareWriteRecordAccess
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recordAccess.
    recoveredValue1 := (self) getRecordSizeIn: (recoveredValue0).
    recordSize := recoveredValue1.
    (self) createWriteChannelAccess.
    (self) prepareOffsetsForChannelAccess.
    recoveredValue2 := ByteArray.
    recoveredValue3 := (self) recordCacheSize.
    recoveredValue4 := recordSize.
    recoveredValue5 := (recoveredValue3) * (recoveredValue4).
    recoveredValue6 := (recoveredValue2) new: (recoveredValue5).
    recordBuffer := recoveredValue6.
    recoveredValue7 := recordAccess.
    recoveredValue8 := (self) getStartingRecordPositionIn: (recoveredValue7).
    offsetInFile := recoveredValue8.
    recoveredValue9 := recordAccess.
    (self) createNameTableFromRecordAccess: (recoveredValue9).
    currentRecordNumber := 0.
    ^self
! !

"ASDBase.ic method 0x202a9828; bytecode file offset 0xba60fc"
!FamosChannelFile methodsFor: 'recovered'!
prepareWriteRecordAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recordAccess.
    recoveredValue1 := (self) getRecordSizeIn: (recoveredValue0).
    recordSize := recoveredValue1.
    (self) createWriteChannelAccess.
    recoveredValue2 := recoveredArg1.
    (self) prepareOffsetsForChannelAccess: (recoveredValue2).
    recoveredValue3 := ByteArray.
    recoveredValue4 := (self) recordCacheSize.
    recoveredValue5 := recordSize.
    recoveredValue6 := (recoveredValue4) * (recoveredValue5).
    recoveredValue7 := (recoveredValue3) new: (recoveredValue6).
    recordBuffer := recoveredValue7.
    recoveredValue8 := recordAccess.
    recoveredValue9 := (self) getStartingRecordPositionIn: (recoveredValue8).
    offsetInFile := recoveredValue9.
    recoveredValue10 := recordAccess.
    (self) createNameTableFromRecordAccess: (recoveredValue10).
    currentRecordNumber := 0.
    ^self
! !

"ASDBase.ic method 0x202b690c; bytecode file offset 0xbb31dc"
!FamosChannelFile methodsFor: 'recovered'!
readNextRecord
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := currentRecordNumber.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            currentRecordNumber := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := currentRecordNumber.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) sampleCnt.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := DBFileError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := SCItemFileEndOfSamples.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBasic: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) readRecord.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recordBuffer.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recordSize.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d3c88; bytecode file offset 0xbd0558"
!FamosChannelFile methodsFor: 'recovered'!
readRecord: recoveredArg1 nBytes: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := nBytesRead.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) readFile: (recoveredStack2) nNumberOfBytesToRead: (recoveredStack3) lpNumberOfBytesRead: (recoveredStack4) lpOverlapped: (recoveredStack5).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := WinError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := SCItemFileReadRecordFailed.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLocation: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nBytesRead.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint32At: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := DBFileError.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := SCItemFileReadRecordFailed.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202ee924; bytecode file offset 0xbeb1ec"
!FamosChannelFile methodsFor: 'recovered'!
prepareOffsetsForChannelAccess
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredLocal1 := 0.
    recoveredValue0 := channelAccess.
    recoveredValue1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 recoveredBlock11Value8 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := [:recoveredBlock11Block19Arg1 | 
    | recoveredBlock11Block19Value0 recoveredBlock11Block19Value1 recoveredBlock11Block19Value2 recoveredBlock11Block19Value3 |
    recoveredBlock11Block19Value0 := recoveredBlock11Block19Arg1.
    recoveredBlock11Block19Value1 := (recoveredBlock11Block19Value0) accessClass.
    recoveredBlock11Block19Value2 := recoveredLocal1.
    recoveredBlock11Block19Value3 := (recoveredBlock11Block19Value1) offset: (recoveredBlock11Block19Value2).
    recoveredBlock11Block19Value3
].
    (recoveredBlock11Value0) do: (recoveredBlock11Value1).
    recoveredBlock11Value2 := recoveredLocal1.
    recoveredBlock11Value3 := recoveredBlock11Arg1.
    recoveredBlock11Value4 := (recoveredBlock11Value3) first.
    recoveredBlock11Value5 := (recoveredBlock11Value4) accessClass.
    recoveredBlock11Value6 := (recoveredBlock11Value5) recordByteSize.
    recoveredBlock11Value7 := (recoveredBlock11Value2) + (recoveredBlock11Value6).
    recoveredBlock11Value8 := recoveredBlock11Value7.
    recoveredLocal1 := recoveredBlock11Value8.
    recoveredBlock11Value7
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203389a4; bytecode file offset 0xc35284"
!FamosChannelFile methodsFor: 'recovered'!
writeRecord: recoveredArg1 nBytes: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := fHandle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) min: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeFile: (recoveredStack2) nNumberOfBytesToWrite: (recoveredStack3) lpNumberOfBytesWritten: (recoveredStack4) lpOverlapped: (recoveredStack5).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := WinError.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := SCItemFileWriteRecordFailed.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLocation: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint32At: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := DBFileError.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := SCItemFileWriteRecordFailed.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBasic: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint32At: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203bf568; bytecode file offset 0xcbbe50"
!FamosChannelFile methodsFor: 'recovered'!
prepareReadRecordAccess: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recordAccess.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRecordSizeIn: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recordSize := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) createChannelAccess.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) prepareOffsetsForChannelAccess.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := ByteArray.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) recordCacheSize.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recordSize.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recordBuffer := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recordAccess.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) getStartingRecordPositionIn: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            offsetInFile := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := path.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) stat: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) stSize.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := offsetInFile.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) endingPosition.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := offsetInFile.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) endingPosition.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := offsetInFile.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := offsetInFile.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) endingPosition.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recordSize.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) endingPosition: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recordAccess.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) createNameTableFromRecordAccess: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            currentRecordNumber := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f4718; bytecode file offset 0xcf0ffc"
!FamosChannelFile methodsFor: 'recovered'!
writeRecord: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := channelAccess.
    recoveredValue5 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Local1 recoveredBlock16Local2 recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16Stack5 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) first.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Local2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Stack1 := currentRecordNumber.
            recoveredBlock16PC := 27.
        ].
        recoveredBlock16Step = 27 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local2.
            recoveredBlock16PC := 28.
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Stack0 := (recoveredBlock16Stack0) seekTo: (recoveredBlock16Stack1) with: (recoveredBlock16Stack2).
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Stack0.
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Local1 := recoveredBlock16Stack1.
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            recoveredBlock16Stack0 := (recoveredBlock16Stack0) isError.
            recoveredBlock16PC := 34.
        ].
        recoveredBlock16Step = 34 ifTrue: [
            (recoveredBlock16Stack0) ifTrue: [recoveredBlock16PC := 38] ifFalse: [recoveredBlock16PC := 40].
        ].
        recoveredBlock16Step = 38 ifTrue: [
            recoveredBlock16Stack0 := recoveredBlock16Local1.
            recoveredBlock16PC := 39.
        ].
        recoveredBlock16Step = 39 ifTrue: [
            ^recoveredBlock16Stack0
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack0 := recoveredLocal1.
            recoveredBlock16PC := 43.
        ].
        recoveredBlock16Step = 43 ifTrue: [
            recoveredBlock16Stack1 := 1.
            recoveredBlock16PC := 45.
        ].
        recoveredBlock16Step = 45 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local2.
            recoveredBlock16PC := 46.
        ].
        recoveredBlock16Step = 46 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) accessClass.
            recoveredBlock16PC := 48.
        ].
        recoveredBlock16Step = 48 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) recordByteSize.
            recoveredBlock16PC := 50.
        ].
        recoveredBlock16Step = 50 ifTrue: [
            recoveredBlock16Stack3 := recoveredArg1.
            recoveredBlock16PC := 53.
        ].
        recoveredBlock16Step = 53 ifTrue: [
            recoveredBlock16Stack4 := recoveredBlock16Local2.
            recoveredBlock16PC := 54.
        ].
        recoveredBlock16Step = 54 ifTrue: [
            recoveredBlock16Stack4 := (recoveredBlock16Stack4) accessClass.
            recoveredBlock16PC := 56.
        ].
        recoveredBlock16Step = 56 ifTrue: [
            recoveredBlock16Stack4 := (recoveredBlock16Stack4) offset.
            recoveredBlock16PC := 58.
        ].
        recoveredBlock16Step = 58 ifTrue: [
            recoveredBlock16Stack4 := (recoveredBlock16Stack4) + (1).
            recoveredBlock16PC := 59.
        ].
        recoveredBlock16Step = 59 ifTrue: [
            (recoveredBlock16Stack0) replaceFrom: (recoveredBlock16Stack1) to: (recoveredBlock16Stack2) with: (recoveredBlock16Stack3) startingAt: (recoveredBlock16Stack4).
            recoveredBlock16PC := 62.
        ].
        recoveredBlock16Step = 62 ifTrue: [
            recoveredBlock16Stack0 := nil.
            recoveredBlock16PC := 63.
        ].
        recoveredBlock16Step = 63 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 64.
        ].
        recoveredBlock16Step = 64 ifTrue: [
            recoveredBlock16Stack2 := recoveredLocal1.
            recoveredBlock16PC := 67.
        ].
        recoveredBlock16Step = 67 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Local2.
            recoveredBlock16PC := 68.
        ].
        recoveredBlock16Step = 68 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) accessClass.
            recoveredBlock16PC := 70.
        ].
        recoveredBlock16Step = 70 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) recordByteSize.
            recoveredBlock16PC := 72.
        ].
        recoveredBlock16Step = 72 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) writeRecord: (recoveredBlock16Stack2) nBytes: (recoveredBlock16Stack3).
            recoveredBlock16PC := 74.
        ].
        recoveredBlock16Step = 74 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 75.
        ].
        recoveredBlock16Step = 75 ifTrue: [
            recoveredBlock16Local1 := recoveredBlock16Stack2.
            recoveredBlock16PC := 76.
        ].
        recoveredBlock16Step = 76 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) isError.
            recoveredBlock16PC := 78.
        ].
        recoveredBlock16Step = 78 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 82] ifFalse: [recoveredBlock16PC := 85].
        ].
        recoveredBlock16Step = 82 ifTrue: [
            recoveredBlock16PC := 83.
        ].
        recoveredBlock16Step = 83 ifTrue: [
            recoveredBlock16Stack0 := recoveredBlock16Local1.
            recoveredBlock16PC := 84.
        ].
        recoveredBlock16Step = 84 ifTrue: [
            ^recoveredBlock16Stack0
        ].
        recoveredBlock16Step = 85 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack0.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x203fdb00; bytecode file offset 0xcfa400"
!FamosChannelFile methodsFor: 'recovered'!
writeHeader
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := format.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := format.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getComment.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := format.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) setComment: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := format.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'writeHeader'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) WriteBinary: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := format.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) putIn: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) putHeaderExtentIn: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) putHeaderExtentIn: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := format.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectBinaries.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) putLeaderIn: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := format.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := fHandle.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := (recoveredStack4) position.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := (recoveredStack5) collection.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) writeFile: (recoveredStack2) at: (recoveredStack3) nBytes: (recoveredStack4) bytes: (recoveredStack5).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recordSize.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recordBuffer := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := format.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectBinaries.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) writePosition.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            offsetInFile := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20403310; bytecode file offset 0xcffbf8"
!FamosChannelFile methodsFor: 'recovered'!
getStartingRecordPositionIn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := format.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectBinaries.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) writePosition.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := super getStartingRecordPositionIn: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := channelAccess.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := [:recoveredBlock27Block35Arg1 | 
    | recoveredBlock27Block35Stack0 recoveredBlock27Block35Stack1 recoveredBlock27Block35Stack2 recoveredBlock27Block35Stack3 recoveredBlock27Block35Stack4 recoveredBlock27Block35PC recoveredBlock27Block35Step recoveredBlock27Block35Done recoveredBlock27Block35Result |
    recoveredBlock27Block35Stack0 := nil.
    recoveredBlock27Block35PC := 42.
    recoveredBlock27Block35Done := false.
    [recoveredBlock27Block35Done not] whileTrue: [
        recoveredBlock27Block35Step := recoveredBlock27Block35PC.
        recoveredBlock27Block35Step = 42 ifTrue: [
            recoveredBlock27Block35Stack1 := nil.
            recoveredBlock27Block35PC := 43.
        ].
        recoveredBlock27Block35Step = 43 ifTrue: [
            recoveredBlock27Block35Stack2 := recoveredBlock27Block35Arg1.
            recoveredBlock27Block35PC := 44.
        ].
        recoveredBlock27Block35Step = 44 ifTrue: [
            recoveredBlock27Block35Stack2 := (recoveredBlock27Block35Stack2) offsetInFile.
            recoveredBlock27Block35PC := 46.
        ].
        recoveredBlock27Block35Step = 46 ifTrue: [
            (recoveredBlock27Block35Stack2 == nil) ifTrue: [recoveredBlock27Block35PC := 85] ifFalse: [recoveredBlock27Block35PC := 50].
        ].
        recoveredBlock27Block35Step = 50 ifTrue: [
            recoveredBlock27Block35PC := 51.
        ].
        recoveredBlock27Block35Step = 51 ifTrue: [
            recoveredBlock27Block35Stack1 := recoveredLocal1.
            recoveredBlock27Block35PC := 54.
        ].
        recoveredBlock27Block35Step = 54 ifTrue: [
            recoveredBlock27Block35Stack2 := recoveredLocal1.
            recoveredBlock27Block35PC := 57.
        ].
        recoveredBlock27Block35Step = 57 ifTrue: [
            recoveredBlock27Block35Stack2 := (recoveredBlock27Block35Stack2) startingPosition.
            recoveredBlock27Block35PC := 59.
        ].
        recoveredBlock27Block35Step = 59 ifTrue: [
            recoveredBlock27Block35Stack3 := recoveredBlock27Block35Arg1.
            recoveredBlock27Block35PC := 60.
        ].
        recoveredBlock27Block35Step = 60 ifTrue: [
            recoveredBlock27Block35Stack3 := (recoveredBlock27Block35Stack3) offsetInFile.
            recoveredBlock27Block35PC := 62.
        ].
        recoveredBlock27Block35Step = 62 ifTrue: [
            recoveredBlock27Block35Stack3 := (recoveredBlock27Block35Stack3) startingPosition.
            recoveredBlock27Block35PC := 64.
        ].
        recoveredBlock27Block35Step = 64 ifTrue: [
            recoveredBlock27Block35Stack2 := (recoveredBlock27Block35Stack2) min: (recoveredBlock27Block35Stack3).
            recoveredBlock27Block35PC := 66.
        ].
        recoveredBlock27Block35Step = 66 ifTrue: [
            (recoveredBlock27Block35Stack1) startingPosition: (recoveredBlock27Block35Stack2).
            recoveredBlock27Block35PC := 68.
        ].
        recoveredBlock27Block35Step = 68 ifTrue: [
            recoveredBlock27Block35Stack1 := recoveredLocal1.
            recoveredBlock27Block35PC := 71.
        ].
        recoveredBlock27Block35Step = 71 ifTrue: [
            recoveredBlock27Block35Stack2 := recoveredLocal1.
            recoveredBlock27Block35PC := 74.
        ].
        recoveredBlock27Block35Step = 74 ifTrue: [
            recoveredBlock27Block35Stack2 := (recoveredBlock27Block35Stack2) endingPosition.
            recoveredBlock27Block35PC := 76.
        ].
        recoveredBlock27Block35Step = 76 ifTrue: [
            recoveredBlock27Block35Stack3 := recoveredBlock27Block35Arg1.
            recoveredBlock27Block35PC := 77.
        ].
        recoveredBlock27Block35Step = 77 ifTrue: [
            recoveredBlock27Block35Stack3 := (recoveredBlock27Block35Stack3) offsetInFile.
            recoveredBlock27Block35PC := 79.
        ].
        recoveredBlock27Block35Step = 79 ifTrue: [
            recoveredBlock27Block35Stack3 := (recoveredBlock27Block35Stack3) endingPosition.
            recoveredBlock27Block35PC := 81.
        ].
        recoveredBlock27Block35Step = 81 ifTrue: [
            recoveredBlock27Block35Stack2 := (recoveredBlock27Block35Stack2) max: (recoveredBlock27Block35Stack3).
            recoveredBlock27Block35PC := 83.
        ].
        recoveredBlock27Block35Step = 83 ifTrue: [
            recoveredBlock27Block35Stack1 := (recoveredBlock27Block35Stack1) endingPosition: (recoveredBlock27Block35Stack2).
            recoveredBlock27Block35PC := 85.
        ].
        recoveredBlock27Block35Step = 85 ifTrue: [
            recoveredBlock27Block35Result := recoveredBlock27Block35Stack1.
            recoveredBlock27Block35Done := true.
        ].
    ].
    recoveredBlock27Block35Result
].
    recoveredBlock27Value2 := (recoveredBlock27Value0) do: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20423fa0; bytecode file offset 0xd20890"
!FamosChannelFile methodsFor: 'recovered'!
writeFirstBlockOfData: recoveredArg1 group: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getGroup: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) prepareRead: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            currentRecordNumber := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := format.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectBinaries.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataLength.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxDataSizeFieldLength.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) incPosition: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) writePosition: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) writePosition.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            offsetInFile := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) incWriteStateAndPosition: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeNextRecord: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            offsetInFile := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := offsetInFile.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataLength.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxDataSizeFieldLength.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) incPosition: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) incWriteStateAndPosition: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeNextRecord: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20437b54; bytecode file offset 0xd34438"
!FamosChannelFile methodsFor: 'recovered'!
readRecord
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := recordBuffer.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredLocal1 := 1.
    recoveredValue4 := ByteArray.
    recoveredValue5 := recordSize.
    recoveredValue6 := (recoveredValue4) new: (recoveredValue5).
    recordBuffer := recoveredValue6.
    recoveredValue7 := channelAccess.
    recoveredValue8 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Local1 recoveredBlock27Local2 recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27Stack5 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) first.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            recoveredBlock27Local2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 37.
        ].
        recoveredBlock27Step = 37 ifTrue: [
            recoveredBlock27Stack1 := currentRecordNumber.
            recoveredBlock27PC := 39.
        ].
        recoveredBlock27Step = 39 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Local2.
            recoveredBlock27PC := 40.
        ].
        recoveredBlock27Step = 40 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) seekTo: (recoveredBlock27Stack1) with: (recoveredBlock27Stack2).
            recoveredBlock27PC := 42.
        ].
        recoveredBlock27Step = 42 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Stack0.
            recoveredBlock27PC := 43.
        ].
        recoveredBlock27Step = 43 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack1.
            recoveredBlock27PC := 44.
        ].
        recoveredBlock27Step = 44 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) isError.
            recoveredBlock27PC := 46.
        ].
        recoveredBlock27Step = 46 ifTrue: [
            (recoveredBlock27Stack0) ifTrue: [recoveredBlock27PC := 50] ifFalse: [recoveredBlock27PC := 52].
        ].
        recoveredBlock27Step = 50 ifTrue: [
            recoveredBlock27Stack0 := recoveredBlock27Local1.
            recoveredBlock27PC := 51.
        ].
        recoveredBlock27Step = 51 ifTrue: [
            ^recoveredBlock27Stack0
        ].
        recoveredBlock27Step = 52 ifTrue: [
            recoveredBlock27Stack0 := self.
            recoveredBlock27PC := 53.
        ].
        recoveredBlock27Step = 53 ifTrue: [
            recoveredBlock27Stack1 := recoveredLocal2.
            recoveredBlock27PC := 56.
        ].
        recoveredBlock27Step = 56 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Local2.
            recoveredBlock27PC := 57.
        ].
        recoveredBlock27Step = 57 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) accessClass.
            recoveredBlock27PC := 59.
        ].
        recoveredBlock27Step = 59 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) recordByteSize.
            recoveredBlock27PC := 61.
        ].
        recoveredBlock27Step = 61 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) readRecord: (recoveredBlock27Stack1) nBytes: (recoveredBlock27Stack2).
            recoveredBlock27PC := 63.
        ].
        recoveredBlock27Step = 63 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Stack0.
            recoveredBlock27PC := 64.
        ].
        recoveredBlock27Step = 64 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack1.
            recoveredBlock27PC := 65.
        ].
        recoveredBlock27Step = 65 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) isError.
            recoveredBlock27PC := 67.
        ].
        recoveredBlock27Step = 67 ifTrue: [
            (recoveredBlock27Stack0) ifTrue: [recoveredBlock27PC := 70] ifFalse: [recoveredBlock27PC := 72].
        ].
        recoveredBlock27Step = 70 ifTrue: [
            recoveredBlock27Stack0 := recoveredBlock27Local1.
            recoveredBlock27PC := 71.
        ].
        recoveredBlock27Step = 71 ifTrue: [
            ^recoveredBlock27Stack0
        ].
        recoveredBlock27Step = 72 ifTrue: [
            recoveredBlock27Stack0 := recordBuffer.
            recoveredBlock27PC := 74.
        ].
        recoveredBlock27Step = 74 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local2.
            recoveredBlock27PC := 75.
        ].
        recoveredBlock27Step = 75 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) accessClass.
            recoveredBlock27PC := 77.
        ].
        recoveredBlock27Step = 77 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) offset.
            recoveredBlock27PC := 79.
        ].
        recoveredBlock27Step = 79 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 80.
        ].
        recoveredBlock27Step = 80 ifTrue: [
            recoveredLocal1 := recoveredBlock27Stack2.
            recoveredBlock27PC := 83.
        ].
        recoveredBlock27Step = 83 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) + (1).
            recoveredBlock27PC := 84.
        ].
        recoveredBlock27Step = 84 ifTrue: [
            recoveredBlock27Stack2 := recoveredLocal1.
            recoveredBlock27PC := 87.
        ].
        recoveredBlock27Step = 87 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Local2.
            recoveredBlock27PC := 88.
        ].
        recoveredBlock27Step = 88 ifTrue: [
            recoveredBlock27Stack3 := (recoveredBlock27Stack3) accessClass.
            recoveredBlock27PC := 90.
        ].
        recoveredBlock27Step = 90 ifTrue: [
            recoveredBlock27Stack3 := (recoveredBlock27Stack3) recordByteSize.
            recoveredBlock27PC := 92.
        ].
        recoveredBlock27Step = 92 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) + (recoveredBlock27Stack3).
            recoveredBlock27PC := 93.
        ].
        recoveredBlock27Step = 93 ifTrue: [
            recoveredBlock27Stack3 := recoveredLocal2.
            recoveredBlock27PC := 96.
        ].
        recoveredBlock27Step = 96 ifTrue: [
            recoveredBlock27Stack4 := 1.
            recoveredBlock27PC := 98.
        ].
        recoveredBlock27Step = 98 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) replaceFrom: (recoveredBlock27Stack1) to: (recoveredBlock27Stack2) with: (recoveredBlock27Stack3) startingAt: (recoveredBlock27Stack4).
            recoveredBlock27PC := 101.
        ].
        recoveredBlock27Step = 101 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack0.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recordBuffer.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20447fcc; bytecode file offset 0xd448b0"
!FamosChannelFile methodsFor: 'recovered'!
prepareOffsetsForChannelAccess: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredLocal2 := 0.
    recoveredLocal1 := 0.
    recoveredValue0 := channelAccess.
    recoveredValue1 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 recoveredBlock15Value13 recoveredBlock15Value14 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := [:recoveredBlock15Block23Arg1 | 
    | recoveredBlock15Block23Local1 recoveredBlock15Block23Stack0 recoveredBlock15Block23Stack1 recoveredBlock15Block23Stack2 recoveredBlock15Block23Stack3 recoveredBlock15Block23Stack4 recoveredBlock15Block23PC recoveredBlock15Block23Step recoveredBlock15Block23Done recoveredBlock15Block23Result |
    recoveredBlock15Block23Stack0 := self.
    recoveredBlock15Block23PC := 30.
    recoveredBlock15Block23Done := false.
    [recoveredBlock15Block23Done not] whileTrue: [
        recoveredBlock15Block23Step := recoveredBlock15Block23PC.
        recoveredBlock15Block23Step = 30 ifTrue: [
            recoveredBlock15Block23Stack1 := recoveredBlock15Block23Arg1.
            recoveredBlock15Block23PC := 31.
        ].
        recoveredBlock15Block23Step = 31 ifTrue: [
            recoveredBlock15Block23Stack2 := recoveredLocal2.
            recoveredBlock15Block23PC := 34.
        ].
        recoveredBlock15Block23Step = 34 ifTrue: [
            (recoveredBlock15Block23Stack1) offsetInData: (recoveredBlock15Block23Stack2).
            recoveredBlock15Block23PC := 36.
        ].
        recoveredBlock15Block23Step = 36 ifTrue: [
            recoveredBlock15Block23Stack1 := recoveredBlock15Block23Arg1.
            recoveredBlock15Block23PC := 37.
        ].
        recoveredBlock15Block23Step = 37 ifTrue: [
            recoveredBlock15Block23Stack1 := (recoveredBlock15Block23Stack1) accessClass.
            recoveredBlock15Block23PC := 38.
        ].
        recoveredBlock15Block23Step = 38 ifTrue: [
            recoveredBlock15Block23Stack2 := recoveredLocal1.
            recoveredBlock15Block23PC := 41.
        ].
        recoveredBlock15Block23Step = 41 ifTrue: [
            (recoveredBlock15Block23Stack1) offset: (recoveredBlock15Block23Stack2).
            recoveredBlock15Block23PC := 43.
        ].
        recoveredBlock15Block23Step = 43 ifTrue: [
            recoveredBlock15Block23Stack1 := format.
            recoveredBlock15Block23PC := 45.
        ].
        recoveredBlock15Block23Step = 45 ifTrue: [
            recoveredBlock15Block23Stack2 := recoveredBlock15Block23Arg1.
            recoveredBlock15Block23PC := 46.
        ].
        recoveredBlock15Block23Step = 46 ifTrue: [
            recoveredBlock15Block23Stack2 := (recoveredBlock15Block23Stack2) accessClass.
            recoveredBlock15Block23PC := 47.
        ].
        recoveredBlock15Block23Step = 47 ifTrue: [
            recoveredBlock15Block23Stack1 := (recoveredBlock15Block23Stack1) selectBufferFor: (recoveredBlock15Block23Stack2).
            recoveredBlock15Block23PC := 48.
        ].
        recoveredBlock15Block23Step = 48 ifTrue: [
            recoveredBlock15Block23Stack2 := recoveredBlock15Block23Stack1.
            recoveredBlock15Block23PC := 49.
        ].
        recoveredBlock15Block23Step = 49 ifTrue: [
            recoveredBlock15Block23Local1 := recoveredBlock15Block23Stack2.
            recoveredBlock15Block23PC := 50.
        ].
        recoveredBlock15Block23Step = 50 ifTrue: [
            recoveredBlock15Block23Stack1 := (recoveredBlock15Block23Stack1) isFamosBuffer.
            recoveredBlock15Block23PC := 52.
        ].
        recoveredBlock15Block23Step = 52 ifTrue: [
            (recoveredBlock15Block23Stack1) ifTrue: [recoveredBlock15Block23PC := 56] ifFalse: [recoveredBlock15Block23PC := 66].
        ].
        recoveredBlock15Block23Step = 56 ifTrue: [
            recoveredBlock15Block23Stack1 := recoveredBlock15Block23Local1.
            recoveredBlock15Block23PC := 57.
        ].
        recoveredBlock15Block23Step = 57 ifTrue: [
            recoveredBlock15Block23Stack2 := recoveredLocal2.
            recoveredBlock15Block23PC := 60.
        ].
        recoveredBlock15Block23Step = 60 ifTrue: [
            recoveredBlock15Block23Stack1 := (recoveredBlock15Block23Stack1) offsetIntoSample: (recoveredBlock15Block23Stack2).
            recoveredBlock15Block23PC := 62.
        ].
        recoveredBlock15Block23Step = 62 ifTrue: [
            recoveredBlock15Block23PC := 76.
        ].
        recoveredBlock15Block23Step = 66 ifTrue: [
            recoveredBlock15Block23Stack1 := format.
            recoveredBlock15Block23PC := 68.
        ].
        recoveredBlock15Block23Step = 68 ifTrue: [
            recoveredBlock15Block23Stack2 := SCFamosFoundNoBuffer.
            recoveredBlock15Block23PC := 70.
        ].
        recoveredBlock15Block23Step = 70 ifTrue: [
            recoveredBlock15Block23Stack3 := recoveredBlock15Block23Arg1.
            recoveredBlock15Block23PC := 71.
        ].
        recoveredBlock15Block23Step = 71 ifTrue: [
            recoveredBlock15Block23Stack3 := (recoveredBlock15Block23Stack3) accessClass.
            recoveredBlock15Block23PC := 72.
        ].
        recoveredBlock15Block23Step = 72 ifTrue: [
            recoveredBlock15Block23Stack3 := (recoveredBlock15Block23Stack3) printString.
            recoveredBlock15Block23PC := 74.
        ].
        recoveredBlock15Block23Step = 74 ifTrue: [
            recoveredBlock15Block23Stack1 := (recoveredBlock15Block23Stack1) logError: (recoveredBlock15Block23Stack2) word: (recoveredBlock15Block23Stack3).
            recoveredBlock15Block23PC := 76.
        ].
        recoveredBlock15Block23Step = 76 ifTrue: [
            recoveredBlock15Block23Result := recoveredBlock15Block23Stack1.
            recoveredBlock15Block23Done := true.
        ].
    ].
    recoveredBlock15Block23Result
].
    (recoveredBlock15Value0) do: (recoveredBlock15Value1).
    recoveredBlock15Value2 := recoveredBlock15Arg1.
    recoveredBlock15Value3 := (recoveredBlock15Value2) first.
    recoveredBlock15Value4 := (recoveredBlock15Value3) accessClass.
    recoveredBlock15Value5 := (recoveredBlock15Value4) recordByteSize.
    recoveredBlock15Local1 := recoveredBlock15Value5.
    recoveredBlock15Value6 := recoveredLocal2.
    recoveredBlock15Value7 := recoveredArg1.
    recoveredBlock15Value8 := recoveredBlock15Local1.
    recoveredBlock15Value9 := (recoveredBlock15Value7) * (recoveredBlock15Value8).
    recoveredBlock15Value10 := (recoveredBlock15Value6) + (recoveredBlock15Value9).
    recoveredLocal2 := recoveredBlock15Value10.
    recoveredBlock15Value11 := recoveredLocal1.
    recoveredBlock15Value12 := recoveredBlock15Local1.
    recoveredBlock15Value13 := (recoveredBlock15Value11) + (recoveredBlock15Value12).
    recoveredBlock15Value14 := recoveredBlock15Value13.
    recoveredLocal1 := recoveredBlock15Value14.
    recoveredBlock15Value13
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2049c8ec; bytecode file offset 0xd991c8"
!FamosChannelFile methodsFor: 'recovered'!
getRecordSizeIn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredLocal2 := 0.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) accessClass.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) class.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isDBBitItem.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 37] ifFalse: [recoveredBlock12PC := 26].
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) fieldSize.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) + (recoveredBlock12Stack2).
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredLocal2 := recoveredBlock12Stack2.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50Stack4 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := nil.
            recoveredBlock50PC := 57.
        ].
        recoveredBlock50Step = 57 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Arg1.
            recoveredBlock50PC := 58.
        ].
        recoveredBlock50Step = 58 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) accessClass.
            recoveredBlock50PC := 59.
        ].
        recoveredBlock50Step = 59 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) class.
            recoveredBlock50PC := 60.
        ].
        recoveredBlock50Step = 60 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) isDBBitItem.
            recoveredBlock50PC := 61.
        ].
        recoveredBlock50Step = 61 ifTrue: [
            (recoveredBlock50Stack2) ifTrue: [recoveredBlock50PC := 64] ifFalse: [recoveredBlock50PC := 97].
        ].
        recoveredBlock50Step = 64 ifTrue: [
            recoveredBlock50PC := 65.
        ].
        recoveredBlock50Step = 65 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Arg1.
            recoveredBlock50PC := 66.
        ].
        recoveredBlock50Step = 66 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) offsetInData.
            recoveredBlock50PC := 68.
        ].
        recoveredBlock50Step = 68 ifTrue: [
            recoveredBlock50Stack2 := 0.
            recoveredBlock50PC := 70.
        ].
        recoveredBlock50Step = 70 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) = (recoveredBlock50Stack2).
            recoveredBlock50PC := 71.
        ].
        recoveredBlock50Step = 71 ifTrue: [
            (recoveredBlock50Stack1) ifTrue: [recoveredBlock50PC := 74] ifFalse: [recoveredBlock50PC := 88].
        ].
        recoveredBlock50Step = 74 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal1.
            recoveredBlock50PC := 77.
        ].
        recoveredBlock50Step = 77 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Arg1.
            recoveredBlock50PC := 78.
        ].
        recoveredBlock50Step = 78 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) accessClass.
            recoveredBlock50PC := 79.
        ].
        recoveredBlock50Step = 79 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) offset.
            recoveredBlock50PC := 81.
        ].
        recoveredBlock50Step = 81 ifTrue: [
            recoveredBlock50Stack3 := recoveredBlock50Arg1.
            recoveredBlock50PC := 82.
        ].
        recoveredBlock50Step = 82 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) at: (recoveredBlock50Stack2) put: (recoveredBlock50Stack3).
            recoveredBlock50PC := 84.
        ].
        recoveredBlock50Step = 84 ifTrue: [
            recoveredBlock50PC := 97.
        ].
        recoveredBlock50Step = 88 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal1.
            recoveredBlock50PC := 91.
        ].
        recoveredBlock50Step = 91 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Arg1.
            recoveredBlock50PC := 92.
        ].
        recoveredBlock50Step = 92 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) offsetInData.
            recoveredBlock50PC := 94.
        ].
        recoveredBlock50Step = 94 ifTrue: [
            recoveredBlock50Stack3 := recoveredBlock50Arg1.
            recoveredBlock50PC := 95.
        ].
        recoveredBlock50Step = 95 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) at: (recoveredBlock50Stack2) put: (recoveredBlock50Stack3).
            recoveredBlock50PC := 97.
        ].
        recoveredBlock50Step = 97 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack1.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := [:recoveredBlock103Arg1 | 
    | recoveredBlock103Stack0 recoveredBlock103Stack1 recoveredBlock103Stack2 recoveredBlock103Stack3 recoveredBlock103PC recoveredBlock103Step recoveredBlock103Done recoveredBlock103Result |
    recoveredBlock103Stack0 := self.
    recoveredBlock103PC := 110.
    recoveredBlock103Done := false.
    [recoveredBlock103Done not] whileTrue: [
        recoveredBlock103Step := recoveredBlock103PC.
        recoveredBlock103Step = 110 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 111.
        ].
        recoveredBlock103Step = 111 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Arg1.
            recoveredBlock103PC := 112.
        ].
        recoveredBlock103Step = 112 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) accessClass.
            recoveredBlock103PC := 113.
        ].
        recoveredBlock103Step = 113 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) class.
            recoveredBlock103PC := 114.
        ].
        recoveredBlock103Step = 114 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) isDBBitItem.
            recoveredBlock103PC := 115.
        ].
        recoveredBlock103Step = 115 ifTrue: [
            (recoveredBlock103Stack2) ifTrue: [recoveredBlock103PC := 118] ifFalse: [recoveredBlock103PC := 129].
        ].
        recoveredBlock103Step = 118 ifTrue: [
            recoveredBlock103PC := 119.
        ].
        recoveredBlock103Step = 119 ifTrue: [
            recoveredBlock103Stack1 := recoveredLocal2.
            recoveredBlock103PC := 122.
        ].
        recoveredBlock103Step = 122 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Arg1.
            recoveredBlock103PC := 123.
        ].
        recoveredBlock103Step = 123 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) fieldSize.
            recoveredBlock103PC := 124.
        ].
        recoveredBlock103Step = 124 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) + (recoveredBlock103Stack2).
            recoveredBlock103PC := 125.
        ].
        recoveredBlock103Step = 125 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Stack1.
            recoveredBlock103PC := 126.
        ].
        recoveredBlock103Step = 126 ifTrue: [
            recoveredLocal2 := recoveredBlock103Stack2.
            recoveredBlock103PC := 129.
        ].
        recoveredBlock103Step = 129 ifTrue: [
            recoveredBlock103Result := recoveredBlock103Stack1.
            recoveredBlock103Done := true.
        ].
    ].
    recoveredBlock103Result
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !


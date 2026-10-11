"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20041e78; bytecode file offset 0x93e7d8"
!FamosFormat methodsFor: 'recovered'!
indexTimeChannel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := keyGroup.
    recoveredValue1 := (recoveredValue0) indexTimeChannel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041e9c; bytecode file offset 0x93e7d8"
!FamosFormat methodsFor: 'recovered'!
numberOfGroups
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := keyGroup.
    recoveredValue1 := (recoveredValue0) numberOfGroups.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041ea8; bytecode file offset 0x93e7d8"
!FamosFormat methodsFor: 'recovered'!
getGroups
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := keyGroup.
    recoveredValue1 := (recoveredValue0) dataFieldDefinitions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041ecc; bytecode file offset 0x93e7d8"
!FamosFormat methodsFor: 'recovered'!
getComment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := keyGroup.
    recoveredValue1 := (recoveredValue0) getComment.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006c57c; bytecode file offset 0x9692b0"
!FamosFormat methodsFor: 'recovered'!
processor
    | recoveredValue0 |
    recoveredValue0 := processor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cc50; bytecode file offset 0x969c04"
!FamosFormat methodsFor: 'recovered'!
keyGroup
    | recoveredValue0 |
    recoveredValue0 := keyGroup.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d6cc; bytecode file offset 0x96a390"
!FamosFormat methodsFor: 'recovered'!
selectBinaries
    | recoveredValue0 |
    recoveredValue0 := binaries.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d96c; bytecode file offset 0x96a390"
!FamosFormat methodsFor: 'recovered'!
binaries
    | recoveredValue0 |
    recoveredValue0 := binaries.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006db50; bytecode file offset 0x96a9dc"
!FamosFormat methodsFor: 'recovered'!
bufferDefinitions
    | recoveredValue0 |
    recoveredValue0 := bufferDefinitions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dcf8; bytecode file offset 0x96a9dc"
!FamosFormat methodsFor: 'recovered'!
selectBuffers
    | recoveredValue0 |
    recoveredValue0 := bufferDefinitions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072758; bytecode file offset 0x96f1c4"
!FamosFormat methodsFor: 'recovered'!
currentVersion
    ^2
! !

"ASDBase.ic method 0x20077594; bytecode file offset 0x9757c8"
!FamosFormat methodsFor: 'recovered'!
isFamosFormat
    ^true
! !

"ASDBase.ic method 0x2008247c; bytecode file offset 0x97ed58"
!FamosFormat methodsFor: 'recovered'!
indexTimeChannel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := keyGroup.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) indexTimeChannel: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20092f38; bytecode file offset 0x98f814"
!FamosFormat methodsFor: 'recovered'!
setGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := keyGroup.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) setGroup: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092f5c; bytecode file offset 0x98f814"
!FamosFormat methodsFor: 'recovered'!
setComment: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := keyGroup.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) setComment: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a2fd4; bytecode file offset 0x99f88c"
!FamosFormat methodsFor: 'recovered'!
addBinary: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := binaries.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^true
! !

"ASDBase.ic method 0x200acac0; bytecode file offset 0x9a9378"
!FamosFormat methodsFor: 'recovered'!
startOfData: recoveredArg1 group: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := keyGroup.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) startOfData: (recoveredValue1) group: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c30bc; bytecode file offset 0x9bfde0"
!FamosFormat methodsFor: 'recovered'!
processor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    processor := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c38f0; bytecode file offset 0x9c058c"
!FamosFormat methodsFor: 'recovered'!
keyGroup: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    keyGroup := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c44d8; bytecode file offset 0x9c11bc"
!FamosFormat methodsFor: 'recovered'!
bufferDefinitions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bufferDefinitions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e124c; bytecode file offset 0x9ddb0c"
!FamosFormat methodsFor: 'recovered'!
removeGroups
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := keyGroup.
    (recoveredValue0) removeGroups.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    bufferDefinitions := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200e9a2c; bytecode file offset 0x9e62ec"
!FamosFormat methodsFor: 'recovered'!
putFieldsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putProcessorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) endChar.
    (recoveredValue1) nextPut: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200faf08; bytecode file offset 0x9f7824"
!FamosFormat methodsFor: 'recovered'!
putProcessorIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := processor.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20159abc; bytecode file offset 0xa56378"
!FamosFormat methodsFor: 'recovered'!
nameTable
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super nameTable.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := keyGroup.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameTable.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017a6cc; bytecode file offset 0xa76f8c"
!FamosFormat methodsFor: 'recovered'!
minimumFileSize
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := binaries.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOrNil.
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) startingPosition.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018304c; bytecode file offset 0xa7f910"
!FamosFormat methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    processor := nil.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    binaries := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    bufferDefinitions := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x201ad268; bytecode file offset 0xaa9b34"
!FamosFormat methodsFor: 'recovered'!
getKeyBytes
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    (self) putFieldsIn: (recoveredValue2).
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue3) contents.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue6) + (-2).
    keyLength := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201f9cb4; bytecode file offset 0xaf6588"
!FamosFormat methodsFor: 'recovered'!
addDescriptionInfo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := keyGroup.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) description.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) findChannelByName: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) description.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) getUnit.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) trimNull.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) unit: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'KW'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022c260; bytecode file offset 0xb28b2c"
!FamosFormat methodsFor: 'recovered'!
addBufferDefinition: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := bufferDefinitions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOrNil.
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := bufferDefinitions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) buffers.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) buffers.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) buffers.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) noOfBuffers: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20260ab4; bytecode file offset 0xb5d394"
!FamosFormat methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := keyGroup.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataFieldDefinitions.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) components.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [:block280dfb54Arg1 | 
    | block280dfb54Value0 block280dfb54Value1 |
    block280dfb54Value0 := block280dfb54Arg1.
    block280dfb54Value1 := (block280dfb54Value0) isNil.
    block280dfb54Value1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := '!!!!!!!!!!!!!!!! components nil !!!!!!!!!!!!'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            super printOn: (recoveredStack1).
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

"ASDBase.ic method 0x20285428; bytecode file offset 0xb81cec"
!FamosFormat methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super putIn: (recoveredValue0).
    recoveredValue1 := keyGroup.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) putIn: (recoveredValue2).
    recoveredValue3 := bufferDefinitions.
    recoveredValue4 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := recoveredArg1.
    recoveredBlock20Value2 := (recoveredBlock20Value0) putIn: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) putSubKeysIn: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20298908; bytecode file offset 0xb951d4"
!FamosFormat methodsFor: 'recovered'!
changeToChannelLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := bufferDefinitions.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) changeToChannelLayout: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := binaries.
    recoveredValue3 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := recoveredArg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) changeToChannelLayout: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := keyGroup.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) changeToChannelLayout: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20298918; bytecode file offset 0xb951d4"
!FamosFormat methodsFor: 'recovered'!
changeToRecordLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := bufferDefinitions.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) changeToRecordLayout: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := binaries.
    recoveredValue3 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := recoveredArg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) changeToRecordLayout: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := keyGroup.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) changeToRecordLayout: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x202b3b5c; bytecode file offset 0xbb0428"
!FamosFormat methodsFor: 'recovered'!
minimizeSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super minimizeSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := binaries.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            binaries := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := bufferDefinitions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) minimizeSize.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := binaries.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block280e4ce4Arg1 | 
    | block280e4ce4Value0 block280e4ce4Value1 |
    block280e4ce4Value0 := block280e4ce4Arg1.
    block280e4ce4Value1 := (block280e4ce4Value0) minimizeSize.
    block280e4ce4Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := bufferDefinitions.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:block280e4d08Arg1 | 
    | block280e4d08Value0 block280e4d08Value1 |
    block280e4d08Value0 := block280e4d08Arg1.
    block280e4d08Value1 := (block280e4d08Value0) minimizeSize.
    block280e4d08Value1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := keyGroup.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) minimizeSize.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cfa4c; bytecode file offset 0xbcc324"
!FamosFormat methodsFor: 'recovered'!
setBinaryPosition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := binaries.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) writePosition.
    (recoveredValue2) writePosition: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) position.
    (recoveredValue1) position: (recoveredValue6).
    recoveredValue7 := bufferDefinitions.
    recoveredValue8 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := (recoveredBlock18Value0) buffers.
    recoveredBlock18Value2 := [:recoveredBlock18Block27Arg1 | 
    | recoveredBlock18Block27Value0 recoveredBlock18Block27Value1 recoveredBlock18Block27Value2 recoveredBlock18Block27Value3 recoveredBlock18Block27Value4 |
    recoveredBlock18Block27Value0 := recoveredBlock18Block27Arg1.
    recoveredBlock18Block27Value1 := (recoveredBlock18Block27Value0) sampleIndex.
    recoveredBlock18Block27Value2 := binaries.
    recoveredBlock18Block27Value3 := (recoveredBlock18Block27Value2) first.
    recoveredBlock18Block27Value4 := (recoveredBlock18Block27Value1) value: (recoveredBlock18Block27Value3).
    recoveredBlock18Block27Value4
].
    recoveredBlock18Value3 := (recoveredBlock18Value1) do: (recoveredBlock18Value2).
    recoveredBlock18Value3
].
    (recoveredValue7) do: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x202f7e1c; bytecode file offset 0xbf46ec"
!FamosFormat methodsFor: 'recovered'!
putHeaderExtentIn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := FamosBinaryData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexReference.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := FamosComponentPackInfo.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexReference.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := FamosBuffer.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexReference.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := $ .
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 32] ifFalse: [recoveredPC := 48]] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fd68c; bytecode file offset 0xbf9f5c"
!FamosFormat methodsFor: 'recovered'!
updateHeader: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := keyGroup.
    (recoveredValue0) readyFlag: (true).
    recoveredValue1 := keyGroup.
    recoveredValue2 := (recoveredValue1) selectGroupBuffers.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg1.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) offsetIntoSample.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) - (recoveredBlock12Stack2).
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack1.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) used.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack3 := 0.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) = (recoveredBlock12Stack3).
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 34] ifFalse: [recoveredBlock12PC := 50].
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg1.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) offsetIntoSample.
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) - (recoveredBlock12Stack2).
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack1.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Local1.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            (recoveredBlock12Stack2) size: (recoveredBlock12Stack3).
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local1.
            recoveredBlock12PC := 48.
        ].
        recoveredBlock12Step = 48 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) used: (recoveredBlock12Stack2).
            recoveredBlock12PC := 50.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20319470; bytecode file offset 0xc15d44"
!FamosFormat methodsFor: 'recovered'!
checkConsistency
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectMissingReferences.
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
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := SCFamosMissingReferences.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) printString.
    recoveredBlock13Value3 := (self) logError: (recoveredBlock13Value0) word: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectMultipleReferences.
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
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 |
    recoveredBlock39Value0 := SCFamosMultipleReferences.
    recoveredBlock39Value1 := recoveredBlock39Arg1.
    recoveredBlock39Value2 := (recoveredBlock39Value1) printString.
    recoveredBlock39Value3 := (self) logError: (recoveredBlock39Value0) word: (recoveredBlock39Value2).
    recoveredBlock39Value3
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203917e0; bytecode file offset 0xc8e0bc"
!FamosFormat methodsFor: 'recovered'!
selectBufferFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) selectBuffers.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) buffers.
    recoveredBlock11Value2 := [:recoveredBlock11Block20Arg1 | 
    | recoveredBlock11Block20Value0 recoveredBlock11Block20Value1 recoveredBlock11Block20Value2 recoveredBlock11Block20Value3 recoveredBlock11Block20Value4 recoveredBlock11Block20Value5 recoveredBlock11Block20Value6 |
    recoveredBlock11Block20Value0 := recoveredBlock11Block20Arg1.
    recoveredBlock11Block20Value1 := (recoveredBlock11Block20Value0) bufferReference.
    recoveredBlock11Block20Value2 := (recoveredBlock11Block20Value1) value.
    recoveredBlock11Block20Value3 := (recoveredBlock11Block20Value2) first.
    recoveredBlock11Block20Value4 := (recoveredBlock11Block20Value3) accessObject.
    recoveredBlock11Block20Value5 := [:recoveredBlock11Block20Block35Arg1 | 
    | recoveredBlock11Block20Block35Stack0 recoveredBlock11Block20Block35Stack1 recoveredBlock11Block20Block35Stack2 recoveredBlock11Block20Block35Stack3 recoveredBlock11Block20Block35Stack4 recoveredBlock11Block20Block35PC recoveredBlock11Block20Block35Step recoveredBlock11Block20Block35Done recoveredBlock11Block20Block35Result |
    recoveredBlock11Block20Block35Stack0 := self.
    recoveredBlock11Block20Block35PC := 42.
    recoveredBlock11Block20Block35Done := false.
    [recoveredBlock11Block20Block35Done not] whileTrue: [
        recoveredBlock11Block20Block35Step := recoveredBlock11Block20Block35PC.
        recoveredBlock11Block20Block35Step = 42 ifTrue: [
            recoveredBlock11Block20Block35Stack1 := nil.
            recoveredBlock11Block20Block35PC := 43.
        ].
        recoveredBlock11Block20Block35Step = 43 ifTrue: [
            recoveredBlock11Block20Block35Stack2 := recoveredBlock11Block20Block35Arg1.
            recoveredBlock11Block20Block35PC := 44.
        ].
        recoveredBlock11Block20Block35Step = 44 ifTrue: [
            recoveredBlock11Block20Block35Stack3 := recoveredArg1.
            recoveredBlock11Block20Block35PC := 47.
        ].
        recoveredBlock11Block20Block35Step = 47 ifTrue: [
            recoveredBlock11Block20Block35Stack2 := (recoveredBlock11Block20Block35Stack2) = (recoveredBlock11Block20Block35Stack3).
            recoveredBlock11Block20Block35PC := 48.
        ].
        recoveredBlock11Block20Block35Step = 48 ifTrue: [
            (recoveredBlock11Block20Block35Stack2) ifTrue: [recoveredBlock11Block20Block35PC := 52] ifFalse: [recoveredBlock11Block20Block35PC := 57].
        ].
        recoveredBlock11Block20Block35Step = 52 ifTrue: [
            recoveredBlock11Block20Block35PC := 53.
        ].
        recoveredBlock11Block20Block35Step = 53 ifTrue: [
            recoveredBlock11Block20Block35Stack1 := recoveredBlock11Block20Arg1.
            recoveredBlock11Block20Block35PC := 56.
        ].
        recoveredBlock11Block20Block35Step = 56 ifTrue: [
            ^recoveredBlock11Block20Block35Stack1
        ].
        recoveredBlock11Block20Block35Step = 57 ifTrue: [
            recoveredBlock11Block20Block35Result := recoveredBlock11Block20Block35Stack1.
            recoveredBlock11Block20Block35Done := true.
        ].
    ].
    recoveredBlock11Block20Block35Result
].
    recoveredBlock11Block20Value6 := (recoveredBlock11Block20Value4) do: (recoveredBlock11Block20Value5).
    recoveredBlock11Block20Value6
].
    recoveredBlock11Value3 := (recoveredBlock11Value1) do: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := ETASError.
    recoveredValue4 := SCFamosFoundNoBuffer.
    (recoveredValue3) create: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203d42d0; bytecode file offset 0xcd0bb0"
!FamosFormat methodsFor: 'recovered'!
createAccess
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectComponents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280f7890Arg1 | 
    | block280f7890Value0 block280f7890Value1 block280f7890Value2 |
    block280f7890Value0 := block280f7890Arg1.
    block280f7890Value1 := (block280f7890Value0) analogDigital.
    block280f7890Value2 := (block280f7890Value1) = (1).
    block280f7890Value2
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:block280f78b4Arg1 | 
    | block280f78b4Value0 block280f78b4Value1 block280f78b4Value2 |
    block280f78b4Value0 := block280f78b4Arg1.
    block280f78b4Value1 := (block280f78b4Value0) analogDigital.
    block280f78b4Value2 := (block280f78b4Value1) = (2).
    block280f78b4Value2
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:block280f78d8Arg1 | 
    | block280f78d8Value0 block280f78d8Value1 |
    block280f78d8Value0 := block280f78d8Arg1.
    block280f78d8Value1 := (block280f78d8Value0) createByteAccess.
    block280f78d8Value1
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 |
    recoveredBlock64Value0 := recoveredLocal1.
    recoveredBlock64Value1 := recoveredBlock64Arg1.
    recoveredBlock64Value2 := (recoveredBlock64Value1) createBitAccess.
    recoveredBlock64Value3 := (recoveredBlock64Value0) addAll: (recoveredBlock64Value2).
    recoveredBlock64Value3
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d8aac; bytecode file offset 0xcd538c"
!FamosFormat methodsFor: 'recovered'!
updateChannelHeader: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := subKeys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280f7d10Arg1 | 
    | block280f7d10Value0 block280f7d10Value1 |
    block280f7d10Value0 := block280f7d10Arg1.
    block280f7d10Value1 := (block280f7d10Value0) readyFlag: (true).
    block280f7d10Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectBuffers.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := (recoveredBlock24Value0) buffers.
    recoveredBlock24Value2 := [:recoveredBlock24Block33Arg1 | 
    | recoveredBlock24Block33Value0 recoveredBlock24Block33Value1 recoveredBlock24Block33Value2 recoveredBlock24Block33Value3 recoveredBlock24Block33Value4 recoveredBlock24Block33Value5 recoveredBlock24Block33Value6 recoveredBlock24Block33Value7 recoveredBlock24Block33Value8 recoveredBlock24Block33Value9 recoveredBlock24Block33Value10 recoveredBlock24Block33Value11 recoveredBlock24Block33Value12 recoveredBlock24Block33Value13 recoveredBlock24Block33Value14 |
    recoveredBlock24Block33Value0 := recoveredBlock24Block33Arg1.
    recoveredBlock24Block33Value1 := (recoveredBlock24Block33Value0) bufferReference.
    recoveredBlock24Block33Value2 := (recoveredBlock24Block33Value1) value.
    recoveredBlock24Block33Value3 := (recoveredBlock24Block33Value2) first.
    recoveredBlock24Block33Value4 := (recoveredBlock24Block33Value3) size.
    recoveredBlock24Block33Value5 := recoveredArg1.
    recoveredBlock24Block33Value6 := (recoveredBlock24Block33Value4) * (recoveredBlock24Block33Value5).
    recoveredLocal2 := recoveredBlock24Block33Value6.
    recoveredBlock24Block33Value7 := recoveredBlock24Block33Arg1.
    recoveredBlock24Block33Value8 := recoveredBlock24Block33Value7.
    recoveredBlock24Block33Value9 := recoveredLocal2.
    (recoveredBlock24Block33Value8) size: (recoveredBlock24Block33Value9).
    recoveredBlock24Block33Value10 := recoveredLocal2.
    (recoveredBlock24Block33Value7) used: (recoveredBlock24Block33Value10).
    recoveredBlock24Block33Value11 := recoveredLocal1.
    recoveredBlock24Block33Value12 := recoveredLocal2.
    recoveredBlock24Block33Value13 := (recoveredBlock24Block33Value11) + (recoveredBlock24Block33Value12).
    recoveredBlock24Block33Value14 := recoveredBlock24Block33Value13.
    recoveredLocal1 := recoveredBlock24Block33Value14.
    recoveredBlock24Block33Value13
].
    recoveredBlock24Value3 := (recoveredBlock24Value1) do: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044e514; bytecode file offset 0xd4ae14"
!FamosFormat methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super getFrom: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := version.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentVersion.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := SCFamosWrongVersion.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := version.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := ' !!= '.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) currentVersion.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) word: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
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
            recoveredStack0 := (recoveredStack0) getValueFrom: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            processor := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) parse: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := keyGroup.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataFieldDefinitions.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:block280ff340Arg1 | 
    | block280ff340Value0 block280ff340Value1 block280ff340Value2 |
    block280ff340Value0 := block280ff340Arg1.
    block280ff340Value1 := (block280ff340Value0) bufferDefinition.
    block280ff340Value2 := (block280ff340Value1) isNil.
    block280ff340Value2
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Value0 recoveredBlock69Value1 recoveredBlock69Value2 |
    recoveredBlock69Value0 := bufferDefinitions.
    recoveredBlock69Value1 := [:recoveredBlock69Block78Arg1 | 
    | recoveredBlock69Block78Stack0 recoveredBlock69Block78Stack1 recoveredBlock69Block78Stack2 recoveredBlock69Block78Stack3 recoveredBlock69Block78Stack4 recoveredBlock69Block78PC recoveredBlock69Block78Step recoveredBlock69Block78Done recoveredBlock69Block78Result |
    recoveredBlock69Block78Stack0 := nil.
    recoveredBlock69Block78PC := 84.
    recoveredBlock69Block78Done := false.
    [recoveredBlock69Block78Done not] whileTrue: [
        recoveredBlock69Block78Step := recoveredBlock69Block78PC.
        recoveredBlock69Block78Step = 84 ifTrue: [
            recoveredBlock69Block78Stack1 := nil.
            recoveredBlock69Block78PC := 85.
        ].
        recoveredBlock69Block78Step = 85 ifTrue: [
            recoveredBlock69Block78Stack2 := recoveredBlock69Block78Arg1.
            recoveredBlock69Block78PC := 86.
        ].
        recoveredBlock69Block78Step = 86 ifTrue: [
            recoveredBlock69Block78Stack2 := (recoveredBlock69Block78Stack2) bufferReferences.
            recoveredBlock69Block78PC := 88.
        ].
        recoveredBlock69Block78Step = 88 ifTrue: [
            recoveredBlock69Block78Stack3 := recoveredBlock69Arg1.
            recoveredBlock69Block78PC := 91.
        ].
        recoveredBlock69Block78Step = 91 ifTrue: [
            recoveredBlock69Block78Stack3 := (recoveredBlock69Block78Stack3) bufferReferences.
            recoveredBlock69Block78PC := 93.
        ].
        recoveredBlock69Block78Step = 93 ifTrue: [
            recoveredBlock69Block78Stack2 := (recoveredBlock69Block78Stack2) includesAny: (recoveredBlock69Block78Stack3).
            recoveredBlock69Block78PC := 95.
        ].
        recoveredBlock69Block78Step = 95 ifTrue: [
            (recoveredBlock69Block78Stack2) ifTrue: [recoveredBlock69Block78PC := 98] ifFalse: [recoveredBlock69Block78PC := 105].
        ].
        recoveredBlock69Block78Step = 98 ifTrue: [
            recoveredBlock69Block78PC := 99.
        ].
        recoveredBlock69Block78Step = 99 ifTrue: [
            recoveredBlock69Block78Stack1 := recoveredBlock69Arg1.
            recoveredBlock69Block78PC := 102.
        ].
        recoveredBlock69Block78Step = 102 ifTrue: [
            recoveredBlock69Block78Stack2 := recoveredBlock69Block78Arg1.
            recoveredBlock69Block78PC := 103.
        ].
        recoveredBlock69Block78Step = 103 ifTrue: [
            recoveredBlock69Block78Stack1 := (recoveredBlock69Block78Stack1) bufferDefinition: (recoveredBlock69Block78Stack2).
            recoveredBlock69Block78PC := 105.
        ].
        recoveredBlock69Block78Step = 105 ifTrue: [
            recoveredBlock69Block78Result := recoveredBlock69Block78Stack1.
            recoveredBlock69Block78Done := true.
        ].
    ].
    recoveredBlock69Block78Result
].
    recoveredBlock69Value2 := (recoveredBlock69Value0) do: (recoveredBlock69Value1).
    recoveredBlock69Value2
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c5cd8; bytecode file offset 0xdc25c8"
!FamosFormat methodsFor: 'recovered'!
addGroupFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := bufferDefinitions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastOrNil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMaxBufferIndex.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) buffers.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) endOfBuffer.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) bufferDefinitions.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 recoveredBlock42Value3 recoveredBlock42Value4 recoveredBlock42Value5 recoveredBlock42Value6 recoveredBlock42Value7 recoveredBlock42Value8 recoveredBlock42Value9 recoveredBlock42Value10 |
    recoveredBlock42Value0 := recoveredBlock42Arg1.
    recoveredBlock42Value1 := (recoveredBlock42Value0) copyObjectGraph.
    recoveredBlock42Value2 := recoveredBlock42Value1.
    recoveredLocal6 := recoveredBlock42Value2.
    (self) addBufferDefinition: (recoveredBlock42Value1).
    recoveredBlock42Value3 := recoveredLocal6.
    recoveredBlock42Value4 := recoveredLocal5.
    recoveredBlock42Value5 := (recoveredBlock42Value3) addGroupFrom: (recoveredBlock42Value4).
    recoveredLocal2 := recoveredBlock42Value5.
    recoveredBlock42Value6 := keyGroup.
    recoveredBlock42Value7 := recoveredArg1.
    recoveredBlock42Value8 := (recoveredBlock42Value7) keyGroup.
    recoveredBlock42Value9 := recoveredLocal2.
    recoveredBlock42Value10 := (recoveredBlock42Value6) addGroupFrom: (recoveredBlock42Value8) bufferDefinition: (recoveredBlock42Value9).
    recoveredBlock42Value10
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) buffers.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := (recoveredStack3) buffers.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack3) offsetIntoSample: (recoveredStack4).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 104] ifFalse: [recoveredPC := 149]] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 145] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20551820; bytecode file offset 0xe4e12c"
!FamosFormat methodsFor: 'recovered'!
createRecordAccess
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := keyGroup.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRecordAccess.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Local1 recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal4.
            recoveredBlock26PC := 35.
        ].
        recoveredBlock26Step = 35 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) offsetInData.
            recoveredBlock26PC := 38.
        ].
        recoveredBlock26Step = 38 ifTrue: [
            recoveredBlock26Stack3 := [
    | block2810f594Value0 block2810f594Value1 |
    block2810f594Value0 := OrderedCollection.
    block2810f594Value1 := (block2810f594Value0) new.
    block2810f594Value1
].
            recoveredBlock26PC := 40.
        ].
        recoveredBlock26Step = 40 ifTrue: [
            recoveredBlock26PC := 48.
        ].
        recoveredBlock26Step = 48 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) at: (recoveredBlock26Stack2) ifAbsentPut: (recoveredBlock26Stack3).
            recoveredBlock26PC := 50.
        ].
        recoveredBlock26Step = 50 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack1.
            recoveredBlock26PC := 51.
        ].
        recoveredBlock26Step = 51 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local1.
            recoveredBlock26PC := 52.
        ].
        recoveredBlock26Step = 52 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 53.
        ].
        recoveredBlock26Step = 53 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) add: (recoveredBlock26Stack2).
            recoveredBlock26PC := 55.
        ].
        recoveredBlock26Step = 55 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Local1 recoveredBlock61Local2 recoveredBlock61Stack0 recoveredBlock61Stack1 recoveredBlock61Stack2 recoveredBlock61Stack3 recoveredBlock61Stack4 recoveredBlock61Stack5 recoveredBlock61PC recoveredBlock61Step recoveredBlock61Done recoveredBlock61Result |
    recoveredBlock61Stack0 := self.
    recoveredBlock61PC := 68.
    recoveredBlock61Done := false.
    [recoveredBlock61Done not] whileTrue: [
        recoveredBlock61Step := recoveredBlock61PC.
        recoveredBlock61Step = 68 ifTrue: [
            recoveredBlock61Stack1 := nil.
            recoveredBlock61PC := 69.
        ].
        recoveredBlock61Step = 69 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg1.
            recoveredBlock61PC := 70.
        ].
        recoveredBlock61Step = 70 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) size.
            recoveredBlock61PC := 72.
        ].
        recoveredBlock61Step = 72 ifTrue: [
            recoveredBlock61Stack3 := 1.
            recoveredBlock61PC := 74.
        ].
        recoveredBlock61Step = 74 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) > (recoveredBlock61Stack3).
            recoveredBlock61PC := 75.
        ].
        recoveredBlock61Step = 75 ifTrue: [
            (recoveredBlock61Stack2) ifTrue: [recoveredBlock61PC := 78] ifFalse: [recoveredBlock61PC := 143].
        ].
        recoveredBlock61Step = 78 ifTrue: [
            recoveredBlock61PC := 79.
        ].
        recoveredBlock61Step = 79 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Arg1.
            recoveredBlock61PC := 80.
        ].
        recoveredBlock61Step = 80 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) first.
            recoveredBlock61PC := 82.
        ].
        recoveredBlock61Step = 82 ifTrue: [
            recoveredBlock61Local2 := recoveredBlock61Stack1.
            recoveredBlock61PC := 83.
        ].
        recoveredBlock61Step = 83 ifTrue: [
            recoveredBlock61Stack1 := 1.
            recoveredBlock61PC := 85.
        ].
        recoveredBlock61Step = 85 ifTrue: [
            recoveredBlock61Local1 := recoveredBlock61Stack1.
            recoveredBlock61PC := 86.
        ].
        recoveredBlock61Step = 86 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Arg1.
            recoveredBlock61PC := 87.
        ].
        recoveredBlock61Step = 87 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) size.
            recoveredBlock61PC := 89.
        ].
        recoveredBlock61Step = 89 ifTrue: [
            recoveredBlock61PC := 129.
        ].
        recoveredBlock61Step = 92 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Local2.
            recoveredBlock61PC := 93.
        ].
        recoveredBlock61Step = 93 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) accessClass.
            recoveredBlock61PC := 95.
        ].
        recoveredBlock61Step = 95 ifTrue: [
            recoveredBlock61Stack3 := recoveredBlock61Arg1.
            recoveredBlock61PC := 96.
        ].
        recoveredBlock61Step = 96 ifTrue: [
            recoveredBlock61Stack4 := recoveredBlock61Local1.
            recoveredBlock61PC := 97.
        ].
        recoveredBlock61Step = 97 ifTrue: [
            recoveredBlock61Stack3 := (recoveredBlock61Stack3) at: (recoveredBlock61Stack4).
            recoveredBlock61PC := 99.
        ].
        recoveredBlock61Step = 99 ifTrue: [
            recoveredBlock61Stack3 := (recoveredBlock61Stack3) accessClass.
            recoveredBlock61PC := 101.
        ].
        recoveredBlock61Step = 101 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) = (recoveredBlock61Stack3).
            recoveredBlock61PC := 102.
        ].
        recoveredBlock61Step = 102 ifTrue: [
            (recoveredBlock61Stack2) ifTrue: [recoveredBlock61PC := 106] ifFalse: [recoveredBlock61PC := 129].
        ].
        recoveredBlock61Step = 106 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Local2.
            recoveredBlock61PC := 107.
        ].
        recoveredBlock61Step = 107 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) distanceToNext.
            recoveredBlock61PC := 109.
        ].
        recoveredBlock61Step = 109 ifTrue: [
            recoveredBlock61Stack3 := recoveredBlock61Arg1.
            recoveredBlock61PC := 110.
        ].
        recoveredBlock61Step = 110 ifTrue: [
            recoveredBlock61Stack4 := recoveredBlock61Local1.
            recoveredBlock61PC := 111.
        ].
        recoveredBlock61Step = 111 ifTrue: [
            recoveredBlock61Stack3 := (recoveredBlock61Stack3) at: (recoveredBlock61Stack4).
            recoveredBlock61PC := 113.
        ].
        recoveredBlock61Step = 113 ifTrue: [
            recoveredBlock61Stack3 := (recoveredBlock61Stack3) distanceToNext.
            recoveredBlock61PC := 115.
        ].
        recoveredBlock61Step = 115 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) = (recoveredBlock61Stack3).
            recoveredBlock61PC := 116.
        ].
        recoveredBlock61Step = 116 ifTrue: [
            (recoveredBlock61Stack2) ifTrue: [recoveredBlock61PC := 120] ifFalse: [recoveredBlock61PC := 129].
        ].
        recoveredBlock61Step = 120 ifTrue: [
            recoveredBlock61Stack2 := recoveredLocal2.
            recoveredBlock61PC := 123.
        ].
        recoveredBlock61Step = 123 ifTrue: [
            recoveredBlock61Stack3 := recoveredBlock61Arg1.
            recoveredBlock61PC := 124.
        ].
        recoveredBlock61Step = 124 ifTrue: [
            recoveredBlock61Stack4 := recoveredBlock61Local1.
            recoveredBlock61PC := 125.
        ].
        recoveredBlock61Step = 125 ifTrue: [
            recoveredBlock61Stack3 := (recoveredBlock61Stack3) at: (recoveredBlock61Stack4).
            recoveredBlock61PC := 127.
        ].
        recoveredBlock61Step = 127 ifTrue: [
            (recoveredBlock61Stack2) remove: (recoveredBlock61Stack3).
            recoveredBlock61PC := 129.
        ].
        recoveredBlock61Step = 129 ifTrue: [
            (recoveredBlock61Stack1 isInteger and: [recoveredBlock61Local1 isInteger]) ifTrue: [(recoveredBlock61Local1 + 1 <= recoveredBlock61Stack1) ifTrue: [recoveredBlock61Local1 := recoveredBlock61Local1 + 1. recoveredBlock61PC := 92] ifFalse: [recoveredBlock61Local1 := nil. recoveredBlock61PC := 143]] ifFalse: [recoveredBlock61PC := 133].
        ].
        recoveredBlock61Step = 133 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Stack1.
            recoveredBlock61PC := 134.
        ].
        recoveredBlock61Step = 134 ifTrue: [
            recoveredBlock61Stack3 := recoveredBlock61Local1.
            recoveredBlock61PC := 135.
        ].
        recoveredBlock61Step = 135 ifTrue: [
            recoveredBlock61Stack3 := (recoveredBlock61Stack3) + (1).
            recoveredBlock61PC := 136.
        ].
        recoveredBlock61Step = 136 ifTrue: [
            recoveredBlock61Stack4 := recoveredBlock61Stack3.
            recoveredBlock61PC := 137.
        ].
        recoveredBlock61Step = 137 ifTrue: [
            recoveredBlock61Local1 := recoveredBlock61Stack4.
            recoveredBlock61PC := 138.
        ].
        recoveredBlock61Step = 138 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) < (recoveredBlock61Stack3).
            recoveredBlock61PC := 139.
        ].
        recoveredBlock61Step = 139 ifTrue: [
            (recoveredBlock61Stack2) ifTrue: [recoveredBlock61PC := 141] ifFalse: [recoveredBlock61PC := 92].
        ].
        recoveredBlock61Step = 141 ifTrue: [
            recoveredBlock61Stack2 := nil.
            recoveredBlock61PC := 142.
        ].
        recoveredBlock61Step = 142 ifTrue: [
            recoveredBlock61Local1 := recoveredBlock61Stack2.
            recoveredBlock61PC := 143.
        ].
        recoveredBlock61Step = 143 ifTrue: [
            recoveredBlock61Result := recoveredBlock61Stack1.
            recoveredBlock61Done := true.
        ].
    ].
    recoveredBlock61Result
].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := [:recoveredBlock149Arg1 | 
    | recoveredBlock149Stack0 recoveredBlock149Stack1 recoveredBlock149Stack2 recoveredBlock149Stack3 recoveredBlock149Stack4 recoveredBlock149PC recoveredBlock149Step recoveredBlock149Done recoveredBlock149Result |
    recoveredBlock149Stack0 := self.
    recoveredBlock149PC := 156.
    recoveredBlock149Done := false.
    [recoveredBlock149Done not] whileTrue: [
        recoveredBlock149Step := recoveredBlock149PC.
        recoveredBlock149Step = 156 ifTrue: [
            recoveredBlock149Stack1 := nil.
            recoveredBlock149PC := 157.
        ].
        recoveredBlock149Step = 157 ifTrue: [
            recoveredBlock149Stack2 := recoveredBlock149Arg1.
            recoveredBlock149PC := 158.
        ].
        recoveredBlock149Step = 158 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) itemIndex.
            recoveredBlock149PC := 160.
        ].
        recoveredBlock149Step = 160 ifTrue: [
            recoveredBlock149Stack3 := -1.
            recoveredBlock149PC := 162.
        ].
        recoveredBlock149Step = 162 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) ~= (recoveredBlock149Stack3).
            recoveredBlock149PC := 163.
        ].
        recoveredBlock149Step = 163 ifTrue: [
            (recoveredBlock149Stack2) ifTrue: [recoveredBlock149PC := 166] ifFalse: [recoveredBlock149PC := 184].
        ].
        recoveredBlock149Step = 166 ifTrue: [
            recoveredBlock149PC := 167.
        ].
        recoveredBlock149Step = 167 ifTrue: [
            recoveredBlock149Stack1 := [:block2810f5b8Arg1 :block2810f5b8Arg2 | 
    | block2810f5b8Value0 block2810f5b8Value1 block2810f5b8Value2 block2810f5b8Value3 block2810f5b8Value4 |
    block2810f5b8Value0 := block2810f5b8Arg1.
    block2810f5b8Value1 := (block2810f5b8Value0) itemIndex.
    block2810f5b8Value2 := block2810f5b8Arg2.
    block2810f5b8Value3 := (block2810f5b8Value2) itemIndex.
    block2810f5b8Value4 := (block2810f5b8Value1) < (block2810f5b8Value3).
    block2810f5b8Value4
].
            recoveredBlock149PC := 169.
        ].
        recoveredBlock149Step = 169 ifTrue: [
            recoveredBlock149PC := 180.
        ].
        recoveredBlock149Step = 180 ifTrue: [
            recoveredBlock149Stack2 := recoveredBlock149Stack1.
            recoveredBlock149PC := 181.
        ].
        recoveredBlock149Step = 181 ifTrue: [
            recoveredLocal1 := recoveredBlock149Stack2.
            recoveredBlock149PC := 184.
        ].
        recoveredBlock149Step = 184 ifTrue: [
            recoveredBlock149Result := recoveredBlock149Stack1.
            recoveredBlock149Done := true.
        ].
    ].
    recoveredBlock149Result
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


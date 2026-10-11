"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20040dec; bytecode file offset 0x93d83c"
!MDFFileFormat methodsFor: 'recovered'!
getComment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := header.
    recoveredValue1 := (recoveredValue0) getComment.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040fdc; bytecode file offset 0x93dd2c"
!MDFFileFormat methodsFor: 'recovered'!
indexTimeChannel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := groups.
    recoveredValue1 := (recoveredValue0) indexTimeChannel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041060; bytecode file offset 0x93dd2c"
!MDFFileFormat methodsFor: 'recovered'!
numberOfGroups
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := groups.
    recoveredValue1 := (recoveredValue0) numberOfGroups.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041240; bytecode file offset 0x93dd2c"
!MDFFileFormat methodsFor: 'recovered'!
sampleRate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := groups.
    recoveredValue1 := (recoveredValue0) sampleRate.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041288; bytecode file offset 0x93dd2c"
!MDFFileFormat methodsFor: 'recovered'!
minimumFileSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := groups.
    recoveredValue1 := (recoveredValue0) dataPtr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041384; bytecode file offset 0x93dd2c"
!MDFFileFormat methodsFor: 'recovered'!
sampleRateString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := groups.
    recoveredValue1 := (recoveredValue0) sampleRateString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065be4; bytecode file offset 0x963428"
!MDFFileFormat methodsFor: 'recovered'!
fileId
    | recoveredValue0 |
    recoveredValue0 := fileId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006763c; bytecode file offset 0x9646f8"
!MDFFileFormat methodsFor: 'recovered'!
header
    | recoveredValue0 |
    recoveredValue0 := header.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200692c4; bytecode file offset 0x965b90"
!MDFFileFormat methodsFor: 'recovered'!
groups
    | recoveredValue0 |
    recoveredValue0 := groups.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20081f00; bytecode file offset 0x97e9b0"
!MDFFileFormat methodsFor: 'recovered'!
setUnits: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := groups.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) setUnits: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081f90; bytecode file offset 0x97e9b0"
!MDFFileFormat methodsFor: 'recovered'!
findChannelByName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := groups.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) findChannelByName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008202c; bytecode file offset 0x97e9b0"
!MDFFileFormat methodsFor: 'recovered'!
indexTimeChannel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := groups.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) indexTimeChannel: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20082050; bytecode file offset 0x97e9b0"
!MDFFileFormat methodsFor: 'recovered'!
sampleRate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := groups.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) sampleRate: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20082f8c; bytecode file offset 0x97f888"
!MDFFileFormat methodsFor: 'recovered'!
setGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    groups := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082fb4; bytecode file offset 0x97f888"
!MDFFileFormat methodsFor: 'recovered'!
groups: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    groups := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200924e4; bytecode file offset 0x98ef64"
!MDFFileFormat methodsFor: 'recovered'!
putFileIdIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := fileId.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) putIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092914; bytecode file offset 0x98f298"
!MDFFileFormat methodsFor: 'recovered'!
putHeaderIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := header.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) putIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092980; bytecode file offset 0x98f298"
!MDFFileFormat methodsFor: 'recovered'!
setComment: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := header.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) setComment: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fbb44; bytecode file offset 0x9f8404"
!MDFFileFormat methodsFor: 'recovered'!
getFileIdFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := MDFFileId.
    recoveredValue1 := (recoveredValue0) create.
    fileId := recoveredValue1.
    recoveredValue2 := fileId.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200fbb8c; bytecode file offset 0x9f844c"
!MDFFileFormat methodsFor: 'recovered'!
getHeaderFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := MDFHeader.
    recoveredValue1 := (recoveredValue0) create.
    header := recoveredValue1.
    recoveredValue2 := header.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2011d858; bytecode file offset 0xa1a2f8"
!MDFFileFormat methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putFileIdIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putHeaderIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putGroupsIn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2011e0b4; bytecode file offset 0xa1a974"
!MDFFileFormat methodsFor: 'recovered'!
putGroupsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := groups.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) putIn: (recoveredValue1).
    recoveredValue2 := header.
    recoveredValue3 := groups.
    recoveredValue4 := (recoveredValue3) offset.
    (recoveredValue2) groupPtr: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2014c780; bytecode file offset 0xa49044"
!MDFFileFormat methodsFor: 'recovered'!
initializeDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := MDFFileId.
    recoveredValue1 := (recoveredValue0) createDefault.
    fileId := recoveredValue1.
    recoveredValue2 := MDFDataGroup.
    recoveredValue3 := (recoveredValue2) createDefault.
    groups := recoveredValue3.
    recoveredValue4 := MDFHeader.
    recoveredValue5 := (recoveredValue4) createDefault.
    header := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x2018c3a4; bytecode file offset 0xa88c68"
!MDFFileFormat methodsFor: 'recovered'!
allGroupsFlat
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := groups.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) next.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a9d20; bytecode file offset 0xaa65e0"
!MDFFileFormat methodsFor: 'recovered'!
overWriteCheck
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := fileId.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue2) overWriteCheck: (recoveredValue3).
    recoveredValue4 := header.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) overWriteCheck: (recoveredValue5).
    recoveredValue6 := groups.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) overWriteCheck: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201d93b0; bytecode file offset 0xad5c6c"
!MDFFileFormat methodsFor: 'recovered'!
setNextGroup: recoveredArg1
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
            recoveredStack2 := nil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) next: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := groups.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            groups := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := groups.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) setNextGroup: (recoveredStack2) index: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ed598; bytecode file offset 0xae9e6c"
!MDFFileFormat methodsFor: 'recovered'!
addDescriptionInfo: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) description.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) findChannelByName: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) description.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) getUnit.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) trimNull.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) unit: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'KW'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) type: (recoveredStack1).
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

"ASDBase.ic method 0x20271104; bytecode file offset 0xb6d9c8"
!MDFFileFormat methodsFor: 'recovered'!
getFrom: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) getFileIdFrom: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getHeaderFrom: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) getGroupsFrom: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20292680; bytecode file offset 0xb8ef5c"
!MDFFileFormat methodsFor: 'recovered'!
getGroupsFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := header.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) groupPtr.
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
            recoveredStack2 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := DBFileError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := SCItemFileNoGroupDefinition.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'MDFFile'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := MDFDataGroup.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            groups := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := groups.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFrom: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


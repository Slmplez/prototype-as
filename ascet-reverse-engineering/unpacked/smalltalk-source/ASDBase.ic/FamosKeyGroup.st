"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004209c; bytecode file offset 0x93e978"
!FamosKeyGroup methodsFor: 'recovered'!
numberOfGroups
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dataFieldDefinitions.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005df58; bytecode file offset 0x95a824"
!FamosKeyGroup methodsFor: 'recovered'!
selectGroupBuffers
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dataFieldDefinitions.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) selectGroupBuffers.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005df68; bytecode file offset 0x95a824"
!FamosKeyGroup methodsFor: 'recovered'!
indexTimeChannel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dataFieldDefinitions.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) indexTimeChannel.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005eb9c; bytecode file offset 0x95b484"
!FamosKeyGroup methodsFor: 'recovered'!
getCommentObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) textNamed: ('comment').
    recoveredValue1 := (recoveredValue0) firstOrNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006c3d4; bytecode file offset 0x9692b0"
!FamosKeyGroup methodsFor: 'recovered'!
readyFlag
    | recoveredValue0 |
    recoveredValue0 := readyFlag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d4e4; bytecode file offset 0x96a390"
!FamosKeyGroup methodsFor: 'recovered'!
groupDefinitions
    | recoveredValue0 |
    recoveredValue0 := groupDefinitions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dd90; bytecode file offset 0x96a9dc"
!FamosKeyGroup methodsFor: 'recovered'!
dataFieldDefinitions
    | recoveredValue0 |
    recoveredValue0 := dataFieldDefinitions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075b84; bytecode file offset 0x9757c8"
!FamosKeyGroup methodsFor: 'recovered'!
isFamosKeyGroup
    ^true
! !

"ASDBase.ic method 0x20089958; bytecode file offset 0x986214"
!FamosKeyGroup methodsFor: 'recovered'!
removeGroups
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    dataFieldDefinitions := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20092de8; bytecode file offset 0x98f718"
!FamosKeyGroup methodsFor: 'recovered'!
addUserDefined: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := userDefineds.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092fa4; bytecode file offset 0x98f8a4"
!FamosKeyGroup methodsFor: 'recovered'!
addGroupDefinition: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := groupDefinitions.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009301c; bytecode file offset 0x98f8e0"
!FamosKeyGroup methodsFor: 'recovered'!
addDataFieldDefinition: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dataFieldDefinitions.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a291c; bytecode file offset 0x99f1d8"
!FamosKeyGroup methodsFor: 'recovered'!
setGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    dataFieldDefinitions := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b9124; bytecode file offset 0x9b59e4"
!FamosKeyGroup methodsFor: 'recovered'!
addGroupFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := dataFieldDefinitions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) dataFieldDefinitions.
    recoveredValue3 := (recoveredValue2) copyObjectGraph.
    (recoveredValue0) addAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200c346c; bytecode file offset 0x9bfde0"
!FamosKeyGroup methodsFor: 'recovered'!
readyFlag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    readyFlag := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3c20; bytecode file offset 0x9c058c"
!FamosKeyGroup methodsFor: 'recovered'!
dataSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dataSource := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4700; bytecode file offset 0x9c11bc"
!FamosKeyGroup methodsFor: 'recovered'!
dataFieldDefinitions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dataFieldDefinitions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d939c; bytecode file offset 0x9d5d08"
!FamosKeyGroup methodsFor: 'recovered'!
addToSuper: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) parent: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) keyGroup: (self).
    ^true
! !

"ASDBase.ic method 0x200faef8; bytecode file offset 0x9f7824"
!FamosKeyGroup methodsFor: 'recovered'!
putReadyFlagIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := readyFlag.
    (self) putIn: (recoveredValue1) boolean: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20102af0; bytecode file offset 0x9ff3b4"
!FamosKeyGroup methodsFor: 'recovered'!
createRecordAccess
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := dataFieldDefinitions.
    recoveredValue3 := (recoveredValue2) first.
    recoveredValue4 := (recoveredValue3) createRecordAccess.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20102e00; bytecode file offset 0x9ff6cc"
!FamosKeyGroup methodsFor: 'recovered'!
getComment
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCommentObject.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) text.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201105e8; bytecode file offset 0xa0cea4"
!FamosKeyGroup methodsFor: 'recovered'!
createComponentsFrom: recoveredArg1 nameTable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := dataFieldDefinitions.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := groupDefinitions.
    recoveredValue4 := (recoveredValue3) first.
    recoveredValue5 := recoveredArg2.
    (recoveredValue1) createComponentsFrom: (recoveredValue2) group: (recoveredValue4) nameTable: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20141870; bytecode file offset 0xa3e130"
!FamosKeyGroup methodsFor: 'recovered'!
putFieldsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putIn: (recoveredValue0) ones: (1).
    recoveredValue1 := recoveredArg1.
    (self) putReadyFlagIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putEndIn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2018307c; bytecode file offset 0xa7f940"
!FamosKeyGroup methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    readyFlag := nil.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    dataFieldDefinitions := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    groupDefinitions := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20196edc; bytecode file offset 0xa9379c"
!FamosKeyGroup methodsFor: 'recovered'!
startOfData: recoveredArg1 group: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := dataFieldDefinitions.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := dataFieldDefinitions.
    recoveredBlock7Value1 := (recoveredBlock7Value0) first.
    recoveredBlock7Value1
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) startOfData: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201a4110; bytecode file offset 0xaa09d4"
!FamosKeyGroup methodsFor: 'recovered'!
indexTimeChannel: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dataFieldDefinitions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexTimeChannel.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := dataFieldDefinitions.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) clearIndexTimeChannel.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := dataFieldDefinitions.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexTimeChannel: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020f1ec; bytecode file offset 0xb0baa8"
!FamosKeyGroup methodsFor: 'recovered'!
findChannelByName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dataFieldDefinitions.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) findChannelByName: (recoveredBlock6Stack3).
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack3.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 27] ifFalse: [recoveredBlock6PC := 24].
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Local1.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20221d8c; bytecode file offset 0xb1e65c"
!FamosKeyGroup methodsFor: 'recovered'!
addGroupFrom: recoveredArg1 bufferDefinition: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) dataFieldDefinitions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := dataFieldDefinitions.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataFieldDefinitions.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyObjectGraph.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) addGroupFrom: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024bfc0; bytecode file offset 0xb4888c"
!FamosKeyGroup methodsFor: 'recovered'!
changeToChannelLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := dataFieldDefinitions.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) changeToChannelLayout: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := groupDefinitions.
    recoveredValue3 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := recoveredArg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) changeToChannelLayout: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2024bfd0; bytecode file offset 0xb4888c"
!FamosKeyGroup methodsFor: 'recovered'!
changeToRecordLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := dataFieldDefinitions.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) changeToRecordLayout: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := groupDefinitions.
    recoveredValue3 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := recoveredArg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) changeToRecordLayout: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202b3b10; bytecode file offset 0xbb03d8"
!FamosKeyGroup methodsFor: 'recovered'!
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
            recoveredStack0 := groupDefinitions.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) minimizeSize.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := dataFieldDefinitions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) minimizeSize.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := dataSource.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) minimizeSize.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := groupDefinitions.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:block280e4c9cArg1 | 
    | block280e4c9cValue0 block280e4c9cValue1 |
    block280e4c9cValue0 := block280e4c9cArg1.
    block280e4c9cValue1 := (block280e4c9cValue0) minimizeSize.
    block280e4c9cValue1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := dataFieldDefinitions.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:block280e4cc0Arg1 | 
    | block280e4cc0Value0 block280e4cc0Value1 |
    block280e4cc0Value0 := block280e4cc0Arg1.
    block280e4cc0Value1 := (block280e4cc0Value0) minimizeSize.
    block280e4cc0Value1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x20302448; bytecode file offset 0xbfed20"
!FamosKeyGroup methodsFor: 'recovered'!
setComment: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultMeasureCommentSize.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) addBlankTo: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultMeasureCommentSize.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) addBlankTo: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCommentObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := FamosText.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 'comment'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) name: (recoveredStack3) comment: (recoveredStack4) text: (recoveredStack5).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) text: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031d494; bytecode file offset 0xc19d58"
!FamosKeyGroup methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    super putIn: (recoveredValue0).
    recoveredValue1 := dataSource.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) putIn: (recoveredValue2).
    recoveredValue3 := groupDefinitions.
    recoveredValue4 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := recoveredArg1.
    recoveredBlock20Value2 := (recoveredBlock20Value0) putIn: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := dataFieldDefinitions.
    recoveredValue6 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := recoveredArg1.
    recoveredBlock36Value2 := (recoveredBlock36Value0) putIn: (recoveredBlock36Value1).
    recoveredBlock36Value2
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) putSubKeysIn: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x205e739c; bytecode file offset 0xee3cbc"
!FamosKeyGroup methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super getFrom: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) getNextItemFrom: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBoolean: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            readyFlag := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) parse: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataFieldDefinitions.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:block2811ac64Arg1 | 
    | block2811ac64Value0 block2811ac64Value1 block2811ac64Value2 |
    block2811ac64Value0 := block2811ac64Arg1.
    block2811ac64Value1 := (block2811ac64Value0) size.
    block2811ac64Value2 := (block2811ac64Value1) = (1).
    block2811ac64Value2
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataFieldDefinitions.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 388].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataFieldDefinitions.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Value0 recoveredBlock69Value1 recoveredBlock69Value2 recoveredBlock69Value3 recoveredBlock69Value4 recoveredBlock69Value5 |
    recoveredBlock69Value0 := recoveredLocal1.
    recoveredBlock69Value1 := recoveredBlock69Arg1.
    recoveredBlock69Value2 := (recoveredBlock69Value1) type.
    recoveredBlock69Value3 := [
    | recoveredBlock69Block84Value0 recoveredBlock69Block84Value1 recoveredBlock69Block84Value2 |
    recoveredBlock69Block84Value0 := OrderedCollection.
    recoveredBlock69Block84Value1 := recoveredBlock69Arg1.
    recoveredBlock69Block84Value2 := (recoveredBlock69Block84Value0) with: (recoveredBlock69Block84Value1).
    recoveredBlock69Block84Value2
].
    recoveredBlock69Value4 := [:recoveredBlock69Block98Arg1 | 
    | recoveredBlock69Block98Stack0 recoveredBlock69Block98Stack1 recoveredBlock69Block98Stack2 recoveredBlock69Block98Stack3 recoveredBlock69Block98Stack4 recoveredBlock69Block98PC recoveredBlock69Block98Step recoveredBlock69Block98Done recoveredBlock69Block98Result |
    recoveredBlock69Block98Stack0 := nil.
    recoveredBlock69Block98PC := 104.
    recoveredBlock69Block98Done := false.
    [recoveredBlock69Block98Done not] whileTrue: [
        recoveredBlock69Block98Step := recoveredBlock69Block98PC.
        recoveredBlock69Block98Step = 104 ifTrue: [
            recoveredBlock69Block98Stack1 := nil.
            recoveredBlock69Block98PC := 105.
        ].
        recoveredBlock69Block98Step = 105 ifTrue: [
            recoveredBlock69Block98Stack2 := recoveredBlock69Block98Arg1.
            recoveredBlock69Block98PC := 106.
        ].
        recoveredBlock69Block98Step = 106 ifTrue: [
            recoveredBlock69Block98Stack2 := (recoveredBlock69Block98Stack2) first.
            recoveredBlock69Block98PC := 108.
        ].
        recoveredBlock69Block98Step = 108 ifTrue: [
            recoveredBlock69Block98Stack2 := (recoveredBlock69Block98Stack2) triggerTime.
            recoveredBlock69Block98PC := 110.
        ].
        recoveredBlock69Block98Step = 110 ifTrue: [
            recoveredBlock69Block98Stack3 := recoveredBlock69Arg1.
            recoveredBlock69Block98PC := 113.
        ].
        recoveredBlock69Block98Step = 113 ifTrue: [
            recoveredBlock69Block98Stack3 := (recoveredBlock69Block98Stack3) triggerTime.
            recoveredBlock69Block98PC := 115.
        ].
        recoveredBlock69Block98Step = 115 ifTrue: [
            recoveredBlock69Block98Stack2 := (recoveredBlock69Block98Stack2) equal: (recoveredBlock69Block98Stack3).
            recoveredBlock69Block98PC := 117.
        ].
        recoveredBlock69Block98Step = 117 ifTrue: [
            (recoveredBlock69Block98Stack2) ifTrue: [recoveredBlock69Block98PC := 120] ifFalse: [recoveredBlock69Block98PC := 143].
        ].
        recoveredBlock69Block98Step = 120 ifTrue: [
            recoveredBlock69Block98Stack2 := recoveredBlock69Block98Arg1.
            recoveredBlock69Block98PC := 121.
        ].
        recoveredBlock69Block98Step = 121 ifTrue: [
            recoveredBlock69Block98Stack2 := (recoveredBlock69Block98Stack2) first.
            recoveredBlock69Block98PC := 123.
        ].
        recoveredBlock69Block98Step = 123 ifTrue: [
            recoveredBlock69Block98Stack2 := (recoveredBlock69Block98Stack2) dataFieldScaling.
            recoveredBlock69Block98PC := 125.
        ].
        recoveredBlock69Block98Step = 125 ifTrue: [
            recoveredBlock69Block98Stack3 := recoveredBlock69Arg1.
            recoveredBlock69Block98PC := 128.
        ].
        recoveredBlock69Block98Step = 128 ifTrue: [
            recoveredBlock69Block98Stack3 := (recoveredBlock69Block98Stack3) dataFieldScaling.
            recoveredBlock69Block98PC := 130.
        ].
        recoveredBlock69Block98Step = 130 ifTrue: [
            recoveredBlock69Block98Stack2 := (recoveredBlock69Block98Stack2) equal: (recoveredBlock69Block98Stack3).
            recoveredBlock69Block98PC := 132.
        ].
        recoveredBlock69Block98Step = 132 ifTrue: [
            (recoveredBlock69Block98Stack2) ifTrue: [recoveredBlock69Block98PC := 136] ifFalse: [recoveredBlock69Block98PC := 143].
        ].
        recoveredBlock69Block98Step = 136 ifTrue: [
            recoveredBlock69Block98PC := 137.
        ].
        recoveredBlock69Block98Step = 137 ifTrue: [
            recoveredBlock69Block98Stack1 := recoveredBlock69Block98Arg1.
            recoveredBlock69Block98PC := 138.
        ].
        recoveredBlock69Block98Step = 138 ifTrue: [
            recoveredBlock69Block98Stack2 := recoveredBlock69Arg1.
            recoveredBlock69Block98PC := 141.
        ].
        recoveredBlock69Block98Step = 141 ifTrue: [
            recoveredBlock69Block98Stack1 := (recoveredBlock69Block98Stack1) add: (recoveredBlock69Block98Stack2).
            recoveredBlock69Block98PC := 143.
        ].
        recoveredBlock69Block98Step = 143 ifTrue: [
            recoveredBlock69Block98Result := recoveredBlock69Block98Stack1.
            recoveredBlock69Block98Done := true.
        ].
    ].
    recoveredBlock69Block98Result
].
    recoveredBlock69Value5 := (recoveredBlock69Value0) at: (recoveredBlock69Value2) ifAbsentPut: (recoveredBlock69Value3) ifPresent: (recoveredBlock69Value4).
    recoveredBlock69Value5
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            dataFieldDefinitions := recoveredStack0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := [:recoveredBlock159Arg1 :recoveredBlock159Arg2 | 
    | recoveredBlock159Local1 recoveredBlock159Local2 recoveredBlock159Stack0 recoveredBlock159Stack1 recoveredBlock159Stack2 recoveredBlock159Stack3 recoveredBlock159Stack4 recoveredBlock159Stack5 recoveredBlock159PC recoveredBlock159Step recoveredBlock159Done recoveredBlock159Result |
    recoveredBlock159Stack0 := self.
    recoveredBlock159PC := 166.
    recoveredBlock159Done := false.
    [recoveredBlock159Done not] whileTrue: [
        recoveredBlock159Step := recoveredBlock159PC.
        recoveredBlock159Step = 166 ifTrue: [
            recoveredBlock159Stack1 := recoveredBlock159Arg2.
            recoveredBlock159PC := 169.
        ].
        recoveredBlock159Step = 169 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) first.
            recoveredBlock159PC := 171.
        ].
        recoveredBlock159Step = 171 ifTrue: [
            recoveredBlock159Local2 := recoveredBlock159Stack1.
            recoveredBlock159PC := 174.
        ].
        recoveredBlock159Step = 174 ifTrue: [
            recoveredBlock159Stack1 := dataFieldDefinitions.
            recoveredBlock159PC := 176.
        ].
        recoveredBlock159Step = 176 ifTrue: [
            recoveredBlock159Stack2 := recoveredBlock159Local2.
            recoveredBlock159PC := 179.
        ].
        recoveredBlock159Step = 179 ifTrue: [
            (recoveredBlock159Stack1) add: (recoveredBlock159Stack2).
            recoveredBlock159PC := 181.
        ].
        recoveredBlock159Step = 181 ifTrue: [
            recoveredBlock159Stack1 := recoveredBlock159Arg2.
            recoveredBlock159PC := 184.
        ].
        recoveredBlock159Step = 184 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) size.
            recoveredBlock159PC := 186.
        ].
        recoveredBlock159Step = 186 ifTrue: [
            recoveredBlock159Stack2 := 1.
            recoveredBlock159PC := 188.
        ].
        recoveredBlock159Step = 188 ifTrue: [
            recoveredBlock159PC := 221.
        ].
        recoveredBlock159Step = 192 ifTrue: [
            recoveredBlock159Local1 := recoveredBlock159Stack3.
            recoveredBlock159PC := 195.
        ].
        recoveredBlock159Step = 195 ifTrue: [
            recoveredBlock159Stack3 := recoveredBlock159Arg2.
            recoveredBlock159PC := 198.
        ].
        recoveredBlock159Step = 198 ifTrue: [
            recoveredBlock159Stack4 := recoveredBlock159Local1.
            recoveredBlock159PC := 201.
        ].
        recoveredBlock159Step = 201 ifTrue: [
            recoveredBlock159Stack3 := (recoveredBlock159Stack3) at: (recoveredBlock159Stack4).
            recoveredBlock159PC := 203.
        ].
        recoveredBlock159Step = 203 ifTrue: [
            recoveredBlock159Stack3 := (recoveredBlock159Stack3) components.
            recoveredBlock159PC := 205.
        ].
        recoveredBlock159Step = 205 ifTrue: [
            recoveredBlock159Stack4 := [:recoveredBlock159Block205Arg1 | 
    | recoveredBlock159Block205Value0 recoveredBlock159Block205Value1 recoveredBlock159Block205Value2 |
    recoveredBlock159Block205Value0 := recoveredBlock159Local2.
    recoveredBlock159Block205Value1 := recoveredBlock159Block205Arg1.
    recoveredBlock159Block205Value2 := (recoveredBlock159Block205Value0) addComponent: (recoveredBlock159Block205Value1).
    recoveredBlock159Block205Value2
].
            recoveredBlock159PC := 219.
        ].
        recoveredBlock159Step = 219 ifTrue: [
            (recoveredBlock159Stack3) do: (recoveredBlock159Stack4).
            recoveredBlock159PC := 221.
        ].
        recoveredBlock159Step = 221 ifTrue: [
            (recoveredBlock159Stack1 isInteger and: [recoveredBlock159Stack2 isInteger]) ifTrue: [(recoveredBlock159Stack2 + 1 <= recoveredBlock159Stack1) ifTrue: [recoveredBlock159Stack2 := recoveredBlock159Stack2 + 1. recoveredBlock159Stack3 := recoveredBlock159Stack2. recoveredBlock159PC := 192] ifFalse: [recoveredBlock159PC := 249]] ifFalse: [recoveredBlock159PC := 224].
        ].
        recoveredBlock159Step = 224 ifTrue: [
            recoveredBlock159Local1 := recoveredBlock159Stack2.
            recoveredBlock159PC := 227.
        ].
        recoveredBlock159Step = 227 ifTrue: [
            recoveredBlock159Stack2 := recoveredBlock159Stack1.
            recoveredBlock159PC := 228.
        ].
        recoveredBlock159Step = 228 ifTrue: [
            recoveredBlock159Stack3 := recoveredBlock159Local1.
            recoveredBlock159PC := 231.
        ].
        recoveredBlock159Step = 231 ifTrue: [
            recoveredBlock159Stack3 := (recoveredBlock159Stack3) + (1).
            recoveredBlock159PC := 232.
        ].
        recoveredBlock159Step = 232 ifTrue: [
            recoveredBlock159Stack4 := recoveredBlock159Stack3.
            recoveredBlock159PC := 233.
        ].
        recoveredBlock159Step = 233 ifTrue: [
            recoveredBlock159Local1 := recoveredBlock159Stack4.
            recoveredBlock159PC := 236.
        ].
        recoveredBlock159Step = 236 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) < (recoveredBlock159Stack3).
            recoveredBlock159PC := 237.
        ].
        recoveredBlock159Step = 237 ifTrue: [
            (recoveredBlock159Stack2) ifTrue: [recoveredBlock159PC := 245] ifFalse: [recoveredBlock159PC := 240].
        ].
        recoveredBlock159Step = 240 ifTrue: [
            recoveredBlock159Stack2 := recoveredBlock159Local1.
            recoveredBlock159PC := 243.
        ].
        recoveredBlock159Step = 243 ifTrue: [
            recoveredBlock159PC := 195.
        ].
        recoveredBlock159Step = 245 ifTrue: [
            recoveredBlock159Stack2 := nil.
            recoveredBlock159PC := 246.
        ].
        recoveredBlock159Step = 246 ifTrue: [
            recoveredBlock159Local1 := recoveredBlock159Stack2.
            recoveredBlock159PC := 249.
        ].
        recoveredBlock159Step = 249 ifTrue: [
            recoveredBlock159PC := 250.
        ].
        recoveredBlock159Step = 250 ifTrue: [
            recoveredBlock159Stack1 := recoveredBlock159Arg2.
            recoveredBlock159PC := 253.
        ].
        recoveredBlock159Step = 253 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) size.
            recoveredBlock159PC := 255.
        ].
        recoveredBlock159Step = 255 ifTrue: [
            recoveredBlock159Stack2 := 1.
            recoveredBlock159PC := 257.
        ].
        recoveredBlock159Step = 257 ifTrue: [
            recoveredBlock159PC := 289.
        ].
        recoveredBlock159Step = 260 ifTrue: [
            recoveredBlock159Local1 := recoveredBlock159Stack3.
            recoveredBlock159PC := 263.
        ].
        recoveredBlock159Step = 263 ifTrue: [
            recoveredBlock159Stack3 := recoveredBlock159Arg2.
            recoveredBlock159PC := 266.
        ].
        recoveredBlock159Step = 266 ifTrue: [
            recoveredBlock159Stack4 := recoveredBlock159Local1.
            recoveredBlock159PC := 269.
        ].
        recoveredBlock159Step = 269 ifTrue: [
            recoveredBlock159Stack3 := (recoveredBlock159Stack3) at: (recoveredBlock159Stack4).
            recoveredBlock159PC := 271.
        ].
        recoveredBlock159Step = 271 ifTrue: [
            recoveredBlock159Stack3 := (recoveredBlock159Stack3) texts.
            recoveredBlock159PC := 273.
        ].
        recoveredBlock159Step = 273 ifTrue: [
            recoveredBlock159Stack4 := [:recoveredBlock159Block273Arg1 | 
    | recoveredBlock159Block273Value0 recoveredBlock159Block273Value1 recoveredBlock159Block273Value2 |
    recoveredBlock159Block273Value0 := recoveredBlock159Local2.
    recoveredBlock159Block273Value1 := recoveredBlock159Block273Arg1.
    recoveredBlock159Block273Value2 := (recoveredBlock159Block273Value0) addComponent: (recoveredBlock159Block273Value1).
    recoveredBlock159Block273Value2
].
            recoveredBlock159PC := 287.
        ].
        recoveredBlock159Step = 287 ifTrue: [
            (recoveredBlock159Stack3) do: (recoveredBlock159Stack4).
            recoveredBlock159PC := 289.
        ].
        recoveredBlock159Step = 289 ifTrue: [
            (recoveredBlock159Stack1 isInteger and: [recoveredBlock159Stack2 isInteger]) ifTrue: [(recoveredBlock159Stack2 + 1 <= recoveredBlock159Stack1) ifTrue: [recoveredBlock159Stack2 := recoveredBlock159Stack2 + 1. recoveredBlock159Stack3 := recoveredBlock159Stack2. recoveredBlock159PC := 260] ifFalse: [recoveredBlock159PC := 317]] ifFalse: [recoveredBlock159PC := 292].
        ].
        recoveredBlock159Step = 292 ifTrue: [
            recoveredBlock159Local1 := recoveredBlock159Stack2.
            recoveredBlock159PC := 295.
        ].
        recoveredBlock159Step = 295 ifTrue: [
            recoveredBlock159Stack2 := recoveredBlock159Stack1.
            recoveredBlock159PC := 296.
        ].
        recoveredBlock159Step = 296 ifTrue: [
            recoveredBlock159Stack3 := recoveredBlock159Local1.
            recoveredBlock159PC := 299.
        ].
        recoveredBlock159Step = 299 ifTrue: [
            recoveredBlock159Stack3 := (recoveredBlock159Stack3) + (1).
            recoveredBlock159PC := 300.
        ].
        recoveredBlock159Step = 300 ifTrue: [
            recoveredBlock159Stack4 := recoveredBlock159Stack3.
            recoveredBlock159PC := 301.
        ].
        recoveredBlock159Step = 301 ifTrue: [
            recoveredBlock159Local1 := recoveredBlock159Stack4.
            recoveredBlock159PC := 304.
        ].
        recoveredBlock159Step = 304 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) < (recoveredBlock159Stack3).
            recoveredBlock159PC := 305.
        ].
        recoveredBlock159Step = 305 ifTrue: [
            (recoveredBlock159Stack2) ifTrue: [recoveredBlock159PC := 313] ifFalse: [recoveredBlock159PC := 308].
        ].
        recoveredBlock159Step = 308 ifTrue: [
            recoveredBlock159Stack2 := recoveredBlock159Local1.
            recoveredBlock159PC := 311.
        ].
        recoveredBlock159Step = 311 ifTrue: [
            recoveredBlock159PC := 263.
        ].
        recoveredBlock159Step = 313 ifTrue: [
            recoveredBlock159Stack2 := nil.
            recoveredBlock159PC := 314.
        ].
        recoveredBlock159Step = 314 ifTrue: [
            recoveredBlock159Local1 := recoveredBlock159Stack2.
            recoveredBlock159PC := 317.
        ].
        recoveredBlock159Step = 317 ifTrue: [
            recoveredBlock159PC := 318.
        ].
        recoveredBlock159Step = 318 ifTrue: [
            recoveredBlock159Stack1 := recoveredBlock159Arg2.
            recoveredBlock159PC := 321.
        ].
        recoveredBlock159Step = 321 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) size.
            recoveredBlock159PC := 323.
        ].
        recoveredBlock159Step = 323 ifTrue: [
            recoveredBlock159Stack2 := 1.
            recoveredBlock159PC := 325.
        ].
        recoveredBlock159Step = 325 ifTrue: [
            recoveredBlock159PC := 357.
        ].
        recoveredBlock159Step = 328 ifTrue: [
            recoveredBlock159Local1 := recoveredBlock159Stack3.
            recoveredBlock159PC := 331.
        ].
        recoveredBlock159Step = 331 ifTrue: [
            recoveredBlock159Stack3 := recoveredBlock159Arg2.
            recoveredBlock159PC := 334.
        ].
        recoveredBlock159Step = 334 ifTrue: [
            recoveredBlock159Stack4 := recoveredBlock159Local1.
            recoveredBlock159PC := 337.
        ].
        recoveredBlock159Step = 337 ifTrue: [
            recoveredBlock159Stack3 := (recoveredBlock159Stack3) at: (recoveredBlock159Stack4).
            recoveredBlock159PC := 339.
        ].
        recoveredBlock159Step = 339 ifTrue: [
            recoveredBlock159Stack3 := (recoveredBlock159Stack3) userDefineds.
            recoveredBlock159PC := 341.
        ].
        recoveredBlock159Step = 341 ifTrue: [
            recoveredBlock159Stack4 := [:recoveredBlock159Block341Arg1 | 
    | recoveredBlock159Block341Value0 recoveredBlock159Block341Value1 recoveredBlock159Block341Value2 |
    recoveredBlock159Block341Value0 := recoveredBlock159Local2.
    recoveredBlock159Block341Value1 := recoveredBlock159Block341Arg1.
    recoveredBlock159Block341Value2 := (recoveredBlock159Block341Value0) addComponent: (recoveredBlock159Block341Value1).
    recoveredBlock159Block341Value2
].
            recoveredBlock159PC := 355.
        ].
        recoveredBlock159Step = 355 ifTrue: [
            (recoveredBlock159Stack3) do: (recoveredBlock159Stack4).
            recoveredBlock159PC := 357.
        ].
        recoveredBlock159Step = 357 ifTrue: [
            (recoveredBlock159Stack1 isInteger and: [recoveredBlock159Stack2 isInteger]) ifTrue: [(recoveredBlock159Stack2 + 1 <= recoveredBlock159Stack1) ifTrue: [recoveredBlock159Stack2 := recoveredBlock159Stack2 + 1. recoveredBlock159Stack3 := recoveredBlock159Stack2. recoveredBlock159PC := 328] ifFalse: [recoveredBlock159PC := 385]] ifFalse: [recoveredBlock159PC := 360].
        ].
        recoveredBlock159Step = 360 ifTrue: [
            recoveredBlock159Local1 := recoveredBlock159Stack2.
            recoveredBlock159PC := 363.
        ].
        recoveredBlock159Step = 363 ifTrue: [
            recoveredBlock159Stack2 := recoveredBlock159Stack1.
            recoveredBlock159PC := 364.
        ].
        recoveredBlock159Step = 364 ifTrue: [
            recoveredBlock159Stack3 := recoveredBlock159Local1.
            recoveredBlock159PC := 367.
        ].
        recoveredBlock159Step = 367 ifTrue: [
            recoveredBlock159Stack3 := (recoveredBlock159Stack3) + (1).
            recoveredBlock159PC := 368.
        ].
        recoveredBlock159Step = 368 ifTrue: [
            recoveredBlock159Stack4 := recoveredBlock159Stack3.
            recoveredBlock159PC := 369.
        ].
        recoveredBlock159Step = 369 ifTrue: [
            recoveredBlock159Local1 := recoveredBlock159Stack4.
            recoveredBlock159PC := 372.
        ].
        recoveredBlock159Step = 372 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) < (recoveredBlock159Stack3).
            recoveredBlock159PC := 373.
        ].
        recoveredBlock159Step = 373 ifTrue: [
            (recoveredBlock159Stack2) ifTrue: [recoveredBlock159PC := 381] ifFalse: [recoveredBlock159PC := 376].
        ].
        recoveredBlock159Step = 376 ifTrue: [
            recoveredBlock159Stack2 := recoveredBlock159Local1.
            recoveredBlock159PC := 379.
        ].
        recoveredBlock159Step = 379 ifTrue: [
            recoveredBlock159PC := 331.
        ].
        recoveredBlock159Step = 381 ifTrue: [
            recoveredBlock159Stack2 := nil.
            recoveredBlock159PC := 382.
        ].
        recoveredBlock159Step = 382 ifTrue: [
            recoveredBlock159Local1 := recoveredBlock159Stack2.
            recoveredBlock159PC := 385.
        ].
        recoveredBlock159Step = 385 ifTrue: [
            recoveredBlock159Result := recoveredBlock159Stack1.
            recoveredBlock159Done := true.
        ].
    ].
    recoveredBlock159Result
].
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


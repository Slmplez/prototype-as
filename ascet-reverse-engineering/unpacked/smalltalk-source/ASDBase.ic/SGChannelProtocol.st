"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017d50; bytecode file offset 0x92209c"
!SGChannelProtocol methodsFor: 'recovered'!
receiveProcessName
    ^'receive'
! !

"ASDBase.ic method 0x20065a7c; bytecode file offset 0x963428"
!SGChannelProtocol methodsFor: 'recovered'!
channelNumber
    | recoveredValue0 |
    recoveredValue0 := channelNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067524; bytecode file offset 0x9646f8"
!SGChannelProtocol methodsFor: 'recovered'!
transmissions
    | recoveredValue0 |
    recoveredValue0 := transmissions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009dc54; bytecode file offset 0x99a578"
!SGChannelProtocol methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) channelNumber.
    recoveredValue1 := (recoveredValue0) printString.
    recoveredValue2 := ('Channel') , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a2eb8; bytecode file offset 0x99f770"
!SGChannelProtocol methodsFor: 'recovered'!
deleteTransmission: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := transmissions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) copyWithout: (recoveredValue1).
    transmissions := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200a42ac; bytecode file offset 0x9a0b70"
!SGChannelProtocol methodsFor: 'recovered'!
sendProcessNameFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) id.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := ('send') , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b89d0; bytecode file offset 0x9b5294"
!SGChannelProtocol methodsFor: 'recovered'!
addTransmission: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := transmissions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) copyWith: (recoveredValue1).
    transmissions := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be81c; bytecode file offset 0x9bb178"
!SGChannelProtocol methodsFor: 'recovered'!
channelNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    channelNumber := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f9df4; bytecode file offset 0x9f6778"
!SGChannelProtocol methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    transmissions := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20104afc; bytecode file offset 0xa01584"
!SGChannelProtocol methodsFor: 'recovered'!
docuInformation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) channelNumber.
    recoveredValue2 := (self) label.
    recoveredValue3 := (self) transmissions.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20104c4c; bytecode file offset 0xa01584"
!SGChannelProtocol methodsFor: 'recovered'!
documentationInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) channelNumber.
    recoveredValue2 := (self) label.
    recoveredValue3 := (self) transmissions.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201951c8; bytecode file offset 0xa91abc"
!SGChannelProtocol methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) label.
    recoveredValue3 := (' "') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('"').
    (recoveredValue1) nextPutAll: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201aff58; bytecode file offset 0xaac824"
!SGChannelProtocol methodsFor: 'recovered'!
usedPacketLayouts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) transmissions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d3d34Arg1 | 
    | block280d3d34Value0 block280d3d34Value1 block280d3d34Value2 |
    block280d3d34Value0 := block280d3d34Arg1.
    block280d3d34Value1 := (block280d3d34Value0) packetLayout.
    block280d3d34Value2 := (block280d3d34Value1) notNil.
    block280d3d34Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280d3d58Arg1 | 
    | block280d3d58Value0 block280d3d58Value1 |
    block280d3d58Value0 := block280d3d58Arg1.
    block280d3d58Value1 := (block280d3d58Value0) packetLayout.
    block280d3d58Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203656dc; bytecode file offset 0xc61fb0"
!SGChannelProtocol methodsFor: 'recovered'!
generateImportsFor: recoveredArg1 messageGeneration: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) transmissions.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := recoveredLocal1.
    recoveredBlock11Value3 := recoveredArg2.
    recoveredBlock11Value4 := (self) generateImportVarsTransmission: (recoveredBlock11Value1) generated: (recoveredBlock11Value2) messageGeneration: (recoveredBlock11Value3).
    recoveredBlock11Value5 := (recoveredBlock11Value0) , (recoveredBlock11Value4).
    recoveredBlock11Value6 := recoveredBlock11Value5.
    recoveredLocal1 := recoveredBlock11Value6.
    recoveredBlock11Value5
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) initVariables.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 |
    recoveredBlock49Value0 := recoveredArg1.
    recoveredBlock49Value1 := recoveredBlock49Arg1.
    recoveredBlock49Value2 := (recoveredBlock49Value0) addInstVar: (recoveredBlock49Value1).
    recoveredBlock49Value2
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x204d6d1c; bytecode file offset 0xdd3618"
!SGChannelProtocol methodsFor: 'recovered'!
inconsistentFields
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) transmissions.
    recoveredValue5 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := (recoveredBlock17Value0) packetLayout.
    recoveredBlock17Value2 := (recoveredBlock17Value1) dataFields.
    recoveredBlock17Value3 := [:recoveredBlock17Block29Arg1 | 
    | recoveredBlock17Block29Local1 recoveredBlock17Block29Stack0 recoveredBlock17Block29Stack1 recoveredBlock17Block29Stack2 recoveredBlock17Block29Stack3 recoveredBlock17Block29Stack4 recoveredBlock17Block29Stack5 recoveredBlock17Block29PC recoveredBlock17Block29Step recoveredBlock17Block29Done recoveredBlock17Block29Result |
    recoveredBlock17Block29Stack0 := nil.
    recoveredBlock17Block29PC := 36.
    recoveredBlock17Block29Done := false.
    [recoveredBlock17Block29Done not] whileTrue: [
        recoveredBlock17Block29Step := recoveredBlock17Block29PC.
        recoveredBlock17Block29Step = 36 ifTrue: [
            recoveredBlock17Block29Stack1 := recoveredLocal1.
            recoveredBlock17Block29PC := 39.
        ].
        recoveredBlock17Block29Step = 39 ifTrue: [
            recoveredBlock17Block29Stack2 := [:recoveredBlock17Block29Block39Arg1 | 
    | recoveredBlock17Block29Block39Stack0 recoveredBlock17Block29Block39Stack1 recoveredBlock17Block29Block39Stack2 recoveredBlock17Block29Block39Stack3 recoveredBlock17Block29Block39Stack4 recoveredBlock17Block29Block39PC recoveredBlock17Block29Block39Step recoveredBlock17Block29Block39Done recoveredBlock17Block29Block39Result |
    recoveredBlock17Block29Block39Stack0 := nil.
    recoveredBlock17Block29Block39PC := 46.
    recoveredBlock17Block29Block39Done := false.
    [recoveredBlock17Block29Block39Done not] whileTrue: [
        recoveredBlock17Block29Block39Step := recoveredBlock17Block29Block39PC.
        recoveredBlock17Block29Block39Step = 46 ifTrue: [
            recoveredBlock17Block29Block39Stack1 := false.
            recoveredBlock17Block29Block39PC := 47.
        ].
        recoveredBlock17Block29Block39Step = 47 ifTrue: [
            recoveredBlock17Block29Block39Stack2 := recoveredBlock17Block29Block39Arg1.
            recoveredBlock17Block29Block39PC := 48.
        ].
        recoveredBlock17Block29Block39Step = 48 ifTrue: [
            recoveredBlock17Block29Block39Stack2 := (recoveredBlock17Block29Block39Stack2) name.
            recoveredBlock17Block29Block39PC := 50.
        ].
        recoveredBlock17Block29Block39Step = 50 ifTrue: [
            recoveredBlock17Block29Block39Stack3 := recoveredBlock17Block29Arg1.
            recoveredBlock17Block29Block39PC := 53.
        ].
        recoveredBlock17Block29Block39Step = 53 ifTrue: [
            recoveredBlock17Block29Block39Stack3 := (recoveredBlock17Block29Block39Stack3) name.
            recoveredBlock17Block29Block39PC := 55.
        ].
        recoveredBlock17Block29Block39Step = 55 ifTrue: [
            recoveredBlock17Block29Block39Stack2 := (recoveredBlock17Block29Block39Stack2) = (recoveredBlock17Block29Block39Stack3).
            recoveredBlock17Block29Block39PC := 56.
        ].
        recoveredBlock17Block29Block39Step = 56 ifTrue: [
            (recoveredBlock17Block29Block39Stack2) ifTrue: [recoveredBlock17Block29Block39PC := 60] ifFalse: [recoveredBlock17Block29Block39PC := 72].
        ].
        recoveredBlock17Block29Block39Step = 60 ifTrue: [
            recoveredBlock17Block29Block39PC := 61.
        ].
        recoveredBlock17Block29Block39Step = 61 ifTrue: [
            recoveredBlock17Block29Block39Stack1 := recoveredBlock17Block29Block39Arg1.
            recoveredBlock17Block29Block39PC := 62.
        ].
        recoveredBlock17Block29Block39Step = 62 ifTrue: [
            recoveredBlock17Block29Block39Stack1 := (recoveredBlock17Block29Block39Stack1) modelType.
            recoveredBlock17Block29Block39PC := 64.
        ].
        recoveredBlock17Block29Block39Step = 64 ifTrue: [
            recoveredBlock17Block29Block39Stack2 := recoveredBlock17Block29Arg1.
            recoveredBlock17Block29Block39PC := 67.
        ].
        recoveredBlock17Block29Block39Step = 67 ifTrue: [
            recoveredBlock17Block29Block39Stack2 := (recoveredBlock17Block29Block39Stack2) modelType.
            recoveredBlock17Block29Block39PC := 69.
        ].
        recoveredBlock17Block29Block39Step = 69 ifTrue: [
            recoveredBlock17Block29Block39Stack1 := (recoveredBlock17Block29Block39Stack1) sameType: (recoveredBlock17Block29Block39Stack2).
            recoveredBlock17Block29Block39PC := 71.
        ].
        recoveredBlock17Block29Block39Step = 71 ifTrue: [
            recoveredBlock17Block29Block39Stack1 := (recoveredBlock17Block29Block39Stack1) not.
            recoveredBlock17Block29Block39PC := 72.
        ].
        recoveredBlock17Block29Block39Step = 72 ifTrue: [
            recoveredBlock17Block29Block39Result := recoveredBlock17Block29Block39Stack1.
            recoveredBlock17Block29Block39Done := true.
        ].
    ].
    recoveredBlock17Block29Block39Result
].
            recoveredBlock17Block29PC := 73.
        ].
        recoveredBlock17Block29Step = 73 ifTrue: [
            recoveredBlock17Block29Stack3 := [].
            recoveredBlock17Block29PC := 75.
        ].
        recoveredBlock17Block29Step = 75 ifTrue: [
            recoveredBlock17Block29Stack1 := (recoveredBlock17Block29Stack1) detect: (recoveredBlock17Block29Stack2) ifNone: (recoveredBlock17Block29Stack3).
            recoveredBlock17Block29PC := 77.
        ].
        recoveredBlock17Block29Step = 77 ifTrue: [
            recoveredBlock17Block29Local1 := recoveredBlock17Block29Stack1.
            recoveredBlock17Block29PC := 80.
        ].
        recoveredBlock17Block29Step = 80 ifTrue: [
            recoveredBlock17Block29Stack1 := recoveredBlock17Block29Local1.
            recoveredBlock17Block29PC := 83.
        ].
        recoveredBlock17Block29Step = 83 ifTrue: [
            (recoveredBlock17Block29Stack1 == nil) ifTrue: [recoveredBlock17Block29PC := 140] ifFalse: [recoveredBlock17Block29PC := 86].
        ].
        recoveredBlock17Block29Step = 86 ifTrue: [
            recoveredBlock17Block29Stack1 := recoveredLocal2.
            recoveredBlock17Block29PC := 89.
        ].
        recoveredBlock17Block29Step = 89 ifTrue: [
            recoveredBlock17Block29Stack2 := recoveredBlock17Block29Arg1.
            recoveredBlock17Block29PC := 92.
        ].
        recoveredBlock17Block29Step = 92 ifTrue: [
            recoveredBlock17Block29Stack2 := (recoveredBlock17Block29Stack2) name.
            recoveredBlock17Block29PC := 94.
        ].
        recoveredBlock17Block29Step = 94 ifTrue: [
            recoveredBlock17Block29Stack1 := (recoveredBlock17Block29Stack1) includesKey: (recoveredBlock17Block29Stack2).
            recoveredBlock17Block29PC := 96.
        ].
        recoveredBlock17Block29Step = 96 ifTrue: [
            (recoveredBlock17Block29Stack1) ifTrue: [recoveredBlock17Block29PC := 121] ifFalse: [recoveredBlock17Block29PC := 100].
        ].
        recoveredBlock17Block29Step = 100 ifTrue: [
            recoveredBlock17Block29Stack1 := recoveredLocal2.
            recoveredBlock17Block29PC := 103.
        ].
        recoveredBlock17Block29Step = 103 ifTrue: [
            recoveredBlock17Block29Stack2 := recoveredBlock17Block29Arg1.
            recoveredBlock17Block29PC := 106.
        ].
        recoveredBlock17Block29Step = 106 ifTrue: [
            recoveredBlock17Block29Stack2 := (recoveredBlock17Block29Stack2) name.
            recoveredBlock17Block29PC := 108.
        ].
        recoveredBlock17Block29Step = 108 ifTrue: [
            recoveredBlock17Block29Stack3 := OrderedCollection.
            recoveredBlock17Block29PC := 110.
        ].
        recoveredBlock17Block29Step = 110 ifTrue: [
            recoveredBlock17Block29Stack4 := recoveredBlock17Block29Local1.
            recoveredBlock17Block29PC := 113.
        ].
        recoveredBlock17Block29Step = 113 ifTrue: [
            recoveredBlock17Block29Stack4 := (recoveredBlock17Block29Stack4) modelType.
            recoveredBlock17Block29PC := 115.
        ].
        recoveredBlock17Block29Step = 115 ifTrue: [
            recoveredBlock17Block29Stack4 := (recoveredBlock17Block29Stack4) printString.
            recoveredBlock17Block29PC := 117.
        ].
        recoveredBlock17Block29Step = 117 ifTrue: [
            recoveredBlock17Block29Stack3 := (recoveredBlock17Block29Stack3) with: (recoveredBlock17Block29Stack4).
            recoveredBlock17Block29PC := 119.
        ].
        recoveredBlock17Block29Step = 119 ifTrue: [
            (recoveredBlock17Block29Stack1) at: (recoveredBlock17Block29Stack2) put: (recoveredBlock17Block29Stack3).
            recoveredBlock17Block29PC := 121.
        ].
        recoveredBlock17Block29Step = 121 ifTrue: [
            recoveredBlock17Block29Stack1 := recoveredLocal2.
            recoveredBlock17Block29PC := 124.
        ].
        recoveredBlock17Block29Step = 124 ifTrue: [
            recoveredBlock17Block29Stack2 := recoveredBlock17Block29Arg1.
            recoveredBlock17Block29PC := 127.
        ].
        recoveredBlock17Block29Step = 127 ifTrue: [
            recoveredBlock17Block29Stack2 := (recoveredBlock17Block29Stack2) name.
            recoveredBlock17Block29PC := 129.
        ].
        recoveredBlock17Block29Step = 129 ifTrue: [
            recoveredBlock17Block29Stack1 := (recoveredBlock17Block29Stack1) at: (recoveredBlock17Block29Stack2).
            recoveredBlock17Block29PC := 131.
        ].
        recoveredBlock17Block29Step = 131 ifTrue: [
            recoveredBlock17Block29Stack2 := recoveredBlock17Block29Arg1.
            recoveredBlock17Block29PC := 134.
        ].
        recoveredBlock17Block29Step = 134 ifTrue: [
            recoveredBlock17Block29Stack2 := (recoveredBlock17Block29Stack2) modelType.
            recoveredBlock17Block29PC := 136.
        ].
        recoveredBlock17Block29Step = 136 ifTrue: [
            recoveredBlock17Block29Stack2 := (recoveredBlock17Block29Stack2) printString.
            recoveredBlock17Block29PC := 138.
        ].
        recoveredBlock17Block29Step = 138 ifTrue: [
            (recoveredBlock17Block29Stack1) add: (recoveredBlock17Block29Stack2).
            recoveredBlock17Block29PC := 140.
        ].
        recoveredBlock17Block29Step = 140 ifTrue: [
            recoveredBlock17Block29Stack1 := recoveredLocal1.
            recoveredBlock17Block29PC := 143.
        ].
        recoveredBlock17Block29Step = 143 ifTrue: [
            recoveredBlock17Block29Stack2 := recoveredBlock17Block29Arg1.
            recoveredBlock17Block29PC := 146.
        ].
        recoveredBlock17Block29Step = 146 ifTrue: [
            recoveredBlock17Block29Stack1 := (recoveredBlock17Block29Stack1) add: (recoveredBlock17Block29Stack2).
            recoveredBlock17Block29PC := 148.
        ].
        recoveredBlock17Block29Step = 148 ifTrue: [
            recoveredBlock17Block29Result := recoveredBlock17Block29Stack1.
            recoveredBlock17Block29Done := true.
        ].
    ].
    recoveredBlock17Block29Result
].
    recoveredBlock17Value4 := (recoveredBlock17Value2) do: (recoveredBlock17Value3).
    recoveredBlock17Value4
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20552a28; bytecode file offset 0xe4f344"
!SGChannelProtocol methodsFor: 'recovered'!
generateImportVarsTransmission: recoveredArg1 generated: recoveredArg2 messageGeneration: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) packetLayout.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) packetLayout.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataFields.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Local1 recoveredBlock27Local2 recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 37.
        ].
        recoveredBlock27Step = 37 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) modelType.
            recoveredBlock27PC := 39.
        ].
        recoveredBlock27Step = 39 ifTrue: [
            recoveredBlock27Local2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 42.
        ].
        recoveredBlock27Step = 42 ifTrue: [
            recoveredBlock27Stack1 := recoveredArg3.
            recoveredBlock27PC := 45.
        ].
        recoveredBlock27Step = 45 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 48] ifFalse: [recoveredBlock27PC := 74].
        ].
        recoveredBlock27Step = 48 ifTrue: [
            recoveredBlock27Stack1 := SGMessageType.
            recoveredBlock27PC := 50.
        ].
        recoveredBlock27Step = 50 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) createDefault.
            recoveredBlock27PC := 52.
        ].
        recoveredBlock27Step = 52 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 55.
        ].
        recoveredBlock27Step = 55 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) modelType.
            recoveredBlock27PC := 57.
        ].
        recoveredBlock27Step = 57 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) basicType: (recoveredBlock27Stack2).
            recoveredBlock27PC := 59.
        ].
        recoveredBlock27Step = 59 ifTrue: [
            recoveredBlock27Local2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 62.
        ].
        recoveredBlock27Step = 62 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local2.
            recoveredBlock27PC := 65.
        ].
        recoveredBlock27Step = 65 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 66.
        ].
        recoveredBlock27Step = 66 ifTrue: [
            (recoveredBlock27Stack2) clearSend.
            recoveredBlock27PC := 68.
        ].
        recoveredBlock27Step = 68 ifTrue: [
            (recoveredBlock27Stack1) clearReceive.
            recoveredBlock27PC := 70.
        ].
        recoveredBlock27Step = 70 ifTrue: [
            recoveredBlock27PC := 82.
        ].
        recoveredBlock27Step = 74 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 77.
        ].
        recoveredBlock27Step = 77 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) modelType.
            recoveredBlock27PC := 79.
        ].
        recoveredBlock27Step = 79 ifTrue: [
            recoveredBlock27Local2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 82.
        ].
        recoveredBlock27Step = 82 ifTrue: [
            recoveredBlock27Stack1 := recoveredArg2.
            recoveredBlock27PC := 85.
        ].
        recoveredBlock27Step = 85 ifTrue: [
            recoveredBlock27Stack2 := [:recoveredBlock27Block85Arg1 | 
    | recoveredBlock27Block85Value0 recoveredBlock27Block85Value1 recoveredBlock27Block85Value2 recoveredBlock27Block85Value3 recoveredBlock27Block85Value4 |
    recoveredBlock27Block85Value0 := recoveredBlock27Block85Arg1.
    recoveredBlock27Block85Value1 := (recoveredBlock27Block85Value0) label.
    recoveredBlock27Block85Value2 := recoveredBlock27Arg1.
    recoveredBlock27Block85Value3 := (recoveredBlock27Block85Value2) name.
    recoveredBlock27Block85Value4 := (recoveredBlock27Block85Value1) = (recoveredBlock27Block85Value3).
    recoveredBlock27Block85Value4
].
            recoveredBlock27PC := 102.
        ].
        recoveredBlock27Step = 102 ifTrue: [
            recoveredBlock27Stack3 := [].
            recoveredBlock27PC := 104.
        ].
        recoveredBlock27Step = 104 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) detect: (recoveredBlock27Stack2) ifNone: (recoveredBlock27Stack3).
            recoveredBlock27PC := 106.
        ].
        recoveredBlock27Step = 106 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack1.
            recoveredBlock27PC := 109.
        ].
        recoveredBlock27Step = 109 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local1.
            recoveredBlock27PC := 112.
        ].
        recoveredBlock27Step = 112 ifTrue: [
            (recoveredBlock27Stack1 ~~ nil) ifTrue: [recoveredBlock27PC := 164] ifFalse: [recoveredBlock27PC := 116].
        ].
        recoveredBlock27Step = 116 ifTrue: [
            recoveredBlock27Stack1 := SGProtocolVariable.
            recoveredBlock27PC := 118.
        ].
        recoveredBlock27Step = 118 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 121.
        ].
        recoveredBlock27Step = 121 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) name.
            recoveredBlock27PC := 123.
        ].
        recoveredBlock27Step = 123 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Local2.
            recoveredBlock27PC := 126.
        ].
        recoveredBlock27Step = 126 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) create: (recoveredBlock27Stack2) sgClass: (recoveredBlock27Stack3).
            recoveredBlock27PC := 128.
        ].
        recoveredBlock27Step = 128 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack1.
            recoveredBlock27PC := 131.
        ].
        recoveredBlock27Step = 131 ifTrue: [
            recoveredBlock27Stack1 := recoveredArg1.
            recoveredBlock27PC := 134.
        ].
        recoveredBlock27Step = 134 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) isSend.
            recoveredBlock27PC := 136.
        ].
        recoveredBlock27Step = 136 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 140] ifFalse: [recoveredBlock27PC := 148].
        ].
        recoveredBlock27Step = 140 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local1.
            recoveredBlock27PC := 143.
        ].
        recoveredBlock27Step = 143 ifTrue: [
            (recoveredBlock27Stack1) setToImported.
            recoveredBlock27PC := 145.
        ].
        recoveredBlock27Step = 145 ifTrue: [
            recoveredBlock27PC := 153.
        ].
        recoveredBlock27Step = 148 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local1.
            recoveredBlock27PC := 151.
        ].
        recoveredBlock27Step = 151 ifTrue: [
            (recoveredBlock27Stack1) setToExported.
            recoveredBlock27PC := 153.
        ].
        recoveredBlock27Step = 153 ifTrue: [
            recoveredBlock27Stack1 := recoveredLocal1.
            recoveredBlock27PC := 156.
        ].
        recoveredBlock27Step = 156 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Local1.
            recoveredBlock27PC := 159.
        ].
        recoveredBlock27Step = 159 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) copyWith: (recoveredBlock27Stack2).
            recoveredBlock27PC := 161.
        ].
        recoveredBlock27Step = 161 ifTrue: [
            recoveredLocal1 := recoveredBlock27Stack1.
            recoveredBlock27PC := 164.
        ].
        recoveredBlock27Step = 164 ifTrue: [
            recoveredBlock27Stack1 := recoveredArg1.
            recoveredBlock27PC := 167.
        ].
        recoveredBlock27Step = 167 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) isSend.
            recoveredBlock27PC := 169.
        ].
        recoveredBlock27Step = 169 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 172] ifFalse: [recoveredBlock27PC := 194].
        ].
        recoveredBlock27Step = 172 ifTrue: [
            recoveredBlock27Stack1 := recoveredArg3.
            recoveredBlock27PC := 175.
        ].
        recoveredBlock27Step = 175 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 178] ifFalse: [recoveredBlock27PC := 185].
        ].
        recoveredBlock27Step = 178 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local1.
            recoveredBlock27PC := 181.
        ].
        recoveredBlock27Step = 181 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) sgClass.
            recoveredBlock27PC := 183.
        ].
        recoveredBlock27Step = 183 ifTrue: [
            (recoveredBlock27Stack1) setReceive.
            recoveredBlock27PC := 185.
        ].
        recoveredBlock27Step = 185 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local1.
            recoveredBlock27PC := 188.
        ].
        recoveredBlock27Step = 188 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) setSetAccessEnabled.
            recoveredBlock27PC := 190.
        ].
        recoveredBlock27Step = 190 ifTrue: [
            recoveredBlock27PC := 218.
        ].
        recoveredBlock27Step = 194 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local1.
            recoveredBlock27PC := 197.
        ].
        recoveredBlock27Step = 197 ifTrue: [
            (recoveredBlock27Stack1) setToExported.
            recoveredBlock27PC := 199.
        ].
        recoveredBlock27Step = 199 ifTrue: [
            recoveredBlock27Stack1 := recoveredArg3.
            recoveredBlock27PC := 202.
        ].
        recoveredBlock27Step = 202 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 206] ifFalse: [recoveredBlock27PC := 213].
        ].
        recoveredBlock27Step = 206 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local1.
            recoveredBlock27PC := 209.
        ].
        recoveredBlock27Step = 209 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) sgClass.
            recoveredBlock27PC := 211.
        ].
        recoveredBlock27Step = 211 ifTrue: [
            (recoveredBlock27Stack1) setSend.
            recoveredBlock27PC := 213.
        ].
        recoveredBlock27Step = 213 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local1.
            recoveredBlock27PC := 216.
        ].
        recoveredBlock27Step = 216 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) setGetAccessEnabled.
            recoveredBlock27PC := 218.
        ].
        recoveredBlock27Step = 218 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


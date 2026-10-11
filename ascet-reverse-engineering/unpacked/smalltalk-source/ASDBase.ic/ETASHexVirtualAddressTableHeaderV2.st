"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008018; bytecode file offset 0x908be4"
!ETASHexVirtualAddressTableHeaderV2 methodsFor: 'recovered'!
alignmentUInt32
    | recoveredValue0 |
    recoveredValue0 := (self) alignment.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004dd60; bytecode file offset 0x94a630"
!ETASHexVirtualAddressTableHeaderV2 methodsFor: 'recovered'!
alignmentUInt16
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (60).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072b18; bytecode file offset 0x96f3cc"
!ETASHexVirtualAddressTableHeaderV2 methodsFor: 'recovered'!
currentVersion
    ^3
! !

"ASDBase.ic method 0x20079058; bytecode file offset 0x97594c"
!ETASHexVirtualAddressTableHeaderV2 methodsFor: 'recovered'!
nameOffset
    ^16
! !

"ASDBase.ic method 0x20084450; bytecode file offset 0x981ca4"
!ETASHexVirtualAddressTableHeaderV2 methodsFor: 'recovered'!
alignmentUInt32: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) alignment: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d978; bytecode file offset 0x98a230"
!ETASHexVirtualAddressTableHeaderV2 methodsFor: 'recovered'!
entrySize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) nameLength.
    recoveredValue1 := (16) + (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008def4; bytecode file offset 0x98a7c4"
!ETASHexVirtualAddressTableHeaderV2 methodsFor: 'recovered'!
alignmentReal32
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (64).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008df78; bytecode file offset 0x98a83c"
!ETASHexVirtualAddressTableHeaderV2 methodsFor: 'recovered'!
alignmentReal64
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (68).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a8414; bytecode file offset 0x9a4ccc"
!ETASHexVirtualAddressTableHeaderV2 methodsFor: 'recovered'!
alignmentUInt16: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (60) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d8060; bytecode file offset 0x9d4918"
!ETASHexVirtualAddressTableHeaderV2 methodsFor: 'recovered'!
alignmentReal32: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (64) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d807c; bytecode file offset 0x9d4934"
!ETASHexVirtualAddressTableHeaderV2 methodsFor: 'recovered'!
alignmentReal64: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (68) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200dbc50; bytecode file offset 0x9d850c"
!ETASHexVirtualAddressTableHeaderV2 methodsFor: 'recovered'!
addressTable: recoveredArg1 arraySize: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (12).
    recoveredValue3 := (self) addressAligned: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) uint32At: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x202d7ac4; bytecode file offset 0xbd43a8"
!ETASHexVirtualAddressTableHeaderV2 methodsFor: 'recovered'!
checkVersion
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) version.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentVersion.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) pattern.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := ' version mismatch current ( '.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentVersion.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := ') , read ('.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) version.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := ') '.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203734e0; bytecode file offset 0xc6fdac"
!ETASHexVirtualAddressTableHeaderV2 methodsFor: 'recovered'!
calculateBitsAddress: recoveredArg1 type: recoveredArg2 size: recoveredArg3 in: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := $b.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := $m.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 4294901760.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := 65535.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := (recoveredStack4) bitAnd: (recoveredStack5).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack6 := 4294901760.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := (recoveredStack5) bitAnd: (recoveredStack6).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack6 := 16.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := (recoveredStack5) >> (recoveredStack6).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack6 := 8.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack6 := recoveredArg4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) calculateBitsAddress: (recoveredStack2) type: (recoveredStack3) size: (recoveredStack4) wordSize: (recoveredStack5) in: (recoveredStack6).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := (recoveredStack5) wordSizeForBits.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack6 := recoveredArg4.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) calculateBitsAddress: (recoveredStack2) type: (recoveredStack3) size: (recoveredStack4) wordSize: (recoveredStack5) in: (recoveredStack6).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2053bd10; bytecode file offset 0xe3860c"
!ETASHexVirtualAddressTableHeaderV2 methodsFor: 'recovered'!
calculateBitsAddress: recoveredArg1 type: recoveredArg2 size: recoveredArg3 wordSize: recoveredArg4 in: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := $b.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := $m.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) halt.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 recoveredBlock57Value4 recoveredBlock57Value5 |
    recoveredBlock57Value0 := recoveredArg4.
    recoveredBlock57Value1 := (recoveredBlock57Value0) min: (8).
    recoveredBlock57Value2 := (self) bitoffsetStart: (recoveredBlock57Value1).
    recoveredLocal1 := recoveredBlock57Value2.
    recoveredBlock57Value3 := OrderedCollection.
    recoveredBlock57Value4 := recoveredArg3.
    recoveredBlock57Value5 := (recoveredBlock57Value3) with: (recoveredBlock57Value4).
    recoveredBlock57Value5
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := [:recoveredBlock82Arg1 | 
    | recoveredBlock82Stack0 recoveredBlock82Stack1 recoveredBlock82Stack2 recoveredBlock82Stack3 recoveredBlock82Stack4 recoveredBlock82Stack5 recoveredBlock82Stack6 recoveredBlock82Stack7 recoveredBlock82PC recoveredBlock82Step recoveredBlock82Done recoveredBlock82Result |
    recoveredBlock82Stack0 := self.
    recoveredBlock82PC := 88.
    recoveredBlock82Done := false.
    [recoveredBlock82Done not] whileTrue: [
        recoveredBlock82Step := recoveredBlock82PC.
        recoveredBlock82Step = 88 ifTrue: [
            recoveredBlock82Stack1 := recoveredBlock82Arg1.
            recoveredBlock82PC := 89.
        ].
        recoveredBlock82Step = 89 ifTrue: [
            recoveredBlock82Stack1 := (recoveredBlock82Stack1) sum.
            recoveredBlock82PC := 91.
        ].
        recoveredBlock82Step = 91 ifTrue: [
            recoveredLocal1 := recoveredBlock82Stack1.
            recoveredBlock82PC := 94.
        ].
        recoveredBlock82Step = 94 ifTrue: [
            recoveredBlock82Stack1 := recoveredLocal1.
            recoveredBlock82PC := 97.
        ].
        recoveredBlock82Step = 97 ifTrue: [
            recoveredBlock82Stack2 := recoveredArg4.
            recoveredBlock82PC := 100.
        ].
        recoveredBlock82Step = 100 ifTrue: [
            recoveredBlock82Stack3 := 8.
            recoveredBlock82PC := 102.
        ].
        recoveredBlock82Step = 102 ifTrue: [
            recoveredBlock82Stack2 := (recoveredBlock82Stack2) min: (recoveredBlock82Stack3).
            recoveredBlock82PC := 103.
        ].
        recoveredBlock82Step = 103 ifTrue: [
            recoveredBlock82Stack1 := (recoveredBlock82Stack1) >= (recoveredBlock82Stack2).
            recoveredBlock82PC := 104.
        ].
        recoveredBlock82Step = 104 ifTrue: [
            (recoveredBlock82Stack1) ifTrue: [recoveredBlock82PC := 108] ifFalse: [recoveredBlock82PC := 151].
        ].
        recoveredBlock82Step = 108 ifTrue: [
            recoveredBlock82Stack1 := SGMonitorStreamDummy.
            recoveredBlock82PC := 110.
        ].
        recoveredBlock82Step = 110 ifTrue: [
            recoveredBlock82Stack1 := (recoveredBlock82Stack1) create.
            recoveredBlock82PC := 112.
        ].
        recoveredBlock82Step = 112 ifTrue: [
            recoveredBlock82Stack2 := 'changing type to b8 for adr '.
            recoveredBlock82PC := 114.
        ].
        recoveredBlock82Step = 114 ifTrue: [
            recoveredBlock82Stack3 := recoveredArg1.
            recoveredBlock82PC := 117.
        ].
        recoveredBlock82Step = 117 ifTrue: [
            recoveredBlock82Stack3 := (recoveredBlock82Stack3) printString.
            recoveredBlock82PC := 119.
        ].
        recoveredBlock82Step = 119 ifTrue: [
            recoveredBlock82Stack2 := (recoveredBlock82Stack2) , (recoveredBlock82Stack3).
            recoveredBlock82PC := 121.
        ].
        recoveredBlock82Step = 121 ifTrue: [
            (recoveredBlock82Stack1) addText: (recoveredBlock82Stack2).
            recoveredBlock82PC := 123.
        ].
        recoveredBlock82Step = 123 ifTrue: [
            recoveredBlock82Stack1 := self.
            recoveredBlock82PC := 124.
        ].
        recoveredBlock82Step = 124 ifTrue: [
            recoveredBlock82Stack2 := recoveredArg1.
            recoveredBlock82PC := 127.
        ].
        recoveredBlock82Step = 127 ifTrue: [
            recoveredBlock82Stack2 := (recoveredBlock82Stack2) + (1).
            recoveredBlock82PC := 128.
        ].
        recoveredBlock82Step = 128 ifTrue: [
            recoveredBlock82Stack3 := recoveredArg2.
            recoveredBlock82PC := 131.
        ].
        recoveredBlock82Step = 131 ifTrue: [
            recoveredBlock82Stack4 := recoveredArg3.
            recoveredBlock82PC := 134.
        ].
        recoveredBlock82Step = 134 ifTrue: [
            recoveredBlock82Stack5 := recoveredArg4.
            recoveredBlock82PC := 137.
        ].
        recoveredBlock82Step = 137 ifTrue: [
            recoveredBlock82Stack6 := 8.
            recoveredBlock82PC := 139.
        ].
        recoveredBlock82Step = 139 ifTrue: [
            recoveredBlock82Stack5 := (recoveredBlock82Stack5) - (recoveredBlock82Stack6).
            recoveredBlock82PC := 140.
        ].
        recoveredBlock82Step = 140 ifTrue: [
            recoveredBlock82Stack6 := 8.
            recoveredBlock82PC := 142.
        ].
        recoveredBlock82Step = 142 ifTrue: [
            recoveredBlock82Stack5 := (recoveredBlock82Stack5) max: (recoveredBlock82Stack6).
            recoveredBlock82PC := 144.
        ].
        recoveredBlock82Step = 144 ifTrue: [
            recoveredBlock82Stack6 := recoveredArg5.
            recoveredBlock82PC := 147.
        ].
        recoveredBlock82Step = 147 ifTrue: [
            recoveredBlock82Stack1 := (recoveredBlock82Stack1) calculateBitsAddress: (recoveredBlock82Stack2) type: (recoveredBlock82Stack3) size: (recoveredBlock82Stack4) wordSize: (recoveredBlock82Stack5) in: (recoveredBlock82Stack6).
            recoveredBlock82PC := 150.
        ].
        recoveredBlock82Step = 150 ifTrue: [
            ^recoveredBlock82Stack1
        ].
        recoveredBlock82Step = 151 ifTrue: [
            recoveredBlock82Stack1 := recoveredBlock82Arg1.
            recoveredBlock82PC := 152.
        ].
        recoveredBlock82Step = 152 ifTrue: [
            recoveredBlock82Stack2 := recoveredArg3.
            recoveredBlock82PC := 155.
        ].
        recoveredBlock82Step = 155 ifTrue: [
            (recoveredBlock82Stack1) add: (recoveredBlock82Stack2).
            recoveredBlock82PC := 157.
        ].
        recoveredBlock82Step = 157 ifTrue: [
            recoveredBlock82Stack1 := nil.
            recoveredBlock82PC := 158.
        ].
        recoveredBlock82Step = 158 ifTrue: [
            recoveredBlock82Stack2 := self.
            recoveredBlock82PC := 159.
        ].
        recoveredBlock82Step = 159 ifTrue: [
            recoveredBlock82Stack3 := recoveredArg4.
            recoveredBlock82PC := 162.
        ].
        recoveredBlock82Step = 162 ifTrue: [
            recoveredBlock82Stack4 := 8.
            recoveredBlock82PC := 164.
        ].
        recoveredBlock82Step = 164 ifTrue: [
            recoveredBlock82Stack3 := (recoveredBlock82Stack3) min: (recoveredBlock82Stack4).
            recoveredBlock82PC := 165.
        ].
        recoveredBlock82Step = 165 ifTrue: [
            recoveredBlock82Stack2 := (recoveredBlock82Stack2) bitoffsetStart: (recoveredBlock82Stack3).
            recoveredBlock82PC := 166.
        ].
        recoveredBlock82Step = 166 ifTrue: [
            recoveredBlock82Stack3 := 0.
            recoveredBlock82PC := 168.
        ].
        recoveredBlock82Step = 168 ifTrue: [
            recoveredBlock82Stack2 := (recoveredBlock82Stack2) = (recoveredBlock82Stack3).
            recoveredBlock82PC := 169.
        ].
        recoveredBlock82Step = 169 ifTrue: [
            (recoveredBlock82Stack2) ifTrue: [recoveredBlock82PC := 188] ifFalse: [recoveredBlock82PC := 172].
        ].
        recoveredBlock82Step = 172 ifTrue: [
            recoveredBlock82PC := 173.
        ].
        recoveredBlock82Step = 173 ifTrue: [
            recoveredBlock82Stack1 := recoveredArg4.
            recoveredBlock82PC := 176.
        ].
        recoveredBlock82Step = 176 ifTrue: [
            recoveredBlock82Stack2 := 8.
            recoveredBlock82PC := 178.
        ].
        recoveredBlock82Step = 178 ifTrue: [
            recoveredBlock82Stack1 := (recoveredBlock82Stack1) min: (recoveredBlock82Stack2).
            recoveredBlock82PC := 179.
        ].
        recoveredBlock82Step = 179 ifTrue: [
            recoveredBlock82Stack2 := recoveredLocal1.
            recoveredBlock82PC := 182.
        ].
        recoveredBlock82Step = 182 ifTrue: [
            recoveredBlock82Stack1 := (recoveredBlock82Stack1) - (recoveredBlock82Stack2).
            recoveredBlock82PC := 183.
        ].
        recoveredBlock82Step = 183 ifTrue: [
            recoveredBlock82Stack1 := (recoveredBlock82Stack1) + (-1).
            recoveredBlock82PC := 184.
        ].
        recoveredBlock82Step = 184 ifTrue: [
            recoveredBlock82Stack2 := recoveredBlock82Stack1.
            recoveredBlock82PC := 185.
        ].
        recoveredBlock82Step = 185 ifTrue: [
            recoveredLocal1 := recoveredBlock82Stack2.
            recoveredBlock82PC := 188.
        ].
        recoveredBlock82Step = 188 ifTrue: [
            recoveredBlock82Result := recoveredBlock82Stack1.
            recoveredBlock82Done := true.
        ].
    ].
    recoveredBlock82Result
].
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack5 := 8.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack4 := (recoveredStack4) min: (recoveredStack5).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2056a338; bytecode file offset 0xe66c98"
!ETASHexVirtualAddressTableHeaderV2 methodsFor: 'recovered'!
createASAP2In: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := Date.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) today.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := Time.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) now.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := '	'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 'create by '.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) longName: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := ETASAlignmentByte.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) create: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) alignmentByte: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) alignmentWord.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := ETASAlignmentWord.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) alignmentUInt16.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) create: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) alignmentWord: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) alignmentWord.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) alignment.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) alignmentUInt16.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 'different definitions for alignmentWord'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) alignmentDWord.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := ETASAlignmentDWord.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) alignmentUInt32.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) create: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) alignmentDWord: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 127.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) alignmentDWord.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) alignment.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) alignmentUInt32.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 127] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 'different definitions for alignmentDWord'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) alignmentReal32.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := ETASAlignmentReal32.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) alignmentReal32.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) create: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) alignmentReal32: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredPC := 165.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) alignmentReal32.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) alignment.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) alignmentReal32.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 165] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := 'different definitions for alignmentReal32'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) alignmentReal64.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := ETASAlignmentReal64.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := (recoveredStack3) alignmentReal64.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := (recoveredStack2) create: (recoveredStack3).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1) alignmentReal64: (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredPC := 203.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) alignmentReal64.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) alignment.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) alignmentReal64.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 203] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := 'different definitions for alignmentReal64'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) byteOrder.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := ETASByteOrder.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := (recoveredStack3) byteOrder.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := (recoveredStack2) fromInteger: (recoveredStack3).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack1) byteOrder: (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredPC := 241.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) byteOrder.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := (recoveredStack2) byteOrder.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 241] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := 'different definitions for byteOrder'.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


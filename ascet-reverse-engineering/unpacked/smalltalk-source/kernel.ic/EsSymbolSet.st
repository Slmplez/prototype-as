"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20000b0c; bytecode file offset 0x4ba40"
!EsSymbolSet methodsFor: 'recovered'!
addUnique: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) shouldNotImplement.
    ^recoveredValue0
! !

"kernel.ic method 0x2000173c; bytecode file offset 0x4c844"
!EsSymbolSet methodsFor: 'recovered'!
species
    | recoveredValue0 |
    recoveredValue0 := Set.
    ^recoveredValue0
! !

"kernel.ic method 0x20002b60; bytecode file offset 0x4db00"
!EsSymbolSet methodsFor: 'recovered'!
removeAll: recoveredArg1
    (self) shouldNotImplement.
    ^self
! !

"kernel.ic method 0x20003144; bytecode file offset 0x4e0b4"
!EsSymbolSet methodsFor: 'recovered'!
remove: recoveredArg1 ifAbsent: recoveredArg2
    (self) shouldNotImplement.
    ^self
! !

"kernel.ic method 0x200049bc; bytecode file offset 0x4f930"
!EsSymbolSet methodsFor: 'recovered'!
newElements: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000a40c; bytecode file offset 0x55320"
!EsSymbolSet methodsFor: 'recovered'!
expand
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := elements.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) // (2).
    recoveredValue3 := elements.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (self) rehash: (recoveredValue5).
    ^recoveredValue6
! !

"kernel.ic method 0x2000fcd4; bytecode file offset 0x5abec"
!EsSymbolSet methodsFor: 'recovered'!
finalizedSlot: recoveredArg1 removedObject: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) enableAsyncMessages: (false).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (self) rehashTo: (recoveredValue2).
    recoveredValue3 := elementCount.
    recoveredValue4 := (recoveredValue3) + (-1).
    elementCount := recoveredValue4.
    recoveredValue5 := Processor.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) enableAsyncMessages: (recoveredValue6).
    ^self
! !

"kernel.ic method 0x200295a4; bytecode file offset 0x744c8"
!EsSymbolSet methodsFor: 'recovered'!
includes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) enableAsyncMessages: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) enableAsyncMessages: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack2) enableAsyncMessages: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 28] ifFalse: [recoveredLocal1 := nil. recoveredPC := 75]] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) enableAsyncMessages: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 117].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack2) enableAsyncMessages: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 84] ifFalse: [recoveredLocal1 := nil. recoveredPC := 131]] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 129] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) enableAsyncMessages: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2002a1c8; bytecode file offset 0x750f0"
!EsSymbolSet methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) enableAsyncMessages: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) enableAsyncMessages: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) enableAsyncMessages: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 28] ifFalse: [recoveredLocal1 := nil. recoveredPC := 80]] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 111] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack2) enableAsyncMessages: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack2) enableAsyncMessages: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 90] ifFalse: [recoveredLocal1 := nil. recoveredPC := 142]] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2002ca58; bytecode file offset 0x7798c"
!EsSymbolSet methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) enableAsyncMessages: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack2) enableAsyncMessages: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack2) enableAsyncMessages: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 28] ifFalse: [recoveredLocal1 := nil. recoveredPC := 103]] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 173.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 149].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack2) enableAsyncMessages: (recoveredStack3).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 173] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack2) enableAsyncMessages: (recoveredStack3).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 112] ifFalse: [recoveredLocal1 := nil. recoveredPC := 187]] ifFalse: [recoveredPC := 177].
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 185] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := NlsCatKRN.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2002d804; bytecode file offset 0x78744"
!EsSymbolSet methodsFor: 'recovered'!
at: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) enableAsyncMessages: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := Symbol.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) basicCopyFrom: (recoveredStack5).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal3 := recoveredStack5.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) enableAsyncMessages: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack2) enableAsyncMessages: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 28] ifFalse: [recoveredLocal1 := nil. recoveredPC := 110]] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 171] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := Symbol.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := (recoveredStack4) basicCopyFrom: (recoveredStack5).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal3 := recoveredStack5.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            elementCount := recoveredStack3.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack2) expand.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack2) enableAsyncMessages: (recoveredStack3).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack2) enableAsyncMessages: (recoveredStack3).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 120] ifFalse: [recoveredLocal1 := nil. recoveredPC := 202]] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := NlsCatKRN.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


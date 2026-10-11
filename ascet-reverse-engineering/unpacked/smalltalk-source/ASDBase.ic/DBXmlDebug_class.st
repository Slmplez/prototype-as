"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x202fb67c; bytecode file offset 0xbf7f5c"
!DBXmlDebug class methodsFor: 'recovered'!
identCheckExclude
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IdentCheckExclude.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            IdentCheckExclude := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := #('Boolean' 'Symbol' 'Block' 'SmallInteger' 'DBXmlObject' 'SGCodeVariantKey').
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:block280e8ed8Arg1 | 
    | block280e8ed8Local1 block280e8ed8Stack0 block280e8ed8Stack1 block280e8ed8Stack2 block280e8ed8Stack3 block280e8ed8PC block280e8ed8Step block280e8ed8Done block280e8ed8Result |
    block280e8ed8Stack0 := self.
    block280e8ed8PC := 4.
    block280e8ed8Done := false.
    [block280e8ed8Done not] whileTrue: [
        block280e8ed8Step := block280e8ed8PC.
        block280e8ed8Step = 4 ifTrue: [
            block280e8ed8Stack1 := Smalltalk.
            block280e8ed8PC := 6.
        ].
        block280e8ed8Step = 6 ifTrue: [
            block280e8ed8Stack2 := block280e8ed8Arg1.
            block280e8ed8PC := 7.
        ].
        block280e8ed8Step = 7 ifTrue: [
            block280e8ed8Stack1 := (block280e8ed8Stack1) at: (block280e8ed8Stack2).
            block280e8ed8PC := 9.
        ].
        block280e8ed8Step = 9 ifTrue: [
            block280e8ed8Local1 := block280e8ed8Stack1.
            block280e8ed8PC := 10.
        ].
        block280e8ed8Step = 10 ifTrue: [
            block280e8ed8Stack1 := IdentCheckExclude.
            block280e8ed8PC := 12.
        ].
        block280e8ed8Step = 12 ifTrue: [
            block280e8ed8Stack2 := block280e8ed8Local1.
            block280e8ed8PC := 13.
        ].
        block280e8ed8Step = 13 ifTrue: [
            (block280e8ed8Stack1) add: (block280e8ed8Stack2).
            block280e8ed8PC := 15.
        ].
        block280e8ed8Step = 15 ifTrue: [
            block280e8ed8Stack1 := block280e8ed8Local1.
            block280e8ed8PC := 16.
        ].
        block280e8ed8Step = 16 ifTrue: [
            block280e8ed8Stack2 := [:block280e8efcArg1 | 
    | block280e8efcValue0 block280e8efcValue1 block280e8efcValue2 |
    block280e8efcValue0 := IdentCheckExclude.
    block280e8efcValue1 := block280e8efcArg1.
    block280e8efcValue2 := (block280e8efcValue0) add: (block280e8efcValue1).
    block280e8efcValue2
].
            block280e8ed8PC := 18.
        ].
        block280e8ed8Step = 18 ifTrue: [
            block280e8ed8PC := 28.
        ].
        block280e8ed8Step = 28 ifTrue: [
            block280e8ed8Stack1 := (block280e8ed8Stack1) allSubclassesDo: (block280e8ed8Stack2).
            block280e8ed8PC := 30.
        ].
        block280e8ed8Step = 30 ifTrue: [
            block280e8ed8Result := block280e8ed8Stack1.
            block280e8ed8Done := true.
        ].
    ].
    block280e8ed8Result
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := IdentCheckExclude.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20387e98; bytecode file offset 0xc8478c"
!DBXmlDebug class methodsFor: 'recovered'!
recursiveIdentity: recoveredArg1 b: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EsIdentitySet.
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
            recoveredStack1 := EsIdentitySet.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) recursiveIdentity: (recoveredStack1) b: (recoveredStack2) identical: (recoveredStack3) alreadySeen: (recoveredStack4) diffs: (recoveredStack5).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:block280f31d4Arg1 | 
    | block280f31d4Value0 block280f31d4Value1 block280f31d4Value2 block280f31d4Value3 |
    block280f31d4Value0 := block280f31d4Arg1.
    block280f31d4Value1 := DBXmlObject.
    block280f31d4Value2 := (block280f31d4Value0) isKindOf: (block280f31d4Value1).
    block280f31d4Value3 := (block280f31d4Value2) not.
    block280f31d4Value3
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) halt.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := Util.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := '?'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) asOrderedCollection.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205176b0; bytecode file offset 0xe13f98"
!DBXmlDebug class methodsFor: 'recovered'!
recursiveIdentity: recoveredArg1 b: recoveredArg2 identical: recoveredArg3 alreadySeen: recoveredArg4 diffs: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) numberOfPointerFields.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) identCheckExclude.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) halt.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) numberOfPointerFields.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicSize.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) basicAt: (recoveredStack4).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := (recoveredStack4) basicAt: (recoveredStack5).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack6 := recoveredArg4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack7 := recoveredArg5.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack2) recursiveIdentity: (recoveredStack3) b: (recoveredStack4) identical: (recoveredStack5) alreadySeen: (recoveredStack6) diffs: (recoveredStack7).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 112] ifFalse: [recoveredLocal1 := nil. recoveredPC := 143]] ifFalse: [recoveredPC := 133].
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 141] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) instSize.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 173.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := (recoveredStack3) instVarAt: (recoveredStack4).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := (recoveredStack4) instVarAt: (recoveredStack5).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack6 := recoveredArg4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack7 := recoveredArg5.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack2) recursiveIdentity: (recoveredStack3) b: (recoveredStack4) identical: (recoveredStack5) alreadySeen: (recoveredStack6) diffs: (recoveredStack7).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 156] ifFalse: [recoveredLocal1 := nil. recoveredPC := 187]] ifFalse: [recoveredPC := 177].
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
            (recoveredStack2) ifTrue: [recoveredPC := 185] ifFalse: [recoveredPC := 156].
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
            ^recoveredStack0
        ].
    ]
! !


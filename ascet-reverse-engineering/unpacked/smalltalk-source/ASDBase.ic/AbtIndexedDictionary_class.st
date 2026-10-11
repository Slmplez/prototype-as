"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2039d470; bytecode file offset 0xc99d50"
!AbtIndexedDictionary class methodsFor: 'recovered'!
deferredUpdateOpFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #('at:' 'at:put:' 'removeKey:' 'keys' 'values' 'atIndex:').
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := super deferredUpdateOpFor: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := AbtCollectionNonUpdateOp.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := AbtCollectionAtPut.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := AbtDictionaryRemoveKey.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := AbtCollectionNonUpdateOp.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := AbtCollectionNonUpdateOp.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := AbtCollectionNonUpdateOp.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2054ca40; bytecode file offset 0xe4933c"
!AbtIndexedDictionary class methodsFor: 'recovered'!
mutateObjects: recoveredArg1 fromPlatform: recoveredArg2 named: recoveredArg3 withDefinition: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'ES'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 209].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Local3 recoveredBlock13Local4 recoveredBlock13Local5 recoveredBlock13Local6 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13Stack6 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) size.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack2 := 3.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) = (recoveredBlock13Stack2).
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 30] ifFalse: [recoveredBlock13PC := 128].
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack2 := 1.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Local5 := recoveredBlock13Stack1.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local5.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack2 := 1.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Local4 := recoveredBlock13Stack1.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local4.
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) new: (recoveredBlock13Stack2).
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Local6 := recoveredBlock13Stack1.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local5.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack2 := 2.
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) + (-1).
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 55.
        ].
        recoveredBlock13Step = 55 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local5.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) size.
            recoveredBlock13PC := 58.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            recoveredBlock13PC := 88.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local5.
            recoveredBlock13PC := 64.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 65.
        ].
        recoveredBlock13Step = 65 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) at: (recoveredBlock13Stack3).
            recoveredBlock13PC := 66.
        ].
        recoveredBlock13Step = 66 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 67.
        ].
        recoveredBlock13Step = 67 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack3.
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 88] ifFalse: [recoveredBlock13PC := 72].
        ].
        recoveredBlock13Step = 72 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local3.
            recoveredBlock13PC := 73.
        ].
        recoveredBlock13Step = 73 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local5.
            recoveredBlock13PC := 75.
        ].
        recoveredBlock13Step = 75 ifTrue: [
            (recoveredBlock13Stack2 == recoveredBlock13Stack3) ifTrue: [recoveredBlock13PC := 88] ifFalse: [recoveredBlock13PC := 78].
        ].
        recoveredBlock13Step = 78 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local6.
            recoveredBlock13PC := 80.
        ].
        recoveredBlock13Step = 80 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local3.
            recoveredBlock13PC := 81.
        ].
        recoveredBlock13Step = 81 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) key.
            recoveredBlock13PC := 83.
        ].
        recoveredBlock13Step = 83 ifTrue: [
            recoveredBlock13Stack4 := recoveredBlock13Local3.
            recoveredBlock13PC := 84.
        ].
        recoveredBlock13Step = 84 ifTrue: [
            recoveredBlock13Stack4 := (recoveredBlock13Stack4) value.
            recoveredBlock13PC := 86.
        ].
        recoveredBlock13Step = 86 ifTrue: [
            (recoveredBlock13Stack2) indexAt: (recoveredBlock13Stack3) put: (recoveredBlock13Stack4).
            recoveredBlock13PC := 88.
        ].
        recoveredBlock13Step = 88 ifTrue: [
            (recoveredBlock13Stack1 isInteger and: [recoveredBlock13Local1 isInteger]) ifTrue: [(recoveredBlock13Local1 + 1 <= recoveredBlock13Stack1) ifTrue: [recoveredBlock13Local1 := recoveredBlock13Local1 + 1. recoveredBlock13PC := 62] ifFalse: [recoveredBlock13Local1 := nil. recoveredBlock13PC := 102]] ifFalse: [recoveredBlock13PC := 92].
        ].
        recoveredBlock13Step = 92 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 93.
        ].
        recoveredBlock13Step = 93 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 94.
        ].
        recoveredBlock13Step = 94 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) + (1).
            recoveredBlock13PC := 95.
        ].
        recoveredBlock13Step = 95 ifTrue: [
            recoveredBlock13Stack4 := recoveredBlock13Stack3.
            recoveredBlock13PC := 96.
        ].
        recoveredBlock13Step = 96 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack4.
            recoveredBlock13PC := 97.
        ].
        recoveredBlock13Step = 97 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) < (recoveredBlock13Stack3).
            recoveredBlock13PC := 98.
        ].
        recoveredBlock13Step = 98 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 100] ifFalse: [recoveredBlock13PC := 62].
        ].
        recoveredBlock13Step = 100 ifTrue: [
            recoveredBlock13Stack2 := nil.
            recoveredBlock13PC := 101.
        ].
        recoveredBlock13Step = 101 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack2.
            recoveredBlock13PC := 102.
        ].
        recoveredBlock13Step = 102 ifTrue: [
            recoveredBlock13PC := 103.
        ].
        recoveredBlock13Step = 103 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 105.
        ].
        recoveredBlock13Step = 105 ifTrue: [
            recoveredBlock13Stack2 := 2.
            recoveredBlock13PC := 107.
        ].
        recoveredBlock13Step = 107 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 108.
        ].
        recoveredBlock13Step = 108 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 109.
        ].
        recoveredBlock13Step = 109 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local6.
            recoveredBlock13PC := 111.
        ].
        recoveredBlock13Step = 111 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local2.
            recoveredBlock13PC := 112.
        ].
        recoveredBlock13Step = 112 ifTrue: [
            (recoveredBlock13Stack1) mutateSequenceableKeysAndValues: (recoveredBlock13Stack2).
            recoveredBlock13PC := 114.
        ].
        recoveredBlock13Step = 114 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local6.
            recoveredBlock13PC := 116.
        ].
        recoveredBlock13Step = 116 ifTrue: [
            recoveredBlock13Stack2 := nil.
            recoveredBlock13PC := 117.
        ].
        recoveredBlock13Step = 117 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 118.
        ].
        recoveredBlock13Step = 118 ifTrue: [
            recoveredBlock13Local5 := recoveredBlock13Stack3.
            recoveredBlock13PC := 120.
        ].
        recoveredBlock13Step = 120 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 121.
        ].
        recoveredBlock13Step = 121 ifTrue: [
            recoveredBlock13Local4 := recoveredBlock13Stack3.
            recoveredBlock13PC := 122.
        ].
        recoveredBlock13Step = 122 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 123.
        ].
        recoveredBlock13Step = 123 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack3.
            recoveredBlock13PC := 124.
        ].
        recoveredBlock13Step = 124 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack2.
            recoveredBlock13PC := 125.
        ].
        recoveredBlock13Step = 125 ifTrue: [
            recoveredBlock13PC := 205.
        ].
        recoveredBlock13Step = 128 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 130.
        ].
        recoveredBlock13Step = 130 ifTrue: [
            recoveredBlock13Stack2 := 1.
            recoveredBlock13PC := 132.
        ].
        recoveredBlock13Step = 132 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 133.
        ].
        recoveredBlock13Step = 133 ifTrue: [
            recoveredBlock13Local5 := recoveredBlock13Stack1.
            recoveredBlock13PC := 135.
        ].
        recoveredBlock13Step = 135 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 137.
        ].
        recoveredBlock13Step = 137 ifTrue: [
            recoveredBlock13Stack2 := 2.
            recoveredBlock13PC := 139.
        ].
        recoveredBlock13Step = 139 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 140.
        ].
        recoveredBlock13Step = 140 ifTrue: [
            recoveredBlock13Local4 := recoveredBlock13Stack1.
            recoveredBlock13PC := 141.
        ].
        recoveredBlock13Step = 141 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 143.
        ].
        recoveredBlock13Step = 143 ifTrue: [
            recoveredBlock13Stack2 := 3.
            recoveredBlock13PC := 145.
        ].
        recoveredBlock13Step = 145 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 146.
        ].
        recoveredBlock13Step = 146 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack1.
            recoveredBlock13PC := 147.
        ].
        recoveredBlock13Step = 147 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 149.
        ].
        recoveredBlock13Step = 149 ifTrue: [
            recoveredBlock13Stack2 := 4.
            recoveredBlock13PC := 151.
        ].
        recoveredBlock13Step = 151 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 152.
        ].
        recoveredBlock13Step = 152 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 153.
        ].
        recoveredBlock13Step = 153 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 155.
        ].
        recoveredBlock13Step = 155 ifTrue: [
            recoveredBlock13Stack2 := 5.
            recoveredBlock13PC := 157.
        ].
        recoveredBlock13Step = 157 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 158.
        ].
        recoveredBlock13Step = 158 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 159.
        ].
        recoveredBlock13Step = 159 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 160.
        ].
        recoveredBlock13Step = 160 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) basicNew.
            recoveredBlock13PC := 162.
        ].
        recoveredBlock13Step = 162 ifTrue: [
            recoveredBlock13Local6 := recoveredBlock13Stack1.
            recoveredBlock13PC := 164.
        ].
        recoveredBlock13Step = 164 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local6.
            recoveredBlock13PC := 166.
        ].
        recoveredBlock13Step = 166 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 167.
        ].
        recoveredBlock13Step = 167 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local6.
            recoveredBlock13PC := 169.
        ].
        recoveredBlock13Step = 169 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) lookupTableClass.
            recoveredBlock13PC := 171.
        ].
        recoveredBlock13Step = 171 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) basicNew.
            recoveredBlock13PC := 173.
        ].
        recoveredBlock13Step = 173 ifTrue: [
            recoveredBlock13Stack4 := recoveredBlock13Stack3.
            recoveredBlock13PC := 174.
        ].
        recoveredBlock13Step = 174 ifTrue: [
            recoveredBlock13Stack5 := recoveredBlock13Local4.
            recoveredBlock13PC := 175.
        ].
        recoveredBlock13Step = 175 ifTrue: [
            (recoveredBlock13Stack4) keyArray: (recoveredBlock13Stack5).
            recoveredBlock13Stack4 := recoveredBlock13Stack3.
            recoveredBlock13PC := 178.
        ].
        recoveredBlock13Step = 178 ifTrue: [
            recoveredBlock13Stack5 := recoveredBlock13Local3.
            recoveredBlock13PC := 179.
        ].
        recoveredBlock13Step = 179 ifTrue: [
            (recoveredBlock13Stack4) valueArray: (recoveredBlock13Stack5).
            recoveredBlock13PC := 181.
        ].
        recoveredBlock13Step = 181 ifTrue: [
            recoveredBlock13Stack4 := recoveredBlock13Local5.
            recoveredBlock13PC := 183.
        ].
        recoveredBlock13Step = 183 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) elementCount: (recoveredBlock13Stack4).
            recoveredBlock13PC := 185.
        ].
        recoveredBlock13Step = 185 ifTrue: [
            (recoveredBlock13Stack2) lookupTable: (recoveredBlock13Stack3).
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 188.
        ].
        recoveredBlock13Step = 188 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local2.
            recoveredBlock13PC := 189.
        ].
        recoveredBlock13Step = 189 ifTrue: [
            (recoveredBlock13Stack2) sequenceableKeys: (recoveredBlock13Stack3).
            recoveredBlock13PC := 191.
        ].
        recoveredBlock13Step = 191 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 192.
        ].
        recoveredBlock13Step = 192 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) sequenceableValues: (recoveredBlock13Stack2).
            recoveredBlock13PC := 194.
        ].
        recoveredBlock13Step = 194 ifTrue: [
            recoveredBlock13Stack2 := nil.
            recoveredBlock13PC := 195.
        ].
        recoveredBlock13Step = 195 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 196.
        ].
        recoveredBlock13Step = 196 ifTrue: [
            recoveredBlock13Local5 := recoveredBlock13Stack3.
            recoveredBlock13PC := 198.
        ].
        recoveredBlock13Step = 198 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 199.
        ].
        recoveredBlock13Step = 199 ifTrue: [
            recoveredBlock13Local4 := recoveredBlock13Stack3.
            recoveredBlock13PC := 200.
        ].
        recoveredBlock13Step = 200 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 201.
        ].
        recoveredBlock13Step = 201 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack3.
            recoveredBlock13PC := 202.
        ].
        recoveredBlock13Step = 202 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 203.
        ].
        recoveredBlock13Step = 203 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack3.
            recoveredBlock13PC := 204.
        ].
        recoveredBlock13Step = 204 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack2.
            recoveredBlock13PC := 205.
        ].
        recoveredBlock13Step = 205 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := [:block2810f1a4Arg1 | 
    nil
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


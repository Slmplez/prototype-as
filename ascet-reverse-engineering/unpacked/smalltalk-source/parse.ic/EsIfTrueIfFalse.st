"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000754; bytecode file offset 0x15de0"
!EsIfTrueIfFalse methodsFor: 'recovered'!
falseBlock
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := messagePattern.
    recoveredValue1 := (recoveredValue0) arguments.
    recoveredValue2 := (recoveredValue1) last.
    ^recoveredValue2
! !

"parse.ic method 0x20000774; bytecode file offset 0x15de0"
!EsIfTrueIfFalse methodsFor: 'recovered'!
trueBlock
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := messagePattern.
    recoveredValue1 := (recoveredValue0) arguments.
    recoveredValue2 := (recoveredValue1) first.
    ^recoveredValue2
! !

"parse.ic method 0x20002734; bytecode file offset 0x17d94"
!EsIfTrueIfFalse methodsFor: 'recovered'!
generateOptimizedCodeOn: recoveredArg1 valueRequired: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := receiver.
    recoveredValue2 := (self) trueBlock.
    recoveredValue3 := (self) falseBlock.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) ifTrueIfFalseReceiver: (recoveredValue1) trueBlock: (recoveredValue2) falseBlock: (recoveredValue3) valueRequired: (recoveredValue4).
    ^recoveredValue5
! !

"parse.ic method 0x2000a57c; bytecode file offset 0x1fc04"
!EsIfTrueIfFalse methodsFor: 'recovered'!
optimizedBooleanOn: recoveredArg1 trueLabel: recoveredArg2 falseLabel: recoveredArg3 fallThrough: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := inlined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := super generateOptimizedBooleanOn: (recoveredStack2) trueLabel: (recoveredStack3) falseLabel: (recoveredStack4) fallThrough: (recoveredStack5).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := EsLabel.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeStream: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := EsLabel.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeStream: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) trueBlock.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) falseBlock.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReturnBoolean.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 185].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReturnBoolean.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnsTrue.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnsTrue.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := receiver.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) generateCodeOn: (recoveredStack1) valueRequired: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := BCjumpB.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) branchTo: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := receiver.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateOptimizedBooleanOn: (recoveredStack1) trueLabel: (recoveredStack2) falseLabel: (recoveredStack3) fallThrough: (recoveredStack4).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnsTrue.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := receiver.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack4 := (recoveredStack4) not.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateOptimizedBooleanOn: (recoveredStack1) trueLabel: (recoveredStack2) falseLabel: (recoveredStack3) fallThrough: (recoveredStack4).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := receiver.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) generateCodeOn: (recoveredStack1) valueRequired: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 145].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := BCjumpB.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) branchTo: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := receiver.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnsTrue.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) generateOptimizedBooleanOn: (recoveredStack1) trueLabel: (recoveredStack2) falseLabel: (recoveredStack3) fallThrough: (recoveredStack4).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) place.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateOptimizedBooleanBlockOn: (recoveredStack1) trueLabel: (recoveredStack2) falseLabel: (recoveredStack3) fallThrough: (recoveredStack4).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReturnBoolean.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := receiver.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := (recoveredStack3) returnsTrue.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredPC := 212.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) generateOptimizedBooleanOn: (recoveredStack1) trueLabel: (recoveredStack2) falseLabel: (recoveredStack3) fallThrough: (recoveredStack4).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack0) place.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateOptimizedBooleanBlockOn: (recoveredStack1) trueLabel: (recoveredStack2) falseLabel: (recoveredStack3) fallThrough: (recoveredStack4).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := receiver.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) generateOptimizedBooleanOn: (recoveredStack1) trueLabel: (recoveredStack2) falseLabel: (recoveredStack3) fallThrough: (recoveredStack4).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack0) place.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack0) generateOptimizedBooleanBlockOn: (recoveredStack1) trueLabel: (recoveredStack2) falseLabel: (recoveredStack3) fallThrough: (recoveredStack4).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnsTrue.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := BCjumpB.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) branchTo: (recoveredStack1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack0) place.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateOptimizedBooleanBlockOn: (recoveredStack1) trueLabel: (recoveredStack2) falseLabel: (recoveredStack3) fallThrough: (recoveredStack4).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


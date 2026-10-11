"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201469b4; bytecode file offset 0xa43278"
!SGIlApproximationTransformation methodsFor: 'recovered'!
visitNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) shiftForLiterals.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := super visitNode: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025b03c; bytecode file offset 0xb57910"
!SGIlApproximationTransformation methodsFor: 'recovered'!
mulConstExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableFraction.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) buildExpr: (recoveredStack2) mul: (recoveredStack3) type: (recoveredStack4) originalExpr: (recoveredStack5).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := super mulConstExpr: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20322354; bytecode file offset 0xc1ec24"
!SGIlApproximationTransformation methodsFor: 'recovered'!
divConstExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMultiplyConstantExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildExpr: (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3) originalExpr: (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ffd7c; bytecode file offset 0xefc6bc"
!SGIlApproximationTransformation methodsFor: 'recovered'!
buildExpr: recoveredArg1 mul: recoveredArg2 type: recoveredArg3 originalExpr: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFloatContext.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsSigned.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) largestSignedInterval.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) largestUnsignedInterval.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsSigned.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 127].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 195.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsSigned.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 195].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) log: (recoveredStack1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) ceiling.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := [:recoveredBlock222Arg1 | 
    | recoveredBlock222Local1 recoveredBlock222Local2 recoveredBlock222Local3 recoveredBlock222Stack0 recoveredBlock222Stack1 recoveredBlock222Stack2 recoveredBlock222Stack3 recoveredBlock222Stack4 recoveredBlock222PC recoveredBlock222Step recoveredBlock222Done recoveredBlock222Result |
    recoveredBlock222Stack0 := self.
    recoveredBlock222PC := 228.
    recoveredBlock222Done := false.
    [recoveredBlock222Done not] whileTrue: [
        recoveredBlock222Step := recoveredBlock222PC.
        recoveredBlock222Step = 228 ifTrue: [
            recoveredBlock222Stack1 := false.
            recoveredBlock222PC := 229.
        ].
        recoveredBlock222Step = 229 ifTrue: [
            recoveredBlock222Local3 := recoveredBlock222Stack1.
            recoveredBlock222PC := 230.
        ].
        recoveredBlock222Step = 230 ifTrue: [
            recoveredBlock222Stack1 := recoveredBlock222Arg1.
            recoveredBlock222PC := 231.
        ].
        recoveredBlock222Step = 231 ifTrue: [
            recoveredBlock222Stack2 := recoveredArg2.
            recoveredBlock222PC := 234.
        ].
        recoveredBlock222Step = 234 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) / (recoveredBlock222Stack2).
            recoveredBlock222PC := 236.
        ].
        recoveredBlock222Step = 236 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) + (-1).
            recoveredBlock222PC := 237.
        ].
        recoveredBlock222Step = 237 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) abs.
            recoveredBlock222PC := 239.
        ].
        recoveredBlock222Step = 239 ifTrue: [
            recoveredBlock222Stack2 := #[252 169 241 210 77 98 80 63].
            recoveredBlock222PC := 241.
        ].
        recoveredBlock222Step = 241 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) < (recoveredBlock222Stack2).
            recoveredBlock222PC := 242.
        ].
        recoveredBlock222Step = 242 ifTrue: [
            (recoveredBlock222Stack1) ifTrue: [recoveredBlock222PC := 246] ifFalse: [recoveredBlock222PC := 346].
        ].
        recoveredBlock222Step = 246 ifTrue: [
            recoveredBlock222Stack1 := recoveredArg1.
            recoveredBlock222PC := 249.
        ].
        recoveredBlock222Step = 249 ifTrue: [
            recoveredBlock222Stack2 := self.
            recoveredBlock222PC := 250.
        ].
        recoveredBlock222Step = 250 ifTrue: [
            recoveredBlock222Stack2 := (recoveredBlock222Stack2) ileBuilder.
            recoveredBlock222PC := 252.
        ].
        recoveredBlock222Step = 252 ifTrue: [
            recoveredBlock222Stack3 := recoveredBlock222Arg1.
            recoveredBlock222PC := 253.
        ].
        recoveredBlock222Step = 253 ifTrue: [
            recoveredBlock222Stack3 := (recoveredBlock222Stack3) numerator.
            recoveredBlock222PC := 255.
        ].
        recoveredBlock222Step = 255 ifTrue: [
            recoveredBlock222Stack2 := (recoveredBlock222Stack2) createScalarConstant: (recoveredBlock222Stack3).
            recoveredBlock222PC := 257.
        ].
        recoveredBlock222Step = 257 ifTrue: [
            recoveredBlock222Stack3 := recoveredArg3.
            recoveredBlock222PC := 260.
        ].
        recoveredBlock222Step = 260 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) mul: (recoveredBlock222Stack2) type: (recoveredBlock222Stack3).
            recoveredBlock222PC := 262.
        ].
        recoveredBlock222Step = 262 ifTrue: [
            recoveredBlock222Stack2 := recoveredBlock222Stack1.
            recoveredBlock222PC := 263.
        ].
        recoveredBlock222Step = 263 ifTrue: [
            recoveredBlock222Local2 := recoveredBlock222Stack2.
            recoveredBlock222PC := 264.
        ].
        recoveredBlock222Step = 264 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) isIleRepresentable.
            recoveredBlock222PC := 266.
        ].
        recoveredBlock222Step = 266 ifTrue: [
            (recoveredBlock222Stack1) ifTrue: [recoveredBlock222PC := 270] ifFalse: [recoveredBlock222PC := 342].
        ].
        recoveredBlock222Step = 270 ifTrue: [
            recoveredBlock222Stack1 := recoveredBlock222Local2.
            recoveredBlock222PC := 271.
        ].
        recoveredBlock222Step = 271 ifTrue: [
            recoveredBlock222Stack2 := self.
            recoveredBlock222PC := 272.
        ].
        recoveredBlock222Step = 272 ifTrue: [
            recoveredBlock222Stack2 := (recoveredBlock222Stack2) ileBuilder.
            recoveredBlock222PC := 274.
        ].
        recoveredBlock222Step = 274 ifTrue: [
            recoveredBlock222Stack3 := recoveredBlock222Arg1.
            recoveredBlock222PC := 275.
        ].
        recoveredBlock222Step = 275 ifTrue: [
            recoveredBlock222Stack3 := (recoveredBlock222Stack3) denominator.
            recoveredBlock222PC := 277.
        ].
        recoveredBlock222Step = 277 ifTrue: [
            recoveredBlock222Stack2 := (recoveredBlock222Stack2) createScalarConstant: (recoveredBlock222Stack3).
            recoveredBlock222PC := 279.
        ].
        recoveredBlock222Step = 279 ifTrue: [
            recoveredBlock222Stack3 := recoveredArg3.
            recoveredBlock222PC := 282.
        ].
        recoveredBlock222Step = 282 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) div: (recoveredBlock222Stack2) type: (recoveredBlock222Stack3).
            recoveredBlock222PC := 284.
        ].
        recoveredBlock222Step = 284 ifTrue: [
            recoveredBlock222Stack2 := recoveredBlock222Stack1.
            recoveredBlock222PC := 285.
        ].
        recoveredBlock222Step = 285 ifTrue: [
            recoveredBlock222Local1 := recoveredBlock222Stack2.
            recoveredBlock222PC := 286.
        ].
        recoveredBlock222Step = 286 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) isIleRepresentable.
            recoveredBlock222PC := 288.
        ].
        recoveredBlock222Step = 288 ifTrue: [
            (recoveredBlock222Stack1) ifTrue: [recoveredBlock222PC := 292] ifFalse: [recoveredBlock222PC := 342].
        ].
        recoveredBlock222Step = 292 ifTrue: [
            recoveredBlock222Stack1 := recoveredArg4.
            recoveredBlock222PC := 295.
        ].
        recoveredBlock222Step = 295 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) limitOverflow.
            recoveredBlock222PC := 297.
        ].
        recoveredBlock222Step = 297 ifTrue: [
            (recoveredBlock222Stack1) ifTrue: [recoveredBlock222PC := 312] ifFalse: [recoveredBlock222PC := 300].
        ].
        recoveredBlock222Step = 300 ifTrue: [
            recoveredBlock222Stack1 := recoveredArg4.
            recoveredBlock222PC := 303.
        ].
        recoveredBlock222Step = 303 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) interval.
            recoveredBlock222PC := 304.
        ].
        recoveredBlock222Step = 304 ifTrue: [
            recoveredBlock222Stack2 := recoveredBlock222Local1.
            recoveredBlock222PC := 305.
        ].
        recoveredBlock222Step = 305 ifTrue: [
            recoveredBlock222Stack2 := (recoveredBlock222Stack2) interval.
            recoveredBlock222PC := 306.
        ].
        recoveredBlock222Step = 306 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) includes: (recoveredBlock222Stack2).
            recoveredBlock222PC := 308.
        ].
        recoveredBlock222Step = 308 ifTrue: [
            (recoveredBlock222Stack1) ifTrue: [recoveredBlock222PC := 312] ifFalse: [recoveredBlock222PC := 342].
        ].
        recoveredBlock222Step = 312 ifTrue: [
            recoveredBlock222Stack1 := true.
            recoveredBlock222PC := 313.
        ].
        recoveredBlock222Step = 313 ifTrue: [
            recoveredBlock222Local3 := recoveredBlock222Stack1.
            recoveredBlock222PC := 314.
        ].
        recoveredBlock222Step = 314 ifTrue: [
            recoveredBlock222Stack1 := self.
            recoveredBlock222PC := 315.
        ].
        recoveredBlock222Step = 315 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) ileBuilder.
            recoveredBlock222PC := 317.
        ].
        recoveredBlock222Step = 317 ifTrue: [
            recoveredBlock222Stack2 := recoveredBlock222Local1.
            recoveredBlock222PC := 318.
        ].
        recoveredBlock222Step = 318 ifTrue: [
            recoveredBlock222Stack3 := recoveredArg4.
            recoveredBlock222PC := 321.
        ].
        recoveredBlock222Step = 321 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) ileCopyLimitAttributesArithOpExpr: (recoveredBlock222Stack2) originalExpr: (recoveredBlock222Stack3).
            recoveredBlock222PC := 323.
        ].
        recoveredBlock222Step = 323 ifTrue: [
            recoveredLocal4 := recoveredBlock222Stack1.
            recoveredBlock222PC := 326.
        ].
        recoveredBlock222Step = 326 ifTrue: [
            recoveredBlock222Stack1 := recoveredBlock222Arg1.
            recoveredBlock222PC := 327.
        ].
        recoveredBlock222Step = 327 ifTrue: [
            recoveredBlock222Stack2 := recoveredArg2.
            recoveredBlock222PC := 330.
        ].
        recoveredBlock222Step = 330 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) / (recoveredBlock222Stack2).
            recoveredBlock222PC := 332.
        ].
        recoveredBlock222Step = 332 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) + (-1).
            recoveredBlock222PC := 333.
        ].
        recoveredBlock222Step = 333 ifTrue: [
            recoveredBlock222Stack1 := (recoveredBlock222Stack1) abs.
            recoveredBlock222PC := 335.
        ].
        recoveredBlock222Step = 335 ifTrue: [
            recoveredLocal3 := recoveredBlock222Stack1.
            recoveredBlock222PC := 338.
        ].
        recoveredBlock222Step = 338 ifTrue: [
            recoveredBlock222Stack1 := recoveredBlock222Arg1.
            recoveredBlock222PC := 339.
        ].
        recoveredBlock222Step = 339 ifTrue: [
            recoveredLocal2 := recoveredBlock222Stack1.
            recoveredBlock222PC := 342.
        ].
        recoveredBlock222Step = 342 ifTrue: [
            recoveredBlock222Stack1 := nil.
            recoveredBlock222PC := 343.
        ].
        recoveredBlock222Step = 343 ifTrue: [
            recoveredBlock222Stack2 := recoveredBlock222Stack1.
            recoveredBlock222PC := 344.
        ].
        recoveredBlock222Step = 344 ifTrue: [
            recoveredBlock222Local2 := recoveredBlock222Stack2.
            recoveredBlock222PC := 345.
        ].
        recoveredBlock222Step = 345 ifTrue: [
            recoveredBlock222Local1 := recoveredBlock222Stack1.
            recoveredBlock222PC := 346.
        ].
        recoveredBlock222Step = 346 ifTrue: [
            recoveredBlock222Stack1 := recoveredBlock222Local3.
            recoveredBlock222PC := 347.
        ].
        recoveredBlock222Step = 347 ifTrue: [
            recoveredBlock222Result := recoveredBlock222Stack1.
            recoveredBlock222Done := true.
        ].
    ].
    recoveredBlock222Result
].
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack0) rationalApproximationDenominatorPowerOfTwoMaxBits: (recoveredStack1) test: (recoveredStack2).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 438] ifFalse: [recoveredPC := 356].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock357Value0 recoveredBlock357Value1 recoveredBlock357Value2 recoveredBlock357Value3 recoveredBlock357Value4 recoveredBlock357Value5 |
    recoveredBlock357Value0 := recoveredArg4.
    recoveredBlock357Value1 := (recoveredBlock357Value0) interval.
    recoveredBlock357Value2 := (recoveredBlock357Value1) asInteger.
    recoveredBlock357Value3 := recoveredLocal4.
    recoveredBlock357Value4 := (recoveredBlock357Value3) interval.
    recoveredBlock357Value5 := (recoveredBlock357Value2) includes: (recoveredBlock357Value4).
    recoveredBlock357Value5
].
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := [
    'ApproximationTransformation should not increase intervals.'
].
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionPowerOfTwoLiteralsWarningThreshold.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 406] ifFalse: [recoveredPC := 434].
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := 18.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack5 := (recoveredStack5) asString.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            (recoveredStack0) ileWarningNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


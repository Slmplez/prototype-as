"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201100a4; bytecode file offset 0xa0c964"
!SGIlResolveMatrixIndexOO methodsFor: 'recovered'!
resolveMatrixIndex: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
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
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205dcd78; bytecode file offset 0xed96bc"
!SGIlResolveMatrixIndexOO methodsFor: 'recovered'!
assignAtExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := super assignAtExpr: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDataMatrix.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 364].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 |
    recoveredBlock29Value0 := recoveredLocal6.
    recoveredBlock29Value1 := (recoveredBlock29Value0) args.
    recoveredBlock29Value2 := (recoveredBlock29Value1) size.
    recoveredBlock29Value3 := (recoveredBlock29Value2) = (2).
    recoveredBlock29Value3
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 recoveredBlock47Value3 recoveredBlock47Value4 |
    recoveredBlock47Value0 := recoveredLocal6.
    recoveredBlock47Value1 := (recoveredBlock47Value0) args.
    recoveredBlock47Value2 := (recoveredBlock47Value1) size.
    recoveredBlock47Value3 := ('Matrix access with ') , (recoveredBlock47Value2).
    recoveredBlock47Value4 := (recoveredBlock47Value3) , (' index expressions').
    recoveredBlock47Value4
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgVariableArray.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseExpr.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleReference.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgFixedArrayType.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 348].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMatrixDimension2D.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 348] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock111Value0 recoveredBlock111Value1 recoveredBlock111Value2 |
    recoveredBlock111Value0 := (self) optimizationFactory.
    recoveredBlock111Value1 := [
    | recoveredBlock111Block120Stack0 recoveredBlock111Block120Stack1 recoveredBlock111Block120Stack2 recoveredBlock111Block120Stack3 recoveredBlock111Block120Stack4 recoveredBlock111Block120Stack5 recoveredBlock111Block120Stack6 recoveredBlock111Block120PC recoveredBlock111Block120Step recoveredBlock111Block120Done recoveredBlock111Block120Result |
    recoveredBlock111Block120Stack0 := self.
    recoveredBlock111Block120PC := 126.
    recoveredBlock111Block120Done := false.
    [recoveredBlock111Block120Done not] whileTrue: [
        recoveredBlock111Block120Step := recoveredBlock111Block120PC.
        recoveredBlock111Block120Step = 126 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) generator.
            recoveredBlock111Block120PC := 128.
        ].
        recoveredBlock111Block120Step = 128 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) isMatrixOrientationColumnMajor.
            recoveredBlock111Block120PC := 130.
        ].
        recoveredBlock111Block120Step = 130 ifTrue: [
            (recoveredBlock111Block120Stack0) ifTrue: [recoveredBlock111Block120PC := 134] ifFalse: [recoveredBlock111Block120PC := 176].
        ].
        recoveredBlock111Block120Step = 134 ifTrue: [
            recoveredBlock111Block120Stack0 := recoveredLocal6.
            recoveredBlock111Block120PC := 137.
        ].
        recoveredBlock111Block120Step = 137 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) args.
            recoveredBlock111Block120PC := 139.
        ].
        recoveredBlock111Block120Step = 139 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) first.
            recoveredBlock111Block120PC := 141.
        ].
        recoveredBlock111Block120Step = 141 ifTrue: [
            recoveredLocal3 := recoveredBlock111Block120Stack0.
            recoveredBlock111Block120PC := 144.
        ].
        recoveredBlock111Block120Step = 144 ifTrue: [
            recoveredBlock111Block120Stack0 := recoveredLocal6.
            recoveredBlock111Block120PC := 147.
        ].
        recoveredBlock111Block120Step = 147 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) args.
            recoveredBlock111Block120PC := 149.
        ].
        recoveredBlock111Block120Step = 149 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) last.
            recoveredBlock111Block120PC := 151.
        ].
        recoveredBlock111Block120Step = 151 ifTrue: [
            recoveredLocal2 := recoveredBlock111Block120Stack0.
            recoveredBlock111Block120PC := 154.
        ].
        recoveredBlock111Block120Step = 154 ifTrue: [
            recoveredBlock111Block120Stack0 := recoveredLocal6.
            recoveredBlock111Block120PC := 157.
        ].
        recoveredBlock111Block120Step = 157 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) baseExpr.
            recoveredBlock111Block120PC := 158.
        ].
        recoveredBlock111Block120Step = 158 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) type.
            recoveredBlock111Block120PC := 159.
        ].
        recoveredBlock111Block120Step = 159 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) dimensions.
            recoveredBlock111Block120PC := 161.
        ].
        recoveredBlock111Block120Step = 161 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) last.
            recoveredBlock111Block120PC := 163.
        ].
        recoveredBlock111Block120Step = 163 ifTrue: [
            recoveredBlock111Block120Stack1 := recoveredLocal6.
            recoveredBlock111Block120PC := 166.
        ].
        recoveredBlock111Block120Step = 166 ifTrue: [
            recoveredBlock111Block120Stack1 := (recoveredBlock111Block120Stack1) baseExpr.
            recoveredBlock111Block120PC := 167.
        ].
        recoveredBlock111Block120Step = 167 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) ileMaxSize: (recoveredBlock111Block120Stack1).
            recoveredBlock111Block120PC := 169.
        ].
        recoveredBlock111Block120Step = 169 ifTrue: [
            recoveredLocal1 := recoveredBlock111Block120Stack0.
            recoveredBlock111Block120PC := 172.
        ].
        recoveredBlock111Block120Step = 172 ifTrue: [
            recoveredBlock111Block120PC := 214.
        ].
        recoveredBlock111Block120Step = 176 ifTrue: [
            recoveredBlock111Block120Stack0 := recoveredLocal6.
            recoveredBlock111Block120PC := 179.
        ].
        recoveredBlock111Block120Step = 179 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) args.
            recoveredBlock111Block120PC := 181.
        ].
        recoveredBlock111Block120Step = 181 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) last.
            recoveredBlock111Block120PC := 183.
        ].
        recoveredBlock111Block120Step = 183 ifTrue: [
            recoveredLocal3 := recoveredBlock111Block120Stack0.
            recoveredBlock111Block120PC := 186.
        ].
        recoveredBlock111Block120Step = 186 ifTrue: [
            recoveredBlock111Block120Stack0 := recoveredLocal6.
            recoveredBlock111Block120PC := 189.
        ].
        recoveredBlock111Block120Step = 189 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) args.
            recoveredBlock111Block120PC := 191.
        ].
        recoveredBlock111Block120Step = 191 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) first.
            recoveredBlock111Block120PC := 193.
        ].
        recoveredBlock111Block120Step = 193 ifTrue: [
            recoveredLocal2 := recoveredBlock111Block120Stack0.
            recoveredBlock111Block120PC := 196.
        ].
        recoveredBlock111Block120Step = 196 ifTrue: [
            recoveredBlock111Block120Stack0 := recoveredLocal6.
            recoveredBlock111Block120PC := 199.
        ].
        recoveredBlock111Block120Step = 199 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) baseExpr.
            recoveredBlock111Block120PC := 200.
        ].
        recoveredBlock111Block120Step = 200 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) type.
            recoveredBlock111Block120PC := 201.
        ].
        recoveredBlock111Block120Step = 201 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) dimensions.
            recoveredBlock111Block120PC := 203.
        ].
        recoveredBlock111Block120Step = 203 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) first.
            recoveredBlock111Block120PC := 205.
        ].
        recoveredBlock111Block120Step = 205 ifTrue: [
            recoveredBlock111Block120Stack1 := recoveredLocal6.
            recoveredBlock111Block120PC := 208.
        ].
        recoveredBlock111Block120Step = 208 ifTrue: [
            recoveredBlock111Block120Stack1 := (recoveredBlock111Block120Stack1) baseExpr.
            recoveredBlock111Block120PC := 209.
        ].
        recoveredBlock111Block120Step = 209 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) ileMaxSize: (recoveredBlock111Block120Stack1).
            recoveredBlock111Block120PC := 211.
        ].
        recoveredBlock111Block120Step = 211 ifTrue: [
            recoveredLocal1 := recoveredBlock111Block120Stack0.
            recoveredBlock111Block120PC := 214.
        ].
        recoveredBlock111Block120Step = 214 ifTrue: [
            recoveredBlock111Block120Stack0 := self.
            recoveredBlock111Block120PC := 215.
        ].
        recoveredBlock111Block120Step = 215 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) generator.
            recoveredBlock111Block120PC := 217.
        ].
        recoveredBlock111Block120Step = 217 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) isPhysicalVariant.
            recoveredBlock111Block120PC := 219.
        ].
        recoveredBlock111Block120Step = 219 ifTrue: [
            (recoveredBlock111Block120Stack0) ifTrue: [recoveredBlock111Block120PC := 222] ifFalse: [recoveredBlock111Block120PC := 260].
        ].
        recoveredBlock111Block120Step = 222 ifTrue: [
            recoveredBlock111Block120Stack0 := recoveredLocal6.
            recoveredBlock111Block120PC := 225.
        ].
        recoveredBlock111Block120Step = 225 ifTrue: [
            recoveredBlock111Block120Stack1 := Array.
            recoveredBlock111Block120PC := 227.
        ].
        recoveredBlock111Block120Step = 227 ifTrue: [
            recoveredBlock111Block120Stack2 := recoveredLocal2.
            recoveredBlock111Block120PC := 230.
        ].
        recoveredBlock111Block120Step = 230 ifTrue: [
            recoveredBlock111Block120Stack3 := recoveredLocal3.
            recoveredBlock111Block120PC := 233.
        ].
        recoveredBlock111Block120Step = 233 ifTrue: [
            recoveredBlock111Block120Stack4 := recoveredLocal1.
            recoveredBlock111Block120PC := 236.
        ].
        recoveredBlock111Block120Step = 236 ifTrue: [
            recoveredBlock111Block120Stack5 := recoveredLocal3.
            recoveredBlock111Block120PC := 239.
        ].
        recoveredBlock111Block120Step = 239 ifTrue: [
            recoveredBlock111Block120Stack5 := (recoveredBlock111Block120Stack5) type.
            recoveredBlock111Block120PC := 240.
        ].
        recoveredBlock111Block120Step = 240 ifTrue: [
            recoveredBlock111Block120Stack3 := (recoveredBlock111Block120Stack3) mul: (recoveredBlock111Block120Stack4) type: (recoveredBlock111Block120Stack5).
            recoveredBlock111Block120PC := 242.
        ].
        recoveredBlock111Block120Step = 242 ifTrue: [
            recoveredBlock111Block120Stack4 := recoveredLocal2.
            recoveredBlock111Block120PC := 245.
        ].
        recoveredBlock111Block120Step = 245 ifTrue: [
            recoveredBlock111Block120Stack4 := (recoveredBlock111Block120Stack4) type.
            recoveredBlock111Block120PC := 246.
        ].
        recoveredBlock111Block120Step = 246 ifTrue: [
            recoveredBlock111Block120Stack2 := (recoveredBlock111Block120Stack2) add: (recoveredBlock111Block120Stack3) type: (recoveredBlock111Block120Stack4).
            recoveredBlock111Block120PC := 248.
        ].
        recoveredBlock111Block120Step = 248 ifTrue: [
            recoveredBlock111Block120Stack1 := (recoveredBlock111Block120Stack1) with: (recoveredBlock111Block120Stack2).
            recoveredBlock111Block120PC := 250.
        ].
        recoveredBlock111Block120Step = 250 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) createWithArgs: (recoveredBlock111Block120Stack1).
            recoveredBlock111Block120PC := 252.
        ].
        recoveredBlock111Block120Step = 252 ifTrue: [
            recoveredBlock111Block120Stack1 := recoveredBlock111Block120Stack0.
            recoveredBlock111Block120PC := 253.
        ].
        recoveredBlock111Block120Step = 253 ifTrue: [
            recoveredLocal6 := recoveredBlock111Block120Stack1.
            recoveredBlock111Block120PC := 256.
        ].
        recoveredBlock111Block120Step = 256 ifTrue: [
            recoveredBlock111Block120PC := 342.
        ].
        recoveredBlock111Block120Step = 260 ifTrue: [
            recoveredBlock111Block120Stack0 := RBInterval.
            recoveredBlock111Block120PC := 262.
        ].
        recoveredBlock111Block120Step = 262 ifTrue: [
            recoveredBlock111Block120Stack1 := 0.
            recoveredBlock111Block120PC := 264.
        ].
        recoveredBlock111Block120Step = 264 ifTrue: [
            recoveredBlock111Block120Stack2 := self.
            recoveredBlock111Block120PC := 265.
        ].
        recoveredBlock111Block120Step = 265 ifTrue: [
            recoveredBlock111Block120Stack2 := (recoveredBlock111Block120Stack2) generator.
            recoveredBlock111Block120PC := 267.
        ].
        recoveredBlock111Block120Step = 267 ifTrue: [
            recoveredBlock111Block120Stack2 := (recoveredBlock111Block120Stack2) maxRepresentableUnsignedInDoubleBitSize.
            recoveredBlock111Block120PC := 269.
        ].
        recoveredBlock111Block120Step = 269 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) left: (recoveredBlock111Block120Stack1) right: (recoveredBlock111Block120Stack2).
            recoveredBlock111Block120PC := 271.
        ].
        recoveredBlock111Block120Step = 271 ifTrue: [
            recoveredLocal4 := recoveredBlock111Block120Stack0.
            recoveredBlock111Block120PC := 274.
        ].
        recoveredBlock111Block120Step = 274 ifTrue: [
            recoveredBlock111Block120Stack0 := recoveredLocal3.
            recoveredBlock111Block120PC := 277.
        ].
        recoveredBlock111Block120Step = 277 ifTrue: [
            recoveredBlock111Block120Stack1 := recoveredLocal4.
            recoveredBlock111Block120PC := 280.
        ].
        recoveredBlock111Block120Step = 280 ifTrue: [
            recoveredBlock111Block120Stack1 := (recoveredBlock111Block120Stack1) copy.
            recoveredBlock111Block120PC := 282.
        ].
        recoveredBlock111Block120Step = 282 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) decorateGoalInterval: (recoveredBlock111Block120Stack1).
            recoveredBlock111Block120PC := 284.
        ].
        recoveredBlock111Block120Step = 284 ifTrue: [
            recoveredLocal3 := recoveredBlock111Block120Stack0.
            recoveredBlock111Block120PC := 287.
        ].
        recoveredBlock111Block120Step = 287 ifTrue: [
            recoveredBlock111Block120Stack0 := recoveredLocal2.
            recoveredBlock111Block120PC := 290.
        ].
        recoveredBlock111Block120Step = 290 ifTrue: [
            recoveredBlock111Block120Stack1 := recoveredLocal4.
            recoveredBlock111Block120PC := 293.
        ].
        recoveredBlock111Block120Step = 293 ifTrue: [
            recoveredBlock111Block120Stack1 := (recoveredBlock111Block120Stack1) copy.
            recoveredBlock111Block120PC := 295.
        ].
        recoveredBlock111Block120Step = 295 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) decorateGoalInterval: (recoveredBlock111Block120Stack1).
            recoveredBlock111Block120PC := 297.
        ].
        recoveredBlock111Block120Step = 297 ifTrue: [
            recoveredLocal2 := recoveredBlock111Block120Stack0.
            recoveredBlock111Block120PC := 300.
        ].
        recoveredBlock111Block120Step = 300 ifTrue: [
            recoveredBlock111Block120Stack0 := recoveredLocal6.
            recoveredBlock111Block120PC := 303.
        ].
        recoveredBlock111Block120Step = 303 ifTrue: [
            recoveredBlock111Block120Stack1 := Array.
            recoveredBlock111Block120PC := 305.
        ].
        recoveredBlock111Block120Step = 305 ifTrue: [
            recoveredBlock111Block120Stack2 := recoveredLocal2.
            recoveredBlock111Block120PC := 308.
        ].
        recoveredBlock111Block120Step = 308 ifTrue: [
            recoveredBlock111Block120Stack3 := recoveredLocal3.
            recoveredBlock111Block120PC := 311.
        ].
        recoveredBlock111Block120Step = 311 ifTrue: [
            recoveredBlock111Block120Stack4 := recoveredLocal1.
            recoveredBlock111Block120PC := 314.
        ].
        recoveredBlock111Block120Step = 314 ifTrue: [
            recoveredBlock111Block120Stack5 := nil.
            recoveredBlock111Block120PC := 315.
        ].
        recoveredBlock111Block120Step = 315 ifTrue: [
            recoveredBlock111Block120Stack3 := (recoveredBlock111Block120Stack3) mul: (recoveredBlock111Block120Stack4) type: (recoveredBlock111Block120Stack5).
            recoveredBlock111Block120PC := 317.
        ].
        recoveredBlock111Block120Step = 317 ifTrue: [
            recoveredBlock111Block120Stack4 := recoveredLocal4.
            recoveredBlock111Block120PC := 320.
        ].
        recoveredBlock111Block120Step = 320 ifTrue: [
            recoveredBlock111Block120Stack4 := (recoveredBlock111Block120Stack4) copy.
            recoveredBlock111Block120PC := 322.
        ].
        recoveredBlock111Block120Step = 322 ifTrue: [
            recoveredBlock111Block120Stack3 := (recoveredBlock111Block120Stack3) decorateGoalInterval: (recoveredBlock111Block120Stack4).
            recoveredBlock111Block120PC := 324.
        ].
        recoveredBlock111Block120Step = 324 ifTrue: [
            recoveredBlock111Block120Stack4 := nil.
            recoveredBlock111Block120PC := 325.
        ].
        recoveredBlock111Block120Step = 325 ifTrue: [
            recoveredBlock111Block120Stack2 := (recoveredBlock111Block120Stack2) add: (recoveredBlock111Block120Stack3) type: (recoveredBlock111Block120Stack4).
            recoveredBlock111Block120PC := 327.
        ].
        recoveredBlock111Block120Step = 327 ifTrue: [
            recoveredBlock111Block120Stack3 := recoveredLocal4.
            recoveredBlock111Block120PC := 330.
        ].
        recoveredBlock111Block120Step = 330 ifTrue: [
            recoveredBlock111Block120Stack3 := (recoveredBlock111Block120Stack3) copy.
            recoveredBlock111Block120PC := 332.
        ].
        recoveredBlock111Block120Step = 332 ifTrue: [
            recoveredBlock111Block120Stack2 := (recoveredBlock111Block120Stack2) decorateGoalInterval: (recoveredBlock111Block120Stack3).
            recoveredBlock111Block120PC := 334.
        ].
        recoveredBlock111Block120Step = 334 ifTrue: [
            recoveredBlock111Block120Stack1 := (recoveredBlock111Block120Stack1) with: (recoveredBlock111Block120Stack2).
            recoveredBlock111Block120PC := 336.
        ].
        recoveredBlock111Block120Step = 336 ifTrue: [
            recoveredBlock111Block120Stack0 := (recoveredBlock111Block120Stack0) createWithArgs: (recoveredBlock111Block120Stack1).
            recoveredBlock111Block120PC := 338.
        ].
        recoveredBlock111Block120Step = 338 ifTrue: [
            recoveredBlock111Block120Stack1 := recoveredBlock111Block120Stack0.
            recoveredBlock111Block120PC := 339.
        ].
        recoveredBlock111Block120Step = 339 ifTrue: [
            recoveredLocal6 := recoveredBlock111Block120Stack1.
            recoveredBlock111Block120PC := 342.
        ].
        recoveredBlock111Block120Step = 342 ifTrue: [
            recoveredBlock111Block120Result := recoveredBlock111Block120Stack0.
            recoveredBlock111Block120Done := true.
        ].
    ].
    recoveredBlock111Block120Result
].
    recoveredBlock111Value2 := (recoveredBlock111Value0) disableAllOptimizationsDo: (recoveredBlock111Value1).
    recoveredBlock111Value2
].
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack0) executeInContext: (recoveredStack1).
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


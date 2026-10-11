"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200397e8; bytecode file offset 0x938608"
!SGIlProtectLoopsTransformation methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) protectStmnt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a9e8; bytecode file offset 0x938608"
!SGIlProtectLoopsTransformation methodsFor: 'recovered'!
repeatStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) protectStmnt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201329b0; bytecode file offset 0xa2f26c"
!SGIlProtectLoopsTransformation methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) protectLoop.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
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
            recoveredStack1 := (recoveredStack1) protectStmnt: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014695c; bytecode file offset 0xa43220"
!SGIlProtectLoopsTransformation methodsFor: 'recovered'!
visitNode: recoveredArg1
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
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super visitNode: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058bce4; bytecode file offset 0xe88650"
!SGIlProtectLoopsTransformation methodsFor: 'recovered'!
protectStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitLoopIterations.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 239].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizationFactory.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) operatorSimplificationImplAwareVisitor.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 recoveredBlock13Value8 recoveredBlock13Value9 recoveredBlock13Value10 recoveredBlock13Value11 recoveredBlock13Value12 recoveredBlock13Value13 recoveredBlock13Value14 recoveredBlock13Value15 recoveredBlock13Value16 recoveredBlock13Value17 recoveredBlock13Value18 recoveredBlock13Value19 recoveredBlock13Value20 recoveredBlock13Value21 recoveredBlock13Value22 recoveredBlock13Value23 recoveredBlock13Value24 recoveredBlock13Value25 recoveredBlock13Value26 recoveredBlock13Value27 recoveredBlock13Value28 recoveredBlock13Value29 recoveredBlock13Value30 recoveredBlock13Value31 recoveredBlock13Value32 recoveredBlock13Value33 recoveredBlock13Value34 recoveredBlock13Value35 recoveredBlock13Value36 recoveredBlock13Value37 recoveredBlock13Value38 recoveredBlock13Value39 recoveredBlock13Value40 recoveredBlock13Value41 recoveredBlock13Value42 recoveredBlock13Value43 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) createIleLoopTempVarType.
    recoveredLocal5 := recoveredBlock13Value1.
    recoveredBlock13Value2 := (self) ileBuilder.
    recoveredBlock13Value3 := recoveredLocal5.
    recoveredBlock13Value4 := (recoveredBlock13Value2) createDummyExprType: (recoveredBlock13Value3).
    recoveredLocal9 := recoveredBlock13Value4.
    recoveredBlock13Value5 := (self) ileBuilder.
    recoveredBlock13Value6 := recoveredLocal5.
    recoveredBlock13Value7 := (recoveredBlock13Value5) scalarConstant: (1) type: (recoveredBlock13Value6).
    recoveredLocal2 := recoveredBlock13Value7.
    recoveredBlock13Value8 := SGCgExpressionContext.
    recoveredBlock13Value9 := (recoveredBlock13Value8) uintContext.
    recoveredBlock13Value10 := [
    | recoveredBlock13Block55Value0 recoveredBlock13Block55Value1 recoveredBlock13Block55Value2 recoveredBlock13Block55Value3 recoveredBlock13Block55Value4 recoveredBlock13Block55Value5 recoveredBlock13Block55Value6 |
    recoveredBlock13Block55Value0 := (self) ileBuilder.
    recoveredBlock13Block55Value1 := recoveredLocal9.
    recoveredBlock13Block55Value2 := (recoveredBlock13Block55Value0) tempAssign: (recoveredBlock13Block55Value1).
    recoveredLocal4 := recoveredBlock13Block55Value2.
    recoveredBlock13Block55Value3 := recoveredLocal2.
    recoveredBlock13Block55Value4 := recoveredLocal4.
    recoveredBlock13Block55Value5 := (recoveredBlock13Block55Value4) asIleLValue.
    recoveredBlock13Block55Value6 := (recoveredBlock13Block55Value3) assignTo: (recoveredBlock13Block55Value5).
    recoveredBlock13Block55Value6
].
    recoveredBlock13Value11 := (recoveredBlock13Value9) executeInContext: (recoveredBlock13Value10).
    recoveredLocal8 := recoveredBlock13Value11.
    recoveredBlock13Value12 := (self) ileBuilder.
    recoveredBlock13Value13 := OrderedCollection.
    recoveredBlock13Value14 := (self) ileBuilder.
    recoveredBlock13Value15 := (self) generator.
    recoveredBlock13Value16 := (recoveredBlock13Value15) expander.
    recoveredBlock13Value17 := (self) generator.
    recoveredBlock13Value18 := (recoveredBlock13Value17) expander.
    recoveredBlock13Value19 := (recoveredBlock13Value18) errLabel.
    recoveredBlock13Value20 := (recoveredBlock13Value16) ileRunTimeErrNo: (3) with: (recoveredBlock13Value19).
    recoveredBlock13Value21 := (self) ileBuilder.
    recoveredBlock13Value22 := (recoveredBlock13Value21) ileVoid.
    recoveredBlock13Value23 := (recoveredBlock13Value14) createANSICExpr: (#()) template: (recoveredBlock13Value20) type: (recoveredBlock13Value22).
    recoveredBlock13Value24 := (recoveredBlock13Value23) asIleExprStmnt.
    recoveredBlock13Value25 := (self) ileBuilder.
    recoveredBlock13Value26 := (recoveredBlock13Value25) breakStmnt.
    recoveredBlock13Value27 := (recoveredBlock13Value13) with: (recoveredBlock13Value24) with: (recoveredBlock13Value26).
    recoveredBlock13Value28 := (recoveredBlock13Value12) stmntList: (recoveredBlock13Value27).
    recoveredLocal3 := recoveredBlock13Value28.
    recoveredBlock13Value29 := SGCgExpressionContext.
    recoveredBlock13Value30 := (recoveredBlock13Value29) uintContext.
    recoveredBlock13Value31 := [
    | recoveredBlock13Block138Value0 recoveredBlock13Block138Value1 recoveredBlock13Block138Value2 recoveredBlock13Block138Value3 recoveredBlock13Block138Value4 recoveredBlock13Block138Value5 recoveredBlock13Block138Value6 recoveredBlock13Block138Value7 recoveredBlock13Block138Value8 recoveredBlock13Block138Value9 recoveredBlock13Block138Value10 recoveredBlock13Block138Value11 recoveredBlock13Block138Value12 recoveredBlock13Block138Value13 |
    recoveredBlock13Block138Value0 := (self) ileBuilder.
    recoveredBlock13Block138Value1 := (self) ileBuilder.
    recoveredBlock13Block138Value2 := recoveredLocal4.
    recoveredBlock13Block138Value3 := (recoveredBlock13Block138Value2) asIleCopy.
    recoveredBlock13Block138Value4 := recoveredLocal5.
    recoveredBlock13Block138Value5 := (recoveredBlock13Block138Value1) createPostIncExpr: (recoveredBlock13Block138Value3) type: (recoveredBlock13Block138Value4).
    recoveredBlock13Block138Value6 := (self) ileBuilder.
    recoveredBlock13Block138Value7 := (self) generator.
    recoveredBlock13Block138Value8 := (recoveredBlock13Block138Value7) maxLoopIterate.
    recoveredBlock13Block138Value9 := (recoveredBlock13Block138Value6) createScalarConstant: (recoveredBlock13Block138Value8).
    recoveredBlock13Block138Value10 := SGCgExpressionContext.
    recoveredBlock13Block138Value11 := (recoveredBlock13Block138Value10) uintContext.
    recoveredBlock13Block138Value12 := (recoveredBlock13Block138Value0) createGreaterLeftExpr: (recoveredBlock13Block138Value5) rightExpr: (recoveredBlock13Block138Value9) expressionContext: (recoveredBlock13Block138Value11).
    recoveredBlock13Block138Value13 := recoveredBlock13Block138Value12.
    recoveredLocal7 := recoveredBlock13Block138Value13.
    recoveredBlock13Block138Value12
].
    (recoveredBlock13Value30) execute: (recoveredBlock13Value31).
    recoveredBlock13Value32 := (self) ileBuilder.
    recoveredBlock13Value33 := recoveredLocal7.
    recoveredBlock13Value34 := recoveredLocal3.
    recoveredBlock13Value35 := (recoveredBlock13Value32) ifExpr: (recoveredBlock13Value33) thenStmnt: (recoveredBlock13Value34).
    recoveredLocal6 := recoveredBlock13Value35.
    recoveredBlock13Value36 := recoveredArg1.
    recoveredBlock13Value37 := recoveredArg1.
    recoveredBlock13Value38 := (recoveredBlock13Value37) doStmnt.
    recoveredBlock13Value39 := (self) visitNode: (recoveredBlock13Value38).
    recoveredBlock13Value40 := recoveredLocal6.
    recoveredBlock13Value41 := (recoveredBlock13Value39) createNoOpAddLast: (recoveredBlock13Value40).
    recoveredBlock13Value42 := (recoveredBlock13Value36) createNoOpDoStmnt: (recoveredBlock13Value41).
    recoveredBlock13Value43 := recoveredBlock13Value42.
    recoveredLocal1 := recoveredBlock13Value43.
    recoveredBlock13Value42
].
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0) disableOptimizationsDo: (recoveredStack1).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleExprStmnt.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntList: (recoveredStack1).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := 921.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack4 := (recoveredStack4) generator.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack4 := (recoveredStack4) genContext.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack4 := (recoveredStack4) generationSettings.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack4 := (recoveredStack4) projectOptionSource.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack4 := #('See also project option').
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := (recoveredStack2) createMultiSource: (recoveredStack3) labels: (recoveredStack4).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


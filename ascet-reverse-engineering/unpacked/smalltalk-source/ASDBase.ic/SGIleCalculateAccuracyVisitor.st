"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000ce2c; bytecode file offset 0x909ab8"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
notExpr: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000cf1c; bytecode file offset 0x909ab8"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
binaryRelExpr: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000cf74; bytecode file offset 0x909ab8"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
abstractStmnt: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000f49c; bytecode file offset 0x90bd90"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
returnAssignLeft: recoveredArg1 right: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg2.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20039258; bytecode file offset 0x935c54"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
returnComma: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) last.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003beb4; bytecode file offset 0x9387a0"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
dummyExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) state.
    recoveredValue1 := (recoveredValue0) defaultData.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bec4; bytecode file offset 0x9387a0"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) state.
    recoveredValue1 := (recoveredValue0) defaultData.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bee4; bytecode file offset 0x9387a0"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
abstractConstant: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) state.
    recoveredValue1 := (recoveredValue0) defaultData.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048fbc; bytecode file offset 0x945888"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
resetCaseValues
    caseValue := nil.
    ^self
! !

"ASDBase.ic method 0x20056b00; bytecode file offset 0x9536dc"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
prePostIncDec: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056b90; bytecode file offset 0x9536dc"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
ternaryServiceExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) alternativeExpr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056d80; bytecode file offset 0x9536dc"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
negExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058518; bytecode file offset 0x956284"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
abstractIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) state.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) dataOfIdentifier: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059a30; bytecode file offset 0x9562ec"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
returnMethodCall: recoveredArg1 args: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIleCalculateAccuracyData.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009cad4; bytecode file offset 0x999628"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
initState
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIleCalculateAccuracyState.
    recoveredValue1 := (recoveredValue0) create.
    (self) state: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bbb5c; bytecode file offset 0x9b8438"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
declFieldAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) receiver.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := (self) state.
    recoveredValue3 := (recoveredValue2) defaultData.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bbb74; bytecode file offset 0x9b8438"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
abstractDirectAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) receiver.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := (self) state.
    recoveredValue3 := (recoveredValue2) defaultData.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d6680; bytecode file offset 0x9d3134"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
initialize
    super initialize.
    (self) initState.
    ^self
! !

"ASDBase.ic method 0x200d99ec; bytecode file offset 0x9d62d0"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
mulConstExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) rightExpr.
    recoveredValue5 := (recoveredValue4) value.
    recoveredValue6 := (recoveredValue2) mulConst: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200d9a08; bytecode file offset 0x9d62d0"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
divConstExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) rightExpr.
    recoveredValue5 := (recoveredValue4) value.
    recoveredValue6 := (recoveredValue2) divConst: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20111ae8; bytecode file offset 0xa0e3b4"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
returnMux: recoveredArg1 left: recoveredArg2 right: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) isIleArithmeticExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) or: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129b5c; bytecode file offset 0xa26468"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
caseValues
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := caseValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
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
            caseValue := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := caseValue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201394d8; bytecode file offset 0xa35d98"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleANSICExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014532c; bytecode file offset 0xa41bec"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
abstractStatementList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) stmntList.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) visitNode: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^nil
! !

"ASDBase.ic method 0x20186be0; bytecode file offset 0xa834a0"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
phonyAssignExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) expr.
    recoveredBlock7Value2 := (self) visitNode: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (self) checkContext: (recoveredValue0) do: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a42e4; bytecode file offset 0xaa0ba8"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
abstractNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    'Should not fall through to AbstractNode.'
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a79b0; bytecode file offset 0xaa4270"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
expression: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super expression: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) checkContext: (recoveredValue0) do: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201cfab4; bytecode file offset 0xacc390"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
returnMultiplex: recoveredArg1 choices: recoveredArg2 default: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleArithmeticExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := [:block280d5390Arg1 :block280d5390Arg2 | 
    | block280d5390Value0 block280d5390Value1 block280d5390Value2 |
    block280d5390Value0 := block280d5390Arg1.
    block280d5390Value1 := block280d5390Arg2.
    block280d5390Value2 := (block280d5390Value0) or: (block280d5390Value1).
    block280d5390Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20233f44; bytecode file offset 0xb30810"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Local1 recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) expr.
    recoveredBlock7Value2 := (self) visitNode: (recoveredBlock7Value1).
    recoveredBlock7Local1 := recoveredBlock7Value2.
    recoveredBlock7Value3 := (self) state.
    recoveredBlock7Value4 := recoveredArg1.
    recoveredBlock7Value5 := (recoveredBlock7Value4) lValue.
    recoveredBlock7Value6 := (recoveredBlock7Value5) expr.
    recoveredBlock7Value7 := recoveredBlock7Local1.
    (recoveredBlock7Value3) dataOfIdentifier: (recoveredBlock7Value6) put: (recoveredBlock7Value7).
    recoveredBlock7Value8 := recoveredBlock7Local1.
    recoveredBlock7Value8
].
    recoveredValue2 := (self) checkContext: (recoveredValue0) do: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2026e4d4; bytecode file offset 0xb6ad9c"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
checkContext: recoveredArg1 do: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleArithmeticExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSymbol.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
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
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIntContext.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202a58d0; bytecode file offset 0xba219c"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
returnStmnt: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) exprStmnt: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := caseValue.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) caseValues.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 |
    recoveredBlock26Value0 := (self) class.
    recoveredBlock26Value1 := recoveredBlock26Arg1.
    recoveredBlock26Value2 := recoveredLocal1.
    recoveredBlock26Value3 := (recoveredBlock26Value2) difference.
    recoveredBlock26Value4 := (recoveredBlock26Value0) IleCase: (recoveredBlock26Value1) result: (recoveredBlock26Value3).
    recoveredBlock26Value4
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043efb4; bytecode file offset 0xd3b8f8"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
returnBinary: recoveredArg1 left: recoveredArg2 right: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) addSub: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSubExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) addSub: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulExpr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := (recoveredStack4) interval.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) withRhs: (recoveredStack3) interval: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivExpr.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := (recoveredStack4) interval.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) withRhs: (recoveredStack3) interval: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRemExpr.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) integerRem: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBinaryRelOp.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := [
    'Unknown kind of binary expression'
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043f000; bytecode file offset 0xd3b8f8"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
returnBinaryService: recoveredArg1 left: recoveredArg2 right: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddServiceExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) addSub: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSubServiceExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) addSub: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulServiceExpr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstOperand.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) secondOperand.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := (recoveredStack4) interval.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) withRhs: (recoveredStack3) interval: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivServiceExpr.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstOperand.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := (recoveredStack4) secondOperand.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := (recoveredStack4) interval.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) withRhs: (recoveredStack3) interval: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRemServiceExpr.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) integerRem: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBinaryRelOp.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := [
    'Unknown kind of binary expression'
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052bbb4; bytecode file offset 0xe284c0"
!SGIleCalculateAccuracyVisitor methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) expr.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack0) visitNode: (recoveredBlock4Stack1).
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) stmnt.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) stmntList.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredLocal2 := recoveredBlock4Stack0.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack0 := OrderedCollection.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) new.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal2.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) size.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack1 := 0.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4PC := 151.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack2.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Stack3 := [
    | recoveredBlock4Block46Local1 recoveredBlock4Block46Stack0 recoveredBlock4Block46Stack1 recoveredBlock4Block46Stack2 recoveredBlock4Block46Stack3 recoveredBlock4Block46Stack4 recoveredBlock4Block46PC recoveredBlock4Block46Step recoveredBlock4Block46Done recoveredBlock4Block46Result |
    recoveredBlock4Block46Stack0 := self.
    recoveredBlock4Block46PC := 52.
    recoveredBlock4Block46Done := false.
    [recoveredBlock4Block46Done not] whileTrue: [
        recoveredBlock4Block46Step := recoveredBlock4Block46PC.
        recoveredBlock4Block46Step = 52 ifTrue: [
            recoveredBlock4Block46Stack1 := recoveredBlock4Local1.
            recoveredBlock4Block46PC := 55.
        ].
        recoveredBlock4Block46Step = 55 ifTrue: [
            recoveredBlock4Block46Local1 := recoveredBlock4Block46Stack1.
            recoveredBlock4Block46PC := 56.
        ].
        recoveredBlock4Block46Step = 56 ifTrue: [
            recoveredBlock4Block46PC := 63.
        ].
        recoveredBlock4Block46Step = 60 ifTrue: [
            recoveredBlock4Block46Stack1 := recoveredBlock4Block46Local1.
            recoveredBlock4Block46PC := 61.
        ].
        recoveredBlock4Block46Step = 61 ifTrue: [
            recoveredBlock4Block46Stack1 := (recoveredBlock4Block46Stack1) + (1).
            recoveredBlock4Block46PC := 62.
        ].
        recoveredBlock4Block46Step = 62 ifTrue: [
            recoveredBlock4Block46Local1 := recoveredBlock4Block46Stack1.
            recoveredBlock4Block46PC := 63.
        ].
        recoveredBlock4Block46Step = 63 ifTrue: [
            recoveredBlock4Block46Stack1 := recoveredLocal2.
            recoveredBlock4Block46PC := 66.
        ].
        recoveredBlock4Block46Step = 66 ifTrue: [
            recoveredBlock4Block46Stack2 := recoveredBlock4Block46Local1.
            recoveredBlock4Block46PC := 67.
        ].
        recoveredBlock4Block46Step = 67 ifTrue: [
            recoveredBlock4Block46Stack1 := (recoveredBlock4Block46Stack1) at: (recoveredBlock4Block46Stack2).
            recoveredBlock4Block46PC := 69.
        ].
        recoveredBlock4Block46Step = 69 ifTrue: [
            recoveredBlock4Block46Stack1 := (recoveredBlock4Block46Stack1) isIleDefaultStmnt.
            recoveredBlock4Block46PC := 71.
        ].
        recoveredBlock4Block46Step = 71 ifTrue: [
            (recoveredBlock4Block46Stack1) ifTrue: [recoveredBlock4Block46PC := 92] ifFalse: [recoveredBlock4Block46PC := 74].
        ].
        recoveredBlock4Block46Step = 74 ifTrue: [
            recoveredBlock4Block46Stack1 := self.
            recoveredBlock4Block46PC := 75.
        ].
        recoveredBlock4Block46Step = 75 ifTrue: [
            recoveredBlock4Block46Stack1 := (recoveredBlock4Block46Stack1) caseValues.
            recoveredBlock4Block46PC := 77.
        ].
        recoveredBlock4Block46Step = 77 ifTrue: [
            recoveredBlock4Block46Stack2 := recoveredLocal2.
            recoveredBlock4Block46PC := 80.
        ].
        recoveredBlock4Block46Step = 80 ifTrue: [
            recoveredBlock4Block46Stack3 := recoveredBlock4Block46Local1.
            recoveredBlock4Block46PC := 81.
        ].
        recoveredBlock4Block46Step = 81 ifTrue: [
            recoveredBlock4Block46Stack2 := (recoveredBlock4Block46Stack2) at: (recoveredBlock4Block46Stack3).
            recoveredBlock4Block46PC := 83.
        ].
        recoveredBlock4Block46Step = 83 ifTrue: [
            recoveredBlock4Block46Stack2 := (recoveredBlock4Block46Stack2) constantExpr.
            recoveredBlock4Block46PC := 85.
        ].
        recoveredBlock4Block46Step = 85 ifTrue: [
            recoveredBlock4Block46Stack2 := (recoveredBlock4Block46Stack2) value.
            recoveredBlock4Block46PC := 87.
        ].
        recoveredBlock4Block46Step = 87 ifTrue: [
            (recoveredBlock4Block46Stack1) add: (recoveredBlock4Block46Stack2).
            recoveredBlock4Block46PC := 89.
        ].
        recoveredBlock4Block46Step = 89 ifTrue: [
            recoveredBlock4Block46PC := 99.
        ].
        recoveredBlock4Block46Step = 92 ifTrue: [
            recoveredBlock4Block46Stack1 := self.
            recoveredBlock4Block46PC := 93.
        ].
        recoveredBlock4Block46Step = 93 ifTrue: [
            recoveredBlock4Block46Stack1 := (recoveredBlock4Block46Stack1) caseValues.
            recoveredBlock4Block46PC := 95.
        ].
        recoveredBlock4Block46Step = 95 ifTrue: [
            recoveredBlock4Block46Stack2 := 'default'.
            recoveredBlock4Block46PC := 97.
        ].
        recoveredBlock4Block46Step = 97 ifTrue: [
            (recoveredBlock4Block46Stack1) add: (recoveredBlock4Block46Stack2).
            recoveredBlock4Block46PC := 99.
        ].
        recoveredBlock4Block46Step = 99 ifTrue: [
            recoveredBlock4Block46Stack1 := self.
            recoveredBlock4Block46PC := 100.
        ].
        recoveredBlock4Block46Step = 100 ifTrue: [
            recoveredBlock4Block46Stack2 := recoveredLocal2.
            recoveredBlock4Block46PC := 103.
        ].
        recoveredBlock4Block46Step = 103 ifTrue: [
            recoveredBlock4Block46Stack3 := recoveredBlock4Block46Local1.
            recoveredBlock4Block46PC := 104.
        ].
        recoveredBlock4Block46Step = 104 ifTrue: [
            recoveredBlock4Block46Stack2 := (recoveredBlock4Block46Stack2) at: (recoveredBlock4Block46Stack3).
            recoveredBlock4Block46PC := 106.
        ].
        recoveredBlock4Block46Step = 106 ifTrue: [
            (recoveredBlock4Block46Stack1) visitNode: (recoveredBlock4Block46Stack2).
            recoveredBlock4Block46PC := 108.
        ].
        recoveredBlock4Block46Step = 108 ifTrue: [
            recoveredBlock4Block46Stack1 := recoveredBlock4Block46Local1.
            recoveredBlock4Block46PC := 109.
        ].
        recoveredBlock4Block46Step = 109 ifTrue: [
            recoveredBlock4Block46Stack2 := recoveredLocal2.
            recoveredBlock4Block46PC := 112.
        ].
        recoveredBlock4Block46Step = 112 ifTrue: [
            recoveredBlock4Block46Stack2 := (recoveredBlock4Block46Stack2) size.
            recoveredBlock4Block46PC := 114.
        ].
        recoveredBlock4Block46Step = 114 ifTrue: [
            recoveredBlock4Block46Stack1 := (recoveredBlock4Block46Stack1) < (recoveredBlock4Block46Stack2).
            recoveredBlock4Block46PC := 115.
        ].
        recoveredBlock4Block46Step = 115 ifTrue: [
            (recoveredBlock4Block46Stack1) ifTrue: [recoveredBlock4Block46PC := 118] ifFalse: [recoveredBlock4Block46PC := 128].
        ].
        recoveredBlock4Block46Step = 118 ifTrue: [
            recoveredBlock4Block46Stack1 := recoveredLocal2.
            recoveredBlock4Block46PC := 121.
        ].
        recoveredBlock4Block46Step = 121 ifTrue: [
            recoveredBlock4Block46Stack2 := recoveredBlock4Block46Local1.
            recoveredBlock4Block46PC := 122.
        ].
        recoveredBlock4Block46Step = 122 ifTrue: [
            recoveredBlock4Block46Stack1 := (recoveredBlock4Block46Stack1) at: (recoveredBlock4Block46Stack2).
            recoveredBlock4Block46PC := 124.
        ].
        recoveredBlock4Block46Step = 124 ifTrue: [
            recoveredBlock4Block46Stack1 := (recoveredBlock4Block46Stack1) hasIleUnconditionalEndCaseStmnt.
            recoveredBlock4Block46PC := 126.
        ].
        recoveredBlock4Block46Step = 126 ifTrue: [
            (recoveredBlock4Block46Stack1) ifTrue: [recoveredBlock4Block46PC := 128] ifFalse: [recoveredBlock4Block46PC := 60].
        ].
        recoveredBlock4Block46Step = 128 ifTrue: [
            recoveredBlock4Block46Stack1 := recoveredBlock4Block46Local1.
            recoveredBlock4Block46PC := 129.
        ].
        recoveredBlock4Block46Step = 129 ifTrue: [
            recoveredBlock4Block46Stack2 := recoveredLocal2.
            recoveredBlock4Block46PC := 132.
        ].
        recoveredBlock4Block46Step = 132 ifTrue: [
            recoveredBlock4Block46Stack2 := (recoveredBlock4Block46Stack2) size.
            recoveredBlock4Block46PC := 134.
        ].
        recoveredBlock4Block46Step = 134 ifTrue: [
            recoveredBlock4Block46Stack1 := (recoveredBlock4Block46Stack1) >= (recoveredBlock4Block46Stack2).
            recoveredBlock4Block46PC := 135.
        ].
        recoveredBlock4Block46Step = 135 ifTrue: [
            (recoveredBlock4Block46Stack1) ifTrue: [recoveredBlock4Block46PC := 138] ifFalse: [recoveredBlock4Block46PC := 146].
        ].
        recoveredBlock4Block46Step = 138 ifTrue: [
            recoveredBlock4Block46Stack1 := recoveredLocal1.
            recoveredBlock4Block46PC := 141.
        ].
        recoveredBlock4Block46Step = 141 ifTrue: [
            recoveredBlock4Block46Stack2 := self.
            recoveredBlock4Block46PC := 142.
        ].
        recoveredBlock4Block46Step = 142 ifTrue: [
            recoveredBlock4Block46Stack2 := (recoveredBlock4Block46Stack2) state.
            recoveredBlock4Block46PC := 144.
        ].
        recoveredBlock4Block46Step = 144 ifTrue: [
            (recoveredBlock4Block46Stack1) add: (recoveredBlock4Block46Stack2).
            recoveredBlock4Block46PC := 146.
        ].
        recoveredBlock4Block46Step = 146 ifTrue: [
            recoveredBlock4Block46Stack0 := (recoveredBlock4Block46Stack0) resetCaseValues.
            recoveredBlock4Block46PC := 148.
        ].
        recoveredBlock4Block46Step = 148 ifTrue: [
            recoveredBlock4Block46Result := recoveredBlock4Block46Stack0.
            recoveredBlock4Block46Done := true.
        ].
    ].
    recoveredBlock4Block46Result
].
            recoveredBlock4PC := 149.
        ].
        recoveredBlock4Step = 149 ifTrue: [
            (recoveredBlock4Stack2) localScope: (recoveredBlock4Stack3).
            recoveredBlock4PC := 151.
        ].
        recoveredBlock4Step = 151 ifTrue: [
            (recoveredBlock4Stack0 isInteger and: [recoveredBlock4Stack1 isInteger]) ifTrue: [(recoveredBlock4Stack1 + 1 <= recoveredBlock4Stack0) ifTrue: [recoveredBlock4Stack1 := recoveredBlock4Stack1 + 1. recoveredBlock4Stack2 := recoveredBlock4Stack1. recoveredBlock4PC := 42] ifFalse: [recoveredBlock4PC := 180]] ifFalse: [recoveredBlock4PC := 154].
        ].
        recoveredBlock4Step = 154 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 157.
        ].
        recoveredBlock4Step = 157 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 158.
        ].
        recoveredBlock4Step = 158 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 161.
        ].
        recoveredBlock4Step = 161 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) + (1).
            recoveredBlock4PC := 162.
        ].
        recoveredBlock4Step = 162 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Stack2.
            recoveredBlock4PC := 163.
        ].
        recoveredBlock4Step = 163 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack3.
            recoveredBlock4PC := 166.
        ].
        recoveredBlock4Step = 166 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) < (recoveredBlock4Stack2).
            recoveredBlock4PC := 167.
        ].
        recoveredBlock4Step = 167 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 176] ifFalse: [recoveredBlock4PC := 170].
        ].
        recoveredBlock4Step = 170 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 173.
        ].
        recoveredBlock4Step = 173 ifTrue: [
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 176 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 177.
        ].
        recoveredBlock4Step = 177 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 180.
        ].
        recoveredBlock4Step = 180 ifTrue: [
            recoveredBlock4PC := 181.
        ].
        recoveredBlock4Step = 181 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal1.
            recoveredBlock4PC := 184.
        ].
        recoveredBlock4Step = 184 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 185.
        ].
        recoveredBlock4Step = 185 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) breakStates.
            recoveredBlock4PC := 187.
        ].
        recoveredBlock4Step = 187 ifTrue: [
            (recoveredBlock4Stack0) addAll: (recoveredBlock4Stack1).
            recoveredBlock4PC := 189.
        ].
        recoveredBlock4Step = 189 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 190.
        ].
        recoveredBlock4Step = 190 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 193.
        ].
        recoveredBlock4Step = 193 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) merge: (recoveredBlock4Stack1).
            recoveredBlock4PC := 195.
        ].
        recoveredBlock4Step = 195 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) breakScopeDo: (recoveredValue0).
    ^self
! !


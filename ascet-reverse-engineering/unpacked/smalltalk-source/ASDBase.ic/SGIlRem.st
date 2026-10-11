"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000bb34; bytecode file offset 0x908be4"
!SGIlRem methodsFor: 'recovered'!
precedenceLevel
    | recoveredValue0 |
    recoveredValue0 := (self) precedenceLevelOfMulDiv.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a588; bytecode file offset 0x92209c"
!SGIlRem methodsFor: 'recovered'!
serviceLabel
    ^'%'
! !

"ASDBase.ic method 0x20038b98; bytecode file offset 0x935c54"
!SGIlRem methodsFor: 'recovered'!
isIleSameOperator: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isIleRemExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038bec; bytecode file offset 0x935c54"
!SGIlRem methodsFor: 'recovered'!
isIleSameOperationalLevel: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isIleMulDivExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054f30; bytecode file offset 0x952a9c"
!SGIlRem methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) remExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006e194; bytecode file offset 0x96af48"
!SGIlRem methodsFor: 'recovered'!
expressionContext
    | recoveredValue0 |
    recoveredValue0 := expressionContext.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074abc; bytecode file offset 0x9757c8"
!SGIlRem methodsFor: 'recovered'!
isIleRemExpr
    ^true
! !

"ASDBase.ic method 0x200a88c4; bytecode file offset 0x9a517c"
!SGIlRem methodsFor: 'recovered'!
expressionContext: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    expressionContext := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010b040; bytecode file offset 0xa079cc"
!SGIlRem methodsFor: 'recovered'!
calculateInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := (self) ileBuilder.
    recoveredValue3 := (recoveredValue2) calculateRemIntervalFor: (self).
    recoveredValue4 := (self) typeOrNil.
    recoveredValue5 := (recoveredValue1) adjustInterval: (recoveredValue3) forType: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201b7794; bytecode file offset 0xab4060"
!SGIlRem methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 leftExpr: recoveredArg3 rightExpr: recoveredArg4 limit: recoveredArg5 interval: recoveredArg6 goalInterval: recoveredArg7 unsafe: recoveredArg8 expressionContext: recoveredArg9
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg9.
    expressionContext := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := recoveredArg7.
    recoveredValue8 := recoveredArg8.
    super initializeSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (recoveredValue5) interval: (recoveredValue6) goalInterval: (recoveredValue7) unsafe: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201e3ee4; bytecode file offset 0xae07bc"
!SGIlRem methodsFor: 'recovered'!
asIleUnsafeOpExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) source.
    recoveredValue2 := (self) typeOrNil.
    recoveredValue3 := (self) leftExpr.
    recoveredValue4 := (self) rightExpr.
    recoveredValue5 := (self) ileBasicIntervalOrNil.
    recoveredValue6 := (self) goalInterval.
    recoveredValue7 := (self) expressionContext.
    recoveredValue8 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (nil) interval: (recoveredValue5) goalInterval: (recoveredValue6) unsafe: (true) expressionContext: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201fedf8; bytecode file offset 0xafb704"
!SGIlRem methodsFor: 'recovered'!
createOpWithRecalculatedInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) source.
    recoveredValue2 := (self) ileBasicType.
    recoveredValue3 := (self) leftExpr.
    recoveredValue4 := (self) rightExpr.
    recoveredValue5 := (self) limitOverflow.
    recoveredValue6 := (self) goalInterval.
    recoveredValue7 := (self) unsafe.
    recoveredValue8 := (self) expressionContext.
    recoveredValue9 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) rightExpr: (recoveredValue4) limit: (recoveredValue5) interval: (nil) goalInterval: (recoveredValue6) unsafe: (recoveredValue7) expressionContext: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x20263490; bytecode file offset 0xb5fd60"
!SGIlRem methodsFor: 'recovered'!
createOpLeftExpr: recoveredArg1 rightExpr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := (self) expressionContext.
    recoveredBlock7Value1 := [
    | recoveredBlock7Block15Value0 recoveredBlock7Block15Value1 recoveredBlock7Block15Value2 recoveredBlock7Block15Value3 |
    recoveredBlock7Block15Value0 := recoveredArg1.
    recoveredBlock7Block15Value1 := recoveredArg2.
    recoveredBlock7Block15Value2 := (self) ileBasicType.
    recoveredBlock7Block15Value3 := (recoveredBlock7Block15Value0) rem: (recoveredBlock7Block15Value1) type: (recoveredBlock7Block15Value2).
    recoveredBlock7Block15Value3
].
    recoveredBlock7Value2 := (recoveredBlock7Value0) executeInContext: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2026c520; bytecode file offset 0xb68e00"
!SGIlRem methodsFor: 'recovered'!
createOpLimitOverflow: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) limitOverflow.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := (recoveredStack6) ileBasicIntervalOrNil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := (recoveredStack7) goalInterval.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack8 := (recoveredStack8) unsafe.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack9 := (recoveredStack9) expressionContext.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) leftExpr: (recoveredStack3) rightExpr: (recoveredStack4) limit: (recoveredStack5) interval: (recoveredStack6) goalInterval: (recoveredStack7) unsafe: (recoveredStack8) expressionContext: (recoveredStack9).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203163bc; bytecode file offset 0xc12c9c"
!SGIlRem methodsFor: 'recovered'!
createNoOpLeftExpr: recoveredArg1 rightExpr: recoveredArg2 goalInterval: recoveredArg3 type: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := (recoveredStack5) limitOverflow.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack6 := (recoveredStack6) ileBasicIntervalOrNil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack7 := recoveredArg3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack8 := (recoveredStack8) unsafe.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack9 := (recoveredStack9) expressionContext.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) leftExpr: (recoveredStack3) rightExpr: (recoveredStack4) limit: (recoveredStack5) interval: (recoveredStack6) goalInterval: (recoveredStack7) unsafe: (recoveredStack8) expressionContext: (recoveredStack9).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


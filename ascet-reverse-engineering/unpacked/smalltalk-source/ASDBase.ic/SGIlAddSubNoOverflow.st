"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054ad4; bytecode file offset 0x952a9c"
!SGIlAddSubNoOverflow methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) addSubNoOverflowExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006e364; bytecode file offset 0x96af48"
!SGIlAddSubNoOverflow methodsFor: 'recovered'!
allOperands
    | recoveredValue0 |
    recoveredValue0 := allOperands.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e970; bytecode file offset 0x96b41c"
!SGIlAddSubNoOverflow methodsFor: 'recovered'!
overflownBitsWithoutConst
    | recoveredValue0 |
    recoveredValue0 := overflownBitsWithoutConst.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075c54; bytecode file offset 0x9757c8"
!SGIlAddSubNoOverflow methodsFor: 'recovered'!
isIleAddSubNoOverflowExpr
    ^true
! !

"ASDBase.ic method 0x200ae4a8; bytecode file offset 0x9ab034"
!SGIlAddSubNoOverflow methodsFor: 'recovered'!
collectAddends: recoveredArg1 inverse: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) originalExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) collectAddends: (recoveredValue1) inverse: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c4c34; bytecode file offset 0x9c16b0"
!SGIlAddSubNoOverflow methodsFor: 'recovered'!
allOperands: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    allOperands := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5000; bytecode file offset 0x9c1afc"
!SGIlAddSubNoOverflow methodsFor: 'recovered'!
overflownBitsWithoutConst: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    overflownBitsWithoutConst := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201dcfe8; bytecode file offset 0xad98a4"
!SGIlAddSubNoOverflow methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 originalExpr: recoveredArg3 limitedExpr: recoveredArg4 interval: recoveredArg5 goalInterval: recoveredArg6 overflownBits: recoveredArg7 allOperands: recoveredArg8 overflownBitsWithoutConst: recoveredArg9
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg8.
    allOperands := recoveredValue0.
    recoveredValue1 := recoveredArg9.
    overflownBitsWithoutConst := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    recoveredValue8 := recoveredArg7.
    super initializeSource: (recoveredValue2) type: (recoveredValue3) originalExpr: (recoveredValue4) limitedExpr: (recoveredValue5) interval: (recoveredValue6) goalInterval: (recoveredValue7) overflownBits: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20215e6c; bytecode file offset 0xb12750"
!SGIlAddSubNoOverflow methodsFor: 'recovered'!
add: recoveredArg1 type: recoveredArg2 allowOverflow: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddSubExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := super add: (recoveredStack1) type: (recoveredStack2) allowOverflow: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20215e88; bytecode file offset 0xb12750"
!SGIlAddSubNoOverflow methodsFor: 'recovered'!
sub: recoveredArg1 type: recoveredArg2 allowOverflow: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) sub: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddSubExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := super sub: (recoveredStack1) type: (recoveredStack2) allowOverflow: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cb038; bytecode file offset 0xbc7938"
!SGIlAddSubNoOverflow methodsFor: 'recovered'!
sub: recoveredArg1 type: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) originalExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) sub: (recoveredValue1) type: (recoveredValue2).
    recoveredValue4 := (self) validOptimizationResult: (recoveredValue3) goalInterval: (nil).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [
    | recoveredBlock23Value0 |
    recoveredBlock23Value0 := recoveredLocal1.
    ^recoveredBlock23Value0
].
    (recoveredValue5) notNil: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := super sub: (recoveredValue7) type: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x202cb054; bytecode file offset 0xbc7938"
!SGIlAddSubNoOverflow methodsFor: 'recovered'!
subFromConstant: recoveredArg1 type: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) originalExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) subFromConstant: (recoveredValue1) type: (recoveredValue2).
    recoveredValue4 := (self) validOptimizationResult: (recoveredValue3) goalInterval: (nil).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [
    | recoveredBlock23Value0 |
    recoveredBlock23Value0 := recoveredLocal1.
    ^recoveredBlock23Value0
].
    (recoveredValue5) notNil: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := super subFromConstant: (recoveredValue7) type: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x202cb070; bytecode file offset 0xbc7938"
!SGIlAddSubNoOverflow methodsFor: 'recovered'!
addToConstant: recoveredArg1 type: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) originalExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) addToConstant: (recoveredValue1) type: (recoveredValue2).
    recoveredValue4 := (self) validOptimizationResult: (recoveredValue3) goalInterval: (nil).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [
    | recoveredBlock23Value0 |
    recoveredBlock23Value0 := recoveredLocal1.
    ^recoveredBlock23Value0
].
    (recoveredValue5) notNil: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := super addToConstant: (recoveredValue7) type: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2033fe7c; bytecode file offset 0xc3c748"
!SGIlAddSubNoOverflow methodsFor: 'recovered'!
add: recoveredArg1 type: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) add: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleIdentical: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) validOptimizationResult: (recoveredStack1) goalInterval: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock37Value0 |
    recoveredBlock37Value0 := recoveredLocal2.
    ^recoveredBlock37Value0
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) notNil: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := super add: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204076fc; bytecode file offset 0xd03fe4"
!SGIlAddSubNoOverflow methodsFor: 'recovered'!
createOpOriginalExpr: recoveredArg1 limitedExpr: recoveredArg2 interval: recoveredArg3 goalInterval: recoveredArg4 type: recoveredArg5
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) originalExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) limitOverflowExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicIntervalOrNil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 recoveredBlock54Value4 recoveredBlock54Value5 recoveredBlock54Value6 recoveredBlock54Value7 recoveredBlock54Value8 recoveredBlock54Value9 recoveredBlock54Value10 |
    recoveredBlock54Value0 := (self) class.
    recoveredBlock54Value1 := (self) source.
    recoveredBlock54Value2 := recoveredArg5.
    recoveredBlock54Value3 := recoveredArg1.
    recoveredBlock54Value4 := recoveredArg2.
    recoveredBlock54Value5 := recoveredArg3.
    recoveredBlock54Value6 := recoveredArg4.
    recoveredBlock54Value7 := (self) overflownBitsOrNil.
    recoveredBlock54Value8 := (self) allOperands.
    recoveredBlock54Value9 := (self) overflownBitsWithoutConst.
    recoveredBlock54Value10 := (recoveredBlock54Value0) createSource: (recoveredBlock54Value1) type: (recoveredBlock54Value2) originalExpr: (recoveredBlock54Value3) limitedExpr: (recoveredBlock54Value4) interval: (recoveredBlock54Value5) goalInterval: (recoveredBlock54Value6) overflownBits: (recoveredBlock54Value7) allOperands: (recoveredBlock54Value8) overflownBitsWithoutConst: (recoveredBlock54Value9).
    recoveredBlock54Value10
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) executeInContext: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20669478; bytecode file offset 0xf65e54"
!SGIlAddSubNoOverflow methodsFor: 'recovered'!
createLimitedExpr
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleAddConstExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleSubConstExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstSubExpr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 833].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileConstChild.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 833].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 |
    recoveredBlock33Value0 := overflownBits.
    recoveredBlock33Value1 := (self) overflownBitsWithoutConst.
    recoveredBlock33Value2 := (recoveredBlock33Value0) - (recoveredBlock33Value1).
    recoveredBlock33Value3 := (recoveredBlock33Value2) <= (1).
    recoveredBlock33Value3
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := [
    'If the constant is representable, the additional overflow can be at most one bit'
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := overflownBits.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) overflownBitsWithoutConst.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileConstChild.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBeExpandedValue.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileConstChild.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := overflownBits.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMorePreciseThanShiftedBy: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExprChild.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMulConstExpr.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 833].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileAdjustInterval: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExprChild.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) intersect: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileAdjustInterval: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) representable.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 328] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstSubExpr.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxRepresentableUnsigned.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) negated.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) negated.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxRepresentableUnsigned.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack0) left: (recoveredStack1).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxRepresentableUnsigned.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack0) right: (recoveredStack1).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredPC := 328.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) minRepresentableSigned.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 328].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxRepresentableSigned.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 328].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := (recoveredStack2) minRepresentableSigned.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack0) left: (recoveredStack1).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxRepresentableSigned.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack0) right: (recoveredStack1).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack0 := (recoveredStack0) representable.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 336] ifFalse: [recoveredPC := 506].
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            overflownBits := recoveredStack0.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 358] ifFalse: [recoveredPC := 346].
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExprChild.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredPC := 369.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExprChild.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := (recoveredStack0) neg.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock373Value0 recoveredBlock373Value1 |
    recoveredBlock373Value0 := recoveredLocal7.
    recoveredBlock373Value1 := (recoveredBlock373Value0) isIleRepresentable.
    recoveredBlock373Value1
].
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack2 := [
    'Limitation to a representable interval should be representable'
].
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleAddSubNoOverflowExpr.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 422] ifFalse: [recoveredPC := 406].
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNegNoOverflowExpr.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 422] ifFalse: [recoveredPC := 414].
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleSimpleNoOverflowExpr.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 422] ifFalse: [recoveredPC := 437].
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack0 := (recoveredStack0) overflownBits.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            overflownBits := recoveredStack0.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitOverflowExpr.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 454] ifFalse: [recoveredPC := 444].
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpExprChild: (recoveredStack1).
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredPC := 466.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack0 := (recoveredStack0) add: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock470Stack0 recoveredBlock470Stack1 recoveredBlock470Stack2 recoveredBlock470Stack3 recoveredBlock470PC recoveredBlock470Step recoveredBlock470Done recoveredBlock470Result |
    recoveredBlock470Stack0 := self.
    recoveredBlock470PC := 476.
    recoveredBlock470Done := false.
    [recoveredBlock470Done not] whileTrue: [
        recoveredBlock470Step := recoveredBlock470PC.
        recoveredBlock470Step = 476 ifTrue: [
            recoveredBlock470Stack1 := true.
            recoveredBlock470PC := 477.
        ].
        recoveredBlock470Step = 477 ifTrue: [
            recoveredBlock470Stack2 := self.
            recoveredBlock470PC := 478.
        ].
        recoveredBlock470Step = 478 ifTrue: [
            recoveredBlock470Stack2 := (recoveredBlock470Stack2) goalInterval.
            recoveredBlock470PC := 480.
        ].
        recoveredBlock470Step = 480 ifTrue: [
            recoveredBlock470Stack2 := (recoveredBlock470Stack2) representable.
            recoveredBlock470PC := 482.
        ].
        recoveredBlock470Step = 482 ifTrue: [
            (recoveredBlock470Stack2) ifTrue: [recoveredBlock470PC := 486] ifFalse: [recoveredBlock470PC := 492].
        ].
        recoveredBlock470Step = 486 ifTrue: [
            recoveredBlock470PC := 487.
        ].
        recoveredBlock470Step = 487 ifTrue: [
            recoveredBlock470Stack1 := recoveredLocal7.
            recoveredBlock470PC := 490.
        ].
        recoveredBlock470Step = 490 ifTrue: [
            recoveredBlock470Stack1 := (recoveredBlock470Stack1) isIleRepresentable.
            recoveredBlock470PC := 492.
        ].
        recoveredBlock470Step = 492 ifTrue: [
            recoveredBlock470Result := recoveredBlock470Stack1.
            recoveredBlock470Done := true.
        ].
    ].
    recoveredBlock470Result
].
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack2 := [
    'Limitation to a representable interval should be representable'
].
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredPC := 829.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack0 := overflownBits.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := (recoveredStack1) overflownBitsWithoutConst.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 516] ifFalse: [recoveredPC := 829].
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileConstChild.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack3 := overflownBits.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack2 := (recoveredStack2) powerTo: (recoveredStack3).
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack0 := (recoveredStack0) scalarConstant: (recoveredStack1).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBeExpandedValue.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileConstChild.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack0 := (recoveredStack0) scalarConstant: (recoveredStack1).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBeExpandedValue.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileConstChild.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 614] ifFalse: [recoveredPC := 588].
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileConstChild.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack4 := overflownBits.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack3 := (recoveredStack3) powerTo: (recoveredStack4).
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 614] ifFalse: [recoveredPC := 817].
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileConstChild.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack0 := (recoveredStack0) scalarConstant: (recoveredStack1).
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleIntegerConstant.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 640] ifFalse: [recoveredPC := 813].
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileAdjustInterval: (recoveredStack1).
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExprChild.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNoOverflowExpr.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 670] ifFalse: [recoveredPC := 678].
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack0 := (recoveredStack0) overflownBits.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredPC := 680.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            overflownBits := recoveredStack0.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack0 := (recoveredStack0) div: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpExprChild: (recoveredStack1) constChild: (recoveredStack2).
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack0 := (recoveredStack0) goalInterval.
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 753] ifFalse: [recoveredPC := 738].
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            overflownBits := recoveredStack0.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredStack2 := (recoveredStack2) originalExpr.
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock777Stack0 recoveredBlock777Stack1 recoveredBlock777Stack2 recoveredBlock777Stack3 recoveredBlock777PC recoveredBlock777Step recoveredBlock777Done recoveredBlock777Result |
    recoveredBlock777Stack0 := self.
    recoveredBlock777PC := 784.
    recoveredBlock777Done := false.
    [recoveredBlock777Done not] whileTrue: [
        recoveredBlock777Step := recoveredBlock777PC.
        recoveredBlock777Step = 784 ifTrue: [
            recoveredBlock777Stack1 := true.
            recoveredBlock777PC := 785.
        ].
        recoveredBlock777Step = 785 ifTrue: [
            recoveredBlock777Stack2 := self.
            recoveredBlock777PC := 786.
        ].
        recoveredBlock777Step = 786 ifTrue: [
            recoveredBlock777Stack2 := (recoveredBlock777Stack2) goalInterval.
            recoveredBlock777PC := 788.
        ].
        recoveredBlock777Step = 788 ifTrue: [
            recoveredBlock777Stack2 := (recoveredBlock777Stack2) representable.
            recoveredBlock777PC := 790.
        ].
        recoveredBlock777Step = 790 ifTrue: [
            (recoveredBlock777Stack2) ifTrue: [recoveredBlock777PC := 794] ifFalse: [recoveredBlock777PC := 800].
        ].
        recoveredBlock777Step = 794 ifTrue: [
            recoveredBlock777PC := 795.
        ].
        recoveredBlock777Step = 795 ifTrue: [
            recoveredBlock777Stack1 := recoveredLocal7.
            recoveredBlock777PC := 798.
        ].
        recoveredBlock777Step = 798 ifTrue: [
            recoveredBlock777Stack1 := (recoveredBlock777Stack1) isIleRepresentable.
            recoveredBlock777PC := 800.
        ].
        recoveredBlock777Step = 800 ifTrue: [
            recoveredBlock777Result := recoveredBlock777Stack1.
            recoveredBlock777Done := true.
        ].
    ].
    recoveredBlock777Result
].
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack2 := [
    'Limitation to a representable interval should be representable'
].
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 813.
        ].
        recoveredStep = 813 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 817.
        ].
        recoveredStep = 817 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 1066] ifFalse: [recoveredPC := 840].
        ].
        recoveredStep = 840 ifTrue: [
            recoveredStack0 := overflownBits.
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock845Value0 recoveredBlock845Value1 recoveredBlock845Value2 recoveredBlock845Value3 recoveredBlock845Value4 recoveredBlock845Value5 recoveredBlock845Value6 recoveredBlock845Value7 recoveredBlock845Value8 recoveredBlock845Value9 recoveredBlock845Value10 recoveredBlock845Value11 recoveredBlock845Value12 recoveredBlock845Value13 |
    recoveredBlock845Value0 := (self) ileBuilder.
    recoveredBlock845Value1 := recoveredLocal9.
    recoveredBlock845Value2 := (2) raisedTo: (recoveredBlock845Value1).
    recoveredBlock845Value3 := (recoveredBlock845Value0) createIntConstant: (recoveredBlock845Value2).
    recoveredLocal8 := recoveredBlock845Value3.
    recoveredBlock845Value4 := (self) ileBuilder.
    recoveredBlock845Value5 := (recoveredBlock845Value4) literalZero.
    recoveredLocal7 := recoveredBlock845Value5.
    recoveredBlock845Value6 := (self) allOperands.
    recoveredBlock845Value7 := [:recoveredBlock845Block885Arg1 | 
    | recoveredBlock845Block885Local1 recoveredBlock845Block885Stack0 recoveredBlock845Block885Stack1 recoveredBlock845Block885Stack2 recoveredBlock845Block885Stack3 recoveredBlock845Block885PC recoveredBlock845Block885Step recoveredBlock845Block885Done recoveredBlock845Block885Result |
    recoveredBlock845Block885Stack0 := self.
    recoveredBlock845Block885PC := 892.
    recoveredBlock845Block885Done := false.
    [recoveredBlock845Block885Done not] whileTrue: [
        recoveredBlock845Block885Step := recoveredBlock845Block885PC.
        recoveredBlock845Block885Step = 892 ifTrue: [
            recoveredBlock845Block885Stack1 := recoveredBlock845Block885Arg1.
            recoveredBlock845Block885PC := 893.
        ].
        recoveredBlock845Block885Step = 893 ifTrue: [
            recoveredBlock845Block885Stack2 := 2.
            recoveredBlock845Block885PC := 895.
        ].
        recoveredBlock845Block885Step = 895 ifTrue: [
            recoveredBlock845Block885Stack1 := (recoveredBlock845Block885Stack1) at: (recoveredBlock845Block885Stack2).
            recoveredBlock845Block885PC := 899.
        ].
        recoveredBlock845Block885Step = 899 ifTrue: [
            recoveredBlock845Block885Stack2 := recoveredLocal8.
            recoveredBlock845Block885PC := 902.
        ].
        recoveredBlock845Block885Step = 902 ifTrue: [
            recoveredBlock845Block885Stack0 := (recoveredBlock845Block885Stack0) divForNoOverflow: (recoveredBlock845Block885Stack1) by: (recoveredBlock845Block885Stack2).
            recoveredBlock845Block885PC := 907.
        ].
        recoveredBlock845Block885Step = 907 ifTrue: [
            recoveredBlock845Block885Local1 := recoveredBlock845Block885Stack0.
            recoveredBlock845Block885PC := 908.
        ].
        recoveredBlock845Block885Step = 908 ifTrue: [
            recoveredBlock845Block885Stack0 := recoveredBlock845Block885Local1.
            recoveredBlock845Block885PC := 909.
        ].
        recoveredBlock845Block885Step = 909 ifTrue: [
            recoveredBlock845Block885Stack0 := (recoveredBlock845Block885Stack0) isIleNoOverflowExpr.
            recoveredBlock845Block885PC := 911.
        ].
        recoveredBlock845Block885Step = 911 ifTrue: [
            (recoveredBlock845Block885Stack0) ifTrue: [recoveredBlock845Block885PC := 914] ifFalse: [recoveredBlock845Block885PC := 934].
        ].
        recoveredBlock845Block885Step = 914 ifTrue: [
            recoveredBlock845Block885Stack0 := recoveredBlock845Block885Local1.
            recoveredBlock845Block885PC := 915.
        ].
        recoveredBlock845Block885Step = 915 ifTrue: [
            recoveredBlock845Block885Stack0 := (recoveredBlock845Block885Stack0) isIleLimitingNoOverflow.
            recoveredBlock845Block885PC := 919.
        ].
        recoveredBlock845Block885Step = 919 ifTrue: [
            (recoveredBlock845Block885Stack0) ifTrue: [recoveredBlock845Block885PC := 922] ifFalse: [recoveredBlock845Block885PC := 934].
        ].
        recoveredBlock845Block885Step = 922 ifTrue: [
            recoveredBlock845Block885Stack0 := recoveredBlock845Block885Local1.
            recoveredBlock845Block885PC := 923.
        ].
        recoveredBlock845Block885Step = 923 ifTrue: [
            recoveredBlock845Block885Stack0 := (recoveredBlock845Block885Stack0) originalExpr.
            recoveredBlock845Block885PC := 924.
        ].
        recoveredBlock845Block885Step = 924 ifTrue: [
            recoveredBlock845Block885Stack1 := recoveredBlock845Block885Local1.
            recoveredBlock845Block885PC := 925.
        ].
        recoveredBlock845Block885Step = 925 ifTrue: [
            recoveredBlock845Block885Stack1 := (recoveredBlock845Block885Stack1) interval.
            recoveredBlock845Block885PC := 927.
        ].
        recoveredBlock845Block885Step = 927 ifTrue: [
            recoveredBlock845Block885Stack1 := (recoveredBlock845Block885Stack1) largestRepresentableInterval.
            recoveredBlock845Block885PC := 931.
        ].
        recoveredBlock845Block885Step = 931 ifTrue: [
            recoveredBlock845Block885Stack0 := (recoveredBlock845Block885Stack0) asIleLimitOverflowExprGoalInterval: (recoveredBlock845Block885Stack1).
            recoveredBlock845Block885PC := 933.
        ].
        recoveredBlock845Block885Step = 933 ifTrue: [
            recoveredBlock845Block885Local1 := recoveredBlock845Block885Stack0.
            recoveredBlock845Block885PC := 934.
        ].
        recoveredBlock845Block885Step = 934 ifTrue: [
            recoveredBlock845Block885Stack0 := recoveredBlock845Block885Arg1.
            recoveredBlock845Block885PC := 935.
        ].
        recoveredBlock845Block885Step = 935 ifTrue: [
            recoveredBlock845Block885Stack1 := 1.
            recoveredBlock845Block885PC := 937.
        ].
        recoveredBlock845Block885Step = 937 ifTrue: [
            recoveredBlock845Block885Stack0 := (recoveredBlock845Block885Stack0) at: (recoveredBlock845Block885Stack1).
            recoveredBlock845Block885PC := 941.
        ].
        recoveredBlock845Block885Step = 941 ifTrue: [
            (recoveredBlock845Block885Stack0) ifTrue: [recoveredBlock845Block885PC := 944] ifFalse: [recoveredBlock845Block885PC := 960].
        ].
        recoveredBlock845Block885Step = 944 ifTrue: [
            recoveredBlock845Block885Stack0 := recoveredLocal7.
            recoveredBlock845Block885PC := 947.
        ].
        recoveredBlock845Block885Step = 947 ifTrue: [
            recoveredBlock845Block885Stack1 := recoveredBlock845Block885Local1.
            recoveredBlock845Block885PC := 948.
        ].
        recoveredBlock845Block885Step = 948 ifTrue: [
            recoveredBlock845Block885Stack2 := nil.
            recoveredBlock845Block885PC := 949.
        ].
        recoveredBlock845Block885Step = 949 ifTrue: [
            recoveredBlock845Block885Stack0 := (recoveredBlock845Block885Stack0) sub: (recoveredBlock845Block885Stack1) type: (recoveredBlock845Block885Stack2).
            recoveredBlock845Block885PC := 953.
        ].
        recoveredBlock845Block885Step = 953 ifTrue: [
            recoveredBlock845Block885Stack1 := recoveredBlock845Block885Stack0.
            recoveredBlock845Block885PC := 954.
        ].
        recoveredBlock845Block885Step = 954 ifTrue: [
            recoveredLocal7 := recoveredBlock845Block885Stack1.
            recoveredBlock845Block885PC := 957.
        ].
        recoveredBlock845Block885Step = 957 ifTrue: [
            recoveredBlock845Block885PC := 971.
        ].
        recoveredBlock845Block885Step = 960 ifTrue: [
            recoveredBlock845Block885Stack0 := recoveredLocal7.
            recoveredBlock845Block885PC := 963.
        ].
        recoveredBlock845Block885Step = 963 ifTrue: [
            recoveredBlock845Block885Stack1 := recoveredBlock845Block885Local1.
            recoveredBlock845Block885PC := 964.
        ].
        recoveredBlock845Block885Step = 964 ifTrue: [
            recoveredBlock845Block885Stack2 := nil.
            recoveredBlock845Block885PC := 965.
        ].
        recoveredBlock845Block885Step = 965 ifTrue: [
            recoveredBlock845Block885Stack0 := (recoveredBlock845Block885Stack0) add: (recoveredBlock845Block885Stack1) type: (recoveredBlock845Block885Stack2).
            recoveredBlock845Block885PC := 967.
        ].
        recoveredBlock845Block885Step = 967 ifTrue: [
            recoveredBlock845Block885Stack1 := recoveredBlock845Block885Stack0.
            recoveredBlock845Block885PC := 968.
        ].
        recoveredBlock845Block885Step = 968 ifTrue: [
            recoveredLocal7 := recoveredBlock845Block885Stack1.
            recoveredBlock845Block885PC := 971.
        ].
        recoveredBlock845Block885Step = 971 ifTrue: [
            recoveredBlock845Block885Result := recoveredBlock845Block885Stack0.
            recoveredBlock845Block885Done := true.
        ].
    ].
    recoveredBlock845Block885Result
].
    (recoveredBlock845Value6) do: (recoveredBlock845Value7).
    recoveredBlock845Value8 := recoveredLocal9.
    recoveredBlock845Value9 := (recoveredBlock845Value8) + (1).
    recoveredLocal9 := recoveredBlock845Value9.
    recoveredBlock845Value10 := recoveredLocal7.
    recoveredBlock845Value11 := (recoveredBlock845Value10) interval.
    recoveredBlock845Value12 := (self) overflowOfInterval: (recoveredBlock845Value11).
    recoveredBlock845Value13 := (recoveredBlock845Value12) > (0).
    recoveredBlock845Value13
].
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            (recoveredStack0) whileTrue.
            recoveredPC := 1003.
        ].
        recoveredStep = 1003 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1006.
        ].
        recoveredStep = 1006 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 1007.
        ].
        recoveredStep = 1007 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 1009.
        ].
        recoveredStep = 1009 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 1014.
        ].
        recoveredStep = 1014 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitExprGoalInterval: (recoveredStack1) shiftValue: (recoveredStack2).
            recoveredPC := 1019.
        ].
        recoveredStep = 1019 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 1022.
        ].
        recoveredStep = 1022 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1025.
        ].
        recoveredStep = 1025 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1028.
        ].
        recoveredStep = 1028 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            recoveredStack2 := (recoveredStack2) originalExpr.
            recoveredPC := 1030.
        ].
        recoveredStep = 1030 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 1032.
        ].
        recoveredStep = 1032 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 1037.
        ].
        recoveredStep = 1037 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1038.
        ].
        recoveredStep = 1038 ifTrue: [
            recoveredStack0 := (recoveredStack0) goalInterval.
            recoveredPC := 1040.
        ].
        recoveredStep = 1040 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1043.
        ].
        recoveredStep = 1043 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 1045.
        ].
        recoveredStep = 1045 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 1047.
        ].
        recoveredStep = 1047 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1066] ifFalse: [recoveredPC := 1050].
        ].
        recoveredStep = 1050 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1053.
        ].
        recoveredStep = 1053 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 1058.
        ].
        recoveredStep = 1058 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitExprGoalInterval: (recoveredStack1) shiftValue: (recoveredStack2).
            recoveredPC := 1063.
        ].
        recoveredStep = 1063 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 1066.
        ].
        recoveredStep = 1066 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1067.
        ].
        recoveredStep = 1067 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            (recoveredStack0) limitOverflowExpr: (recoveredStack1).
            recoveredPC := 1075.
        ].
        recoveredStep = 1075 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 1077.
        ].
        recoveredStep = 1077 ifTrue: [
            (recoveredStack0) allOperands: (recoveredStack1).
            recoveredPC := 1081.
        ].
        recoveredStep = 1081 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1082.
        ].
        recoveredStep = 1082 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 1083.
        ].
        recoveredStep = 1083 ifTrue: [
            (recoveredStack0) overflownBitsWithoutConst: (recoveredStack1).
            recoveredPC := 1087.
        ].
        recoveredStep = 1087 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1088.
        ].
        recoveredStep = 1088 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


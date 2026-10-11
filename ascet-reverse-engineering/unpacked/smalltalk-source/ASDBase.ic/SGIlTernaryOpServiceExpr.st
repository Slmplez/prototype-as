"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20033e14; bytecode file offset 0x934580"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
thirdOperandServiceKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) thirdOperand.
    recoveredValue1 := (recoveredValue0) shortCType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055f98; bytecode file offset 0x952a9c"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ternaryServiceExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ea98; bytecode file offset 0x96b41c"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
thirdOperand
    | recoveredValue0 |
    recoveredValue0 := thirdOperand.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007ed9c; bytecode file offset 0x97c330"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
isIleBinOpServiceExpr
    ^false
! !

"ASDBase.ic method 0x2008e84c; bytecode file offset 0x98b308"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
isIleLimitServiceExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) serviceLabel.
    recoveredValue1 := SGCgServiceTable.
    recoveredValue2 := (recoveredValue1) limitServiceLabel.
    recoveredValue3 := (recoveredValue0) equals: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d5678; bytecode file offset 0x9d2050"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
ileWrapperHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super ileWrapperHash.
    recoveredValue1 := (self) thirdOperand.
    recoveredValue2 := (recoveredValue1) ileWrapperHash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d7ed4; bytecode file offset 0x9d4794"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
createNoOpThirdOperand: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) firstOperand.
    recoveredValue1 := (self) secondOperand.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createNoOpFirstOperand: (recoveredValue0) secondOperand: (recoveredValue1) thirdOperand: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d7f3c; bytecode file offset 0x9d4810"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
createNoOpSecondOperand: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) firstOperand.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) thirdOperand.
    recoveredValue3 := (self) createNoOpFirstOperand: (recoveredValue0) secondOperand: (recoveredValue1) thirdOperand: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ee120; bytecode file offset 0x9ea9dc"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
createNoOpFirstOperand: recoveredArg1 secondOperand: recoveredArg2 thirdOperand: recoveredArg3 type: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) alternativeExpr.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (self) createNoOpFirstOperand: (recoveredValue0) secondOperand: (recoveredValue1) thirdOperand: (recoveredValue2) alternativeExpr: (recoveredValue3) type: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ee1ac; bytecode file offset 0x9eaaa8"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
createFirstOperand: recoveredArg1 secondOperand: recoveredArg2 thirdOperand: recoveredArg3 alternativeExpr: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) typeOrNil.
    recoveredValue5 := (self) createNoOpFirstOperand: (recoveredValue0) secondOperand: (recoveredValue1) thirdOperand: (recoveredValue2) alternativeExpr: (recoveredValue3) type: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ee1dc; bytecode file offset 0x9eaaa8"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
createNoOpFirstOperand: recoveredArg1 secondOperand: recoveredArg2 thirdOperand: recoveredArg3 alternativeExpr: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) typeOrNil.
    recoveredValue5 := (self) createNoOpFirstOperand: (recoveredValue0) secondOperand: (recoveredValue1) thirdOperand: (recoveredValue2) alternativeExpr: (recoveredValue3) type: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20101f80; bytecode file offset 0x9fe840"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
createNoOpFirstOperand: recoveredArg1 alternativeExpr: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) secondOperand.
    recoveredValue2 := (self) thirdOperand.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (self) createNoOpFirstOperand: (recoveredValue0) secondOperand: (recoveredValue1) thirdOperand: (recoveredValue2) alternativeExpr: (recoveredValue3) type: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20102064; bytecode file offset 0x9fe924"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
createNoOpFirstOperand: recoveredArg1 secondOperand: recoveredArg2 thirdOperand: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) alternativeExpr.
    recoveredValue4 := (self) typeOrNil.
    recoveredValue5 := (self) createNoOpFirstOperand: (recoveredValue0) secondOperand: (recoveredValue1) thirdOperand: (recoveredValue2) alternativeExpr: (recoveredValue3) type: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20112044; bytecode file offset 0xa0e904"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
createNoOpFirstOperand: recoveredArg1 alternativeExpr: recoveredArg2 type: recoveredArg3 goalInterval: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) secondOperand.
    recoveredValue2 := (self) thirdOperand.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (self) createNoOpFirstOperand: (recoveredValue0) secondOperand: (recoveredValue1) thirdOperand: (recoveredValue2) alternativeExpr: (recoveredValue3) type: (recoveredValue4) goalInterval: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20112220; bytecode file offset 0xa0eadc"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
createNoOpFirstOperand: recoveredArg1 secondOperand: recoveredArg2 alternativeExpr: recoveredArg3 type: recoveredArg4 goalInterval: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) thirdOperand.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (self) createNoOpFirstOperand: (recoveredValue0) secondOperand: (recoveredValue1) thirdOperand: (recoveredValue2) alternativeExpr: (recoveredValue3) type: (recoveredValue4) goalInterval: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20112284; bytecode file offset 0xa0eb60"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
createNoOpFirstOperand: recoveredArg1 secondOperand: recoveredArg2 thirdOperand: recoveredArg3 alternativeExpr: recoveredArg4 type: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := (self) goalInterval.
    recoveredValue6 := (self) createNoOpFirstOperand: (recoveredValue0) secondOperand: (recoveredValue1) thirdOperand: (recoveredValue2) alternativeExpr: (recoveredValue3) type: (recoveredValue4) goalInterval: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2013cf18; bytecode file offset 0xa397ec"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
isIleCompileTimeConstantExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := super isIleCompileTimeConstantExpr.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) thirdOperand.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleCompileTimeConstantExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201536ac; bytecode file offset 0xa4ff94"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
ileDependsOnAccessExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := super ileDependsOnAccessExpr: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) thirdOperand.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDependsOnAccessExpr: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20180dc8; bytecode file offset 0xa7d6ac"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
ileCalculateRuntimeCosts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) ileRuntimeCostsOfExpr.
    recoveredValue1 := (2) * (recoveredValue0).
    recoveredValue2 := (self) firstOperand.
    recoveredValue3 := (recoveredValue2) ileRuntimeCosts.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := (self) secondOperand.
    recoveredValue6 := (recoveredValue5) ileRuntimeCosts.
    recoveredValue7 := (recoveredValue4) + (recoveredValue6).
    recoveredValue8 := (self) thirdOperand.
    recoveredValue9 := (recoveredValue8) ileRuntimeCosts.
    recoveredValue10 := (recoveredValue7) + (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x20180de4; bytecode file offset 0xa7d6ac"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
ileCalculateGeneralCosts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) ileRuntimeCostsOfExpr.
    recoveredValue1 := (2) * (recoveredValue0).
    recoveredValue2 := (self) firstOperand.
    recoveredValue3 := (recoveredValue2) ileCosts.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := (self) secondOperand.
    recoveredValue6 := (recoveredValue5) ileCosts.
    recoveredValue7 := (recoveredValue4) + (recoveredValue6).
    recoveredValue8 := (self) thirdOperand.
    recoveredValue9 := (recoveredValue8) ileCosts.
    recoveredValue10 := (recoveredValue7) + (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x2018d2c4; bytecode file offset 0xa89b94"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
serviceFullKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) serviceKey.
    recoveredValue2 := (self) firstOperand.
    recoveredValue3 := (recoveredValue2) shortCType.
    recoveredValue4 := (self) secondOperand.
    recoveredValue5 := (recoveredValue4) shortCType.
    recoveredValue6 := (self) thirdOperandServiceKey.
    recoveredValue7 := (self) shortCType.
    recoveredValue8 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue3) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201dd014; bytecode file offset 0xad98e0"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 leftExpr: recoveredArg3 interval: recoveredArg4 goalInterval: recoveredArg5 alternativeExpr: recoveredArg6 serviceLabel: recoveredArg7 limit: recoveredArg8 rightExpr: recoveredArg9 thirdOperand: recoveredArg10
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg10.
    thirdOperand := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := recoveredArg7.
    recoveredValue8 := recoveredArg8.
    recoveredValue9 := recoveredArg9.
    super initializeSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) interval: (recoveredValue4) goalInterval: (recoveredValue5) alternativeExpr: (recoveredValue6) serviceLabel: (recoveredValue7) limit: (recoveredValue8) rightExpr: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x201ffaac; bytecode file offset 0xafc36c"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := thirdOperand.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := leftExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := thirdOperand.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := rightExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := thirdOperand.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            thirdOperand := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024b5f4; bytecode file offset 0xb47ed0"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
addServiceArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super addServiceArgs: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) thirdOperand.
    recoveredValue4 := (recoveredValue3) shortCType.
    (recoveredValue2) at: ('t3') put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := (self) thirdOperand.
    recoveredValue7 := (recoveredValue6) longCType.
    (recoveredValue5) at: ('ft3') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) thirdOperand.
    recoveredValue10 := (recoveredValue9) castCType.
    (recoveredValue8) at: ('c3') put: (recoveredValue10).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2028e524; bytecode file offset 0xb8ae08"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
createOpLimitOverflow: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
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
            recoveredStack4 := (recoveredStack4) ileBasicIntervalOrNil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := (recoveredStack5) goalInterval.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := (recoveredStack6) alternativeExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack7 := (recoveredStack7) serviceLabel.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack8 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack9 := (recoveredStack9) rightExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack10 := (recoveredStack10) thirdOperand.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) leftExpr: (recoveredStack3) interval: (recoveredStack4) goalInterval: (recoveredStack5) alternativeExpr: (recoveredStack6) serviceLabel: (recoveredStack7) limit: (recoveredStack8) rightExpr: (recoveredStack9) thirdOperand: (recoveredStack10).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039624c; bytecode file offset 0xc92b30"
!SGIlTernaryOpServiceExpr methodsFor: 'recovered'!
createNoOpFirstOperand: recoveredArg1 secondOperand: recoveredArg2 thirdOperand: recoveredArg3 alternativeExpr: recoveredArg4 type: recoveredArg5 goalInterval: recoveredArg6
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstOperand.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) secondOperand.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) thirdOperand.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) alternativeExpr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeOrNil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) goalInterval.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicIntervalOrNil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack5 := recoveredArg6.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack6 := recoveredArg4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack7 := (recoveredStack7) serviceLabel.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack8 := (recoveredStack8) limitOverflow.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack9 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack10 := recoveredArg3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) leftExpr: (recoveredStack3) interval: (recoveredStack4) goalInterval: (recoveredStack5) alternativeExpr: (recoveredStack6) serviceLabel: (recoveredStack7) limit: (recoveredStack8) rightExpr: (recoveredStack9) thirdOperand: (recoveredStack10).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


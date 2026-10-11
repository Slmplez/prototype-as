"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004058; bytecode file offset 0x90206c"
!SGIlTernaryOptionalFloatServiceExpr methodsFor: 'recovered'!
createOpLimitOverflow: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20054b04; bytecode file offset 0x952a9c"
!SGIlTernaryOptionalFloatServiceExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ternaryOptionalFloatServiceExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061c08; bytecode file offset 0x95e838"
!SGIlTernaryOptionalFloatServiceExpr methodsFor: 'recovered'!
serviceKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) serviceLabel.
    recoveredValue1 := (recoveredValue0) , ('F').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ecec; bytecode file offset 0x96b8a0"
!SGIlTernaryOptionalFloatServiceExpr methodsFor: 'recovered'!
physModelInterval
    | recoveredValue0 |
    recoveredValue0 := physModelInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074aac; bytecode file offset 0x9757c8"
!SGIlTernaryOptionalFloatServiceExpr methodsFor: 'recovered'!
isIleLimitServiceExpr
    ^true
! !

"ASDBase.ic method 0x20075ce4; bytecode file offset 0x9757c8"
!SGIlTernaryOptionalFloatServiceExpr methodsFor: 'recovered'!
isIleFloatTypedExpr
    ^true
! !

"ASDBase.ic method 0x200cc3e4; bytecode file offset 0x9c8f90"
!SGIlTernaryOptionalFloatServiceExpr methodsFor: 'recovered'!
serviceFullKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) serviceKey.
    recoveredValue2 := (self) shortCType.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cc4d4; bytecode file offset 0x9c8f90"
!SGIlTernaryOptionalFloatServiceExpr methodsFor: 'recovered'!
serviceSpecificationKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) serviceLabel.
    recoveredValue2 := (self) shortCType.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201f8434; bytecode file offset 0xaf4cf0"
!SGIlTernaryOptionalFloatServiceExpr methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 leftExpr: recoveredArg3 interval: recoveredArg4 goalInterval: recoveredArg5 alternativeExpr: recoveredArg6 serviceLabel: recoveredArg7 limit: recoveredArg8 rightExpr: recoveredArg9 thirdOperand: recoveredArg10 physModelInterval: recoveredArg11
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg11.
    physModelInterval := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := recoveredArg7.
    recoveredValue8 := recoveredArg8.
    recoveredValue9 := recoveredArg9.
    recoveredValue10 := recoveredArg10.
    super initializeSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3) interval: (recoveredValue4) goalInterval: (recoveredValue5) alternativeExpr: (recoveredValue6) serviceLabel: (recoveredValue7) limit: (recoveredValue8) rightExpr: (recoveredValue9) thirdOperand: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2039c2ec; bytecode file offset 0xc98bd0"
!SGIlTernaryOptionalFloatServiceExpr methodsFor: 'recovered'!
createNoOpFirstOperand: recoveredArg1 secondOperand: recoveredArg2 thirdOperand: recoveredArg3 alternativeExpr: recoveredArg4 type: recoveredArg5 goalInterval: recoveredArg6
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredPC recoveredStep |
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
            recoveredStack4 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack5 := recoveredArg6.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := recoveredArg4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack7 := (recoveredStack7) serviceLabel.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack8 := (recoveredStack8) limitOverflow.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack9 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack10 := recoveredArg3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack11 := (recoveredStack11) physModelInterval.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) leftExpr: (recoveredStack3) interval: (recoveredStack4) goalInterval: (recoveredStack5) alternativeExpr: (recoveredStack6) serviceLabel: (recoveredStack7) limit: (recoveredStack8) rightExpr: (recoveredStack9) thirdOperand: (recoveredStack10) physModelInterval: (recoveredStack11).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


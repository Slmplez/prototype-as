"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20028bd4; bytecode file offset 0x934580"
!SGIlPackedExprAssignmentCharTable methodsFor: 'recovered'!
yDistribution
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) distributions.
    recoveredValue1 := (recoveredValue0) last.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035854; bytecode file offset 0x934580"
!SGIlPackedExprAssignmentCharTable methodsFor: 'recovered'!
xDistribution
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) distributions.
    recoveredValue1 := (recoveredValue0) first.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054e88; bytecode file offset 0x952a9c"
!SGIlPackedExprAssignmentCharTable methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ilePackedExprAssignmentCharTable: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006b430; bytecode file offset 0x96873c"
!SGIlPackedExprAssignmentCharTable methodsFor: 'recovered'!
distributions
    | recoveredValue0 |
    recoveredValue0 := distributions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c39c; bytecode file offset 0x9692b0"
!SGIlPackedExprAssignmentCharTable methodsFor: 'recovered'!
fixedCharTableInfo
    | recoveredValue0 |
    recoveredValue0 := fixedCharTableInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cbd8; bytecode file offset 0x969c04"
!SGIlPackedExprAssignmentCharTable methodsFor: 'recovered'!
ileExtrapolationValue
    | recoveredValue0 |
    recoveredValue0 := ileExtrapolationValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2015c088; bytecode file offset 0xa58958"
!SGIlPackedExprAssignmentCharTable methodsFor: 'recovered'!
asIlePackedExprAssignmentVector
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGIlPackedExprAssignmentVector.
    recoveredValue1 := (self) source.
    recoveredValue2 := (self) type.
    recoveredValue3 := (recoveredValue2) valueType.
    recoveredValue4 := (self) args.
    recoveredValue5 := (self) curSizes.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue3) args: (recoveredValue4) curSizes: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2017a000; bytecode file offset 0xa768dc"
!SGIlPackedExprAssignmentCharTable methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 args: recoveredArg3 curSizes: recoveredArg4 distributions: recoveredArg5 fixedCharTableInfo: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg5.
    distributions := recoveredValue0.
    recoveredValue1 := recoveredArg6.
    fixedCharTableInfo := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    super initializeSource: (recoveredValue2) type: (recoveredValue3) args: (recoveredValue4) curSizes: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201b76fc; bytecode file offset 0xab3fb8"
!SGIlPackedExprAssignmentCharTable methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 args: recoveredArg3 curSizes: recoveredArg4 distributions: recoveredArg5 fixedCharTableInfo: recoveredArg6 ileExtrapolationValue: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg5.
    distributions := recoveredValue0.
    recoveredValue1 := recoveredArg6.
    fixedCharTableInfo := recoveredValue1.
    recoveredValue2 := recoveredArg7.
    ileExtrapolationValue := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    super initializeSource: (recoveredValue3) type: (recoveredValue4) args: (recoveredValue5) curSizes: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x202275a4; bytecode file offset 0xb23e7c"
!SGIlPackedExprAssignmentCharTable methodsFor: 'recovered'!
createNoOpFixedCharTableInfo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) fixedCharTableInfo.
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
            recoveredStack3 := (recoveredStack3) args.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) curSizes.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := (recoveredStack5) distributions.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := (recoveredStack7) ileExtrapolationValue.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) args: (recoveredStack3) curSizes: (recoveredStack4) distributions: (recoveredStack5) fixedCharTableInfo: (recoveredStack6) ileExtrapolationValue: (recoveredStack7).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202781c4; bytecode file offset 0xb74a9c"
!SGIlPackedExprAssignmentCharTable methodsFor: 'recovered'!
createNoOpArgs: recoveredArg1 type: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) args.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) curSizes.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := (recoveredStack5) distributions.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack6 := (recoveredStack6) fixedCharTableInfo.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack7 := (recoveredStack7) ileExtrapolationValue.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) args: (recoveredStack3) curSizes: (recoveredStack4) distributions: (recoveredStack5) fixedCharTableInfo: (recoveredStack6) ileExtrapolationValue: (recoveredStack7).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028fe78; bytecode file offset 0xb8c750"
!SGIlPackedExprAssignmentCharTable methodsFor: 'recovered'!
createNoOpArgs: recoveredArg1 distributions: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) args.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) distributions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) curSizes.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack6 := (recoveredStack6) fixedCharTableInfo.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack7 := (recoveredStack7) ileExtrapolationValue.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) args: (recoveredStack3) curSizes: (recoveredStack4) distributions: (recoveredStack5) fixedCharTableInfo: (recoveredStack6) ileExtrapolationValue: (recoveredStack7).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


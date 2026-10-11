"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015fc8; bytecode file offset 0x92209c"
!SGIlIfStmnt methodsFor: 'recovered'!
errLabel
    ^'IF-THEN'
! !

"ASDBase.ic method 0x20028054; bytecode file offset 0x934580"
!SGIlIfStmnt methodsFor: 'recovered'!
hasIleEndCaseStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) thenStmnt.
    recoveredValue1 := (recoveredValue0) hasIleEndCaseStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a754; bytecode file offset 0x934580"
!SGIlIfStmnt methodsFor: 'recovered'!
hasIleConditionalEndCaseStmntOnly
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) thenStmnt.
    recoveredValue1 := (recoveredValue0) hasIleEndCaseStmntOnly.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d014; bytecode file offset 0x934580"
!SGIlIfStmnt methodsFor: 'recovered'!
hasIleExitStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) thenStmnt.
    recoveredValue1 := (recoveredValue0) hasIleExitStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034704; bytecode file offset 0x934580"
!SGIlIfStmnt methodsFor: 'recovered'!
hasIleConditionalEndCaseStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) thenStmnt.
    recoveredValue1 := (recoveredValue0) hasIleEndCaseStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034ea4; bytecode file offset 0x934580"
!SGIlIfStmnt methodsFor: 'recovered'!
hasIleConditionalExitStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) thenStmnt.
    recoveredValue1 := (recoveredValue0) hasIleExitStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200371d4; bytecode file offset 0x934580"
!SGIlIfStmnt methodsFor: 'recovered'!
hasIleEndCaseStmntOnly
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) thenStmnt.
    recoveredValue1 := (recoveredValue0) hasIleEndCaseStmntOnly.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050ef0; bytecode file offset 0x94d84c"
!SGIlIfStmnt methodsFor: 'recovered'!
isIleOpimizableLabeledStmnt
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) thenStmnt.
    recoveredValue1 := (recoveredValue0) hasIleEndCaseStmntOnly.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20055da0; bytecode file offset 0x952a9c"
!SGIlIfStmnt methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ifThenStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006a7d4; bytecode file offset 0x967a18"
!SGIlIfStmnt methodsFor: 'recovered'!
thenStmnt
    | recoveredValue0 |
    recoveredValue0 := thenStmnt.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007580c; bytecode file offset 0x9757c8"
!SGIlIfStmnt methodsFor: 'recovered'!
isIleIfThenStmnt
    ^true
! !

"ASDBase.ic method 0x2007852c; bytecode file offset 0x9757c8"
!SGIlIfStmnt methodsFor: 'recovered'!
isIleIfStmnt
    ^true
! !

"ASDBase.ic method 0x2007967c; bytecode file offset 0x97c330"
!SGIlIfStmnt methodsFor: 'recovered'!
hasIleUnconditionalExitStmnt
    ^false
! !

"ASDBase.ic method 0x2007ef54; bytecode file offset 0x97c330"
!SGIlIfStmnt methodsFor: 'recovered'!
hasIleUnconditionalEndCaseStmnt
    ^false
! !

"ASDBase.ic method 0x20093bd0; bytecode file offset 0x9904ac"
!SGIlIfStmnt methodsFor: 'recovered'!
createNoOpThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createNoOpExpr: (recoveredValue0) thenStmnt: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094d0c; bytecode file offset 0x991c58"
!SGIlIfStmnt methodsFor: 'recovered'!
createNoOpExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) thenStmnt.
    recoveredValue2 := (self) createNoOpExpr: (recoveredValue0) thenStmnt: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009a438; bytecode file offset 0x997194"
!SGIlIfStmnt methodsFor: 'recovered'!
createStmntExpr: recoveredArg1 thenStmnt: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) ifExpr: (recoveredValue1) thenStmnt: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d55ec; bytecode file offset 0x9d2050"
!SGIlIfStmnt methodsFor: 'recovered'!
ileWrapperHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super ileWrapperHash.
    recoveredValue1 := (self) thenStmnt.
    recoveredValue2 := (recoveredValue1) ileWrapperHash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fc9b0; bytecode file offset 0x9f9274"
!SGIlIfStmnt methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := thenStmnt.
    recoveredValue1 := (recoveredValue0) stmntList.
    recoveredValue2 := (recoveredValue1) last.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) attributes: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20111f5c; bytecode file offset 0xa0e858"
!SGIlIfStmnt methodsFor: 'recovered'!
initializeSource: recoveredArg1 comments: recoveredArg2 expr: recoveredArg3 thenStmnt: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg4.
    thenStmnt := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    super initializeSource: (recoveredValue1) comments: (recoveredValue2) expr: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201a59fc; bytecode file offset 0xaa22e8"
!SGIlIfStmnt methodsFor: 'recovered'!
createNoOpComments: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) comments.
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) expr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) thenStmnt.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) comments: (recoveredStack2) expr: (recoveredStack3) thenStmnt: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a5ad8; bytecode file offset 0xaa23a4"
!SGIlIfStmnt methodsFor: 'recovered'!
createNoOpSource: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) comments.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) expr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) thenStmnt.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) comments: (recoveredStack2) expr: (recoveredStack3) thenStmnt: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ae59c; bytecode file offset 0xaaaea8"
!SGIlIfStmnt methodsFor: 'recovered'!
hash
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hash.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) hash.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) thenStmnt.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) hash.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            hash := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := hash.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20204700; bytecode file offset 0xb00fcc"
!SGIlIfStmnt methodsFor: 'recovered'!
createNoOpExpr: recoveredArg1 thenStmnt: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) thenStmnt.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) comments.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) comments: (recoveredStack2) expr: (recoveredStack3) thenStmnt: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20209074; bytecode file offset 0xb0594c"
!SGIlIfStmnt methodsFor: 'recovered'!
asIleOpimizedLabeledStmnt
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) thenStmnt.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleOpimizedLabeledStmnt.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleBlockedStmntList.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockedStmntList: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifExpr: (recoveredStack1) thenStmnt: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


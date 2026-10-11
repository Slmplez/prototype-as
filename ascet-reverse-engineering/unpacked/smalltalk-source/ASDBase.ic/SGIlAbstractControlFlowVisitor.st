"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003760; bytecode file offset 0x90206c"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
returnNot: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004ad0; bytecode file offset 0x90206c"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
returnComma: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005b08; bytecode file offset 0x902744"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
returnAndLeft: recoveredArg1 right: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005b58; bytecode file offset 0x902744"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
returnOrLeft: recoveredArg1 right: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005c08; bytecode file offset 0x902744"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
returnMethodCall: recoveredArg1 args: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005e60; bytecode file offset 0x902744"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
returnAssignLeft: recoveredArg1 right: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005f24; bytecode file offset 0x902de8"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
returnMux: recoveredArg1 left: recoveredArg2 right: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20005fc4; bytecode file offset 0x902de8"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
returnBinary: recoveredArg1 left: recoveredArg2 right: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000630c; bytecode file offset 0x902de8"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
returnMultiplex: recoveredArg1 choices: recoveredArg2 default: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20006354; bytecode file offset 0x902de8"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
returnBinaryService: recoveredArg1 left: recoveredArg2 right: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2004e894; bytecode file offset 0x94d048"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
initState
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006820c; bytecode file offset 0x965b90"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
state
    | recoveredValue0 |
    recoveredValue0 := state.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069da0; bytecode file offset 0x966bdc"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
breakStates
    | recoveredValue0 |
    recoveredValue0 := breakStates.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bf95c; bytecode file offset 0x9bd228"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
state: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    state := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0b48; bytecode file offset 0x9bdf14"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
breakStates: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    breakStates := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d9890; bytecode file offset 0x9d616c"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
merge: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) mergeIntersect: (recoveredValue3).
    (self) state: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200d98a8; bytecode file offset 0x9d616c"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
mergeUnion: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) mergeUnion: (recoveredValue3).
    (self) state: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200eb194; bytecode file offset 0x9e7a7c"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
merge: recoveredArg1 and: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    (self) merge: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200fa054; bytecode file offset 0x9f6a08"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    breakStates := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20121258; bytecode file offset 0xa1db24"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
breakStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) breakStates.
    recoveredValue1 := (self) state.
    recoveredValue2 := (recoveredValue1) copy.
    (recoveredValue0) add: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := super breakStmnt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201441f4; bytecode file offset 0xa40ab0"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
repeatStmnt: recoveredArg1
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
            recoveredStack2 := false.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := [:block280cc390Arg1 | 
    nil
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) loopStmnt: (recoveredStack1) checkBeforeLoop: (recoveredStack2) atEndOfLoopDo: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201443f0; bytecode file offset 0xa40cac"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
whileStmnt: recoveredArg1
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
            recoveredStack2 := true.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := [:block280cc3fcArg1 | 
    nil
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) loopStmnt: (recoveredStack1) checkBeforeLoop: (recoveredStack2) atEndOfLoopDo: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014bcac; bytecode file offset 0xa48570"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
localScope: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) state.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) value.
    recoveredValue3 := (self) state.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    (self) state: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2017263c; bytecode file offset 0xa6ef04"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
mergeBooleanState
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) state.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isArray.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) state.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) merge: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20185518; bytecode file offset 0xa81de4"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
makeBooleanState: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleBooleanTypedExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) state.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := (recoveredStack4) state.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := (recoveredStack4) copy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) state: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ad774; bytecode file offset 0xaaa03c"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    (self) mergeBooleanState.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) lValue.
    recoveredValue5 := (self) visitNode: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    (self) mergeBooleanState.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) returnAssignLeft: (recoveredValue6) right: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201d4b6c; bytecode file offset 0xad1450"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
binaryExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    (self) mergeBooleanState.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) rightExpr.
    recoveredValue5 := (self) visitNode: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    (self) mergeBooleanState.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) returnBinary: (recoveredValue6) left: (recoveredValue7) right: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201d4b88; bytecode file offset 0xad1450"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
binaryServiceExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) firstOperand.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    (self) mergeBooleanState.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) secondOperand.
    recoveredValue5 := (self) visitNode: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    (self) mergeBooleanState.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) returnBinaryService: (recoveredValue6) left: (recoveredValue7) right: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201f4d94; bytecode file offset 0xaf1660"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
unaryServiceExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleAbsServiceExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
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
            recoveredStack1 := (recoveredStack1) absExpr: (recoveredStack2).
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
            recoveredStack1 := (recoveredStack1) isIleNegServiceExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) negExpr: (recoveredStack2).
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
            recoveredStack0 := super unaryServiceExpr: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fa494; bytecode file offset 0xaf6d6c"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
notExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super notExpr: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := Array.
    recoveredValue3 := (self) state.
    recoveredValue4 := (recoveredValue3) last.
    recoveredValue5 := (self) state.
    recoveredValue6 := (recoveredValue5) first.
    recoveredValue7 := (recoveredValue2) with: (recoveredValue4) with: (recoveredValue6).
    (self) state: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) returnNot: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x20214200; bytecode file offset 0xb10ac8"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
breakScopeDo: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) breakStates.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    (self) breakStates: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := (self) breakStates: (recoveredBlock17Value0).
    recoveredBlock17Value1
].
    recoveredValue5 := (recoveredValue3) ensure: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2023f858; bytecode file offset 0xb3c120"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
mergeBooleanState: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isArray.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 |
    recoveredBlock16Value0 := recoveredArg1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) first.
    recoveredBlock16Value2 := recoveredArg1.
    recoveredBlock16Value3 := (recoveredBlock16Value2) last.
    recoveredBlock16Value4 := (self) merge: (recoveredBlock16Value1) and: (recoveredBlock16Value3).
    recoveredBlock16Value4
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) localScope: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024fce8; bytecode file offset 0xb4c5b8"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
visitNode: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super visitNode: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) state.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isArray.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) makeBooleanState: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) mergeBooleanState.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026263c; bytecode file offset 0xb5ef04"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) firstExpr.
    (self) visitNode: (recoveredValue1).
    (self) mergeBooleanState.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredArg1.
    recoveredBlock18Value2 := (recoveredBlock18Value1) lastExpr.
    (recoveredBlock18Value0) visitNode: (recoveredBlock18Value2).
    recoveredBlock18Value3 := recoveredBlock18Arg1.
    recoveredBlock18Value4 := (recoveredBlock18Value3) mergeBooleanState.
    recoveredBlock18Value4
].
    (self) loopStmnt: (recoveredValue2) checkBeforeLoop: (true) atEndOfLoopDo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2026ecb8; bytecode file offset 0xb6b590"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
loopStmnt: recoveredArg1 checkBeforeLoop: recoveredArg2 atEndOfLoopDo: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) isIleRepeatStmnt.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalFalse.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isStrictlyMontonic.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) initState.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) internalLoopStmnt: (recoveredStack1) checkBeforeLoop: (recoveredStack2) atEndOfLoopDo: (recoveredStack3) returnBreakStates: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202dccbc; bytecode file offset 0xbd9594"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) state.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) state: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) thenStmnt.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleUnconditionalEndCaseStmnt.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) state: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) merge: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e6730; bytecode file offset 0xbe3008"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
commaExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) args.
    recoveredValue6 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := recoveredLocal1.
    recoveredBlock18Value1 := recoveredBlock18Arg1.
    recoveredBlock18Value2 := (self) visitNode: (recoveredBlock18Value1).
    recoveredBlock18Value3 := (recoveredBlock18Value0) add: (recoveredBlock18Value2).
    recoveredBlock18Value3
].
    recoveredValue7 := [
    | recoveredBlock34Value0 |
    recoveredBlock34Value0 := (self) mergeBooleanState.
    recoveredBlock34Value0
].
    (recoveredValue5) do: (recoveredValue6) separatedBy: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) returnComma: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x203c906c; bytecode file offset 0xcc594c"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) state.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) state: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) thenStmnt.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) state.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) state: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) elseStmnt.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) state.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) thenStmnt.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleUnconditionalEndCaseStmnt.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) state: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) elseStmnt.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleUnconditionalEndCaseStmnt.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) state: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) merge: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203df750; bytecode file offset 0xcdc038"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
orExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := (self) state.
    recoveredValue4 := (recoveredValue3) copy.
    recoveredLocal4 := recoveredValue4.
    recoveredValue5 := recoveredLocal4.
    recoveredValue6 := (recoveredValue5) last.
    recoveredValue7 := (recoveredValue6) copy.
    (self) state: (recoveredValue7).
    recoveredValue8 := [
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 |
    recoveredBlock28Value0 := recoveredArg1.
    recoveredBlock28Value1 := (recoveredBlock28Value0) rightExpr.
    recoveredBlock28Value2 := (self) visitNode: (recoveredBlock28Value1).
    recoveredBlock28Value3 := recoveredBlock28Value2.
    recoveredLocal1 := recoveredBlock28Value3.
    recoveredBlock28Value2
].
    recoveredValue9 := (self) localScope: (recoveredValue8).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredLocal4.
    recoveredValue11 := (recoveredValue10) first.
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (recoveredValue12) first.
    (self) merge: (recoveredValue11) and: (recoveredValue13).
    recoveredValue14 := Array.
    recoveredValue15 := (self) state.
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := (recoveredValue16) last.
    recoveredValue18 := (recoveredValue14) with: (recoveredValue15) with: (recoveredValue17).
    (self) state: (recoveredValue18).
    recoveredValue19 := recoveredLocal3.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := (self) returnOrLeft: (recoveredValue19) right: (recoveredValue20).
    ^recoveredValue21
! !

"ASDBase.ic method 0x203df7e4; bytecode file offset 0xcdc0cc"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
andExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredLocal4 := recoveredValue2.
    recoveredValue3 := (self) state.
    recoveredValue4 := (recoveredValue3) copy.
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := (recoveredValue5) first.
    recoveredValue7 := (recoveredValue6) copy.
    (self) state: (recoveredValue7).
    recoveredValue8 := [
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 |
    recoveredBlock28Value0 := recoveredArg1.
    recoveredBlock28Value1 := (recoveredBlock28Value0) rightExpr.
    recoveredBlock28Value2 := (self) visitNode: (recoveredBlock28Value1).
    recoveredBlock28Value3 := recoveredBlock28Value2.
    recoveredLocal2 := recoveredBlock28Value3.
    recoveredBlock28Value2
].
    recoveredValue9 := (self) localScope: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := (recoveredValue10) last.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) last.
    (self) merge: (recoveredValue11) and: (recoveredValue13).
    recoveredValue14 := Array.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) first.
    recoveredValue17 := (self) state.
    recoveredValue18 := (recoveredValue14) with: (recoveredValue16) with: (recoveredValue17).
    (self) state: (recoveredValue18).
    recoveredValue19 := recoveredLocal4.
    recoveredValue20 := recoveredLocal2.
    recoveredValue21 := (self) returnAndLeft: (recoveredValue19) right: (recoveredValue20).
    ^recoveredValue21
! !

"ASDBase.ic method 0x20434804; bytecode file offset 0xd310f4"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) args.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) args.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 recoveredBlock30Value4 |
    recoveredBlock30Value0 := recoveredLocal2.
    recoveredBlock30Value1 := [
    | recoveredBlock30Block41Value0 recoveredBlock30Block41Value1 recoveredBlock30Block41Value2 recoveredBlock30Block41Value3 |
    recoveredBlock30Block41Value0 := recoveredLocal1.
    recoveredBlock30Block41Value1 := recoveredBlock30Arg1.
    recoveredBlock30Block41Value2 := (self) visitNode: (recoveredBlock30Block41Value1).
    recoveredBlock30Block41Value3 := (recoveredBlock30Block41Value0) add: (recoveredBlock30Block41Value2).
    recoveredBlock30Block41Value3
].
    recoveredBlock30Value2 := (self) localScope: (recoveredBlock30Value1).
    recoveredBlock30Value3 := (self) mergeBooleanState: (recoveredBlock30Value2).
    recoveredBlock30Value4 := (recoveredBlock30Value0) add: (recoveredBlock30Value3).
    recoveredBlock30Value4
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) mergeUnion: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) deleteNonLocalInformation.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnMethodCall: (recoveredStack1) args: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204670fc; bytecode file offset 0xd639e4"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
internalLoopStmnt: recoveredArg1 checkBeforeLoop: recoveredArg2 atEndOfLoopDo: recoveredArg3 returnBreakStates: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) state.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) state: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) doStmnt.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            (recoveredBlock30Stack0) visitNode: (recoveredBlock30Stack1).
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            recoveredBlock30Stack0 := recoveredArg1.
            recoveredBlock30PC := 46.
        ].
        recoveredBlock30Step = 46 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) doStmnt.
            recoveredBlock30PC := 48.
        ].
        recoveredBlock30Step = 48 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) hasIleUnconditionalEndCaseStmnt.
            recoveredBlock30PC := 50.
        ].
        recoveredBlock30Step = 50 ifTrue: [
            (recoveredBlock30Stack0) ifTrue: [recoveredBlock30PC := 86] ifFalse: [recoveredBlock30PC := 54].
        ].
        recoveredBlock30Step = 54 ifTrue: [
            recoveredBlock30Stack0 := recoveredArg2.
            recoveredBlock30PC := 57.
        ].
        recoveredBlock30Step = 57 ifTrue: [
            (recoveredBlock30Stack0) ifTrue: [recoveredBlock30PC := 80] ifFalse: [recoveredBlock30PC := 60].
        ].
        recoveredBlock30Step = 60 ifTrue: [
            recoveredBlock30Stack0 := self.
            recoveredBlock30PC := 61.
        ].
        recoveredBlock30Step = 61 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 64.
        ].
        recoveredBlock30Step = 64 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) expr.
            recoveredBlock30PC := 65.
        ].
        recoveredBlock30Step = 65 ifTrue: [
            (recoveredBlock30Stack0) visitNode: (recoveredBlock30Stack1).
            recoveredBlock30PC := 67.
        ].
        recoveredBlock30Step = 67 ifTrue: [
            recoveredBlock30Stack0 := self.
            recoveredBlock30PC := 68.
        ].
        recoveredBlock30Step = 68 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) state.
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) last.
            recoveredBlock30PC := 70.
        ].
        recoveredBlock30Step = 70 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack0.
            recoveredBlock30PC := 73.
        ].
        recoveredBlock30Step = 73 ifTrue: [
            recoveredBlock30Stack0 := self.
            recoveredBlock30PC := 74.
        ].
        recoveredBlock30Step = 74 ifTrue: [
            recoveredBlock30Stack1 := self.
            recoveredBlock30PC := 75.
        ].
        recoveredBlock30Step = 75 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) state.
            recoveredBlock30PC := 76.
        ].
        recoveredBlock30Step = 76 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) first.
            recoveredBlock30PC := 78.
        ].
        recoveredBlock30Step = 78 ifTrue: [
            (recoveredBlock30Stack0) state: (recoveredBlock30Stack1).
            recoveredBlock30PC := 80.
        ].
        recoveredBlock30Step = 80 ifTrue: [
            recoveredBlock30Stack0 := recoveredArg3.
            recoveredBlock30PC := 83.
        ].
        recoveredBlock30Step = 83 ifTrue: [
            recoveredBlock30Stack1 := self.
            recoveredBlock30PC := 84.
        ].
        recoveredBlock30Step = 84 ifTrue: [
            (recoveredBlock30Stack0) value: (recoveredBlock30Stack1).
            recoveredBlock30PC := 86.
        ].
        recoveredBlock30Step = 86 ifTrue: [
            recoveredBlock30Stack0 := recoveredLocal1.
            recoveredBlock30PC := 89.
        ].
        recoveredBlock30Step = 89 ifTrue: [
            (recoveredBlock30Stack0 == nil) ifTrue: [recoveredBlock30PC := 100] ifFalse: [recoveredBlock30PC := 92].
        ].
        recoveredBlock30Step = 92 ifTrue: [
            recoveredBlock30Stack0 := self.
            recoveredBlock30PC := 93.
        ].
        recoveredBlock30Step = 93 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) breakStates.
            recoveredBlock30PC := 95.
        ].
        recoveredBlock30Step = 95 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 98.
        ].
        recoveredBlock30Step = 98 ifTrue: [
            (recoveredBlock30Stack0) add: (recoveredBlock30Stack1).
            recoveredBlock30PC := 100.
        ].
        recoveredBlock30Step = 100 ifTrue: [
            recoveredBlock30Stack0 := nil.
            recoveredBlock30PC := 101.
        ].
        recoveredBlock30Step = 101 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg4.
            recoveredBlock30PC := 104.
        ].
        recoveredBlock30Step = 104 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 108] ifFalse: [recoveredBlock30PC := 115].
        ].
        recoveredBlock30Step = 108 ifTrue: [
            recoveredBlock30PC := 109.
        ].
        recoveredBlock30Step = 109 ifTrue: [
            recoveredBlock30Stack0 := self.
            recoveredBlock30PC := 110.
        ].
        recoveredBlock30Step = 110 ifTrue: [
            recoveredBlock30Stack1 := self.
            recoveredBlock30PC := 111.
        ].
        recoveredBlock30Step = 111 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) breakStates.
            recoveredBlock30PC := 113.
        ].
        recoveredBlock30Step = 113 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) merge: (recoveredBlock30Stack1).
            recoveredBlock30PC := 115.
        ].
        recoveredBlock30Step = 115 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack0.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) breakScopeDo: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048bd08; bytecode file offset 0xd885fc"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredLocal1 recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
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
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) stmnt.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) stmntList.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block25Arg1 | 
    | recoveredBlock4Block25Value0 recoveredBlock4Block25Value1 |
    recoveredBlock4Block25Value0 := [
    | recoveredBlock4Block25Block32Stack0 recoveredBlock4Block25Block32Stack1 recoveredBlock4Block25Block32Stack2 recoveredBlock4Block25Block32Stack3 recoveredBlock4Block25Block32Stack4 recoveredBlock4Block25Block32Stack5 recoveredBlock4Block25Block32PC recoveredBlock4Block25Block32Step recoveredBlock4Block25Block32Done recoveredBlock4Block25Block32Result |
    recoveredBlock4Block25Block32Stack0 := self.
    recoveredBlock4Block25Block32PC := 38.
    recoveredBlock4Block25Block32Done := false.
    [recoveredBlock4Block25Block32Done not] whileTrue: [
        recoveredBlock4Block25Block32Step := recoveredBlock4Block25Block32PC.
        recoveredBlock4Block25Block32Step = 38 ifTrue: [
            recoveredBlock4Block25Block32Stack1 := recoveredLocal1.
            recoveredBlock4Block25Block32PC := 41.
        ].
        recoveredBlock4Block25Block32Step = 41 ifTrue: [
            (recoveredBlock4Block25Block32Stack1 == nil) ifTrue: [recoveredBlock4Block25Block32PC := 57] ifFalse: [recoveredBlock4Block25Block32PC := 44].
        ].
        recoveredBlock4Block25Block32Step = 44 ifTrue: [
            recoveredBlock4Block25Block32Stack1 := self.
            recoveredBlock4Block25Block32PC := 45.
        ].
        recoveredBlock4Block25Block32Step = 45 ifTrue: [
            recoveredBlock4Block25Block32Stack2 := Array.
            recoveredBlock4Block25Block32PC := 47.
        ].
        recoveredBlock4Block25Block32Step = 47 ifTrue: [
            recoveredBlock4Block25Block32Stack3 := self.
            recoveredBlock4Block25Block32PC := 48.
        ].
        recoveredBlock4Block25Block32Step = 48 ifTrue: [
            recoveredBlock4Block25Block32Stack3 := (recoveredBlock4Block25Block32Stack3) state.
            recoveredBlock4Block25Block32PC := 50.
        ].
        recoveredBlock4Block25Block32Step = 50 ifTrue: [
            recoveredBlock4Block25Block32Stack4 := recoveredLocal1.
            recoveredBlock4Block25Block32PC := 53.
        ].
        recoveredBlock4Block25Block32Step = 53 ifTrue: [
            recoveredBlock4Block25Block32Stack2 := (recoveredBlock4Block25Block32Stack2) with: (recoveredBlock4Block25Block32Stack3) with: (recoveredBlock4Block25Block32Stack4).
            recoveredBlock4Block25Block32PC := 55.
        ].
        recoveredBlock4Block25Block32Step = 55 ifTrue: [
            (recoveredBlock4Block25Block32Stack1) merge: (recoveredBlock4Block25Block32Stack2).
            recoveredBlock4Block25Block32PC := 57.
        ].
        recoveredBlock4Block25Block32Step = 57 ifTrue: [
            recoveredBlock4Block25Block32Stack1 := recoveredBlock4Block25Arg1.
            recoveredBlock4Block25Block32PC := 60.
        ].
        recoveredBlock4Block25Block32Step = 60 ifTrue: [
            (recoveredBlock4Block25Block32Stack0) visitNode: (recoveredBlock4Block25Block32Stack1).
            recoveredBlock4Block25Block32PC := 62.
        ].
        recoveredBlock4Block25Block32Step = 62 ifTrue: [
            recoveredBlock4Block25Block32Stack0 := recoveredBlock4Block25Arg1.
            recoveredBlock4Block25Block32PC := 65.
        ].
        recoveredBlock4Block25Block32Step = 65 ifTrue: [
            recoveredBlock4Block25Block32Stack0 := (recoveredBlock4Block25Block32Stack0) hasIleUnconditionalEndCaseStmnt.
            recoveredBlock4Block25Block32PC := 67.
        ].
        recoveredBlock4Block25Block32Step = 67 ifTrue: [
            (recoveredBlock4Block25Block32Stack0) ifTrue: [recoveredBlock4Block25Block32PC := 80] ifFalse: [recoveredBlock4Block25Block32PC := 70].
        ].
        recoveredBlock4Block25Block32Step = 70 ifTrue: [
            recoveredBlock4Block25Block32Stack0 := self.
            recoveredBlock4Block25Block32PC := 71.
        ].
        recoveredBlock4Block25Block32Step = 71 ifTrue: [
            recoveredBlock4Block25Block32Stack0 := (recoveredBlock4Block25Block32Stack0) state.
            recoveredBlock4Block25Block32PC := 73.
        ].
        recoveredBlock4Block25Block32Step = 73 ifTrue: [
            recoveredBlock4Block25Block32Stack1 := recoveredBlock4Block25Block32Stack0.
            recoveredBlock4Block25Block32PC := 74.
        ].
        recoveredBlock4Block25Block32Step = 74 ifTrue: [
            recoveredLocal1 := recoveredBlock4Block25Block32Stack1.
            recoveredBlock4Block25Block32PC := 77.
        ].
        recoveredBlock4Block25Block32Step = 77 ifTrue: [
            recoveredBlock4Block25Block32PC := 85.
        ].
        recoveredBlock4Block25Block32Step = 80 ifTrue: [
            recoveredBlock4Block25Block32Stack0 := nil.
            recoveredBlock4Block25Block32PC := 81.
        ].
        recoveredBlock4Block25Block32Step = 81 ifTrue: [
            recoveredBlock4Block25Block32Stack1 := recoveredBlock4Block25Block32Stack0.
            recoveredBlock4Block25Block32PC := 82.
        ].
        recoveredBlock4Block25Block32Step = 82 ifTrue: [
            recoveredLocal1 := recoveredBlock4Block25Block32Stack1.
            recoveredBlock4Block25Block32PC := 85.
        ].
        recoveredBlock4Block25Block32Step = 85 ifTrue: [
            recoveredBlock4Block25Block32Result := recoveredBlock4Block25Block32Stack0.
            recoveredBlock4Block25Block32Done := true.
        ].
    ].
    recoveredBlock4Block25Block32Result
].
    recoveredBlock4Block25Value1 := (self) localScope: (recoveredBlock4Block25Value0).
    recoveredBlock4Block25Value1
].
            recoveredBlock4PC := 89.
        ].
        recoveredBlock4Step = 89 ifTrue: [
            (recoveredBlock4Stack0) do: (recoveredBlock4Stack1).
            recoveredBlock4PC := 91.
        ].
        recoveredBlock4Step = 91 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal1.
            recoveredBlock4PC := 94.
        ].
        recoveredBlock4Step = 94 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 106] ifFalse: [recoveredBlock4PC := 98].
        ].
        recoveredBlock4Step = 98 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 99.
        ].
        recoveredBlock4Step = 99 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) breakStates.
            recoveredBlock4PC := 101.
        ].
        recoveredBlock4Step = 101 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            (recoveredBlock4Stack0) add: (recoveredBlock4Stack1).
            recoveredBlock4PC := 106.
        ].
        recoveredBlock4Step = 106 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 107.
        ].
        recoveredBlock4Step = 107 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) breakStates.
            recoveredBlock4PC := 109.
        ].
        recoveredBlock4Step = 109 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isEmpty.
            recoveredBlock4PC := 111.
        ].
        recoveredBlock4Step = 111 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 114] ifFalse: [recoveredBlock4PC := 120].
        ].
        recoveredBlock4Step = 114 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 115.
        ].
        recoveredBlock4Step = 115 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) initState.
            recoveredBlock4PC := 117.
        ].
        recoveredBlock4Step = 117 ifTrue: [
            recoveredBlock4PC := 126.
        ].
        recoveredBlock4Step = 120 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 121.
        ].
        recoveredBlock4Step = 121 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 122.
        ].
        recoveredBlock4Step = 122 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) breakStates.
            recoveredBlock4PC := 124.
        ].
        recoveredBlock4Step = 124 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) merge: (recoveredBlock4Stack1).
            recoveredBlock4PC := 126.
        ].
        recoveredBlock4Step = 126 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) breakScopeDo: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x204b90b0; bytecode file offset 0xdb59a8"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
multiplexExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) condExpr.
    (self) multiplexExpr: (recoveredValue0) condExpr: (recoveredValue2).
    recoveredValue3 := (self) state.
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) choices.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := (recoveredValue4) new: (recoveredValue7).
    recoveredLocal3 := recoveredValue8.
    recoveredValue9 := OrderedCollection.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) choices.
    recoveredValue12 := (recoveredValue11) size.
    recoveredValue13 := (recoveredValue9) new: (recoveredValue12).
    recoveredLocal2 := recoveredValue13.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) choices.
    recoveredValue16 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 recoveredBlock51Value5 recoveredBlock51Value6 |
    recoveredBlock51Value0 := recoveredLocal4.
    recoveredBlock51Value1 := (recoveredBlock51Value0) copy.
    (self) state: (recoveredBlock51Value1).
    recoveredBlock51Value2 := recoveredLocal3.
    recoveredBlock51Value3 := [
    | recoveredBlock51Block70Value0 recoveredBlock51Block70Value1 recoveredBlock51Block70Value2 recoveredBlock51Block70Value3 |
    recoveredBlock51Block70Value0 := recoveredLocal2.
    recoveredBlock51Block70Value1 := recoveredBlock51Arg1.
    recoveredBlock51Block70Value2 := (self) visitNode: (recoveredBlock51Block70Value1).
    recoveredBlock51Block70Value3 := (recoveredBlock51Block70Value0) add: (recoveredBlock51Block70Value2).
    recoveredBlock51Block70Value3
].
    recoveredBlock51Value4 := (self) localScope: (recoveredBlock51Value3).
    recoveredBlock51Value5 := (self) mergeBooleanState: (recoveredBlock51Value4).
    recoveredBlock51Value6 := (recoveredBlock51Value2) add: (recoveredBlock51Value5).
    recoveredBlock51Value6
].
    (recoveredValue15) do: (recoveredValue16).
    recoveredValue17 := recoveredLocal3.
    recoveredValue18 := [
    | recoveredBlock102Value0 recoveredBlock102Value1 recoveredBlock102Value2 recoveredBlock102Value3 |
    recoveredBlock102Value0 := recoveredArg1.
    recoveredBlock102Value1 := (recoveredBlock102Value0) defaultExpr.
    recoveredBlock102Value2 := (self) visitNode: (recoveredBlock102Value1).
    recoveredBlock102Value3 := recoveredBlock102Value2.
    recoveredLocal1 := recoveredBlock102Value3.
    recoveredBlock102Value2
].
    recoveredValue19 := (self) localScope: (recoveredValue18).
    recoveredValue20 := (self) mergeBooleanState: (recoveredValue19).
    (recoveredValue17) add: (recoveredValue20).
    recoveredValue21 := recoveredLocal3.
    (self) merge: (recoveredValue21).
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := recoveredLocal2.
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := (self) returnMultiplex: (recoveredValue22) choices: (recoveredValue23) default: (recoveredValue24).
    ^recoveredValue25
! !

"ASDBase.ic method 0x204d0d48; bytecode file offset 0xdcd638"
!SGIlAbstractControlFlowVisitor methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) condExpr.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) mux: (recoveredStack1) condExpr: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) state.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) state: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 |
    recoveredBlock29Value0 := recoveredArg1.
    recoveredBlock29Value1 := (recoveredBlock29Value0) leftExpr.
    recoveredBlock29Value2 := (self) visitNode: (recoveredBlock29Value1).
    recoveredBlock29Value3 := recoveredBlock29Value2.
    recoveredLocal2 := recoveredBlock29Value3.
    recoveredBlock29Value2
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) localScope: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) mergeBooleanState: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) state: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 recoveredBlock67Value3 |
    recoveredBlock67Value0 := recoveredArg1.
    recoveredBlock67Value1 := (recoveredBlock67Value0) rightExpr.
    recoveredBlock67Value2 := (self) visitNode: (recoveredBlock67Value1).
    recoveredBlock67Value3 := recoveredBlock67Value2.
    recoveredLocal1 := recoveredBlock67Value3.
    recoveredBlock67Value2
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) localScope: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) mergeBooleanState: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImpossible.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) state: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImpossible.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) state: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) merge: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnMux: (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


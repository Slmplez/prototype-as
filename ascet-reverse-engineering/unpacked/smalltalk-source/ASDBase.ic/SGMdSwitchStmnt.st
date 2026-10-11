"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200350d4; bytecode file offset 0x934580"
!SGMdSwitchStmnt methodsFor: 'recovered'!
hasReturnStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmntChild.
    recoveredValue1 := (recoveredValue0) hasReturnStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055e48; bytecode file offset 0x952a9c"
!SGMdSwitchStmnt methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) switchStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006c7ec; bytecode file offset 0x9692b0"
!SGMdSwitchStmnt methodsFor: 'recovered'!
exprChild
    | recoveredValue0 |
    recoveredValue0 := exprChild.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cc28; bytecode file offset 0x969c04"
!SGMdSwitchStmnt methodsFor: 'recovered'!
stmntChild
    | recoveredValue0 |
    recoveredValue0 := stmntChild.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006de28; bytecode file offset 0x96a9dc"
!SGMdSwitchStmnt methodsFor: 'recovered'!
iaExprChild
    | recoveredValue0 |
    recoveredValue0 := iaExprChild.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c2f94; bytecode file offset 0x9bfde0"
!SGMdSwitchStmnt methodsFor: 'recovered'!
exprChild: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    exprChild := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3a90; bytecode file offset 0x9c058c"
!SGMdSwitchStmnt methodsFor: 'recovered'!
stmntChild: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stmntChild := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c48e0; bytecode file offset 0x9c11bc"
!SGMdSwitchStmnt methodsFor: 'recovered'!
iaExprChild: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    iaExprChild := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d525c; bytecode file offset 0x9d1b20"
!SGMdSwitchStmnt methodsFor: 'recovered'!
mdlStmntCodeSizeCosts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stmntChild.
    recoveredValue1 := (recoveredValue0) mdlStmntCodeSizeCosts.
    recoveredValue2 := super mdlExprCodeSizeCosts.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2012bb4c; bytecode file offset 0xa28470"
!SGMdSwitchStmnt methodsFor: 'recovered'!
needsIntegerCode
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
            recoveredStack2 := (recoveredStack2) exprChild.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) needsIntegerCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlConstantValue.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012e4d0; bytecode file offset 0xa2b0c4"
!SGMdSwitchStmnt methodsFor: 'recovered'!
hasExitStmnt
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntChild.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) nonEmptyChildren.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280ca800Arg1 | 
    | block280ca800Value0 block280ca800Value1 |
    block280ca800Value0 := block280ca800Arg1.
    block280ca800Value1 := (block280ca800Value0) hasExitStmnt.
    block280ca800Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012e524; bytecode file offset 0xa2b0c4"
!SGMdSwitchStmnt methodsFor: 'recovered'!
hasExitOrReturnStmnt
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntChild.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) nonEmptyChildren.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280ca86cArg1 | 
    | block280ca86cValue0 block280ca86cValue1 |
    block280ca86cValue0 := block280ca86cArg1.
    block280ca86cValue1 := (block280ca86cValue0) hasExitOrReturnStmnt.
    block280ca86cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012e578; bytecode file offset 0xa2b0c4"
!SGMdSwitchStmnt methodsFor: 'recovered'!
hasEndCaseStmnt
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntChild.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) nonEmptyChildren.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280ca8d8Arg1 | 
    | block280ca8d8Value0 block280ca8d8Value1 |
    block280ca8d8Value0 := block280ca8d8Arg1.
    block280ca8d8Value1 := (block280ca8d8Value0) hasExitOrReturnStmnt.
    block280ca8d8Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012e7fc; bytecode file offset 0xa2b0c4"
!SGMdSwitchStmnt methodsFor: 'recovered'!
hasMdlUnconditionalReturnOrEndCase
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntChild.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280cac14Arg1 | 
    | block280cac14Value0 block280cac14Value1 |
    block280cac14Value0 := block280cac14Arg1.
    block280cac14Value1 := (block280cac14Value0) hasMdlUnconditionalReturn.
    block280cac14Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b3588; bytecode file offset 0xaafe74"
!SGMdSwitchStmnt methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('switch (').
    recoveredValue1 := (self) exprChild.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) nextPutAll: (') ').
    recoveredValue4 := (self) stmntChild.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) printOn: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x202839cc; bytecode file offset 0xb80298"
!SGMdSwitchStmnt methodsFor: 'recovered'!
hasMdlUnconditionalReturn
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stmntChild.
    recoveredValue1 := (recoveredValue0) children.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) hasMdlUnconditionalReturn.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 37] ifFalse: [recoveredBlock6PC := 18].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack3 := self.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) stmntChild.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) children.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) last.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 34] ifFalse: [recoveredBlock6PC := 28].
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) hasEndCaseStmnt.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 34] ifFalse: [recoveredBlock6PC := 37].
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Stack1 := false.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^true
! !

"ASDBase.ic method 0x203549a0; bytecode file offset 0xc51280"
!SGMdSwitchStmnt methodsFor: 'recovered'!
hasMdlConditionalExitOrReturnStmnt
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntChild.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280ef874Arg1 | 
    | block280ef874Value0 block280ef874Value1 |
    block280ef874Value0 := block280ef874Arg1.
    block280ef874Value1 := (block280ef874Value0) hasExitOrReturnStmnt.
    block280ef874Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block280ef898Arg1 | 
    | block280ef898Value0 |
    block280ef898Value0 := block280ef898Arg1.
    block280ef898Value0
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:block280ef8bcArg1 | 
    | block280ef8bcValue0 |
    block280ef8bcValue0 := block280ef8bcArg1.
    block280ef8bcValue0
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntChild.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [:block280ef8e0Arg1 | 
    | block280ef8e0Value0 block280ef8e0Value1 |
    block280ef8e0Value0 := block280ef8e0Arg1.
    block280ef8e0Value1 := (block280ef8e0Value0) hasMdlConditionalExitOrReturnStmnt.
    block280ef8e0Value1
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


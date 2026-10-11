"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20027d54; bytecode file offset 0x934580"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
hasIleConditionalEndCaseStmntOnly
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmnt.
    recoveredValue1 := (recoveredValue0) hasIleConditionalEndCaseStmntOnly.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029344; bytecode file offset 0x934580"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
hasIleConditionalExitStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmnt.
    recoveredValue1 := (recoveredValue0) hasIleConditionalExitStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b5b4; bytecode file offset 0x934580"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
hasIleUnconditionalExitStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmnt.
    recoveredValue1 := (recoveredValue0) hasIleUnconditionalExitStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f644; bytecode file offset 0x934580"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
hasIleUnconditionalEndCaseStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmnt.
    recoveredValue1 := (recoveredValue0) hasIleUnconditionalEndCaseStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fa24; bytecode file offset 0x934580"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
hasIleUnconditionalEndCaseStmntOnly
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmnt.
    recoveredValue1 := (recoveredValue0) hasIleUnconditionalEndCaseStmntOnly.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fdf4; bytecode file offset 0x934580"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
hasIleEndCaseStmntOnly
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmnt.
    recoveredValue1 := (recoveredValue0) hasIleEndCaseStmntOnly.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200302a4; bytecode file offset 0x934580"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
hasIleConditionalEndCaseStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmnt.
    recoveredValue1 := (recoveredValue0) hasIleConditionalEndCaseStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200339c4; bytecode file offset 0x934580"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
hasIleExitStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmnt.
    recoveredValue1 := (recoveredValue0) hasIleExitStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036144; bytecode file offset 0x934580"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
hasIleEndCaseStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmnt.
    recoveredValue1 := (recoveredValue0) hasIleEndCaseStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004e0a8; bytecode file offset 0x94d048"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
hasIleCompileTimeConstantExpr
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20055c74; bytecode file offset 0x952a9c"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractLabeledStatement: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069b98; bytecode file offset 0x966bdc"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
stmnt
    | recoveredValue0 |
    recoveredValue0 := stmnt.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074a74; bytecode file offset 0x9757c8"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
isIleAbstractLabeledStmnt
    ^true
! !

"ASDBase.ic method 0x200d5650; bytecode file offset 0x9d2050"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
ileWrapperHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super ileWrapperHash.
    recoveredValue1 := (self) stmnt.
    recoveredValue2 := (recoveredValue1) ileWrapperHash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d8290; bytecode file offset 0x9d4b64"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := (self) stmnt.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) attributes: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20101c30; bytecode file offset 0x9fe54c"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
initializeSource: recoveredArg1 comments: recoveredArg2 stmnt: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    stmnt := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    super initializeSource: (recoveredValue1) comments: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20175398; bytecode file offset 0xa71c98"
!SGIlAbstractLabeledStmnt methodsFor: 'recovered'!
createNoOpStmnt: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) stmnt.
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
            recoveredStack2 := (recoveredStack2) comments.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) comments: (recoveredStack2) stmnt: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


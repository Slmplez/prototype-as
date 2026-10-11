"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200286f4; bytecode file offset 0x934580"
!SGMdDefaultStmnt methodsFor: 'recovered'!
hasMdlUnconditionalReturnOrEndCase
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) child.
    recoveredValue1 := (recoveredValue0) hasMdlUnconditionalReturnOrEndCase.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a004; bytecode file offset 0x934580"
!SGMdDefaultStmnt methodsFor: 'recovered'!
hasMdlUnconditionalReturn
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) child.
    recoveredValue1 := (recoveredValue0) hasMdlUnconditionalReturn.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f474; bytecode file offset 0x934580"
!SGMdDefaultStmnt methodsFor: 'recovered'!
hasReturnStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) child.
    recoveredValue1 := (recoveredValue0) hasReturnStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f684; bytecode file offset 0x934580"
!SGMdDefaultStmnt methodsFor: 'recovered'!
hasEndCaseStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) child.
    recoveredValue1 := (recoveredValue0) hasEndCaseStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056034; bytecode file offset 0x952a9c"
!SGMdDefaultStmnt methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) defaultStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20064814; bytecode file offset 0x961970"
!SGMdDefaultStmnt methodsFor: 'recovered'!
semAnaCovertCaseLiteralToUdisc
    | recoveredValue0 |
    recoveredValue0 := (self) child.
    (recoveredValue0) semAnaCovertCaseLiteralToUdisc.
    ^self
! !

"ASDBase.ic method 0x2006c81c; bytecode file offset 0x9692b0"
!SGMdDefaultStmnt methodsFor: 'recovered'!
child
    | recoveredValue0 |
    recoveredValue0 := child.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200781a4; bytecode file offset 0x9757c8"
!SGMdDefaultStmnt methodsFor: 'recovered'!
isMdlLabelStmnt
    ^true
! !

"ASDBase.ic method 0x20078c04; bytecode file offset 0x9757c8"
!SGMdDefaultStmnt methodsFor: 'recovered'!
isMdlDefaultStmnt
    ^true
! !

"ASDBase.ic method 0x200c312c; bytecode file offset 0x9bfde0"
!SGMdDefaultStmnt methodsFor: 'recovered'!
child: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    child := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f937c; bytecode file offset 0x9f5ca0"
!SGMdDefaultStmnt methodsFor: 'recovered'!
localVars
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) child.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) child.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) localVars.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20118ab8; bytecode file offset 0xa15490"
!SGMdDefaultStmnt methodsFor: 'recovered'!
hasExitStmnt
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) child.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlEmptyStmnt.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasExitStmnt.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20118ae0; bytecode file offset 0xa15490"
!SGMdDefaultStmnt methodsFor: 'recovered'!
hasExitOrReturnStmnt
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) child.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlEmptyStmnt.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasExitOrReturnStmnt.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201316ac; bytecode file offset 0xa2df74"
!SGMdDefaultStmnt methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('default:').
    (recoveredValue0) cr.
    recoveredValue2 := (self) child.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    ^self
! !


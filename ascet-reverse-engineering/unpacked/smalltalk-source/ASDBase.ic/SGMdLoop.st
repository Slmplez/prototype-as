"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002a584; bytecode file offset 0x934580"
!SGMdLoop methodsFor: 'recovered'!
hasExitStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmntChild.
    recoveredValue1 := (recoveredValue0) hasExitStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030d44; bytecode file offset 0x934580"
!SGMdLoop methodsFor: 'recovered'!
hasEndCaseStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmntChild.
    recoveredValue1 := (recoveredValue0) hasExitOrReturnStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031784; bytecode file offset 0x934580"
!SGMdLoop methodsFor: 'recovered'!
hasMdlConditionalExitOrReturnStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmntChild.
    recoveredValue1 := (recoveredValue0) hasReturnStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200317d4; bytecode file offset 0x934580"
!SGMdLoop methodsFor: 'recovered'!
hasExitOrReturnStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmntChild.
    recoveredValue1 := (recoveredValue0) hasExitOrReturnStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032c64; bytecode file offset 0x934580"
!SGMdLoop methodsFor: 'recovered'!
hasReturnStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmntChild.
    recoveredValue1 := (recoveredValue0) hasReturnStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200553c8; bytecode file offset 0x952a9c"
!SGMdLoop methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlLoop: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006bf04; bytecode file offset 0x9692b0"
!SGMdLoop methodsFor: 'recovered'!
exprChild
    | recoveredValue0 |
    recoveredValue0 := exprChild.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cb90; bytecode file offset 0x969c04"
!SGMdLoop methodsFor: 'recovered'!
stmntChild
    | recoveredValue0 |
    recoveredValue0 := stmntChild.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200786bc; bytecode file offset 0x9757c8"
!SGMdLoop methodsFor: 'recovered'!
isMdlLoop
    ^true
! !

"ASDBase.ic method 0x2007f71c; bytecode file offset 0x97c330"
!SGMdLoop methodsFor: 'recovered'!
hasMdlUnconditionalReturnOrEndCase
    ^false
! !

"ASDBase.ic method 0x200c2f9c; bytecode file offset 0x9bfde0"
!SGMdLoop methodsFor: 'recovered'!
exprChild: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    exprChild := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3a98; bytecode file offset 0x9c058c"
!SGMdLoop methodsFor: 'recovered'!
stmntChild: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stmntChild := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d51f8; bytecode file offset 0x9d1ab8"
!SGMdLoop methodsFor: 'recovered'!
mdlStmntCodeSizeCosts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stmntChild.
    recoveredValue1 := (recoveredValue0) mdlStmntCodeSizeCosts.
    recoveredValue2 := super mdlStmntCodeSizeCosts.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    ^recoveredValue3
! !


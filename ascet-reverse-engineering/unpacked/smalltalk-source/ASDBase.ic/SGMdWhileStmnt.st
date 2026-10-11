"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001de58; bytecode file offset 0x92209c"
!SGMdWhileStmnt methodsFor: 'recovered'!
errLabel
    ^'WHILE'
! !

"ASDBase.ic method 0x20054fc0; bytecode file offset 0x952a9c"
!SGMdWhileStmnt methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) whileStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20075eb4; bytecode file offset 0x9757c8"
!SGMdWhileStmnt methodsFor: 'recovered'!
isMdlWhileStmnt
    ^true
! !

"ASDBase.ic method 0x201b35a8; bytecode file offset 0xaafe74"
!SGMdWhileStmnt methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('while (').
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


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20055968; bytecode file offset 0x952a9c"
!SGMdBreakStmnt methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) breakStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20075204; bytecode file offset 0x9757c8"
!SGMdBreakStmnt methodsFor: 'recovered'!
hasEndCaseStmnt
    ^true
! !

"ASDBase.ic method 0x20078c3c; bytecode file offset 0x9757c8"
!SGMdBreakStmnt methodsFor: 'recovered'!
hasMdlUnconditionalReturnOrEndCase
    ^true
! !

"ASDBase.ic method 0x20078c8c; bytecode file offset 0x9757c8"
!SGMdBreakStmnt methodsFor: 'recovered'!
isMdlBreakStmnt
    ^true
! !

"ASDBase.ic method 0x200d8344; bytecode file offset 0x9d4cb8"
!SGMdBreakStmnt methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('break;').
    (recoveredValue0) cr.
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200262cc; bytecode file offset 0x923928"
!SGMdRepeatStmnt methodsFor: 'recovered'!
errLabel
    ^'REPEAT'
! !

"ASDBase.ic method 0x20054ccc; bytecode file offset 0x952a9c"
!SGMdRepeatStmnt methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) repeatStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20064fe4; bytecode file offset 0x961970"
!SGMdRepeatStmnt methodsFor: 'recovered'!
hasMdlUnconditionalReturnOrEndCase
    | recoveredValue0 |
    recoveredValue0 := (self) stmntChild.
    (recoveredValue0) hasMdlUnconditionalReturn.
    ^self
! !

"ASDBase.ic method 0x20078bc4; bytecode file offset 0x9757c8"
!SGMdRepeatStmnt methodsFor: 'recovered'!
isMdlRepeatStmnt
    ^true
! !


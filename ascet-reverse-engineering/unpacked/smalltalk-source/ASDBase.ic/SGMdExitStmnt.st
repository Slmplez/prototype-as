"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002e0f4; bytecode file offset 0x934580"
!SGMdExitStmnt methodsFor: 'recovered'!
attributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) methodDecl.
    recoveredValue1 := (recoveredValue0) attributes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ecb4; bytecode file offset 0x934580"
!SGMdExitStmnt methodsFor: 'recovered'!
mdlClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) methodDecl.
    recoveredValue1 := (recoveredValue0) mdlClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055f20; bytecode file offset 0x952a9c"
!SGMdExitStmnt methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exitStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006bf1c; bytecode file offset 0x9692b0"
!SGMdExitStmnt methodsFor: 'recovered'!
methodDecl
    | recoveredValue0 |
    recoveredValue0 := methodDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074a2c; bytecode file offset 0x9757c8"
!SGMdExitStmnt methodsFor: 'recovered'!
hasEndCaseStmnt
    ^true
! !

"ASDBase.ic method 0x2007578c; bytecode file offset 0x9757c8"
!SGMdExitStmnt methodsFor: 'recovered'!
hasMdlUnconditionalReturn
    ^true
! !

"ASDBase.ic method 0x20075fe4; bytecode file offset 0x9757c8"
!SGMdExitStmnt methodsFor: 'recovered'!
hasExitOrReturnStmnt
    ^true
! !

"ASDBase.ic method 0x2007887c; bytecode file offset 0x9757c8"
!SGMdExitStmnt methodsFor: 'recovered'!
hasReturnStmnt
    ^true
! !

"ASDBase.ic method 0x20078a3c; bytecode file offset 0x9757c8"
!SGMdExitStmnt methodsFor: 'recovered'!
isMdlReturnStmnt
    ^true
! !

"ASDBase.ic method 0x20078c14; bytecode file offset 0x9757c8"
!SGMdExitStmnt methodsFor: 'recovered'!
hasExitStmnt
    ^true
! !

"ASDBase.ic method 0x20078c1c; bytecode file offset 0x9757c8"
!SGMdExitStmnt methodsFor: 'recovered'!
hasMdlUnconditionalReturnOrEndCase
    ^true
! !

"ASDBase.ic method 0x2009dc84; bytecode file offset 0x99a578"
!SGMdExitStmnt methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) methodDecl.
    recoveredValue1 := (recoveredValue0) errLabel.
    recoveredValue2 := ('return with expr from ') , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c334c; bytecode file offset 0x9bfde0"
!SGMdExitStmnt methodsFor: 'recovered'!
methodDecl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    methodDecl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d8330; bytecode file offset 0x9d4cb8"
!SGMdExitStmnt methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('return;').
    (recoveredValue0) cr.
    ^self
! !


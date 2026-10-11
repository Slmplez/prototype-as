"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20030e74; bytecode file offset 0x934580"
!SGMdMacro methodsFor: 'recovered'!
hasExitOrReturnStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) code.
    recoveredValue1 := (recoveredValue0) hasExitOrReturnStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200331e4; bytecode file offset 0x934580"
!SGMdMacro methodsFor: 'recovered'!
hasEndCaseStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) code.
    recoveredValue1 := (recoveredValue0) hasEndCaseStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036604; bytecode file offset 0x934580"
!SGMdMacro methodsFor: 'recovered'!
hasExitStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) code.
    recoveredValue1 := (recoveredValue0) hasExitStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200367f4; bytecode file offset 0x934580"
!SGMdMacro methodsFor: 'recovered'!
hasReturnStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) code.
    recoveredValue1 := (recoveredValue0) hasReturnStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200557a0; bytecode file offset 0x952a9c"
!SGMdMacro methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlMacro: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200586a8; bytecode file offset 0x956284"
!SGMdMacro methodsFor: 'recovered'!
hasReturnStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) code.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) hasReturnStmnt: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006f968; bytecode file offset 0x96c42c"
!SGMdMacro methodsFor: 'recovered'!
code
    | recoveredValue0 |
    recoveredValue0 := code.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fd98; bytecode file offset 0x96c6ac"
!SGMdMacro methodsFor: 'recovered'!
hasLocalVars
    | recoveredValue0 |
    recoveredValue0 := hasLocalVars.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076574; bytecode file offset 0x9757c8"
!SGMdMacro methodsFor: 'recovered'!
isMdlMacro
    ^true
! !

"ASDBase.ic method 0x200c6114; bytecode file offset 0x9c29e8"
!SGMdMacro methodsFor: 'recovered'!
code: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    code := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6260; bytecode file offset 0x9c2bec"
!SGMdMacro methodsFor: 'recovered'!
hasLocalVars: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hasLocalVars := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e6120; bytecode file offset 0x9e2abc"
!SGMdMacro methodsFor: 'recovered'!
initialize
    super initialize.
    (self) hasLocalVars: (false).
    ^self
! !


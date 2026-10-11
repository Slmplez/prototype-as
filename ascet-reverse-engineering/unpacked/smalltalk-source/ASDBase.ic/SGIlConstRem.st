"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007100; bytecode file offset 0x908be4"
!SGIlConstRem methodsFor: 'recovered'!
ileConstChild
    | recoveredValue0 |
    recoveredValue0 := (self) leftExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007e80; bytecode file offset 0x908be4"
!SGIlConstRem methodsFor: 'recovered'!
ileExprChild
    | recoveredValue0 |
    recoveredValue0 := (self) rightExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005508c; bytecode file offset 0x952a9c"
!SGIlConstRem methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) constRemExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20074fa4; bytecode file offset 0x9757c8"
!SGIlConstRem methodsFor: 'recovered'!
hasIleConstChild
    ^true
! !


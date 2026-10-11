"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000ada8; bytecode file offset 0x908be4"
!SGIlRemConst methodsFor: 'recovered'!
ileExprChild
    | recoveredValue0 |
    recoveredValue0 := (self) leftExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bee8; bytecode file offset 0x908be4"
!SGIlRemConst methodsFor: 'recovered'!
ileConstChild
    | recoveredValue0 |
    recoveredValue0 := (self) rightExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200550d4; bytecode file offset 0x952a9c"
!SGIlRemConst methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) remConstExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20074c9c; bytecode file offset 0x9757c8"
!SGIlRemConst methodsFor: 'recovered'!
hasIleConstChild
    ^true
! !

"ASDBase.ic method 0x200777b4; bytecode file offset 0x9757c8"
!SGIlRemConst methodsFor: 'recovered'!
isIleRemConstExpr
    ^true
! !


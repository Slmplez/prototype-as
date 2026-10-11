"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005535c; bytecode file offset 0x952a9c"
!SGMdRedundantVerifyExpr methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlRedundantVerifyExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006c6ec; bytecode file offset 0x9692b0"
!SGMdRedundantVerifyExpr methodsFor: 'recovered'!
identifier
    | recoveredValue0 |
    recoveredValue0 := identifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c2bfc; bytecode file offset 0x9bfde0"
!SGMdRedundantVerifyExpr methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    identifier := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201752a0; bytecode file offset 0xa71b68"
!SGMdRedundantVerifyExpr methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('verify(').
    recoveredValue1 := (self) identifier.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) nextPut: ($)).
    ^self
! !


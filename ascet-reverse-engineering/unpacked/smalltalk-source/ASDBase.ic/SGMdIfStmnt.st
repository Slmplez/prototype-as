"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015ee4; bytecode file offset 0x92209c"
!SGMdIfStmnt methodsFor: 'recovered'!
errLabel
    ^'IF-THEN'
! !

"ASDBase.ic method 0x2002c594; bytecode file offset 0x934580"
!SGMdIfStmnt methodsFor: 'recovered'!
hasReturnStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) trueChild.
    recoveredValue1 := (recoveredValue0) hasReturnStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032b94; bytecode file offset 0x934580"
!SGMdIfStmnt methodsFor: 'recovered'!
hasMdlConditionalExitOrReturnStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) trueChild.
    recoveredValue1 := (recoveredValue0) hasExitOrReturnStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032d84; bytecode file offset 0x934580"
!SGMdIfStmnt methodsFor: 'recovered'!
hasExitStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) trueChild.
    recoveredValue1 := (recoveredValue0) hasExitStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005514c; bytecode file offset 0x952a9c"
!SGMdIfStmnt methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ifThenStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006c2fc; bytecode file offset 0x9692b0"
!SGMdIfStmnt methodsFor: 'recovered'!
exprChild
    | recoveredValue0 |
    recoveredValue0 := expr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d168; bytecode file offset 0x969c04"
!SGMdIfStmnt methodsFor: 'recovered'!
trueChild
    | recoveredValue0 |
    recoveredValue0 := trueChild.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075344; bytecode file offset 0x9757c8"
!SGMdIfStmnt methodsFor: 'recovered'!
isMdlIfStmnt
    ^true
! !

"ASDBase.ic method 0x200b1cb0; bytecode file offset 0x9ae66c"
!SGMdIfStmnt methodsFor: 'recovered'!
hasExitOrReturnStmnt
    | recoveredValue0 |
    recoveredValue0 := ('Rl') == ('Call_64154').
    ^false
! !

"ASDBase.ic method 0x200c2f8c; bytecode file offset 0x9bfde0"
!SGMdIfStmnt methodsFor: 'recovered'!
exprChild: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    expr := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3a08; bytecode file offset 0x9c058c"
!SGMdIfStmnt methodsFor: 'recovered'!
trueChild: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    trueChild := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d51e4; bytecode file offset 0x9d1ab8"
!SGMdIfStmnt methodsFor: 'recovered'!
mdlStmntCodeSizeCosts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) trueChild.
    recoveredValue1 := (recoveredValue0) mdlStmntCodeSizeCosts.
    recoveredValue2 := super mdlStmntCodeSizeCosts.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201b3568; bytecode file offset 0xaafe74"
!SGMdIfStmnt methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('if (').
    recoveredValue1 := (self) exprChild.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) nextPutAll: (') ').
    recoveredValue4 := (self) trueChild.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) printOn: (recoveredValue5).
    ^self
! !


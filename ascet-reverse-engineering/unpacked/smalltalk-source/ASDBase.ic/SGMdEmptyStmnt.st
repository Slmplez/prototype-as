"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200549d8; bytecode file offset 0x952a9c"
!SGMdEmptyStmnt methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) emptyStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20071c8c; bytecode file offset 0x96e578"
!SGMdEmptyStmnt methodsFor: 'recovered'!
mdlStmntCodeSizeCosts
    ^0
! !

"ASDBase.ic method 0x200780cc; bytecode file offset 0x9757c8"
!SGMdEmptyStmnt methodsFor: 'recovered'!
isMdlEmptyStmnt
    ^true
! !

"ASDBase.ic method 0x200c2ef4; bytecode file offset 0x9bfde0"
!SGMdEmptyStmnt methodsFor: 'recovered'!
errLabel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errLabel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20163444; bytecode file offset 0xa5fd04"
!SGMdEmptyStmnt methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := errLabel.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := super errLabel.
    ^recoveredValue2
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001063c; bytecode file offset 0x90cf40"
!SGIlInactiveOptimizeConstFoldingScalar methodsFor: 'recovered'!
maxLeftConst: recoveredArg1 rightConst: recoveredArg2 type: recoveredArg3
    ^nil
! !

"ASDBase.ic method 0x20010654; bytecode file offset 0x90cf40"
!SGIlInactiveOptimizeConstFoldingScalar methodsFor: 'recovered'!
mulLeftConst: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    ^nil
! !

"ASDBase.ic method 0x20010664; bytecode file offset 0x90cf40"
!SGIlInactiveOptimizeConstFoldingScalar methodsFor: 'recovered'!
subLeftConst: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    ^nil
! !

"ASDBase.ic method 0x20010674; bytecode file offset 0x90cf40"
!SGIlInactiveOptimizeConstFoldingScalar methodsFor: 'recovered'!
divLeftConst: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    ^nil
! !

"ASDBase.ic method 0x2001067c; bytecode file offset 0x90cf40"
!SGIlInactiveOptimizeConstFoldingScalar methodsFor: 'recovered'!
addLeftConst: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    ^nil
! !

"ASDBase.ic method 0x20010684; bytecode file offset 0x90cf40"
!SGIlInactiveOptimizeConstFoldingScalar methodsFor: 'recovered'!
minLeftConst: recoveredArg1 rightConst: recoveredArg2 type: recoveredArg3
    ^nil
! !

"ASDBase.ic method 0x200387fc; bytecode file offset 0x935c54"
!SGIlInactiveOptimizeConstFoldingScalar methodsFor: 'recovered'!
disableNoOverflowOptimizationDo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038cd0; bytecode file offset 0x935c54"
!SGIlInactiveOptimizeConstFoldingScalar methodsFor: 'recovered'!
toBeExpandedRepresentableFraction: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20078e8c; bytecode file offset 0x9757c8"
!SGIlInactiveOptimizeConstFoldingScalar methodsFor: 'recovered'!
allowNoOverflowOptimization
    ^true
! !

"ASDBase.ic method 0x2009a568; bytecode file offset 0x997194"
!SGIlInactiveOptimizeConstFoldingScalar methodsFor: 'recovered'!
remLeftConstant: recoveredArg1 rightConstant: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) remLeftExpr: (recoveredValue1) rightConstant: (recoveredValue2).
    ^recoveredValue3
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDConvUtil_base.ic method 0x20000248; bytecode file offset 0x9c8c"
!SGCheckOperatorImplToolbox methodsFor: 'recovered'!
dbAccess
    | recoveredValue0 |
    recoveredValue0 := dbAccess.
    ^recoveredValue0
! !

"ASDConvUtil_base.ic method 0x20000300; bytecode file offset 0x9d84"
!SGCheckOperatorImplToolbox methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGDatabaseAccess.
    recoveredValue1 := (recoveredValue0) create.
    (self) dbAccess: (recoveredValue1).
    ^self
! !

"ASDConvUtil_base.ic method 0x2000035c; bytecode file offset 0x9db0"
!SGCheckOperatorImplToolbox methodsFor: 'recovered'!
dbAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbAccess := recoveredValue0.
    ^self
! !

"ASDConvUtil_base.ic method 0x200003c4; bytecode file offset 0x9e0c"
!SGCheckOperatorImplToolbox methodsFor: 'recovered'!
checkWholeDatabaseOperatorImplementation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGListOperatorImplementationsWindow.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createFor: (recoveredValue1) convert: (false).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) openWithParent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDConvUtil_base.ic method 0x200003e8; bytecode file offset 0x9e30"
!SGCheckOperatorImplToolbox methodsFor: 'recovered'!
convertWholeDatabaseOperatorImplementation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGListOperatorImplementationsWindow.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createFor: (recoveredValue1) convert: (true).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) openWithParent: (recoveredValue3).
    ^recoveredValue4
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003d808; bytecode file offset 0x93bf94"
!SGSmReportExitStmnts methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e860c; bytecode file offset 0x9e4ec8"
!SGSmReportExitStmnts methodsFor: 'recovered'!
exitStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) source.
    (self) smSyntaxErrNo: (95) source: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20111114; bytecode file offset 0xa0d9d8"
!SGSmReportExitStmnts methodsFor: 'recovered'!
smSyntaxErrNo: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) syntaxErrorNo: (recoveredValue1) args: (#()) category: ('Sm') source: (recoveredValue2).
    ^self
! !


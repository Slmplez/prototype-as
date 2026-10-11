"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000068; bytecode file offset 0x8ffcfc"
!RBRunTimeErrorHandlingRT class methodsFor: 'recovered'!
_PRAGMA_EtasRunTimeErrorConstants
    ^self
! !

"ASDBase.ic method 0x20002e08; bytecode file offset 0x8ffcfc"
!RBRunTimeErrorHandlingRT class methodsFor: 'recovered'!
_PRAGMA_RBRunTimeErrorHandlingRTNlsPool
    ^self
! !

"ASDBase.ic method 0x20020ca8; bytecode file offset 0x92209c"
!RBRunTimeErrorHandlingRT class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('signal' 'signalWith:')
! !

"ASDBase.ic method 0x20024608; bytecode file offset 0x92209c"
!RBRunTimeErrorHandlingRT class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('logZipAndSentCallback')
! !

"ASDBase.ic method 0x2004e4b0; bytecode file offset 0x94d048"
!RBRunTimeErrorHandlingRT class methodsFor: 'recovered'!
localize
    (self) etasDefaultLocalize.
    ^self
! !

"ASDBase.ic method 0x20050790; bytecode file offset 0x94d048"
!RBRunTimeErrorHandlingRT class methodsFor: 'recovered'!
relocalize
    (self) localize.
    ^self
! !

"ASDBase.ic method 0x200e0350; bytecode file offset 0x9dcc14"
!RBRunTimeErrorHandlingRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    (recoveredValue0) reactToCtrlBreakInRunTime: (false).
    recoveredValue1 := RBAbstractRunTimeErrorHandling.
    (recoveredValue1) destroyClassDeveloperTable.
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x203f2d1c; bytecode file offset 0xcef620"
!OSStartupinfo methodsFor: 'recovered'!
defaultValuesOutputTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fixedSize.
    (self) cb: (recoveredValue1).
    (self) lpReserved: (0).
    (self) lpDesktop: (0).
    (self) lpTitle: (0).
    (self) dwX: (0).
    (self) dwY.
    (self) dwXSize: (0).
    (self) dwYSize: (0).
    (self) dwXCountChars: (0).
    (self) dwYCountChars: (0).
    (self) dwFillAttribute: (0).
    (self) dwFlags: (256).
    (self) wShowWindow: (0).
    (self) cbReserved2: (0).
    (self) lpReserved2: (0).
    recoveredValue2 := recoveredArg1.
    (self) hStdInput: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) hStdOutput: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) hStdError: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203fc5f8; bytecode file offset 0xcf8efc"
!OSStartupinfo methodsFor: 'recovered'!
defaultValues
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fixedSize.
    (self) cb: (recoveredValue1).
    (self) lpReserved: (0).
    (self) lpDesktop: (0).
    (self) lpTitle: (0).
    (self) dwX: (0).
    (self) dwY.
    (self) dwXSize: (0).
    (self) dwYSize: (0).
    (self) dwXCountChars: (0).
    (self) dwYCountChars: (0).
    (self) dwFillAttribute: (0).
    (self) dwFlags: (0).
    (self) wShowWindow: (0).
    (self) cbReserved2: (0).
    (self) lpReserved2: (0).
    (self) hStdInput: (0).
    (self) hStdOutput: (0).
    (self) hStdError: (0).
    ^self
! !


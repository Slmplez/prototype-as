"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x2000080c; bytecode file offset 0x13890"
!SciSslX509Certificate methodsFor: 'recovered'!
free
    | recoveredValue0 |
    recoveredValue0 := (self) osX509.
    (recoveredValue0) free.
    ^self
! !

"sci.ic method 0x2000089c; bytecode file offset 0x13930"
!SciSslX509Certificate methodsFor: 'recovered'!
osX509
    | recoveredValue0 |
    recoveredValue0 := osX509.
    ^recoveredValue0
! !

"sci.ic method 0x200011fc; bytecode file offset 0x142c8"
!SciSslX509Certificate methodsFor: 'recovered'!
osX509: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osX509 := recoveredValue0.
    ^self
! !


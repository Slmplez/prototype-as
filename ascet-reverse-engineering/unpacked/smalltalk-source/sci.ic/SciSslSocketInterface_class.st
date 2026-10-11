"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20000504; bytecode file offset 0x135b4"
!SciSslSocketInterface class methodsFor: 'recovered'!
loaded
    (self) startUp.
    ^self
! !

"sci.ic method 0x200013fc; bytecode file offset 0x14488"
!SciSslSocketInterface class methodsFor: 'recovered'!
startUp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SciSslBlockingDispatcher.
    (recoveredValue0) resetSslLibrary.
    recoveredValue1 := SciSslSocketConfiguration.
    (recoveredValue1) clearRegistry.
    ^self
! !


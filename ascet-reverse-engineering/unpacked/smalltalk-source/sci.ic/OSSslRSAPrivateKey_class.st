"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x200015f8; bytecode file offset 0x14680"
!OSSslRSAPrivateKey class methodsFor: 'recovered'!
fromPemFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := PEM_STRING_RSA.
    recoveredValue2 := d2i_RSAPrivateKey.
    recoveredValue3 := (self) fromPemFile: (recoveredValue0) keyString: (recoveredValue1) function: (recoveredValue2).
    ^recoveredValue3
! !


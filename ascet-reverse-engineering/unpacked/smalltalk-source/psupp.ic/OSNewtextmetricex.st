"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000cb30; bytecode file offset 0x160b8c"
!OSNewtextmetricex methodsFor: 'recovered'!
ntmTm
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSNewtextmetric.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010b98; bytecode file offset 0x165330"
!OSNewtextmetricex methodsFor: 'recovered'!
ntmTm: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f248; bytecode file offset 0x172af4"
!OSNewtextmetricex methodsFor: 'recovered'!
ntmFontSig
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFontsignature.
    recoveredValue1 := (self) structAt: (72) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001fdb0; bytecode file offset 0x1736cc"
!OSNewtextmetricex methodsFor: 'recovered'!
ntmFontSig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (72) put: (recoveredValue0).
    ^self
! !


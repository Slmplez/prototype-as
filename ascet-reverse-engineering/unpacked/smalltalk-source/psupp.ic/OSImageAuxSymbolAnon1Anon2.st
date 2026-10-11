"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000240c; bytecode file offset 0x155d58"
!OSImageAuxSymbolAnon1Anon2 methodsFor: 'recovered'!
TotalSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cd90; bytecode file offset 0x160b8c"
!OSImageAuxSymbolAnon1Anon2 methodsFor: 'recovered'!
LnSz
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSImageAuxSymbolAnon1Anon2Anon1.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fa04; bytecode file offset 0x165330"
!OSImageAuxSymbolAnon1Anon2 methodsFor: 'recovered'!
TotalSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200119b4; bytecode file offset 0x165330"
!OSImageAuxSymbolAnon1Anon2 methodsFor: 'recovered'!
LnSz: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !


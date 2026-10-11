"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001110; bytecode file offset 0x155d58"
!OSRasterizerStatus methodsFor: 'recovered'!
nSize
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200027f4; bytecode file offset 0x1561c4"
!OSRasterizerStatus methodsFor: 'recovered'!
wFlags
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20002ad4; bytecode file offset 0x157170"
!OSRasterizerStatus methodsFor: 'recovered'!
nLanguageID
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e8bc; bytecode file offset 0x163098"
!OSRasterizerStatus methodsFor: 'recovered'!
getRasterizerCaps: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetRasterizerCaps.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20010934; bytecode file offset 0x165330"
!OSRasterizerStatus methodsFor: 'recovered'!
nSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011e70; bytecode file offset 0x1657d4"
!OSRasterizerStatus methodsFor: 'recovered'!
wFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200126d4; bytecode file offset 0x166e00"
!OSRasterizerStatus methodsFor: 'recovered'!
nLanguageID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (4) put: (recoveredValue0).
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200012fc; bytecode file offset 0x155d58"
!OSMciBreakParms methodsFor: 'recovered'!
dwCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200034c4; bytecode file offset 0x157170"
!OSMciBreakParms methodsFor: 'recovered'!
nVirtKey
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200117b0; bytecode file offset 0x165330"
!OSMciBreakParms methodsFor: 'recovered'!
dwCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200121b8; bytecode file offset 0x166e00"
!OSMciBreakParms methodsFor: 'recovered'!
nVirtKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014a38; bytecode file offset 0x1683c0"
!OSMciBreakParms methodsFor: 'recovered'!
hwndBreak: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001bc60; bytecode file offset 0x16f8e8"
!OSMciBreakParms methodsFor: 'recovered'!
hwndBreak
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !


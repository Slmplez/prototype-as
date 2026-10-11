"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200019c8; bytecode file offset 0x155d58"
!OSDiscdlgstruct methodsFor: 'recovered'!
cbStructure
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20005714; bytecode file offset 0x159294"
!OSDiscdlgstruct methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x200091e8; bytecode file offset 0x15caa4"
!OSDiscdlgstruct methodsFor: 'recovered'!
wNetDisconnectDialog1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := WNetDisconnectDialog1.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20010e5c; bytecode file offset 0x165330"
!OSDiscdlgstruct methodsFor: 'recovered'!
cbStructure: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012248; bytecode file offset 0x166e00"
!OSDiscdlgstruct methodsFor: 'recovered'!
hwndOwner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200143c0; bytecode file offset 0x1683c0"
!OSDiscdlgstruct methodsFor: 'recovered'!
lpLocalName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001586c; bytecode file offset 0x169290"
!OSDiscdlgstruct methodsFor: 'recovered'!
lpRemoteName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016364; bytecode file offset 0x169eb4"
!OSDiscdlgstruct methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b86c; bytecode file offset 0x16f1fc"
!OSDiscdlgstruct methodsFor: 'recovered'!
hwndOwner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b9a4; bytecode file offset 0x16f8e8"
!OSDiscdlgstruct methodsFor: 'recovered'!
lpLocalName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c090; bytecode file offset 0x16fe44"
!OSDiscdlgstruct methodsFor: 'recovered'!
lpRemoteName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !


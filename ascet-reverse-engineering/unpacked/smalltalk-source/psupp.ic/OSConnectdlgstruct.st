"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001860; bytecode file offset 0x155d58"
!OSConnectdlgstruct methodsFor: 'recovered'!
cbStructure
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20005028; bytecode file offset 0x1589a4"
!OSConnectdlgstruct methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200057c8; bytecode file offset 0x159294"
!OSConnectdlgstruct methodsFor: 'recovered'!
dwDevNum
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20008558; bytecode file offset 0x15caa4"
!OSConnectdlgstruct methodsFor: 'recovered'!
wNetConnectionDialog1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := WNetConnectionDialog1.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20010034; bytecode file offset 0x165330"
!OSConnectdlgstruct methodsFor: 'recovered'!
cbStructure: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001343c; bytecode file offset 0x166e00"
!OSConnectdlgstruct methodsFor: 'recovered'!
hwndOwner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014af8; bytecode file offset 0x1683c0"
!OSConnectdlgstruct methodsFor: 'recovered'!
lpConnRes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015788; bytecode file offset 0x169290"
!OSConnectdlgstruct methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016430; bytecode file offset 0x169eb4"
!OSConnectdlgstruct methodsFor: 'recovered'!
dwDevNum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b614; bytecode file offset 0x16f1fc"
!OSConnectdlgstruct methodsFor: 'recovered'!
hwndOwner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bc4c; bytecode file offset 0x16f8e8"
!OSConnectdlgstruct methodsFor: 'recovered'!
lpConnRes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSNetresource.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !


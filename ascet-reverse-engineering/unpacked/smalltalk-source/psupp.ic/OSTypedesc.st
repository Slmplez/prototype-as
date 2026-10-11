"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001cc8; bytecode file offset 0x155d58"
!OSTypedesc methodsFor: 'recovered'!
hreftype
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200038b4; bytecode file offset 0x157170"
!OSTypedesc methodsFor: 'recovered'!
vt
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20010a9c; bytecode file offset 0x165330"
!OSTypedesc methodsFor: 'recovered'!
lpadesc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011714; bytecode file offset 0x165330"
!OSTypedesc methodsFor: 'recovered'!
lptdesc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001187c; bytecode file offset 0x165330"
!OSTypedesc methodsFor: 'recovered'!
hreftype: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012cbc; bytecode file offset 0x166e00"
!OSTypedesc methodsFor: 'recovered'!
vt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ac08; bytecode file offset 0x16ea70"
!OSTypedesc methodsFor: 'recovered'!
lpadesc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSArraydesc.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b0b8; bytecode file offset 0x16ea70"
!OSTypedesc methodsFor: 'recovered'!
lptdesc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSTypedesc.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !


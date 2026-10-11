"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20006950; bytecode file offset 0x15a428"
!OSOleuipasteentry methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006ce4; bytecode file offset 0x15a780"
!OSOleuipasteentry methodsFor: 'recovered'!
dwScratchSpace
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ca90; bytecode file offset 0x160b8c"
!OSOleuipasteentry methodsFor: 'recovered'!
fmtetc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFormatetc.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200108f8; bytecode file offset 0x165330"
!OSOleuipasteentry methodsFor: 'recovered'!
fmtetc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200168bc; bytecode file offset 0x16a7b4"
!OSOleuipasteentry methodsFor: 'recovered'!
lpstrFormatName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200175dc; bytecode file offset 0x16afe8"
!OSOleuipasteentry methodsFor: 'recovered'!
lpstrResultText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017c48; bytecode file offset 0x16b690"
!OSOleuipasteentry methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001823c; bytecode file offset 0x16bb70"
!OSOleuipasteentry methodsFor: 'recovered'!
dwScratchSpace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ca6c; bytecode file offset 0x17049c"
!OSOleuipasteentry methodsFor: 'recovered'!
lpstrFormatName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ccf8; bytecode file offset 0x170728"
!OSOleuipasteentry methodsFor: 'recovered'!
lpstrResultText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !


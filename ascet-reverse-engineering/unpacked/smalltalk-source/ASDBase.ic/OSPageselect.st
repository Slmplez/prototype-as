"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b1ec; bytecode file offset 0x947d20"
!OSPageselect methodsFor: 'recovered'!
ulPageIdCur
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c2b0; bytecode file offset 0x948b80"
!OSPageselect methodsFor: 'recovered'!
ulPageIdNew
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a6044; bytecode file offset 0x9a2a28"
!OSPageselect methodsFor: 'recovered'!
ulPageIdCur: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (2) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6c74; bytecode file offset 0x9a3694"
!OSPageselect methodsFor: 'recovered'!
ulPageIdNew: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200b00e8; bytecode file offset 0x9ac9d0"
!OSPageselect methodsFor: 'recovered'!
hwndBook
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ba4cc; bytecode file offset 0x9b6d88"
!OSPageselect methodsFor: 'recovered'!
hwndBook: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asInteger.
    (self) uint16At: (0) put: (recoveredValue1).
    ^self
! !


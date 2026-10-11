"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b844; bytecode file offset 0x948384"
!OSPagedelete methodsFor: 'recovered'!
pageData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c6f8; bytecode file offset 0x949118"
!OSPagedelete methodsFor: 'recovered'!
hbmTab
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a6494; bytecode file offset 0x9a2f38"
!OSPagedelete methodsFor: 'recovered'!
pageData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a71d8; bytecode file offset 0x9a3b44"
!OSPagedelete methodsFor: 'recovered'!
hbmTab: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200b00fc; bytecode file offset 0x9ac9d0"
!OSPagedelete methodsFor: 'recovered'!
bkHwnd
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b0130; bytecode file offset 0x9ac9f0"
!OSPagedelete methodsFor: 'recovered'!
pgHwnd
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint16At: (2).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ba4bc; bytecode file offset 0x9b6d88"
!OSPagedelete methodsFor: 'recovered'!
bkHwnd: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asInteger.
    (self) uint16At: (0) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ba504; bytecode file offset 0x9b6dc0"
!OSPagedelete methodsFor: 'recovered'!
pgHwnd: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asInteger.
    (self) uint16At: (2) put: (recoveredValue1).
    ^self
! !


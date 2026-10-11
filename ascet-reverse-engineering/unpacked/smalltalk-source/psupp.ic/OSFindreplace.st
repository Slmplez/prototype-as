"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000237c; bytecode file offset 0x155d58"
!OSFindreplace methodsFor: 'recovered'!
lStructSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20004d64; bytecode file offset 0x1589a4"
!OSFindreplace methodsFor: 'recovered'!
Flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20006420; bytecode file offset 0x159f34"
!OSFindreplace methodsFor: 'recovered'!
wFindWhatLen
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006754; bytecode file offset 0x15a004"
!OSFindreplace methodsFor: 'recovered'!
wReplaceWithLen
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (26).
    ^recoveredValue0
! !

"psupp.ic method 0x20006890; bytecode file offset 0x15a428"
!OSFindreplace methodsFor: 'recovered'!
lCustData
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006c78; bytecode file offset 0x15a780"
!OSFindreplace methodsFor: 'recovered'!
lpfnHook
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fd40; bytecode file offset 0x165330"
!OSFindreplace methodsFor: 'recovered'!
lStructSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001274c; bytecode file offset 0x166e00"
!OSFindreplace methodsFor: 'recovered'!
hwndOwner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001412c; bytecode file offset 0x1683c0"
!OSFindreplace methodsFor: 'recovered'!
hInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200152e4; bytecode file offset 0x169290"
!OSFindreplace methodsFor: 'recovered'!
Flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015b9c; bytecode file offset 0x169eb4"
!OSFindreplace methodsFor: 'recovered'!
lpstrFindWhat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016ee0; bytecode file offset 0x16a7b4"
!OSFindreplace methodsFor: 'recovered'!
lpstrReplaceWith: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200174c8; bytecode file offset 0x16afe8"
!OSFindreplace methodsFor: 'recovered'!
wFindWhatLen: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200177d4; bytecode file offset 0x16b0cc"
!OSFindreplace methodsFor: 'recovered'!
wReplaceWithLen: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (26) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017df8; bytecode file offset 0x16b690"
!OSFindreplace methodsFor: 'recovered'!
lCustData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200180bc; bytecode file offset 0x16bb70"
!OSFindreplace methodsFor: 'recovered'!
lpfnHook: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018728; bytecode file offset 0x16bff0"
!OSFindreplace methodsFor: 'recovered'!
lpTemplateName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001a708; bytecode file offset 0x16e2c4"
!OSFindreplace methodsFor: 'recovered'!
replaceText
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := ReplaceText.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2001a930; bytecode file offset 0x16e2c4"
!OSFindreplace methodsFor: 'recovered'!
findText
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := FindText.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2001b1f0; bytecode file offset 0x16f1fc"
!OSFindreplace methodsFor: 'recovered'!
hwndOwner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c048; bytecode file offset 0x16f8e8"
!OSFindreplace methodsFor: 'recovered'!
hInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c81c; bytecode file offset 0x170238"
!OSFindreplace methodsFor: 'recovered'!
lpstrFindWhat
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001cabc; bytecode file offset 0x17049c"
!OSFindreplace methodsFor: 'recovered'!
lpstrReplaceWith
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (20).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001d43c; bytecode file offset 0x170d40"
!OSFindreplace methodsFor: 'recovered'!
lpTemplateName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (36).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !


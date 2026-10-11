"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20002990; bytecode file offset 0x7ed00"
!CgLZWNode methodsFor: 'recovered'!
left
    | recoveredValue0 |
    recoveredValue0 := left.
    ^recoveredValue0
! !

"winsys.ic method 0x20002ca8; bytecode file offset 0x7efc0"
!CgLZWNode methodsFor: 'recovered'!
right
    | recoveredValue0 |
    recoveredValue0 := right.
    ^recoveredValue0
! !

"winsys.ic method 0x20002f48; bytecode file offset 0x7f220"
!CgLZWNode methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := children.
    ^recoveredValue0
! !

"winsys.ic method 0x200030f0; bytecode file offset 0x7f418"
!CgLZWNode methodsFor: 'recovered'!
code
    | recoveredValue0 |
    recoveredValue0 := code.
    ^recoveredValue0
! !

"winsys.ic method 0x20003350; bytecode file offset 0x7f5b8"
!CgLZWNode methodsFor: 'recovered'!
prefix
    | recoveredValue0 |
    recoveredValue0 := prefix.
    ^recoveredValue0
! !

"winsys.ic method 0x200034e8; bytecode file offset 0x7f720"
!CgLZWNode methodsFor: 'recovered'!
suffix
    | recoveredValue0 |
    recoveredValue0 := suffix.
    ^recoveredValue0
! !

"winsys.ic method 0x200071bc; bytecode file offset 0x8346c"
!CgLZWNode methodsFor: 'recovered'!
left: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    left := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200072ec; bytecode file offset 0x836b4"
!CgLZWNode methodsFor: 'recovered'!
right: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    right := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000764c; bytecode file offset 0x838d4"
!CgLZWNode methodsFor: 'recovered'!
children: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    children := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007824; bytecode file offset 0x83a6c"
!CgLZWNode methodsFor: 'recovered'!
code: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    code := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200078c8; bytecode file offset 0x83bb0"
!CgLZWNode methodsFor: 'recovered'!
prefix: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    prefix := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007b08; bytecode file offset 0x83ce8"
!CgLZWNode methodsFor: 'recovered'!
suffix: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    suffix := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2001d010; bytecode file offset 0x991e8"
!CgLZWNode methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('CgLZWNode(prefix: ').
    recoveredValue1 := prefix.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) nextPutAll: (', code: ').
    recoveredValue4 := code.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) printOn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) nextPutAll: (', suffix: ').
    recoveredValue7 := suffix.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) printOn: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) nextPutAll: (')').
    ^self
! !


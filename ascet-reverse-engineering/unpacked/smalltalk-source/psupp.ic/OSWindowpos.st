"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000454c; bytecode file offset 0x157f64"
!OSWindowpos methodsFor: 'recovered'!
x
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20005094; bytecode file offset 0x1589a4"
!OSWindowpos methodsFor: 'recovered'!
y
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000560c; bytecode file offset 0x159294"
!OSWindowpos methodsFor: 'recovered'!
cx
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20006064; bytecode file offset 0x159974"
!OSWindowpos methodsFor: 'recovered'!
cy
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000636c; bytecode file offset 0x159f34"
!OSWindowpos methodsFor: 'recovered'!
flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x200119c0; bytecode file offset 0x165330"
!OSWindowpos methodsFor: 'recovered'!
hwnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001247c; bytecode file offset 0x166e00"
!OSWindowpos methodsFor: 'recovered'!
hwndInsertAfter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200139c4; bytecode file offset 0x1683c0"
!OSWindowpos methodsFor: 'recovered'!
x: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015710; bytecode file offset 0x169290"
!OSWindowpos methodsFor: 'recovered'!
y: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015f8c; bytecode file offset 0x169eb4"
!OSWindowpos methodsFor: 'recovered'!
cx: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016910; bytecode file offset 0x16a7b4"
!OSWindowpos methodsFor: 'recovered'!
cy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017378; bytecode file offset 0x16afe8"
!OSWindowpos methodsFor: 'recovered'!
flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b040; bytecode file offset 0x16ea70"
!OSWindowpos methodsFor: 'recovered'!
hwnd
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b4c0; bytecode file offset 0x16f1fc"
!OSWindowpos methodsFor: 'recovered'!
hwndInsertAfter
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001920; bytecode file offset 0x155d58"
!OSBitmap methodsFor: 'recovered'!
bmType
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003404; bytecode file offset 0x157170"
!OSBitmap methodsFor: 'recovered'!
bmWidth
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200040b4; bytecode file offset 0x157f64"
!OSBitmap methodsFor: 'recovered'!
bmHeight
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004aac; bytecode file offset 0x1589a4"
!OSBitmap methodsFor: 'recovered'!
bmWidthBytes
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005858; bytecode file offset 0x159294"
!OSBitmap methodsFor: 'recovered'!
bmPlanes
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005ab4; bytecode file offset 0x159358"
!OSBitmap methodsFor: 'recovered'!
bmBitsPixel
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (18).
    ^recoveredValue0
! !

"psupp.ic method 0x20005e6c; bytecode file offset 0x159974"
!OSBitmap methodsFor: 'recovered'!
bmBits
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fc44; bytecode file offset 0x165330"
!OSBitmap methodsFor: 'recovered'!
bmType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013358; bytecode file offset 0x166e00"
!OSBitmap methodsFor: 'recovered'!
bmWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014b28; bytecode file offset 0x1683c0"
!OSBitmap methodsFor: 'recovered'!
bmHeight: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015380; bytecode file offset 0x169290"
!OSBitmap methodsFor: 'recovered'!
bmWidthBytes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015bcc; bytecode file offset 0x169eb4"
!OSBitmap methodsFor: 'recovered'!
bmPlanes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200166e8; bytecode file offset 0x169f98"
!OSBitmap methodsFor: 'recovered'!
bmBitsPixel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (18) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016bb0; bytecode file offset 0x16a7b4"
!OSBitmap methodsFor: 'recovered'!
bmBits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001a750; bytecode file offset 0x16e2c4"
!OSBitmap methodsFor: 'recovered'!
createBitmapIndirect
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHbitmap.
    recoveredValue1 := CreateBitmapIndirect.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !


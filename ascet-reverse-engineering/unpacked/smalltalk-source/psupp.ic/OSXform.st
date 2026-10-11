"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002478; bytecode file offset 0x155d58"
!OSXform methodsFor: 'recovered'!
eM11
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200035cc; bytecode file offset 0x157170"
!OSXform methodsFor: 'recovered'!
eM12
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003af0; bytecode file offset 0x157f64"
!OSXform methodsFor: 'recovered'!
eM21
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004e90; bytecode file offset 0x1589a4"
!OSXform methodsFor: 'recovered'!
eM22
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200059f0; bytecode file offset 0x159294"
!OSXform methodsFor: 'recovered'!
eDx
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005ecc; bytecode file offset 0x159974"
!OSXform methodsFor: 'recovered'!
eDy
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20011420; bytecode file offset 0x165330"
!OSXform methodsFor: 'recovered'!
eM11: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200125f0; bytecode file offset 0x166e00"
!OSXform methodsFor: 'recovered'!
eM12: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001493c; bytecode file offset 0x1683c0"
!OSXform methodsFor: 'recovered'!
eM21: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014eb8; bytecode file offset 0x169290"
!OSXform methodsFor: 'recovered'!
eM22: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015f14; bytecode file offset 0x169eb4"
!OSXform methodsFor: 'recovered'!
eDx: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016ba4; bytecode file offset 0x16a7b4"
!OSXform methodsFor: 'recovered'!
eDy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2002078c; bytecode file offset 0x174df8"
!OSXform methodsFor: 'recovered'!
combineTransform: recoveredArg1 lpxform2: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CombineTransform.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20027c84; bytecode file offset 0x17b888"
!OSXform methodsFor: 'recovered'!
extCreateRegion: recoveredArg1 lpRgnData: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OSHrgn.
    recoveredValue1 := ExtCreateRegion.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) immediate: (recoveredValue4).
    ^recoveredValue5
! !


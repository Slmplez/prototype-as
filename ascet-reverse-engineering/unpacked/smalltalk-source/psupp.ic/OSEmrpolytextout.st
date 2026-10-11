"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200065b8; bytecode file offset 0x159f34"
!OSEmrpolytextout methodsFor: 'recovered'!
iGraphicsMode
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006908; bytecode file offset 0x15a428"
!OSEmrpolytextout methodsFor: 'recovered'!
exScale
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006db0; bytecode file offset 0x15a780"
!OSEmrpolytextout methodsFor: 'recovered'!
eyScale
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x20006f90; bytecode file offset 0x15aa74"
!OSEmrpolytextout methodsFor: 'recovered'!
cStrings
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c048; bytecode file offset 0x15fa24"
!OSEmrpolytextout methodsFor: 'recovered'!
aemrtext: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000d2b0; bytecode file offset 0x160b8c"
!OSEmrpolytextout methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d998; bytecode file offset 0x161514"
!OSEmrpolytextout methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e650; bytecode file offset 0x161eec"
!OSEmrpolytextout methodsFor: 'recovered'!
aemrtext
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmrtext.
    recoveredValue1 := (self) arrayAt: (40) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fd94; bytecode file offset 0x165330"
!OSEmrpolytextout methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013868; bytecode file offset 0x1683c0"
!OSEmrpolytextout methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200175d0; bytecode file offset 0x16afe8"
!OSEmrpolytextout methodsFor: 'recovered'!
iGraphicsMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017b70; bytecode file offset 0x16b690"
!OSEmrpolytextout methodsFor: 'recovered'!
exScale: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200182c0; bytecode file offset 0x16bb70"
!OSEmrpolytextout methodsFor: 'recovered'!
eyScale: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200186a4; bytecode file offset 0x16bff0"
!OSEmrpolytextout methodsFor: 'recovered'!
cStrings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (36) put: (recoveredValue0).
    ^self
! !


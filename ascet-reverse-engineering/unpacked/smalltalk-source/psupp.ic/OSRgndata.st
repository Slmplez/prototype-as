"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000c128; bytecode file offset 0x15fa24"
!OSRgndata methodsFor: 'recovered'!
Buffer: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000ccf0; bytecode file offset 0x160b8c"
!OSRgndata methodsFor: 'recovered'!
rdh
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRgndataheader.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e550; bytecode file offset 0x161e0c"
!OSRgndata methodsFor: 'recovered'!
Buffer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSChar8.
    recoveredValue1 := (self) arrayAt: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010028; bytecode file offset 0x165330"
!OSRgndata methodsFor: 'recovered'!
rdh: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20005dd0; bytecode file offset 0x159974"
!OSStatdata methodsFor: 'recovered'!
advf
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006a04; bytecode file offset 0x15a428"
!OSStatdata methodsFor: 'recovered'!
dwConnection
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d010; bytecode file offset 0x160b8c"
!OSStatdata methodsFor: 'recovered'!
formatetc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFormatetc.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011408; bytecode file offset 0x165330"
!OSStatdata methodsFor: 'recovered'!
formatetc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016e8c; bytecode file offset 0x16a7b4"
!OSStatdata methodsFor: 'recovered'!
advf: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200170a8; bytecode file offset 0x16afe8"
!OSStatdata methodsFor: 'recovered'!
pAdvSink: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017960; bytecode file offset 0x16b690"
!OSStatdata methodsFor: 'recovered'!
dwConnection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ce60; bytecode file offset 0x170728"
!OSStatdata methodsFor: 'recovered'!
pAdvSink
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSIAdviseSink.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !


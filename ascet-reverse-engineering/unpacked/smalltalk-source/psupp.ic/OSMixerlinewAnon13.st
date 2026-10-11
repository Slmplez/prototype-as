"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001c44; bytecode file offset 0x155d58"
!OSMixerlinewAnon13 methodsFor: 'recovered'!
dwType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003464; bytecode file offset 0x157170"
!OSMixerlinewAnon13 methodsFor: 'recovered'!
dwDeviceID
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000403c; bytecode file offset 0x157f64"
!OSMixerlinewAnon13 methodsFor: 'recovered'!
wMid
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200047b4; bytecode file offset 0x1580a0"
!OSMixerlinewAnon13 methodsFor: 'recovered'!
wPid
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (10).
    ^recoveredValue0
! !

"psupp.ic method 0x20004a64; bytecode file offset 0x1589a4"
!OSMixerlinewAnon13 methodsFor: 'recovered'!
vDriverVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200112c4; bytecode file offset 0x165330"
!OSMixerlinewAnon13 methodsFor: 'recovered'!
dwType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001349c; bytecode file offset 0x166e00"
!OSMixerlinewAnon13 methodsFor: 'recovered'!
dwDeviceID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014528; bytecode file offset 0x1683c0"
!OSMixerlinewAnon13 methodsFor: 'recovered'!
wMid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014c3c; bytecode file offset 0x168528"
!OSMixerlinewAnon13 methodsFor: 'recovered'!
wPid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (10) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200158c0; bytecode file offset 0x169290"
!OSMixerlinewAnon13 methodsFor: 'recovered'!
vDriverVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20022278; bytecode file offset 0x175b14"
!OSMixerlinewAnon13 methodsFor: 'recovered'!
szPname
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) arrayAt: (16) size: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023b48; bytecode file offset 0x1773ec"
!OSMixerlinewAnon13 methodsFor: 'recovered'!
szPname: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (16) put: (recoveredValue0) size: (32).
    ^self
! !


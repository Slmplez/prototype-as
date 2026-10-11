"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000120c; bytecode file offset 0x155d58"
!OSRemEXCEPINFO methodsFor: 'recovered'!
wCode
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200026f8; bytecode file offset 0x1561c4"
!OSRemEXCEPINFO methodsFor: 'recovered'!
wReserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20003740; bytecode file offset 0x157170"
!OSRemEXCEPINFO methodsFor: 'recovered'!
dwHelpContext
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003dfc; bytecode file offset 0x157f64"
!OSRemEXCEPINFO methodsFor: 'recovered'!
scode
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004ce0; bytecode file offset 0x1589a4"
!OSRemEXCEPINFO methodsFor: 'recovered'!
cSource
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005888; bytecode file offset 0x159294"
!OSRemEXCEPINFO methodsFor: 'recovered'!
cDescription
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005b9c; bytecode file offset 0x159974"
!OSRemEXCEPINFO methodsFor: 'recovered'!
cHelpFile
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e2a4; bytecode file offset 0x161c00"
!OSRemEXCEPINFO methodsFor: 'recovered'!
strings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSChar16.
    recoveredValue1 := (self) arrayAt: (24) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200109d0; bytecode file offset 0x165330"
!OSRemEXCEPINFO methodsFor: 'recovered'!
wCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011c60; bytecode file offset 0x1657d4"
!OSRemEXCEPINFO methodsFor: 'recovered'!
wReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012cd4; bytecode file offset 0x166e00"
!OSRemEXCEPINFO methodsFor: 'recovered'!
dwHelpContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014a80; bytecode file offset 0x1683c0"
!OSRemEXCEPINFO methodsFor: 'recovered'!
scode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200156c8; bytecode file offset 0x169290"
!OSRemEXCEPINFO methodsFor: 'recovered'!
cSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015f98; bytecode file offset 0x169eb4"
!OSRemEXCEPINFO methodsFor: 'recovered'!
cDescription: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016958; bytecode file offset 0x16a7b4"
!OSRemEXCEPINFO methodsFor: 'recovered'!
cHelpFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !


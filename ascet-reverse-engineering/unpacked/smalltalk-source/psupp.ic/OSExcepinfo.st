"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001b84; bytecode file offset 0x155d58"
!OSExcepinfo methodsFor: 'recovered'!
wCode
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200025fc; bytecode file offset 0x1561c4"
!OSExcepinfo methodsFor: 'recovered'!
wReserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x200054d4; bytecode file offset 0x159294"
!OSExcepinfo methodsFor: 'recovered'!
dwHelpContext
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005fe0; bytecode file offset 0x159974"
!OSExcepinfo methodsFor: 'recovered'!
pvReserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006258; bytecode file offset 0x159f34"
!OSExcepinfo methodsFor: 'recovered'!
pfnDeferredFillIn
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006a40; bytecode file offset 0x15a428"
!OSExcepinfo methodsFor: 'recovered'!
scode
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x200102ec; bytecode file offset 0x165330"
!OSExcepinfo methodsFor: 'recovered'!
wCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011cd8; bytecode file offset 0x1657d4"
!OSExcepinfo methodsFor: 'recovered'!
wReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012254; bytecode file offset 0x166e00"
!OSExcepinfo methodsFor: 'recovered'!
bstrSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013ef8; bytecode file offset 0x1683c0"
!OSExcepinfo methodsFor: 'recovered'!
bstrDescription: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200150f8; bytecode file offset 0x169290"
!OSExcepinfo methodsFor: 'recovered'!
bstrHelpFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015b84; bytecode file offset 0x169eb4"
!OSExcepinfo methodsFor: 'recovered'!
dwHelpContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016b14; bytecode file offset 0x16a7b4"
!OSExcepinfo methodsFor: 'recovered'!
pvReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200175f4; bytecode file offset 0x16afe8"
!OSExcepinfo methodsFor: 'recovered'!
pfnDeferredFillIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200178d0; bytecode file offset 0x16b690"
!OSExcepinfo methodsFor: 'recovered'!
scode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b68c; bytecode file offset 0x16f1fc"
!OSExcepinfo methodsFor: 'recovered'!
bstrSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSChar16.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bbfc; bytecode file offset 0x16f8e8"
!OSExcepinfo methodsFor: 'recovered'!
bstrDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSChar16.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c450; bytecode file offset 0x16fe44"
!OSExcepinfo methodsFor: 'recovered'!
bstrHelpFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSChar16.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !


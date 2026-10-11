"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003fd50; bytecode file offset 0x93c75c"
!CTGroup methodsFor: 'recovered'!
groupstmp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Idz.
    recoveredValue1 := (self) uint32At: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009be44; bytecode file offset 0x998710"
!CTGroup methodsFor: 'recovered'!
groupmem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Idz.
    recoveredValue1 := (recoveredValue0) + (4).
    recoveredValue2 := (self) uint32At: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009be8c; bytecode file offset 0x998758"
!CTGroup methodsFor: 'recovered'!
groupattr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Idz.
    recoveredValue1 := (recoveredValue0) + (8).
    recoveredValue2 := (self) uint32At: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a26d8; bytecode file offset 0x99f064"
!CTGroup methodsFor: 'recovered'!
groupstmp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Idz.
    recoveredValue1 := recoveredArg1.
    (self) uint32At: (recoveredValue0) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b303c; bytecode file offset 0x9af8f8"
!CTGroup methodsFor: 'recovered'!
groupid
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Idz.
    recoveredValue1 := (recoveredValue0) + (-1).
    recoveredValue2 := (self) copyPSZStringFrom: (0) to: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e6df0; bytecode file offset 0x9e36ac"
!CTGroup methodsFor: 'recovered'!
groupmem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Idz.
    recoveredValue1 := (recoveredValue0) + (4).
    recoveredValue2 := recoveredArg1.
    (self) uint32At: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e6e10; bytecode file offset 0x9e36dc"
!CTGroup methodsFor: 'recovered'!
groupattr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Idz.
    recoveredValue1 := (recoveredValue0) + (8).
    recoveredValue2 := recoveredArg1.
    (self) uint32At: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2015c14c; bytecode file offset 0xa58a0c"
!CTGroup methodsFor: 'recovered'!
groupds
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Idz.
    recoveredValue1 := (recoveredValue0) + (12).
    recoveredValue2 := Idz.
    recoveredValue3 := (recoveredValue2) + (12).
    recoveredValue4 := Dsz.
    recoveredValue5 := (recoveredValue3) + (recoveredValue4).
    recoveredValue6 := (recoveredValue5) + (-1).
    recoveredValue7 := (self) copyPSZStringFrom: (recoveredValue1) to: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2017bbfc; bytecode file offset 0xa78508"
!CTGroup methodsFor: 'recovered'!
groupid: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Idz.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) min: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) memcpyFrom: (0) to: (recoveredValue6) into: (self) startingAt: (0).
    ^self
! !

"ASDBase.ic method 0x201ab410; bytecode file offset 0xaa7cd8"
!CTGroup methodsFor: 'recovered'!
groupds: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Dsz.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) + (-1).
    recoveredValue4 := (recoveredValue0) min: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := Idz.
    recoveredValue8 := (recoveredValue7) + (12).
    (recoveredValue5) memcpyFrom: (0) to: (recoveredValue6) into: (self) startingAt: (recoveredValue8).
    ^self
! !


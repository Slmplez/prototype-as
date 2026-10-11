"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003fa40; bytecode file offset 0x93c75c"
!CTUserGroup methodsFor: 'recovered'!
seqnum
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Idz.
    recoveredValue1 := (self) uint8At: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20091d04; bytecode file offset 0x98e790"
!CTUserGroup methodsFor: 'recovered'!
seqnum: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Idz.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) uint8At: (recoveredValue0) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b300c; bytecode file offset 0x9af8f8"
!CTUserGroup methodsFor: 'recovered'!
userid
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Idz.
    recoveredValue1 := (recoveredValue0) + (-1).
    recoveredValue2 := (self) copyPSZStringFrom: (0) to: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e0088; bytecode file offset 0x9dc944"
!CTUserGroup methodsFor: 'recovered'!
groupid
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Idz.
    recoveredValue1 := Idz.
    recoveredValue2 := Idz.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredValue4 := (self) copyPSZStringFrom: (recoveredValue0) to: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2017bbb4; bytecode file offset 0xa78490"
!CTUserGroup methodsFor: 'recovered'!
groupid: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Idz.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) min: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := Idz.
    (recoveredValue5) memcpyFrom: (0) to: (recoveredValue6) into: (self) startingAt: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2017bc2c; bytecode file offset 0xa78508"
!CTUserGroup methodsFor: 'recovered'!
userid: recoveredArg1
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


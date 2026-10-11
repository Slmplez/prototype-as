"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200837f8; bytecode file offset 0x980230"
!DBBitFieldItem class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) create: (recoveredValue0) name: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200eba84; bytecode file offset 0x9e8340"
!DBBitFieldItem class methodsFor: 'recovered'!
create: recoveredArg1 name: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) bitSize.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) create: (recoveredValue0) noOfBits: (recoveredValue1) bitIndex: (1) name: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2015b41c; bytecode file offset 0xa57ce0"
!DBBitFieldItem class methodsFor: 'recovered'!
create: recoveredArg1 bitMask: recoveredArg2 name: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := super create: (recoveredValue0) name: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) bitMask: (recoveredValue5).
    (recoveredValue3) bitIndexFromMask.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201bed68; bytecode file offset 0xabb630"
!DBBitFieldItem class methodsFor: 'recovered'!
create: recoveredArg1 noOfBits: recoveredArg2 bitIndex: recoveredArg3 name: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg4.
    recoveredValue2 := super create: (recoveredValue0) name: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) bitIndex: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) bitMaskFrom: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    (recoveredValue3) msbIndex: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !


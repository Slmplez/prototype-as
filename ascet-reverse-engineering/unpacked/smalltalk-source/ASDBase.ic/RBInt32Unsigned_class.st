"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014ee0; bytecode file offset 0x912098"
!RBInt32Unsigned class methodsFor: 'recovered'!
otherSignedType
    | recoveredValue0 |
    recoveredValue0 := RBInt32Signed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d84c; bytecode file offset 0x92209c"
!RBInt32Unsigned class methodsFor: 'recovered'!
asCType
    ^'uint32'
! !

"ASDBase.ic method 0x20020078; bytecode file offset 0x92209c"
!RBInt32Unsigned class methodsFor: 'recovered'!
longDisplayName
    ^'Unsigned Integer 32'
! !

"ASDBase.ic method 0x20072d88; bytecode file offset 0x96f6d4"
!RBInt32Unsigned class methodsFor: 'recovered'!
typeSize
    ^4
! !

"ASDBase.ic method 0x2007fe68; bytecode file offset 0x97c764"
!RBInt32Unsigned class methodsFor: 'recovered'!
ileBitSize
    ^32
! !

"ASDBase.ic method 0x20080be0; bytecode file offset 0x97d494"
!RBInt32Unsigned class methodsFor: 'recovered'!
emBehaviorId
    ^88
! !

"ASDBase.ic method 0x20086a10; bytecode file offset 0x9832c8"
!RBInt32Unsigned class methodsFor: 'recovered'!
readFromByteArray: recoveredArg1 pos: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) uint32At: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cc928; bytecode file offset 0x9c9210"
!RBInt32Unsigned class methodsFor: 'recovered'!
getInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) left: (0) right: (4294967295).
    ^recoveredValue1
! !


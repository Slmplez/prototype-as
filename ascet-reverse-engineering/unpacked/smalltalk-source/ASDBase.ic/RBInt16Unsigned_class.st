"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001539c; bytecode file offset 0x912098"
!RBInt16Unsigned class methodsFor: 'recovered'!
otherSignedType
    | recoveredValue0 |
    recoveredValue0 := RBInt16Signed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018d34; bytecode file offset 0x92209c"
!RBInt16Unsigned class methodsFor: 'recovered'!
longDisplayName
    ^'Unsigned Integer 16'
! !

"ASDBase.ic method 0x2001f034; bytecode file offset 0x92209c"
!RBInt16Unsigned class methodsFor: 'recovered'!
asCType
    ^'uint16'
! !

"ASDBase.ic method 0x20072830; bytecode file offset 0x96f1c4"
!RBInt16Unsigned class methodsFor: 'recovered'!
typeSize
    ^2
! !

"ASDBase.ic method 0x20078fc8; bytecode file offset 0x97594c"
!RBInt16Unsigned class methodsFor: 'recovered'!
ileBitSize
    ^16
! !

"ASDBase.ic method 0x20080c08; bytecode file offset 0x97d4bc"
!RBInt16Unsigned class methodsFor: 'recovered'!
emBehaviorId
    ^89
! !

"ASDBase.ic method 0x200869e0; bytecode file offset 0x9832c8"
!RBInt16Unsigned class methodsFor: 'recovered'!
readFromByteArray: recoveredArg1 pos: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) uint16At: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cc93c; bytecode file offset 0x9c9210"
!RBInt16Unsigned class methodsFor: 'recovered'!
getInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) left: (0) right: (65535).
    ^recoveredValue1
! !


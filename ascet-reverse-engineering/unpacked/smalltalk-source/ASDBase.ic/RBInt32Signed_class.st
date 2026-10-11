"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200153cc; bytecode file offset 0x912098"
!RBInt32Signed class methodsFor: 'recovered'!
otherSignedType
    | recoveredValue0 |
    recoveredValue0 := RBInt32Unsigned.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016970; bytecode file offset 0x92209c"
!RBInt32Signed class methodsFor: 'recovered'!
asCType
    ^'sint32'
! !

"ASDBase.ic method 0x20025c78; bytecode file offset 0x923928"
!RBInt32Signed class methodsFor: 'recovered'!
longDisplayName
    ^'Signed Integer 32'
! !

"ASDBase.ic method 0x20025fe4; bytecode file offset 0x923928"
!RBInt32Signed class methodsFor: 'recovered'!
apiIdentifier
    ^'int32'
! !

"ASDBase.ic method 0x2003f558; bytecode file offset 0x93bf94"
!RBInt32Signed class methodsFor: 'recovered'!
getUnsignedInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt32Unsigned.
    recoveredValue1 := (recoveredValue0) getInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20072d90; bytecode file offset 0x96f6d4"
!RBInt32Signed class methodsFor: 'recovered'!
typeSize
    ^4
! !

"ASDBase.ic method 0x2007fe70; bytecode file offset 0x97c764"
!RBInt32Signed class methodsFor: 'recovered'!
ileBitSize
    ^32
! !

"ASDBase.ic method 0x20080ddc; bytecode file offset 0x97d690"
!RBInt32Signed class methodsFor: 'recovered'!
emBehaviorId
    ^98
! !

"ASDBase.ic method 0x200869d4; bytecode file offset 0x9832c8"
!RBInt32Signed class methodsFor: 'recovered'!
readFromByteArray: recoveredArg1 pos: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) int32At: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cbd00; bytecode file offset 0x9c8654"
!RBInt32Signed class methodsFor: 'recovered'!
getInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) left: (-2147483648) right: (2147483647).
    ^recoveredValue1
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015318; bytecode file offset 0x912098"
!RBInt8Signed class methodsFor: 'recovered'!
otherSignedType
    | recoveredValue0 |
    recoveredValue0 := RBInt8Unsigned.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d1b0; bytecode file offset 0x92209c"
!RBInt8Signed class methodsFor: 'recovered'!
longDisplayName
    ^'Signed Integer 8'
! !

"ASDBase.ic method 0x20024680; bytecode file offset 0x92209c"
!RBInt8Signed class methodsFor: 'recovered'!
asCType
    ^'sint8'
! !

"ASDBase.ic method 0x20024ef0; bytecode file offset 0x92209c"
!RBInt8Signed class methodsFor: 'recovered'!
apiIdentifier
    ^'int8'
! !

"ASDBase.ic method 0x2003ce68; bytecode file offset 0x93bf94"
!RBInt8Signed class methodsFor: 'recovered'!
getUnsignedInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt8Unsigned.
    recoveredValue1 := (recoveredValue0) getInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200723e8; bytecode file offset 0x96ee04"
!RBInt8Signed class methodsFor: 'recovered'!
typeSize
    ^1
! !

"ASDBase.ic method 0x2007449c; bytecode file offset 0x970de8"
!RBInt8Signed class methodsFor: 'recovered'!
ileBitSize
    ^8
! !

"ASDBase.ic method 0x20080e78; bytecode file offset 0x97d72c"
!RBInt8Signed class methodsFor: 'recovered'!
emBehaviorId
    ^99
! !

"ASDBase.ic method 0x20086a04; bytecode file offset 0x9832c8"
!RBInt8Signed class methodsFor: 'recovered'!
readFromByteArray: recoveredArg1 pos: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) int8At: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20114cdc; bytecode file offset 0xa11598"
!RBInt8Signed class methodsFor: 'recovered'!
getInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) left: (-128) right: (127).
    ^recoveredValue1
! !


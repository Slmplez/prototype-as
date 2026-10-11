"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200151e0; bytecode file offset 0x912098"
!RBInt8Unsigned class methodsFor: 'recovered'!
otherSignedType
    | recoveredValue0 |
    recoveredValue0 := RBInt8Signed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020da4; bytecode file offset 0x92209c"
!RBInt8Unsigned class methodsFor: 'recovered'!
longDisplayName
    ^'Unsigned Integer 8'
! !

"ASDBase.ic method 0x20026bd8; bytecode file offset 0x923928"
!RBInt8Unsigned class methodsFor: 'recovered'!
asCType
    ^'uint8'
! !

"ASDBase.ic method 0x200723f0; bytecode file offset 0x96ee04"
!RBInt8Unsigned class methodsFor: 'recovered'!
typeSize
    ^1
! !

"ASDBase.ic method 0x200744a4; bytecode file offset 0x970de8"
!RBInt8Unsigned class methodsFor: 'recovered'!
ileBitSize
    ^8
! !

"ASDBase.ic method 0x20080bb0; bytecode file offset 0x97d464"
!RBInt8Unsigned class methodsFor: 'recovered'!
emBehaviorId
    ^87
! !

"ASDBase.ic method 0x200869f8; bytecode file offset 0x9832c8"
!RBInt8Unsigned class methodsFor: 'recovered'!
readFromByteArray: recoveredArg1 pos: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) uint8At: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200efbd8; bytecode file offset 0x9ec494"
!RBInt8Unsigned class methodsFor: 'recovered'!
getInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) left: (0) right: (255).
    ^recoveredValue1
! !


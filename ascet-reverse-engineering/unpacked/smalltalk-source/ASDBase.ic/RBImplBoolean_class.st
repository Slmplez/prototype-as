"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018cc8; bytecode file offset 0x92209c"
!RBImplBoolean class methodsFor: 'recovered'!
asCType
    ^'bool'
! !

"ASDBase.ic method 0x2001a774; bytecode file offset 0x92209c"
!RBImplBoolean class methodsFor: 'recovered'!
longDisplayName
    ^'Bool'
! !

"ASDBase.ic method 0x20072408; bytecode file offset 0x96ee04"
!RBImplBoolean class methodsFor: 'recovered'!
typeSize
    ^1
! !

"ASDBase.ic method 0x20073e78; bytecode file offset 0x970b34"
!RBImplBoolean class methodsFor: 'recovered'!
emBehaviorId
    ^nil
! !

"ASDBase.ic method 0x200744e4; bytecode file offset 0x970de8"
!RBImplBoolean class methodsFor: 'recovered'!
ileBitSize
    ^8
! !

"ASDBase.ic method 0x200eb160; bytecode file offset 0x9e7a1c"
!RBImplBoolean class methodsFor: 'recovered'!
readFromByteArray: recoveredArg1 pos: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RBInt8Unsigned.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) readFromByteArray: (recoveredValue1) pos: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) ~= (0).
    ^recoveredValue4
! !


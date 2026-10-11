"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014e20; bytecode file offset 0x912098"
!RBInt16Signed class methodsFor: 'recovered'!
otherSignedType
    | recoveredValue0 |
    recoveredValue0 := RBInt16Unsigned.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016628; bytecode file offset 0x92209c"
!RBInt16Signed class methodsFor: 'recovered'!
asCType
    ^'sint16'
! !

"ASDBase.ic method 0x2001d654; bytecode file offset 0x92209c"
!RBInt16Signed class methodsFor: 'recovered'!
apiIdentifier
    ^'int16'
! !

"ASDBase.ic method 0x2001d714; bytecode file offset 0x92209c"
!RBInt16Signed class methodsFor: 'recovered'!
longDisplayName
    ^'Signed Integer 16'
! !

"ASDBase.ic method 0x2003f618; bytecode file offset 0x93bf94"
!RBInt16Signed class methodsFor: 'recovered'!
getUnsignedInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt16Unsigned.
    recoveredValue1 := (recoveredValue0) getInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200726b0; bytecode file offset 0x96f1c4"
!RBInt16Signed class methodsFor: 'recovered'!
typeSize
    ^2
! !

"ASDBase.ic method 0x20079028; bytecode file offset 0x97594c"
!RBInt16Signed class methodsFor: 'recovered'!
ileBitSize
    ^16
! !

"ASDBase.ic method 0x20080d54; bytecode file offset 0x97d610"
!RBInt16Signed class methodsFor: 'recovered'!
emBehaviorId
    ^95
! !

"ASDBase.ic method 0x200869ec; bytecode file offset 0x9832c8"
!RBInt16Signed class methodsFor: 'recovered'!
readFromByteArray: recoveredArg1 pos: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) int16At: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cbca0; bytecode file offset 0x9c8654"
!RBInt16Signed class methodsFor: 'recovered'!
getInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) left: (-32768) right: (32767).
    ^recoveredValue1
! !


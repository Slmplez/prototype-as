"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017480; bytecode file offset 0x92209c"
!RBFloat class methodsFor: 'recovered'!
longDisplayName
    ^'Real 64'
! !

"ASDBase.ic method 0x2001cc1c; bytecode file offset 0x92209c"
!RBFloat class methodsFor: 'recovered'!
asCType
    ^'real64'
! !

"ASDBase.ic method 0x20024e48; bytecode file offset 0x92209c"
!RBFloat class methodsFor: 'recovered'!
asRTEEncoding
    ^'DOUBLE'
! !

"ASDBase.ic method 0x2005a094; bytecode file offset 0x956a30"
!RBFloat class methodsFor: 'recovered'!
readFromByteArray: recoveredArg1 pos: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) getReal64: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200744c4; bytecode file offset 0x970de8"
!RBFloat class methodsFor: 'recovered'!
typeSize
    ^8
! !

"ASDBase.ic method 0x20080638; bytecode file offset 0x97cf3c"
!RBFloat class methodsFor: 'recovered'!
ileBitSize
    ^64
! !

"ASDBase.ic method 0x20080cc8; bytecode file offset 0x97d57c"
!RBFloat class methodsFor: 'recovered'!
emBehaviorId
    ^92
! !

"ASDBase.ic method 0x200cb770; bytecode file offset 0x9c80c4"
!RBFloat class methodsFor: 'recovered'!
getInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := MinusInfinity.
    recoveredValue2 := PlusInfinity.
    recoveredValue3 := (recoveredValue0) left: (recoveredValue1) right: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2039c5ec; bytecode file offset 0xc98ed0"
!RBFloat class methodsFor: 'recovered'!
allImplTypes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := RBFloat.
    recoveredValue5 := (recoveredValue4) createDefault.
    (recoveredValue3) at: (1) put: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := RBFloat32.
    recoveredValue8 := (recoveredValue7) createDefault.
    (recoveredValue6) at: (2) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := RBInt8Signed.
    recoveredValue11 := (recoveredValue10) createDefault.
    (recoveredValue9) at: (3) put: (recoveredValue11).
    recoveredValue12 := recoveredValue2.
    recoveredValue13 := RBInt16Signed.
    recoveredValue14 := (recoveredValue13) createDefault.
    (recoveredValue12) at: (4) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := RBInt32Signed.
    recoveredValue17 := (recoveredValue16) createDefault.
    (recoveredValue15) at: (5) put: (recoveredValue17).
    recoveredValue18 := recoveredValue2.
    recoveredValue19 := RBInt8Unsigned.
    recoveredValue20 := (recoveredValue19) createDefault.
    (recoveredValue18) at: (6) put: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := RBInt16Unsigned.
    recoveredValue23 := (recoveredValue22) createDefault.
    (recoveredValue21) at: (7) put: (recoveredValue23).
    recoveredValue24 := recoveredValue2.
    recoveredValue25 := RBInt32Unsigned.
    recoveredValue26 := (recoveredValue25) createDefault.
    (recoveredValue24) at: (8) put: (recoveredValue26).
    ^recoveredValue2
! !


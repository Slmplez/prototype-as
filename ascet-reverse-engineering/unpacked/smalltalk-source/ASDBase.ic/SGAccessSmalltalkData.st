"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200053d0; bytecode file offset 0x90206c"
!SGAccessSmalltalkData methodsFor: 'recovered'!
setMinMaxQuant: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000d74c; bytecode file offset 0x90a4b8"
!SGAccessSmalltalkData methodsFor: 'recovered'!
write: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002cf54; bytecode file offset 0x934580"
!SGAccessSmalltalkData methodsFor: 'recovered'!
device
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) getDummyDevice.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040138; bytecode file offset 0x93d278"
!SGAccessSmalltalkData methodsFor: 'recovered'!
read
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := charElement.
    recoveredValue1 := (recoveredValue0) getImplValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20075bfc; bytecode file offset 0x9757c8"
!SGAccessSmalltalkData methodsFor: 'recovered'!
addMeasureData
    ^true
! !

"ASDBase.ic method 0x200787b4; bytecode file offset 0x9757c8"
!SGAccessSmalltalkData methodsFor: 'recovered'!
removeMeasureData
    ^true
! !

"ASDBase.ic method 0x200a842c; bytecode file offset 0x9a4ce0"
!SGAccessSmalltalkData methodsFor: 'recovered'!
channelGroup: recoveredArg1
    channelGroup := 999.
    ^self
! !

"ASDBase.ic method 0x2026f4fc; bytecode file offset 0xb6bdcc"
!SGAccessSmalltalkData methodsFor: 'recovered'!
getMinMaxQuant
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := charElement.
    recoveredValue4 := (recoveredValue3) getPhysInterval.
    recoveredValue5 := (recoveredValue4) left.
    (recoveredValue2) at: (1) put: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := charElement.
    recoveredValue8 := (recoveredValue7) getPhysInterval.
    recoveredValue9 := (recoveredValue8) right.
    (recoveredValue6) at: (2) put: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := charElement.
    recoveredValue12 := (recoveredValue11) getPhysQuantization.
    (recoveredValue10) at: (3) put: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !


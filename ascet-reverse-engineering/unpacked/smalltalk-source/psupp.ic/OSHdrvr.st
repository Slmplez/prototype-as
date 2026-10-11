"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2001a5e8; bytecode file offset 0x16e2c4"
!OSHdrvr methodsFor: 'recovered'!
drvGetModuleHandle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHmodule.
    recoveredValue1 := DrvGetModuleHandle.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2001a690; bytecode file offset 0x16e2c4"
!OSHdrvr methodsFor: 'recovered'!
getDriverModuleHandle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHmodule.
    recoveredValue1 := GetDriverModuleHandle.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x200210ec; bytecode file offset 0x174df8"
!OSHdrvr methodsFor: 'recovered'!
closeDriver: recoveredArg1 lParam2: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CloseDriver.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20024358; bytecode file offset 0x1781a4"
!OSHdrvr methodsFor: 'recovered'!
sendDriverMessage: recoveredArg1 lParam1: recoveredArg2 lParam2: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SendDriverMessage.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000288; bytecode file offset 0x8ffcfc"
!ETASPlatformInterfaceExtRT class methodsFor: 'recovered'!
_PRAGMA_PlatformConstantsExt
    ^self
! !

"ASDBase.ic method 0x200004f8; bytecode file offset 0x8ffcfc"
!ETASPlatformInterfaceExtRT class methodsFor: 'recovered'!
_PRAGMA_ETASPlatformInterfaceExtRTNlsPool
    ^self
! !

"ASDBase.ic method 0x20002de8; bytecode file offset 0x8ffcfc"
!ETASPlatformInterfaceExtRT class methodsFor: 'recovered'!
_PRAGMA_WindowsPSAPIFunctions
    ^self
! !

"ASDBase.ic method 0x20003190; bytecode file offset 0x8ffcfc"
!ETASPlatformInterfaceExtRT class methodsFor: 'recovered'!
_PRAGMA_PlatformFunctionsExt
    ^self
! !

"ASDBase.ic method 0x2005bfb4; bytecode file offset 0x958ab0"
!ETASPlatformInterfaceExtRT class methodsFor: 'recovered'!
saving
    | recoveredValue0 |
    recoveredValue0 := ETASError.
    (recoveredValue0) resetLastErrors.
    ^self
! !

"ASDBase.ic method 0x203c44e8; bytecode file offset 0xcc0de4"
!ETASPlatformInterfaceExtRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := PlatformConstantsExt.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := EtasOSHkey.
    recoveredValue3 := (recoveredValue2) immediate: (2147483648).
    (recoveredValue1) at: ('HkeyClassesRootHandle') put: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := EtasOSHkey.
    recoveredValue6 := (recoveredValue5) immediate: (2147483649).
    (recoveredValue4) at: ('HkeyCurrentUserHandle') put: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := EtasOSHkey.
    recoveredValue9 := (recoveredValue8) immediate: (2147483650).
    (recoveredValue7) at: ('HkeyLocalMachineHandle') put: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := EtasOSHkey.
    recoveredValue12 := (recoveredValue11) immediate: (2147483651).
    (recoveredValue10) at: ('HkeyUsersHandle') put: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := EtasOSHkey.
    recoveredValue15 := (recoveredValue14) immediate: (2147483652).
    (recoveredValue13) at: ('HkeyPerformanceDataHandle') put: (recoveredValue15).
    recoveredValue16 := recoveredValue0.
    recoveredValue17 := EtasOSHkey.
    recoveredValue18 := (recoveredValue17) immediate: (2147483653).
    (recoveredValue16) at: ('HkeyCurrentConfigHandle') put: (recoveredValue18).
    recoveredValue19 := EtasOSHkey.
    recoveredValue20 := (recoveredValue19) immediate: (2147483654).
    (recoveredValue0) at: ('HkeyDynDataHandle') put: (recoveredValue20).
    ^self
! !


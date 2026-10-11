"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20021878; bytecode file offset 0x92209c"
!EtasSoftwareComponentAscet methodsFor: 'recovered'!
name
    ^'ASCET'
! !

"ASDBase.ic method 0x2003d0c8; bytecode file offset 0x93bf94"
!EtasSoftwareComponentAscet methodsFor: 'recovered'!
version
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getAppVersion.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005cd20; bytecode file offset 0x959680"
!EtasSoftwareComponentAscet methodsFor: 'recovered'!
basePath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getAppProgramPath.
    recoveredValue2 := (recoveredValue1) asPathname.
    ^recoveredValue2
! !


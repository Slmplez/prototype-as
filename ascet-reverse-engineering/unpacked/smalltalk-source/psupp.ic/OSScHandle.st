"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20008278; bytecode file offset 0x15caa4"
!OSScHandle methodsFor: 'recovered'!
deleteService
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DeleteService.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008c88; bytecode file offset 0x15caa4"
!OSScHandle methodsFor: 'recovered'!
closeServiceHandle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CloseServiceHandle.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200091b8; bytecode file offset 0x15caa4"
!OSScHandle methodsFor: 'recovered'!
lockServiceDatabase
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LockServiceDatabase.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e9ac; bytecode file offset 0x163098"
!OSScHandle methodsFor: 'recovered'!
queryServiceStatus: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := QueryServiceStatus.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20020ecc; bytecode file offset 0x174df8"
!OSScHandle methodsFor: 'recovered'!
startService: recoveredArg1 lpServiceArgVectors: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := StartService.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20020fac; bytecode file offset 0x174df8"
!OSScHandle methodsFor: 'recovered'!
setServiceObjectSecurity: recoveredArg1 lpSecurityDescriptor: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SetServiceObjectSecurity.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2002136c; bytecode file offset 0x174df8"
!OSScHandle methodsFor: 'recovered'!
controlService: recoveredArg1 lpServiceStatus: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ControlService.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20024608; bytecode file offset 0x1781a4"
!OSScHandle methodsFor: 'recovered'!
queryServiceConfig: recoveredArg1 cbBufSize: recoveredArg2 pcbBytesNeeded: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := QueryServiceConfig.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200246d8; bytecode file offset 0x1781a4"
!OSScHandle methodsFor: 'recovered'!
queryServiceLockStatus: recoveredArg1 cbBufSize: recoveredArg2 pcbBytesNeeded: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := QueryServiceLockStatus.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20025f7c; bytecode file offset 0x179858"
!OSScHandle methodsFor: 'recovered'!
getServiceDisplayName: recoveredArg1 lpDisplayName: recoveredArg2 lpcchBuffer: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := GetServiceDisplayName.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x20025f90; bytecode file offset 0x179858"
!OSScHandle methodsFor: 'recovered'!
getServiceKeyName: recoveredArg1 lpServiceName: recoveredArg2 lpcchBuffer: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := GetServiceKeyName.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x200265dc; bytecode file offset 0x179e98"
!OSScHandle methodsFor: 'recovered'!
queryServiceObjectSecurity: recoveredArg1 lpSecurityDescriptor: recoveredArg2 cbBufSize: recoveredArg3 pcbBytesNeeded: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := QueryServiceObjectSecurity.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x20029b64; bytecode file offset 0x17d4c0"
!OSScHandle methodsFor: 'recovered'!
enumDependentServices: recoveredArg1 lpServices: recoveredArg2 cbBufSize: recoveredArg3 pcbBytesNeeded: recoveredArg4 lpServicesReturned: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EnumDependentServices.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x2002a6e0; bytecode file offset 0x17df88"
!OSScHandle methodsFor: 'recovered'!
openService: recoveredArg1 dwDesiredAccess: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OSScHandle.
    recoveredValue1 := OpenService.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue1) callWith: (self) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) immediate: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x2002c588; bytecode file offset 0x17fe54"
!OSScHandle methodsFor: 'recovered'!
enumServicesStatus: recoveredArg1 dwServiceState: recoveredArg2 lpServices: recoveredArg3 cbBufSize: recoveredArg4 pcbBytesNeeded: recoveredArg5 lpServicesReturned: recoveredArg6 lpResumeHandle: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EnumServicesStatus.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := recoveredArg7.
    recoveredValue8 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7).
    ^recoveredValue8
! !

"psupp.ic method 0x20032644; bytecode file offset 0x185ee4"
!OSScHandle methodsFor: 'recovered'!
changeServiceConfig: recoveredArg1 dwStartType: recoveredArg2 dwErrorControl: recoveredArg3 lpBinaryPathName: recoveredArg4 lpLoadOrderGroup: recoveredArg5 lpdwTagId: recoveredArg6 lpDependencies: recoveredArg7 lpServiceStartName: recoveredArg8 lpPassword: recoveredArg9 lpDisplayName: recoveredArg10
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := ChangeServiceConfig.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue4) asPSZ.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue6) asPSZ.
    recoveredValue8 := recoveredArg6.
    recoveredValue9 := recoveredArg7.
    recoveredValue10 := (recoveredValue9) asPSZ.
    recoveredValue11 := recoveredArg8.
    recoveredValue12 := (recoveredValue11) asPSZ.
    recoveredValue13 := recoveredArg9.
    recoveredValue14 := (recoveredValue13) asPSZ.
    recoveredValue15 := recoveredArg10.
    recoveredValue16 := (recoveredValue15) asPSZ.
    recoveredValue17 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue5) with: (recoveredValue7) with: (recoveredValue8) with: (recoveredValue10) with: (recoveredValue12) with: (recoveredValue14) with: (recoveredValue16).
    ^recoveredValue17
! !

"psupp.ic method 0x20035a54; bytecode file offset 0x1892fc"
!OSScHandle methodsFor: 'recovered'!
createService: recoveredArg1 lpDisplayName: recoveredArg2 dwDesiredAccess: recoveredArg3 dwServiceType: recoveredArg4 dwStartType: recoveredArg5 dwErrorControl: recoveredArg6 lpBinaryPathName: recoveredArg7 lpLoadOrderGroup: recoveredArg8 lpdwTagId: recoveredArg9 lpDependencies: recoveredArg10 lpServiceStartName: recoveredArg11 lpPassword: recoveredArg12
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := OSScHandle.
    recoveredValue1 := CreateService.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) asPSZ.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg4.
    recoveredValue8 := recoveredArg5.
    recoveredValue9 := recoveredArg6.
    recoveredValue10 := recoveredArg7.
    recoveredValue11 := (recoveredValue10) asPSZ.
    recoveredValue12 := recoveredArg8.
    recoveredValue13 := (recoveredValue12) asPSZ.
    recoveredValue14 := recoveredArg9.
    recoveredValue15 := recoveredArg10.
    recoveredValue16 := (recoveredValue15) asPSZ.
    recoveredValue17 := recoveredArg11.
    recoveredValue18 := (recoveredValue17) asPSZ.
    recoveredValue19 := recoveredArg12.
    recoveredValue20 := (recoveredValue19) asPSZ.
    recoveredValue21 := (recoveredValue1) callWith: (self) with: (recoveredValue3) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7) with: (recoveredValue8) with: (recoveredValue9) with: (recoveredValue11) with: (recoveredValue13) with: (recoveredValue14) with: (recoveredValue16) with: (recoveredValue18) with: (recoveredValue20).
    recoveredValue22 := (recoveredValue0) immediate: (recoveredValue21).
    ^recoveredValue22
! !


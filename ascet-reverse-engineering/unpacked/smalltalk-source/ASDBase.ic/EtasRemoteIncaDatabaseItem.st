"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016f94; bytecode file offset 0x92209c"
!EtasRemoteIncaDatabaseItem methodsFor: 'recovered'!
iconName
    ^'GeneralDatabase'
! !

"ASDBase.ic method 0x20076164; bytecode file offset 0x9757c8"
!EtasRemoteIncaDatabaseItem methodsFor: 'recovered'!
isIncaDatabase
    ^true
! !

"ASDBase.ic method 0x201756c4; bytecode file offset 0xa71f94"
!EtasRemoteIncaDatabaseItem methodsFor: 'recovered'!
initWithWrapper: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) wrapper: (recoveredValue0).
    recoveredValue1 := (self) wrapper.
    recoveredValue2 := (recoveredValue1) getName.
    (self) name: (recoveredValue2).
    recoveredValue3 := EtasExpProjectTransferActivexCalls.
    recoveredValue4 := (recoveredValue3) getAllIncaFolders.
    (self) childWrappers: (recoveredValue4).
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000f98; bytecode file offset 0x6209c"
!SstWSHttpNetworkTransportStrategy class methodsFor: 'recovered'!
portManager
    | recoveredValue0 |
    recoveredValue0 := SstWSPortManager.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20001354; bytecode file offset 0x626a4"
!SstWSHttpNetworkTransportStrategy class methodsFor: 'recovered'!
transportIdentifier
    ^'http'
! !

"xxx_dyn.ic method 0x20003620; bytecode file offset 0x64704"
!SstWSHttpNetworkTransportStrategy class methodsFor: 'recovered'!
cleanUpBeforeRemove
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) portManager.
    recoveredValue1 := (self) transportIdentifier.
    recoveredValue2 := (recoveredValue0) unregister: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x200043d4; bytecode file offset 0x654a8"
!SstWSHttpNetworkTransportStrategy class methodsFor: 'recovered'!
defaultServletClass
    | recoveredValue0 |
    recoveredValue0 := defaultServletClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20008904; bytecode file offset 0x699e8"
!SstWSHttpNetworkTransportStrategy class methodsFor: 'recovered'!
defaultServletClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultServletClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008f4c; bytecode file offset 0x6a020"
!SstWSHttpNetworkTransportStrategy class methodsFor: 'recovered'!
setupAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) portManager.
    recoveredValue1 := (self) new.
    recoveredValue2 := (self) transportIdentifier.
    (recoveredValue0) register: (recoveredValue1) as: (recoveredValue2).
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20004a80; bytecode file offset 0x65b44"
!SstHttpsUrl class methodsFor: 'recovered'!
defaultPort
    ^443
! !

"xxx_dyn.ic method 0x2000659c; bytecode file offset 0x67680"
!SstHttpsUrl class methodsFor: 'recovered'!
cleanUpBeforeRemoveNonInherited
    | recoveredValue0 |
    recoveredValue0 := SstUrl.
    (recoveredValue0) unregister: ('https').
    ^self
! !

"xxx_dyn.ic method 0x20007460; bytecode file offset 0x68544"
!SstHttpsUrl class methodsFor: 'recovered'!
setupAfterLoadNonInherited
    | recoveredValue0 |
    recoveredValue0 := SstUrl.
    (recoveredValue0) register: ('https') as: (self).
    ^self
! !


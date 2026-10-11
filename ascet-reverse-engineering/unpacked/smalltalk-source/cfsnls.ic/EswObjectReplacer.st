"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000134; bytecode file offset 0x23404"
!EswObjectReplacer methodsFor: 'recovered'!
peerClass
    | recoveredValue0 |
    recoveredValue0 := (self) class.
    ^recoveredValue0
! !

"cfsnls.ic method 0x2000187c; bytecode file offset 0x24ab8"
!EswObjectReplacer methodsFor: 'recovered'!
peerReplacer
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) peerClass.
    recoveredValue1 := (self) swapper.
    recoveredValue2 := (recoveredValue0) forSwapper: (recoveredValue1).
    ^recoveredValue2
! !


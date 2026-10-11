"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20002a30; bytecode file offset 0x63b1c"
!SstHttpConnection class methodsFor: 'recovered'!
setupAfterLoadNonInherited
    (self) resetConnectionCounter.
    ^self
! !

"xxx_dyn.ic method 0x200033cc; bytecode file offset 0x64494"
!SstHttpConnection class methodsFor: 'recovered'!
resetConnectionCounter
    NextConnectionNumber := 0.
    ^self
! !


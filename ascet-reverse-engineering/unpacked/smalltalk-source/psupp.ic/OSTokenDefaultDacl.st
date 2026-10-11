"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20011534; bytecode file offset 0x165330"
!OSTokenDefaultDacl methodsFor: 'recovered'!
DefaultDacl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b130; bytecode file offset 0x16ea70"
!OSTokenDefaultDacl methodsFor: 'recovered'!
DefaultDacl
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSAcl.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001a88; bytecode file offset 0x155d58"
!OSPrinterInfo3 methodsFor: 'recovered'!
pSecurityDescriptor
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20010dcc; bytecode file offset 0x165330"
!OSPrinterInfo3 methodsFor: 'recovered'!
pSecurityDescriptor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !


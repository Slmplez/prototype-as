"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004bb28; bytecode file offset 0x94877c"
!ASAP2McMessChecksumParameter methodsFor: 'recovered'!
checksumCalculation
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a66bc; bytecode file offset 0x9a32e0"
!ASAP2McMessChecksumParameter methodsFor: 'recovered'!
checksumCalculation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200fe9a4; bytecode file offset 0x9fb278"
!ASAP2McMessChecksumParameter methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super getFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) parse: (recoveredValue1).
    ^self
! !


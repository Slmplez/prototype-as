"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004bd68; bytecode file offset 0x94877c"
!ASAP2CcpChecksumParameter methodsFor: 'recovered'!
blockLength
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a45c8; bytecode file offset 0x9a1ad4"
!ASAP2CcpChecksumParameter methodsFor: 'recovered'!
getBlockLength: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) blockLength: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a6710; bytecode file offset 0x9a32e0"
!ASAP2CcpChecksumParameter methodsFor: 'recovered'!
blockLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200fb3cc; bytecode file offset 0x9f7ee4"
!ASAP2CcpChecksumParameter methodsFor: 'recovered'!
putBlockLengthIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) blockLength.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fe92c; bytecode file offset 0x9fb278"
!ASAP2CcpChecksumParameter methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super putParameterIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putBlockLengthIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201459bc; bytecode file offset 0xa42280"
!ASAP2CcpChecksumParameter methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super getFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getBlockLength: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) parse: (recoveredValue2).
    ^self
! !


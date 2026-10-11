"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b07c; bytecode file offset 0x947a60"
!ASAP2DPKwp2000V30DPBlob methodsFor: 'recovered'!
address
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b10c; bytecode file offset 0x947a60"
!ASAP2DPKwp2000V30DPBlob methodsFor: 'recovered'!
startAddress
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b384; bytecode file offset 0x947d20"
!ASAP2DPKwp2000V30DPBlob methodsFor: 'recovered'!
bsize
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b4f4; bytecode file offset 0x947ec0"
!ASAP2DPKwp2000V30DPBlob methodsFor: 'recovered'!
version
    | recoveredValue0 |
    recoveredValue0 := (self) at: (3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a4818; bytecode file offset 0x9a1ad4"
!ASAP2DPKwp2000V30DPBlob methodsFor: 'recovered'!
getBsize: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) bsize: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5e78; bytecode file offset 0x9a27f0"
!ASAP2DPKwp2000V30DPBlob methodsFor: 'recovered'!
address: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a5ef0; bytecode file offset 0x9a27f0"
!ASAP2DPKwp2000V30DPBlob methodsFor: 'recovered'!
startAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6134; bytecode file offset 0x9a2a28"
!ASAP2DPKwp2000V30DPBlob methodsFor: 'recovered'!
bsize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (2) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6254; bytecode file offset 0x9a2b84"
!ASAP2DPKwp2000V30DPBlob methodsFor: 'recovered'!
version: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (3) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d6bb4; bytecode file offset 0x9d3600"
!ASAP2DPKwp2000V30DPBlob methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) putAddressIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putBsizeIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fb3a4; bytecode file offset 0x9f7ee4"
!ASAP2DPKwp2000V30DPBlob methodsFor: 'recovered'!
putBsizeIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) bsize.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2011da24; bytecode file offset 0xa1a2f8"
!ASAP2DPKwp2000V30DPBlob methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) getAddress: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getBsize: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) parseStruct: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20163b10; bytecode file offset 0xa605cc"
!ASAP2DPKwp2000V30DPBlob methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putKeyWordIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putParameterIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putOptionsIn: (recoveredValue3).
    ^self
! !


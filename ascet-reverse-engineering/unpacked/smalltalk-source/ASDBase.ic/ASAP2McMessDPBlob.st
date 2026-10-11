"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004bcfc; bytecode file offset 0x94877c"
!ASAP2McMessDPBlob methodsFor: 'recovered'!
address
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c250; bytecode file offset 0x948b80"
!ASAP2McMessDPBlob methodsFor: 'recovered'!
sizea
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a6740; bytecode file offset 0x9a32e0"
!ASAP2McMessDPBlob methodsFor: 'recovered'!
address: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6d1c; bytecode file offset 0x9a3694"
!ASAP2McMessDPBlob methodsFor: 'recovered'!
sizea: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d6bc4; bytecode file offset 0x9d3600"
!ASAP2McMessDPBlob methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) putAddressIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putSizeIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d6d04; bytecode file offset 0x9d3600"
!ASAP2McMessDPBlob methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) getAddress: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getSize: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20163b28; bytecode file offset 0xa605cc"
!ASAP2McMessDPBlob methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putKeyWordIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putParameterIn: (recoveredValue3).
    ^self
! !


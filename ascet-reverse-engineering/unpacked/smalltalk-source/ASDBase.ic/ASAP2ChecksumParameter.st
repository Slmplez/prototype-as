"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b8c8; bytecode file offset 0x948384"
!ASAP2ChecksumParameter methodsFor: 'recovered'!
checksumType
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200845a0; bytecode file offset 0x981ca4"
!ASAP2ChecksumParameter methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) putChecksumTypeIn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a49a8; bytecode file offset 0x9a1ad4"
!ASAP2ChecksumParameter methodsFor: 'recovered'!
getChecksumType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) checksumType: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a65c0; bytecode file offset 0x9a2f38"
!ASAP2ChecksumParameter methodsFor: 'recovered'!
checksumType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d6ca4; bytecode file offset 0x9d3600"
!ASAP2ChecksumParameter methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getChecksumType: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fb494; bytecode file offset 0x9f7ee4"
!ASAP2ChecksumParameter methodsFor: 'recovered'!
putChecksumTypeIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) checksumType.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !


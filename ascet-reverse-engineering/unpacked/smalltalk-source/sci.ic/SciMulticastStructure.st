"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x200002c8; bytecode file offset 0x133fc"
!SciMulticastStructure methodsFor: 'recovered'!
multicastGroup
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) multicastStruct.
    recoveredValue1 := (recoveredValue0) multicastGroup.
    ^recoveredValue1
! !

"sci.ic method 0x200002e8; bytecode file offset 0x133fc"
!SciMulticastStructure methodsFor: 'recovered'!
localAddress
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) multicastStruct.
    recoveredValue1 := (recoveredValue0) localAddress.
    ^recoveredValue1
! !

"sci.ic method 0x200008ac; bytecode file offset 0x13930"
!SciMulticastStructure methodsFor: 'recovered'!
multicastStruct
    | recoveredValue0 |
    recoveredValue0 := multicastStruct.
    ^recoveredValue0
! !

"sci.ic method 0x20000d30; bytecode file offset 0x13e04"
!SciMulticastStructure methodsFor: 'recovered'!
localAddress: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) multicastStruct.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) localAddress: (recoveredValue1).
    ^self
! !

"sci.ic method 0x20000d70; bytecode file offset 0x13e04"
!SciMulticastStructure methodsFor: 'recovered'!
multicastGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) multicastStruct.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) multicastGroup: (recoveredValue1).
    ^self
! !

"sci.ic method 0x2000120c; bytecode file offset 0x142c8"
!SciMulticastStructure methodsFor: 'recovered'!
multicastStruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    multicastStruct := recoveredValue0.
    ^self
! !


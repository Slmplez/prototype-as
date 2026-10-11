"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20000378; bytecode file offset 0x133fc"
!OSMulticastStruct methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fixedSize.
    ^recoveredValue1
! !

"sci.ic method 0x2000048c; bytecode file offset 0x1350c"
!OSMulticastStruct methodsFor: 'recovered'!
multicastGroup
    | recoveredValue0 |
    recoveredValue0 := (self) ntoh32At: (0).
    ^recoveredValue0
! !

"sci.ic method 0x200004cc; bytecode file offset 0x1354c"
!OSMulticastStruct methodsFor: 'recovered'!
localAddress
    | recoveredValue0 |
    recoveredValue0 := (self) ntoh32At: (4).
    ^recoveredValue0
! !

"sci.ic method 0x20000ebc; bytecode file offset 0x13f3c"
!OSMulticastStruct methodsFor: 'recovered'!
multicastGroup: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) hton32At: (0) put: (recoveredValue0).
    ^self
! !

"sci.ic method 0x20000eec; bytecode file offset 0x13f78"
!OSMulticastStruct methodsFor: 'recovered'!
localAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) hton32At: (4) put: (recoveredValue0).
    ^self
! !


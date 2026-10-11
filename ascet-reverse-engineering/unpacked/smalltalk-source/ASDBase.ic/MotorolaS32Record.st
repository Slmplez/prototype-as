"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b928; bytecode file offset 0x948384"
!MotorolaS32Record methodsFor: 'recovered'!
address
    | recoveredValue0 |
    recoveredValue0 := (self) hexDWordAt: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200743f4; bytecode file offset 0x970de8"
!MotorolaS32Record methodsFor: 'recovered'!
addressSize
    ^8
! !

"ASDBase.ic method 0x20074818; bytecode file offset 0x9710d4"
!MotorolaS32Record methodsFor: 'recovered'!
dataOffset
    ^12
! !

"ASDBase.ic method 0x201eb2f8; bytecode file offset 0xae7bc4"
!MotorolaS32Record methodsFor: 'recovered'!
bytes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) numberOfBytes.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (11) + (recoveredValue4).
    recoveredValue6 := (self) size.
    recoveredValue7 := (recoveredValue6) + (-1).
    recoveredValue8 := (recoveredValue5) min: (recoveredValue7).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (self) memcpyFrom: (12) to: (recoveredValue8) into: (recoveredValue9) startingAt: (0).
    ^recoveredValue10
! !


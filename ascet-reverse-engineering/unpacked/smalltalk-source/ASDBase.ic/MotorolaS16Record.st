"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b94c; bytecode file offset 0x948384"
!MotorolaS16Record methodsFor: 'recovered'!
address
    | recoveredValue0 |
    recoveredValue0 := (self) hexWordAt: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072bc0; bytecode file offset 0x96f6d4"
!MotorolaS16Record methodsFor: 'recovered'!
addressSize
    ^4
! !

"ASDBase.ic method 0x20074504; bytecode file offset 0x970de8"
!MotorolaS16Record methodsFor: 'recovered'!
dataOffset
    ^8
! !

"ASDBase.ic method 0x20198b34; bytecode file offset 0xa953fc"
!MotorolaS16Record methodsFor: 'recovered'!
bytes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) numberOfBytes.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (7) + (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) memcpyFrom: (8) to: (recoveredValue5) into: (recoveredValue6) startingAt: (0).
    ^recoveredValue7
! !


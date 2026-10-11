"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b9e8; bytecode file offset 0x948384"
!MotorolaS24Record methodsFor: 'recovered'!
address
    | recoveredValue0 |
    recoveredValue0 := (self) hex24WordAt: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072fd0; bytecode file offset 0x96f8bc"
!MotorolaS24Record methodsFor: 'recovered'!
addressSize
    ^6
! !

"ASDBase.ic method 0x2007464c; bytecode file offset 0x970f98"
!MotorolaS24Record methodsFor: 'recovered'!
dataOffset
    ^10
! !

"ASDBase.ic method 0x20198b68; bytecode file offset 0xa95430"
!MotorolaS24Record methodsFor: 'recovered'!
bytes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) numberOfBytes.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (8) + (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) memcpyFrom: (9) to: (recoveredValue5) into: (recoveredValue6) startingAt: (0).
    ^recoveredValue7
! !


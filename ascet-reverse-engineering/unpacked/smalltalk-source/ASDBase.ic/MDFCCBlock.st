"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004aea4; bytecode file offset 0x947768"
!MDFCCBlock methodsFor: 'recovered'!
id
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b450; bytecode file offset 0x947d20"
!MDFCCBlock methodsFor: 'recovered'!
cc_length
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20250e04; bytecode file offset 0xb4d6d8"
!MDFCCBlock methodsFor: 'recovered'!
asMDFFormula
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) cc_length.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := (self) cc_length.
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredValue5 := recoveredLocal2.
    (self) memcpyFrom: (4) to: (recoveredValue4) into: (recoveredValue5) startingAt: (0).
    recoveredValue6 := MDFFormula.
    recoveredValue7 := (recoveredValue6) create.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := (self) cc_length.
    (recoveredValue9) length: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    (recoveredValue8) bytes: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !


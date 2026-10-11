"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20015728; bytecode file offset 0x918f8"
!CgJPEGComment methodsFor: 'recovered'!
comment
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := String.
    recoveredValue1 := (self) segmentLength.
    recoveredValue2 := (recoveredValue1) + (-2).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredLocal3 := 4.
    recoveredValue4 := (self) segmentLength.
    recoveredValue5 := (recoveredValue4) + (1).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) memcpyFrom: (recoveredValue6) to: (recoveredValue7) into: (recoveredValue8) startingAt: (0).
    ^recoveredValue9
! !


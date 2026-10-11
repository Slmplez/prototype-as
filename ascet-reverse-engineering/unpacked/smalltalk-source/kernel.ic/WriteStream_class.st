"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200056a4; bytecode file offset 0x5065c"
!WriteStream class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"kernel.ic method 0x20006a74; bytecode file offset 0x51988"
!WriteStream class methodsFor: 'recovered'!
with: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue0) copyFrom: (recoveredValue1) to: (recoveredValue2).
    recoveredValue4 := (self) with: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x2000b5e4; bytecode file offset 0x56504"
!WriteStream class methodsFor: 'recovered'!
with: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) collection: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) size.
    (recoveredValue3) readLimit: (recoveredValue5).
    recoveredValue6 := (recoveredValue0) setToEnd.
    ^recoveredValue6
! !


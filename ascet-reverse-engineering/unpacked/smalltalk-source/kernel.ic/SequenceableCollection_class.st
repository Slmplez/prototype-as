"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x2000e12c; bytecode file offset 0x5904c"
!SequenceableCollection class methodsFor: 'recovered'!
streamContents: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (self) new: (100).
    recoveredValue2 := (recoveredValue0) on: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) value: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) contents.
    ^recoveredValue6
! !

"kernel.ic method 0x2001bbc0; bytecode file offset 0x66ae8"
!SequenceableCollection class methodsFor: 'recovered'!
streamContents: recoveredArg1 limitedTo: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := LimitedWriteStream.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (100) min: (recoveredValue1).
    recoveredValue3 := (self) new: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) on: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 |
    recoveredBlock25Value0 := recoveredLocal1.
    recoveredBlock25Value1 := (recoveredBlock25Value0) contents.
    ^recoveredBlock25Value1
].
    (recoveredValue5) setLimit: (recoveredValue6) limitBlock: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) value: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) contents.
    ^recoveredValue11
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200eba20; bytecode file offset 0x9e82d8"
!ETASFilePosition class methodsFor: 'recovered'!
create: recoveredArg1 startingPosition: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) create: (recoveredValue0) fHandle: (nil) startingPosition: (recoveredValue1) endingPosition: (-1) currentPosition: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20101f44; bytecode file offset 0x9fe7fc"
!ETASFilePosition class methodsFor: 'recovered'!
create: recoveredArg1 startingPosition: recoveredArg2 size: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (self) create: (recoveredValue0) fHandle: (nil) startingPosition: (recoveredValue1) endingPosition: (recoveredValue4) currentPosition: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201fbe08; bytecode file offset 0xaf86d4"
!ETASFilePosition class methodsFor: 'recovered'!
create: recoveredArg1 fHandle: recoveredArg2 startingPosition: recoveredArg3 endingPosition: recoveredArg4 currentPosition: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) currentFile: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) fHandle: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) startingPosition: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) endingPosition: (recoveredValue9).
    recoveredValue10 := recoveredArg5.
    (recoveredValue1) currentPosition: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !


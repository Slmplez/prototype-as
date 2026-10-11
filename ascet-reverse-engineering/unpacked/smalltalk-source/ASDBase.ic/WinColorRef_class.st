"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004976c; bytecode file offset 0x947128"
!WinColorRef class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fixedSize.
    recoveredValue1 := (self) new: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20072b80; bytecode file offset 0x96f6d4"
!WinColorRef class methodsFor: 'recovered'!
fixedSize
    ^4
! !

"ASDBase.ic method 0x200ef03c; bytecode file offset 0x9eb8f8"
!WinColorRef class methodsFor: 'recovered'!
fromInteger: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) uint32At: (0) put: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2015b5d0; bytecode file offset 0xa57ef4"
!WinColorRef class methodsFor: 'recovered'!
red: recoveredArg1 green: recoveredArg2 blue: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) red: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) green: (recoveredValue5).
    recoveredValue6 := recoveredArg3.
    (recoveredValue1) blue: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !


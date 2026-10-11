"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200093b4; bytecode file offset 0x15cd08"
!OSHwinsta class methodsFor: 'recovered'!
getProcessWindowStation
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetProcessWindowStation.
    recoveredValue1 := (recoveredValue0) call.
    recoveredValue2 := (self) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200249a0; bytecode file offset 0x178268"
!OSHwinsta class methodsFor: 'recovered'!
openWindowStation: recoveredArg1 fInherit: recoveredArg2 dwDesiredAccess: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OpenWindowStation.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) immediate: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x20026630; bytecode file offset 0x179f5c"
!OSHwinsta class methodsFor: 'recovered'!
createWindowStation: recoveredArg1 dwReserved: recoveredArg2 dwDesiredAccess: recoveredArg3 lpsa: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CreateWindowStation.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) immediate: (recoveredValue5).
    ^recoveredValue6
! !


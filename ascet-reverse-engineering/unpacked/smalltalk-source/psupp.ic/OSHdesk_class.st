"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000be04; bytecode file offset 0x15f71c"
!OSHdesk class methodsFor: 'recovered'!
getThreadDesktop: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := GetThreadDesktop.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (recoveredValue1).
    recoveredValue3 := (self) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20024950; bytecode file offset 0x178268"
!OSHdesk class methodsFor: 'recovered'!
openInputDesktop: recoveredArg1 fInherit: recoveredArg2 dwDesiredAccess: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OpenInputDesktop.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) immediate: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x2002661c; bytecode file offset 0x179f5c"
!OSHdesk class methodsFor: 'recovered'!
openDesktop: recoveredArg1 dwFlags: recoveredArg2 fInherit: recoveredArg3 dwDesiredAccess: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OpenDesktop.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) immediate: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x2002b358; bytecode file offset 0x17ebf8"
!OSHdesk class methodsFor: 'recovered'!
createDesktop: recoveredArg1 lpszDevice: recoveredArg2 pDevmode: recoveredArg3 dwFlags: recoveredArg4 dwDesiredAccess: recoveredArg5 lpsa: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CreateDesktop.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := (self) immediate: (recoveredValue7).
    ^recoveredValue8
! !


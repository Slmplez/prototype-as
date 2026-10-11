"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20008348; bytecode file offset 0x15caa4"
!OSHdesk methodsFor: 'recovered'!
setThreadDesktop
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SetThreadDesktop.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008948; bytecode file offset 0x15caa4"
!OSHdesk methodsFor: 'recovered'!
switchDesktop
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SwitchDesktop.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008f18; bytecode file offset 0x15caa4"
!OSHdesk methodsFor: 'recovered'!
closeDesktop
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CloseDesktop.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200213fc; bytecode file offset 0x174df8"
!OSHdesk methodsFor: 'recovered'!
enumDesktopWindows: recoveredArg1 lParam: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EnumDesktopWindows.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !


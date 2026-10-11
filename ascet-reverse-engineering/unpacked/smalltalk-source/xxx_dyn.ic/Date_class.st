"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001dd4; bytecode file offset 0x63040"
!Date class methodsFor: 'recovered'!
sstInternetDateAndTimeNow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DateAndTime.
    recoveredValue1 := (recoveredValue0) sstInternetDateAndTimeNow.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20004ae0; bytecode file offset 0x65c7c"
!Date class methodsFor: 'recovered'!
sstInternetTimeZoneFormat: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DateAndTime.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) sstInternetTimeZoneFormat: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20004b30; bytecode file offset 0x65c7c"
!Date class methodsFor: 'recovered'!
sstInternetNameOfMonth: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DateAndTime.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) sstInternetNameOfMonth: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20004b80; bytecode file offset 0x65c7c"
!Date class methodsFor: 'recovered'!
sstInternetNameOfDay: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DateAndTime.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) sstInternetNameOfDay: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20007164; bytecode file offset 0x68250"
!Date class methodsFor: 'recovered'!
sstInternetDate: recoveredArg1 time: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DateAndTime.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) sstInternetDate: (recoveredValue1) time: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20028a64; bytecode file offset 0x89b6c"
!Date class methodsFor: 'recovered'!
sstInternetDate: recoveredArg1 time: recoveredArg2 minutesFromUTC: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := Date.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) dayIndex.
    recoveredValue6 := (recoveredValue3) sstInternetNameOfDay: (recoveredValue5).
    (recoveredValue2) at: (1) put: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) dayOfMonth.
    recoveredValue10 := (recoveredValue9) printStringRadix: (10) padTo: (2).
    (recoveredValue7) at: (2) put: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := Date.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) monthIndex.
    recoveredValue15 := (recoveredValue12) sstInternetNameOfMonth: (recoveredValue14).
    (recoveredValue11) at: (3) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) year.
    recoveredValue19 := (recoveredValue18) printStringRadix: (10) padTo: (4).
    (recoveredValue16) at: (4) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg2.
    recoveredValue22 := (recoveredValue21) hours.
    recoveredValue23 := (recoveredValue22) printStringRadix: (10) padTo: (2).
    (recoveredValue20) at: (5) put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := recoveredArg2.
    recoveredValue26 := (recoveredValue25) minutes.
    recoveredValue27 := (recoveredValue26) printStringRadix: (10) padTo: (2).
    (recoveredValue24) at: (6) put: (recoveredValue27).
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := recoveredArg2.
    recoveredValue30 := (recoveredValue29) seconds.
    recoveredValue31 := (recoveredValue30) printStringRadix: (10) padTo: (2).
    (recoveredValue28) at: (7) put: (recoveredValue31).
    recoveredValue32 := recoveredValue1.
    recoveredValue33 := recoveredArg3.
    recoveredValue34 := (self) sstInternetTimeZoneFormat: (recoveredValue33).
    (recoveredValue32) at: (8) put: (recoveredValue34).
    recoveredValue35 := ('%1, %2 %3 %4 %5:%6:%7 %8') bindWithArguments: (recoveredValue1).
    ^recoveredValue35
! !


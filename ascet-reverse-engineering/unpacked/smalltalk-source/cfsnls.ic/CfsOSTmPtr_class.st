"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20004be0; bytecode file offset 0x27e1c"
!CfsOSTmPtr class methodsFor: 'recovered'!
initializeAfterLoad
    (self) fixedSize: (44).
    (self) members: (#('tmSec' 'tmMin' 'tmHour' 'tmMday' 'tmMon' 'tmYear' 'tmWday' 'tmYday' 'tmIsDst' 'unused1' 'unused2')).
    ^self
! !

"cfsnls.ic method 0x2000cd7c; bytecode file offset 0x2fff8"
!CfsOSTmPtr class methodsFor: 'recovered'!
fromDateAndTime: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) at: (2).
    recoveredValue4 := (recoveredValue3) seconds.
    (recoveredValue1) tmSec: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) at: (2).
    recoveredValue8 := (recoveredValue7) minutes.
    (recoveredValue5) tmMin: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) at: (2).
    recoveredValue12 := (recoveredValue11) hours.
    (recoveredValue9) tmHour: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) at: (1).
    recoveredValue16 := (recoveredValue15) dayOfMonth.
    (recoveredValue13) tmMday: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) at: (1).
    recoveredValue20 := (recoveredValue19) monthIndex.
    recoveredValue21 := (recoveredValue20) + (-1).
    (recoveredValue17) tmMon: (recoveredValue21).
    recoveredValue22 := recoveredValue0.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (recoveredValue23) at: (1).
    recoveredValue25 := (recoveredValue24) year.
    recoveredValue26 := (recoveredValue25) - (1900).
    (recoveredValue22) tmYear: (recoveredValue26).
    recoveredValue27 := recoveredValue0.
    recoveredValue28 := recoveredArg1.
    recoveredValue29 := (recoveredValue28) at: (1).
    recoveredValue30 := (recoveredValue29) dayIndex.
    recoveredValue31 := (recoveredValue30) + (-1).
    (recoveredValue27) tmWday: (recoveredValue31).
    recoveredValue32 := recoveredValue0.
    recoveredValue33 := recoveredArg1.
    recoveredValue34 := (recoveredValue33) at: (1).
    recoveredValue35 := (recoveredValue34) dayOfYear.
    (recoveredValue32) tmYday: (recoveredValue35).
    recoveredValue36 := recoveredValue0.
    (recoveredValue36) tmIsDst: (-1).
    ^recoveredValue0
! !


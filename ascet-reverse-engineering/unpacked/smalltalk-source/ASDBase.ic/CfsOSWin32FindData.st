"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20309944; bytecode file offset 0xc06240"
!CfsOSWin32FindData methodsFor: 'recovered'!
fileModifiedLocalDateAndTime
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := CfsOSFiletime.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := CfsOSSystemtime.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (self) ftLastWriteTime.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) fileTimeToLocalFileTime: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredLocal2.
    (recoveredValue6) fileTimeToSystemTime: (recoveredValue7).
    recoveredValue8 := Array.
    recoveredValue9 := Date.
    recoveredValue10 := (recoveredValue9) new.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (recoveredValue11) wYear.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (recoveredValue13) wMonth.
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := (recoveredValue15) wDay.
    recoveredValue17 := (recoveredValue10) year: (recoveredValue12) month: (recoveredValue14) day: (recoveredValue16).
    recoveredValue18 := Time.
    recoveredValue19 := (recoveredValue18) new.
    recoveredValue20 := recoveredLocal2.
    recoveredValue21 := (recoveredValue20) wHour.
    recoveredValue22 := recoveredLocal2.
    recoveredValue23 := (recoveredValue22) wMinute.
    recoveredValue24 := recoveredLocal2.
    recoveredValue25 := (recoveredValue24) wSecond.
    recoveredValue26 := (recoveredValue19) hours: (recoveredValue21) minutes: (recoveredValue23) seconds: (recoveredValue25).
    recoveredValue27 := (recoveredValue8) with: (recoveredValue17) with: (recoveredValue26).
    ^recoveredValue27
! !


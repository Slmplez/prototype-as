"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20013d04; bytecode file offset 0x74de8"
!SstSessionManagerConfiguration class methodsFor: 'recovered'!
default
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) autoGenerateSessions: (false).
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := SstSessionManager.
    (recoveredValue2) managerClass: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := SstSession.
    (recoveredValue4) sessionClass: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) sessionReaperInterval: (30).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) sessionInactivityTimeout: (180).
    ^recoveredValue0
! !


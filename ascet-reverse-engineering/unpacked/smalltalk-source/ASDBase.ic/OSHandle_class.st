"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20111220; bytecode file offset 0xa0dae4"
!OSHandle class methodsFor: 'recovered'!
createEvent: recoveredArg1 fInitialState: recoveredArg2 lpszEventName: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CreateEvent.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := (recoveredValue0) callWith: (nil) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := (self) immediate: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201b8e90; bytecode file offset 0xab5758"
!OSHandle class methodsFor: 'recovered'!
getProcessQueryInformationHandle: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ProcessQueryInformation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ProcessVmRead.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) openProcess: (recoveredStack1) fInherit: (recoveredStack2) iDProcess: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNull.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eca18; bytecode file offset 0xae92e8"
!OSHandle class methodsFor: 'recovered'!
getProcessHandle: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := PlatformConstants.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ProcessAllAccess'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) openProcess: (recoveredStack1) fInherit: (recoveredStack2) iDProcess: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNull.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := WinError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastError.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20548200; bytecode file offset 0xe44b10"
!OSHandle class methodsFor: 'recovered'!
getProcessTimeInformation
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 |
    recoveredValue0 := OSFiletime.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal8 := recoveredValue1.
    recoveredValue2 := OSFiletime.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal7 := recoveredValue3.
    recoveredValue4 := OSFiletime.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal6 := recoveredValue5.
    recoveredValue6 := OSFiletime.
    recoveredValue7 := (recoveredValue6) new.
    recoveredLocal5 := recoveredValue7.
    recoveredValue8 := OSHandle.
    recoveredValue9 := (recoveredValue8) getCurrentProcess.
    recoveredValue10 := recoveredLocal8.
    recoveredValue11 := recoveredLocal7.
    recoveredValue12 := recoveredLocal6.
    recoveredValue13 := recoveredLocal5.
    (recoveredValue9) getProcessTimes: (recoveredValue10) lpExitTime: (recoveredValue11) lpKernelTime: (recoveredValue12) lpUserTime: (recoveredValue13).
    recoveredValue14 := Dictionary.
    recoveredValue15 := (recoveredValue14) new.
    recoveredLocal2 := recoveredValue15.
    recoveredValue16 := CfsOSFiletime.
    recoveredValue17 := (recoveredValue16) new.
    recoveredLocal3 := recoveredValue17.
    recoveredValue18 := CfsOSSystemtime.
    recoveredValue19 := (recoveredValue18) new.
    recoveredLocal4 := recoveredValue19.
    recoveredValue20 := recoveredLocal8.
    recoveredValue21 := recoveredLocal3.
    (recoveredValue20) fileTimeToLocalFileTime: (recoveredValue21).
    recoveredValue22 := recoveredLocal3.
    recoveredValue23 := recoveredLocal4.
    (recoveredValue22) fileTimeToSystemTime: (recoveredValue23).
    recoveredValue24 := DateAndTime.
    recoveredValue25 := recoveredLocal4.
    recoveredValue26 := (recoveredValue25) wYear.
    recoveredValue27 := recoveredLocal4.
    recoveredValue28 := (recoveredValue27) wMonth.
    recoveredValue29 := recoveredLocal4.
    recoveredValue30 := (recoveredValue29) wDay.
    recoveredValue31 := recoveredLocal4.
    recoveredValue32 := (recoveredValue31) wHour.
    recoveredValue33 := recoveredLocal4.
    recoveredValue34 := (recoveredValue33) wMinute.
    recoveredValue35 := recoveredLocal4.
    recoveredValue36 := (recoveredValue35) wSecond.
    recoveredValue37 := (recoveredValue24) year: (recoveredValue26) month: (recoveredValue28) day: (recoveredValue30) hour: (recoveredValue32) minute: (recoveredValue34) second: (recoveredValue36).
    recoveredLocal1 := recoveredValue37.
    recoveredValue38 := recoveredLocal2.
    recoveredValue39 := recoveredLocal1.
    (recoveredValue38) at: ('lpCreationTime') put: (recoveredValue39).
    recoveredValue40 := recoveredLocal7.
    recoveredValue41 := recoveredLocal3.
    (recoveredValue40) fileTimeToLocalFileTime: (recoveredValue41).
    recoveredValue42 := recoveredLocal3.
    recoveredValue43 := recoveredLocal4.
    (recoveredValue42) fileTimeToSystemTime: (recoveredValue43).
    recoveredValue44 := DateAndTime.
    recoveredValue45 := recoveredLocal4.
    recoveredValue46 := (recoveredValue45) wYear.
    recoveredValue47 := recoveredLocal4.
    recoveredValue48 := (recoveredValue47) wMonth.
    recoveredValue49 := recoveredLocal4.
    recoveredValue50 := (recoveredValue49) wDay.
    recoveredValue51 := recoveredLocal4.
    recoveredValue52 := (recoveredValue51) wHour.
    recoveredValue53 := recoveredLocal4.
    recoveredValue54 := (recoveredValue53) wMinute.
    recoveredValue55 := recoveredLocal4.
    recoveredValue56 := (recoveredValue55) wSecond.
    recoveredValue57 := (recoveredValue44) year: (recoveredValue46) month: (recoveredValue48) day: (recoveredValue50) hour: (recoveredValue52) minute: (recoveredValue54) second: (recoveredValue56).
    recoveredLocal1 := recoveredValue57.
    recoveredValue58 := recoveredLocal2.
    recoveredValue59 := recoveredLocal1.
    (recoveredValue58) at: ('lpExitTime') put: (recoveredValue59).
    recoveredValue60 := recoveredLocal1.
    recoveredLocal9 := recoveredValue60.
    recoveredValue61 := recoveredLocal6.
    recoveredValue62 := recoveredLocal3.
    (recoveredValue61) fileTimeToLocalFileTime: (recoveredValue62).
    recoveredValue63 := recoveredLocal3.
    recoveredValue64 := recoveredLocal4.
    (recoveredValue63) fileTimeToSystemTime: (recoveredValue64).
    recoveredValue65 := DateAndTime.
    recoveredValue66 := recoveredLocal4.
    recoveredValue67 := (recoveredValue66) wYear.
    recoveredValue68 := recoveredLocal4.
    recoveredValue69 := (recoveredValue68) wMonth.
    recoveredValue70 := recoveredLocal4.
    recoveredValue71 := (recoveredValue70) wDay.
    recoveredValue72 := recoveredLocal4.
    recoveredValue73 := (recoveredValue72) wHour.
    recoveredValue74 := recoveredLocal4.
    recoveredValue75 := (recoveredValue74) wMinute.
    recoveredValue76 := recoveredLocal4.
    recoveredValue77 := (recoveredValue76) wSecond.
    recoveredValue78 := (recoveredValue65) year: (recoveredValue67) month: (recoveredValue69) day: (recoveredValue71) hour: (recoveredValue73) minute: (recoveredValue75) second: (recoveredValue77).
    recoveredLocal1 := recoveredValue78.
    recoveredValue79 := recoveredLocal2.
    recoveredValue80 := recoveredLocal1.
    recoveredValue81 := recoveredLocal9.
    recoveredValue82 := (recoveredValue80) - (recoveredValue81).
    (recoveredValue79) at: ('lpKernelTime') put: (recoveredValue82).
    recoveredValue83 := recoveredLocal5.
    recoveredValue84 := recoveredLocal3.
    (recoveredValue83) fileTimeToLocalFileTime: (recoveredValue84).
    recoveredValue85 := recoveredLocal3.
    recoveredValue86 := recoveredLocal4.
    (recoveredValue85) fileTimeToSystemTime: (recoveredValue86).
    recoveredValue87 := DateAndTime.
    recoveredValue88 := recoveredLocal4.
    recoveredValue89 := (recoveredValue88) wYear.
    recoveredValue90 := recoveredLocal4.
    recoveredValue91 := (recoveredValue90) wMonth.
    recoveredValue92 := recoveredLocal4.
    recoveredValue93 := (recoveredValue92) wDay.
    recoveredValue94 := recoveredLocal4.
    recoveredValue95 := (recoveredValue94) wHour.
    recoveredValue96 := recoveredLocal4.
    recoveredValue97 := (recoveredValue96) wMinute.
    recoveredValue98 := recoveredLocal4.
    recoveredValue99 := (recoveredValue98) wSecond.
    recoveredValue100 := (recoveredValue87) year: (recoveredValue89) month: (recoveredValue91) day: (recoveredValue93) hour: (recoveredValue95) minute: (recoveredValue97) second: (recoveredValue99).
    recoveredLocal1 := recoveredValue100.
    recoveredValue101 := recoveredLocal2.
    recoveredValue102 := recoveredLocal1.
    recoveredValue103 := recoveredLocal9.
    recoveredValue104 := (recoveredValue102) - (recoveredValue103).
    (recoveredValue101) at: ('lpUserTime') put: (recoveredValue104).
    recoveredValue105 := recoveredLocal2.
    ^recoveredValue105
! !


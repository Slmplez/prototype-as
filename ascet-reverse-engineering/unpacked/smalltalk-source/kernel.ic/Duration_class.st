"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20001670; bytecode file offset 0x4c844"
!Duration class methodsFor: 'recovered'!
zero
    | recoveredValue0 |
    recoveredValue0 := Zero.
    ^recoveredValue0
! !

"kernel.ic method 0x20005ac0; bytecode file offset 0x509d0"
!Duration class methodsFor: 'recovered'!
seconds: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) totalSeconds: (recoveredValue0) microseconds: (0).
    ^recoveredValue1
! !

"kernel.ic method 0x20006188; bytecode file offset 0x5109c"
!Duration class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 |
    recoveredValue0 := (self) milliseconds: (0).
    Zero := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200069d4; bytecode file offset 0x518e8"
!Duration class methodsFor: 'recovered'!
totalSeconds: recoveredArg1 microseconds: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue1) totalSeconds: (recoveredValue2) microseconds: (recoveredValue3).
    ^recoveredValue0
! !

"kernel.ic method 0x2000b33c; bytecode file offset 0x5624c"
!Duration class methodsFor: 'recovered'!
minutes: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) days: (0) hours: (0) minutes: (recoveredValue0) seconds: (0) milliseconds: (0).
    ^recoveredValue1
! !

"kernel.ic method 0x2000b35c; bytecode file offset 0x5626c"
!Duration class methodsFor: 'recovered'!
hours: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) days: (0) hours: (recoveredValue0) minutes: (0) seconds: (0) milliseconds: (0).
    ^recoveredValue1
! !

"kernel.ic method 0x2000b494; bytecode file offset 0x563a4"
!Duration class methodsFor: 'recovered'!
days: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) days: (recoveredValue0) hours: (0) minutes: (0) seconds: (0) milliseconds: (0).
    ^recoveredValue1
! !

"kernel.ic method 0x2000bd44; bytecode file offset 0x56c64"
!Duration class methodsFor: 'recovered'!
milliseconds: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := MillisecondsPerSecond.
    recoveredValue2 := (recoveredValue0) quo: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := MillisecondsPerSecond.
    recoveredValue5 := (recoveredValue3) rem: (recoveredValue4).
    recoveredValue6 := MicrosecondsPerMillisecond.
    recoveredValue7 := (recoveredValue5) * (recoveredValue6).
    recoveredValue8 := (self) totalSeconds: (recoveredValue2) microseconds: (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x2000c0cc; bytecode file offset 0x56fe4"
!Duration class methodsFor: 'recovered'!
days: recoveredArg1 hours: recoveredArg2 minutes: recoveredArg3 seconds: recoveredArg4 milliseconds: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := MillisecondsPerSecond.
    recoveredValue6 := (recoveredValue4) / (recoveredValue5).
    recoveredValue7 := (recoveredValue3) + (recoveredValue6).
    recoveredValue8 := (self) days: (recoveredValue0) hours: (recoveredValue1) minutes: (recoveredValue2) seconds: (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x2000d1a4; bytecode file offset 0x580b4"
!Duration class methodsFor: 'recovered'!
weeks: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) * (7).
    recoveredValue2 := (self) days: (recoveredValue1) hours: (0) minutes: (0) seconds: (0) milliseconds: (0).
    ^recoveredValue2
! !

"kernel.ic method 0x2000e9dc; bytecode file offset 0x598f8"
!Duration class methodsFor: 'recovered'!
days: recoveredArg1 hours: recoveredArg2 minutes: recoveredArg3 seconds: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SecondsPerDay.
    recoveredValue2 := (recoveredValue0) * (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := SecondsPerHour.
    recoveredValue5 := (recoveredValue3) * (recoveredValue4).
    recoveredValue6 := (recoveredValue2) + (recoveredValue5).
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := SecondsPerMinute.
    recoveredValue9 := (recoveredValue7) * (recoveredValue8).
    recoveredValue10 := (recoveredValue6) + (recoveredValue9).
    recoveredValue11 := recoveredArg4.
    recoveredValue12 := (recoveredValue10) + (recoveredValue11).
    recoveredValue13 := (self) seconds: (recoveredValue12).
    ^recoveredValue13
! !


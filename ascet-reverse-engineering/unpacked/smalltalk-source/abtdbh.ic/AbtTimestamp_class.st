"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbh.ic method 0x20000ccc; bytecode file offset 0x127e4"
!AbtTimestamp class methodsFor: 'recovered'!
abtCanBeTimestamp
    ^true
! !

"abtdbh.ic method 0x20001bcc; bytecode file offset 0x136a8"
!AbtTimestamp class methodsFor: 'recovered'!
fromBytesExcludingMicroseconds: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) uint32At: (0).
    (recoveredValue1) totalSeconds: (recoveredValue3).
    ^recoveredValue0
! !

"abtdbh.ic method 0x20002f94; bytecode file offset 0x14a88"
!AbtTimestamp class methodsFor: 'recovered'!
now
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := Block.
    recoveredValue3 := (recoveredValue2) now.
    (recoveredValue1) time: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := Dictionary.
    recoveredValue6 := (recoveredValue5) today.
    (recoveredValue4) date: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) microSeconds: (0).
    ^recoveredValue0
! !


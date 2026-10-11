"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x2000264c; bytecode file offset 0x12684"
!AbtTimestamp methodsFor: 'recovered'!
asBytesExcludingMicroseconds
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := NlsGlobals.
    recoveredValue1 := (recoveredValue0) new: (4).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) totalSeconds.
    (recoveredValue2) uint32At: (0) put: (recoveredValue3).
    ^recoveredValue1
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20009168; bytecode file offset 0x15caa4"
!OSHcursor methodsFor: 'recovered'!
destroyCursor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DestroyCursor.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ec5c; bytecode file offset 0x163098"
!OSHcursor methodsFor: 'recovered'!
setSystemCursor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SetSystemCursor.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001a6f0; bytecode file offset 0x16e2c4"
!OSHcursor methodsFor: 'recovered'!
setCursor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHcursor.
    recoveredValue1 := SetCursor.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !


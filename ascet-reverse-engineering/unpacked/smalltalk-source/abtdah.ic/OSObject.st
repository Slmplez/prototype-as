"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200045c4; bytecode file offset 0x14614"
!OSObject methodsFor: 'recovered'!
traceOn: recoveredArg1 withIndentation: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) , ('  ').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('OSObject with reftype: ').
    recoveredValue4 := (self) reftype.
    recoveredValue5 := (recoveredValue4) printString.
    (recoveredValue2) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) cr.
    recoveredValue8 := recoveredValue6.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) nextPutAll: (recoveredValue9).
    (recoveredValue6) nextPutAll: ('data: ').
    recoveredValue10 := (self) reference.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue10) traceOn: (recoveredValue11) withIndentation: (recoveredValue12).
    ^self
! !


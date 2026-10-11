"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000bfc; bytecode file offset 0x61cd0"
!SstHttpRequestLogFormatter methodsFor: 'recovered'!
format: recoveredArg1 on: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000ca8; bytecode file offset 0x61d7c"
!SstHttpRequestLogFormatter methodsFor: 'recovered'!
formatLogEntryForResponse: recoveredArg1 toRequest: recoveredArg2 on: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000f8c4; bytecode file offset 0x709a0"
!SstHttpRequestLogFormatter methodsFor: 'recovered'!
format: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new: (128).
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    (self) format: (recoveredValue4) on: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) contents.
    ^recoveredValue7
! !

"xxx_dyn.ic method 0x20010dbc; bytecode file offset 0x71e98"
!SstHttpRequestLogFormatter methodsFor: 'recovered'!
formatLogEntryForResponse: recoveredArg1 toRequest: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new: (128).
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredLocal1.
    (self) formatLogEntryForResponse: (recoveredValue4) toRequest: (recoveredValue5) on: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) contents.
    ^recoveredValue8
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000dc0; bytecode file offset 0x8ffcfc"
!DateAndTime methodsFor: 'recovered'!
abtAsDateAndTime
    ^self
! !

"ASDBase.ic method 0x2000716c; bytecode file offset 0x908be4"
!DateAndTime methodsFor: 'recovered'!
abtAsDate
    | recoveredValue0 |
    recoveredValue0 := (self) date.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009224; bytecode file offset 0x908be4"
!DateAndTime methodsFor: 'recovered'!
abtAsTime
    | recoveredValue0 |
    recoveredValue0 := (self) time.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2027dd80; bytecode file offset 0xb7a660"
!DateAndTime methodsFor: 'recovered'!
asXmlString
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) date.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (self) time.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := EtasNumberUtility.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue3) year.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) monthIndex.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue7) dayOfMonth.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) hours.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) minutes.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) seconds.
    recoveredValue15 := (recoveredValue2) dateStringSeparator: ($-) year: (recoveredValue4) month: (recoveredValue6) day: (recoveredValue8) timeLeadIn: ('T') separator: ($:) hours: (recoveredValue10) minutes: (recoveredValue12) seconds: (recoveredValue14).
    ^recoveredValue15
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b32c; bytecode file offset 0x92209c"
!ASAP2TimeDefinition class methodsFor: 'recovered'!
members
    ^#('kwpTiming' 'usdtpTiming' 'kwpTimingDefaults')
! !

"ASDBase.ic method 0x20025d80; bytecode file offset 0x923928"
!ASAP2TimeDefinition class methodsFor: 'recovered'!
keyWord
    ^'TIME_DEF'
! !

"ASDBase.ic method 0x20072a88; bytecode file offset 0x96f3cc"
!ASAP2TimeDefinition class methodsFor: 'recovered'!
fixedSize
    ^3
! !

"ASDBase.ic method 0x20364320; bytecode file offset 0xc60c18"
!ASAP2TimeDefinition class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('KWP_TIMING') put: ('getKwpTiming:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('KWP_TIMING_DEFAULTS') put: ('getKwpTimingDefaults:').
    (recoveredValue0) at: ('USDTP_TIMING') put: ('getUsdtpTiming:').
    recoveredValue3 := (self) options.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := Association.
    recoveredValue6 := (recoveredValue5) key: ('KWP_TIMING') value: ('putIn:kwpTiming:').
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('KWP_TIMING_DEFAULTS') value: ('putIn:kwpTimingDefaults:').
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('USDTP_TIMING') value: ('putIn:usdtpTiming:').
    (recoveredValue3) add: (recoveredValue11).
    ^self
! !


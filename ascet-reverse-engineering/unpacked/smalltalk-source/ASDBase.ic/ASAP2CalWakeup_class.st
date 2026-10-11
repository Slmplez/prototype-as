"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20024b6c; bytecode file offset 0x92209c"
!ASAP2CalWakeup class methodsFor: 'recovered'!
members
    ^#('calWakeupPin' 'calToolPresent')
! !

"ASDBase.ic method 0x20025484; bytecode file offset 0x92209c"
!ASAP2CalWakeup class methodsFor: 'recovered'!
keyWord
    ^'CAL_WAKEUP'
! !

"ASDBase.ic method 0x20072740; bytecode file offset 0x96f1c4"
!ASAP2CalWakeup class methodsFor: 'recovered'!
fixedSize
    ^2
! !

"ASDBase.ic method 0x202eac7c; bytecode file offset 0xbe7560"
!ASAP2CalWakeup class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('CAL_WAKEUP_PIN') put: ('getCalWakeupPin:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('CAL_TOOL_PRESENT') put: ('getCalToolPresent:').
    recoveredValue3 := options.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := Association.
    recoveredValue6 := (recoveredValue5) key: ('CAL_WAKEUP_PIN') value: ('putIn:calWakeupPin:').
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('CAL_TOOL_PRESENT') value: ('putIn:calToolPresent:').
    (recoveredValue7) add: (recoveredValue9).
    ^self
! !


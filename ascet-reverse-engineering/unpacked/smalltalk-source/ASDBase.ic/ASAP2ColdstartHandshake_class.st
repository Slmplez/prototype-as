"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020498; bytecode file offset 0x92209c"
!ASAP2ColdstartHandshake class methodsFor: 'recovered'!
keyWord
    ^'COLDSTART_HANDSHAKE'
! !

"ASDBase.ic method 0x200221f0; bytecode file offset 0x92209c"
!ASAP2ColdstartHandshake class methodsFor: 'recovered'!
members
    ^#('coldstartPatternAddress' 'waitPattern' 'readyPattern')
! !

"ASDBase.ic method 0x20072ab0; bytecode file offset 0x96f3cc"
!ASAP2ColdstartHandshake class methodsFor: 'recovered'!
fixedSize
    ^3
! !

"ASDBase.ic method 0x202c8958; bytecode file offset 0xbc523c"
!ASAP2ColdstartHandshake class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('WAIT') put: ('getWaitPattern:').
    (recoveredValue0) at: ('READY') put: ('getReadyPattern:').
    recoveredValue2 := options.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Association.
    recoveredValue5 := (recoveredValue4) key: ('WAIT') value: ('putIn:waitPattern:').
    (recoveredValue3) add: (recoveredValue5).
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('READY') value: ('putIn:readyPattern:').
    (recoveredValue2) add: (recoveredValue7).
    ^self
! !


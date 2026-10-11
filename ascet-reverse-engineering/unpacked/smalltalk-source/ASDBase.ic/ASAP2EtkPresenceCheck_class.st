"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200190dc; bytecode file offset 0x92209c"
!ASAP2EtkPresenceCheck class methodsFor: 'recovered'!
setMembers
    ^#('address:' 'etkPattern:')
! !

"ASDBase.ic method 0x2001db94; bytecode file offset 0x92209c"
!ASAP2EtkPresenceCheck class methodsFor: 'recovered'!
members
    ^#('address' 'etkPattern')
! !

"ASDBase.ic method 0x2001e128; bytecode file offset 0x92209c"
!ASAP2EtkPresenceCheck class methodsFor: 'recovered'!
keyWord
    ^'ETK_PRESENCE_CHECK'
! !

"ASDBase.ic method 0x200b726c; bytecode file offset 0x9b3b98"
!ASAP2EtkPresenceCheck class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201ffe68; bytecode file offset 0xafc77c"
!ASAP2EtkPresenceCheck class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    (recoveredValue0) at: ('ETK_PATTERN') put: ('getEtkPattern:').
    recoveredValue1 := (self) options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('ETK_PATTERN') value: ('putIn:etkPattern:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !


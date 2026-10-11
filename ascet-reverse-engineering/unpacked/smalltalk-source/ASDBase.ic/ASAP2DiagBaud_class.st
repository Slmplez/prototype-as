"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c328; bytecode file offset 0x92209c"
!ASAP2DiagBaud class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'baudRate:' 'diagMode:' 'ecuBaudrateSwitch:')
! !

"ASDBase.ic method 0x200215e4; bytecode file offset 0x92209c"
!ASAP2DiagBaud class methodsFor: 'recovered'!
keyWord
    ^'DIAG_BAUD'
! !

"ASDBase.ic method 0x200b6998; bytecode file offset 0x9b39ac"
!ASAP2DiagBaud class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('baudRate' 'diagMode' 'ecuBaudrateSwitch')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7328; bytecode file offset 0x9b3cb4"
!ASAP2DiagBaud class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f2d84; bytecode file offset 0xaef814"
!ASAP2DiagBaud class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('BD_PARA') put: ('getEcuBaudrateSwitch:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('BD_PARA') value: ('putIn:ecuBaudrateSwitch:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !


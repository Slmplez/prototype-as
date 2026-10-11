"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020894; bytecode file offset 0x92209c"
!ASAP2PageSwitchMethod class methodsFor: 'recovered'!
members
    ^#('version' 'mailbox' 'autostartBehavior' 'workingPage' 'referencePage')
! !

"ASDBase.ic method 0x20021fc8; bytecode file offset 0x92209c"
!ASAP2PageSwitchMethod class methodsFor: 'recovered'!
keyWord
    ^'PAGE_SWITCH_METHOD'
! !

"ASDBase.ic method 0x20072e88; bytecode file offset 0x96f7ac"
!ASAP2PageSwitchMethod class methodsFor: 'recovered'!
fixedSize
    ^5
! !

"ASDBase.ic method 0x203e4ac4; bytecode file offset 0xce13c8"
!ASAP2PageSwitchMethod class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('MAILBOX') put: ('getMailbox:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('AUTOSTART_BEHAVIOR') put: ('getAutostartBehavior:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('OCT_WORKINGPAGE') put: ('getWorkingPage:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('OCT_REFERENCEPAGE') put: ('getReferencePage:').
    recoveredValue5 := (self) options.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := Association.
    recoveredValue8 := (recoveredValue7) key: ('MAILBOX') value: ('putIn:mailbox:').
    (recoveredValue6) add: (recoveredValue8).
    recoveredValue9 := recoveredValue5.
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('AUTOSTART_BEHAVIOR') value: ('putIn:autostartBehavior:').
    (recoveredValue9) add: (recoveredValue11).
    recoveredValue12 := recoveredValue5.
    recoveredValue13 := Association.
    recoveredValue14 := (recoveredValue13) key: ('OCT_WORKINGPAGE') value: ('putIn:workingPage:').
    (recoveredValue12) add: (recoveredValue14).
    recoveredValue15 := recoveredValue5.
    recoveredValue16 := Association.
    recoveredValue17 := (recoveredValue16) key: ('OCT_REFERENCEPAGE') value: ('putIn:referencePage:').
    (recoveredValue15) add: (recoveredValue17).
    ^self
! !


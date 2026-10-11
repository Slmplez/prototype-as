"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015c98; bytecode file offset 0x92209c"
!ASAP2CanKPBlob class methodsFor: 'recovered'!
keyWord
    ^'KP_BLOB'
! !

"ASDBase.ic method 0x2001b344; bytecode file offset 0x92209c"
!ASAP2CanKPBlob class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'bytes:' 'messageName:' 'identifier:' 'messageSize:' 'messageSource:' 'startBit:' 'dataSize:' 'multiplex:')
! !

"ASDBase.ic method 0x200b6ab8; bytecode file offset 0x9b39ac"
!ASAP2CanKPBlob class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('messageName' 'identifier' 'messageSize' 'messageSource' 'startBit' 'dataSize' 'multiplex')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7698; bytecode file offset 0x9b3f54"
!ASAP2CanKPBlob class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (7).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f2db0; bytecode file offset 0xaef814"
!ASAP2CanKPBlob class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('MULTIPLEX') put: ('getMultiplex:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('MULTIPLEX') value: ('putIn:multiplex:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20242f78; bytecode file offset 0xb3f84c"
!ASAP2CanKPBlob class methodsFor: 'recovered'!
createDefault
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := super createDefault.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) identifier: (0).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) messageSize: (0).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) messageSource: ('').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) startBit: (0).
    (recoveredValue1) dataSize: (0).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20273010; bytecode file offset 0xb6f8e4"
!ASAP2CanKPBlob class methodsFor: 'recovered'!
create: recoveredArg1 identifier: recoveredArg2 messageSize: recoveredArg3 messageSource: recoveredArg4 startBit: recoveredArg5 dataSize: recoveredArg6 multiplex: recoveredArg7
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) messageName: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) identifier: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) messageSize: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) messageSource: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) startBit: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) dataSize: (recoveredValue13).
    recoveredValue14 := recoveredArg7.
    (recoveredValue1) multiplex: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !


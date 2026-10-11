"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200204f8; bytecode file offset 0x92209c"
!ASAP2CodeCheck class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'dataChecksum:' 'dataLength:' 'eramChecksum:' 'eramLength:')
! !

"ASDBase.ic method 0x20023ee8; bytecode file offset 0x92209c"
!ASAP2CodeCheck class methodsFor: 'recovered'!
keyWord
    ^'CODE_CHK'
! !

"ASDBase.ic method 0x200b6770; bytecode file offset 0x9b39ac"
!ASAP2CodeCheck class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('dataChecksum' 'dataLength' 'eramChecksum' 'eramLength' 'errorBehavior')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7540; bytecode file offset 0x9b3e8c"
!ASAP2CodeCheck class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201ffd64; bytecode file offset 0xafc77c"
!ASAP2CodeCheck class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    (recoveredValue0) at: ('ERROR_BEHAVIOR') put: ('getErrorBehavior:').
    recoveredValue1 := (self) options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('ERROR_BEHAVIOR') value: ('putIn:errorBehavior:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !


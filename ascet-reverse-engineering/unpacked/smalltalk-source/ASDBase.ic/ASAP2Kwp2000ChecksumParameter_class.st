"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20024284; bytecode file offset 0x92209c"
!ASAP2Kwp2000ChecksumParameter class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'checksumType:' 'onlyActivePage:' 'noOfLocalRoutine:' 'routineResult:' 'rncResult:')
! !

"ASDBase.ic method 0x200801bc; bytecode file offset 0x97ca70"
!ASAP2Kwp2000ChecksumParameter class methodsFor: 'recovered'!
emBehaviorId
    ^171
! !

"ASDBase.ic method 0x200b6968; bytecode file offset 0x9b39ac"
!ASAP2Kwp2000ChecksumParameter class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('onlyActivePage' 'noOfLocalRoutine' 'routineResult' 'rncResult')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7550; bytecode file offset 0x9b3e8c"
!ASAP2Kwp2000ChecksumParameter class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f2d58; bytecode file offset 0xaef814"
!ASAP2Kwp2000ChecksumParameter class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('RNC_RESULT') put: ('getRncResult:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('RNC_RESULT') value: ('putIn:rncResult:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !


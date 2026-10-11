"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017948; bytecode file offset 0x92209c"
!ASAP2UserRights class methodsFor: 'recovered'!
members
    ^#('userLevelId' 'refGroup' 'readOnly')
! !

"ASDBase.ic method 0x20072ac0; bytecode file offset 0x96f3cc"
!ASAP2UserRights class methodsFor: 'recovered'!
fixedSize
    ^3
! !

"ASDBase.ic method 0x202c4e70; bytecode file offset 0xbc1758"
!ASAP2UserRights class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('REF_GROUP') put: ('getRefGroup:').
    (recoveredValue0) at: ('READ_ONLY') put: ('getReadOnly:').
    recoveredValue2 := options.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Association.
    recoveredValue5 := (recoveredValue4) key: ('REF_GROUP') value: ('putIn:refGroup:').
    (recoveredValue3) add: (recoveredValue5).
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('READ_ONLY') value: ('putIn:readOnly:').
    (recoveredValue2) add: (recoveredValue7).
    ^self
! !


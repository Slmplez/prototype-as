"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ad38; bytecode file offset 0x92209c"
!ASAP2Version class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'major:' 'minor:')
! !

"ASDBase.ic method 0x20021f50; bytecode file offset 0x92209c"
!ASAP2Version class methodsFor: 'recovered'!
keyWord
    ^'ASAP2_VERSION'
! !

"ASDBase.ic method 0x200791f8; bytecode file offset 0x975aac"
!ASAP2Version class methodsFor: 'recovered'!
emBehaviorId
    ^147
! !

"ASDBase.ic method 0x200b6a58; bytecode file offset 0x9b39ac"
!ASAP2Version class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('major' 'minor')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b72dc; bytecode file offset 0x9b3b98"
!ASAP2Version class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20113fa4; bytecode file offset 0xa1088c"
!ASAP2Version class methodsFor: 'recovered'!
create: recoveredArg1 minor: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) major: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    (recoveredValue1) minor: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !


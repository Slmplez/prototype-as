"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001895c; bytecode file offset 0x92209c"
!ASAP2VarForbiddenComb class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'combinations:')
! !

"ASDBase.ic method 0x2001a768; bytecode file offset 0x92209c"
!ASAP2VarForbiddenComb class methodsFor: 'recovered'!
keyWord
    ^'VAR_FORBIDDEN_COMB'
! !

"ASDBase.ic method 0x20079130; bytecode file offset 0x9759e4"
!ASAP2VarForbiddenComb class methodsFor: 'recovered'!
emBehaviorId
    ^145
! !

"ASDBase.ic method 0x20091060; bytecode file offset 0x98d9dc"
!ASAP2VarForbiddenComb class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7040; bytecode file offset 0x9b39ac"
!ASAP2VarForbiddenComb class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('combinations')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cb190; bytecode file offset 0x9c7b3c"
!ASAP2VarForbiddenComb class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) combinations: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20077c44; bytecode file offset 0x9757c8"
!SGSmOutlinableIfCode methodsFor: 'recovered'!
isOutlinableCode
    ^true
! !

"ASDBase.ic method 0x200e9944; bytecode file offset 0x9e6240"
!SGSmOutlinableIfCode methodsFor: 'recovered'!
addChildren: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) addChildrenList: (recoveredValue0).
    recoveredValue1 := (self) condition.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addChildren: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e9980; bytecode file offset 0x9e6240"
!SGSmOutlinableIfCode methodsFor: 'recovered'!
removeChildren: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) removeChildrenList: (recoveredValue0).
    recoveredValue1 := (self) condition.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) removeChildren: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20163f2c; bytecode file offset 0xa607f8"
!SGSmOutlinableIfCode methodsFor: 'recovered'!
duplicateFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGSmInlinedIfCode.
    recoveredValue1 := (self) condition.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) duplicateFor: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) duplicateListFor: (recoveredValue4).
    recoveredValue6 := (self) outlineStrategy.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue0) create: (recoveredValue3) body: (recoveredValue5) outlineStrategy: (recoveredValue6) method: (recoveredValue7).
    ^recoveredValue8
! !


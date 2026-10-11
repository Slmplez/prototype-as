"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20077c34; bytecode file offset 0x9757c8"
!SGSmOutlinableOrExpression methodsFor: 'recovered'!
isOutlinableCode
    ^true
! !

"ASDBase.ic method 0x20084870; bytecode file offset 0x981ca4"
!SGSmOutlinableOrExpression methodsFor: 'recovered'!
addChildren: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) addChildrenList: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084b34; bytecode file offset 0x981ca4"
!SGSmOutlinableOrExpression methodsFor: 'recovered'!
removeChildren: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) removeChildrenList: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2010c4c4; bytecode file offset 0xa08da0"
!SGSmOutlinableOrExpression methodsFor: 'recovered'!
duplicateFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGSmInlinedOrExpression.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) duplicateListFor: (recoveredValue1).
    recoveredValue3 := (self) outlineStrategy.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) create: (recoveredValue2) outlineStrategy: (recoveredValue3) method: (recoveredValue4).
    ^recoveredValue5
! !


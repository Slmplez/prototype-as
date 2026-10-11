"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003ad8; bytecode file offset 0x90206c"
!ARAbstractSpecificEvent methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2001068c; bytecode file offset 0x90cf40"
!ARAbstractSpecificEvent methodsFor: 'recovered'!
createWidgetInForm: recoveredArg1 availableModeList: recoveredArg2 eventSpecHandler: recoveredArg3
    ^nil
! !

"ASDBase.ic method 0x2001c718; bytecode file offset 0x92209c"
!ARAbstractSpecificEvent methodsFor: 'recovered'!
iconName
    ^'GeneralEvent'
! !

"ASDBase.ic method 0x20032ae4; bytecode file offset 0x934580"
!ARAbstractSpecificEvent methodsFor: 'recovered'!
eventTypeString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) eventTypeString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003be24; bytecode file offset 0x9387a0"
!ARAbstractSpecificEvent methodsFor: 'recovered'!
listStringForNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) eventTypeString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20079c1c; bytecode file offset 0x97c330"
!ARAbstractSpecificEvent methodsFor: 'recovered'!
isOperationInvoke
    ^false
! !

"ASDBase.ic method 0x2007c8a4; bytecode file offset 0x97c330"
!ARAbstractSpecificEvent methodsFor: 'recovered'!
isTiming
    ^false
! !

"ASDBase.ic method 0x2007caac; bytecode file offset 0x97c330"
!ARAbstractSpecificEvent methodsFor: 'recovered'!
isModeSwitch
    ^false
! !

"ASDBase.ic method 0x2015508c; bytecode file offset 0xa51958"
!ARAbstractSpecificEvent methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) eventTypeString.
    recoveredValue3 := (' - ') , (recoveredValue2).
    (recoveredValue1) nextPutAll: (recoveredValue3).
    ^self
! !


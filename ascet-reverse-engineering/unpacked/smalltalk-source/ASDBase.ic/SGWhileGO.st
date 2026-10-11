"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016bbc; bytecode file offset 0x92209c"
!SGWhileGO methodsFor: 'recovered'!
iconName
    ^'BDEWhile'
! !

"ASDBase.ic method 0x2001a6b4; bytecode file offset 0x92209c"
!SGWhileGO methodsFor: 'recovered'!
xmlType
    ^'While'
! !

"ASDBase.ic method 0x2001caa8; bytecode file offset 0x92209c"
!SGWhileGO methodsFor: 'recovered'!
visualCallBackImage
    ^'ControlsWhile'
! !

"ASDBase.ic method 0x2008c294; bytecode file offset 0x988b68"
!SGWhileGO methodsFor: 'recovered'!
visualCallBackString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getPositionString.
    recoveredValue1 := ('While ') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2018baf4; bytecode file offset 0xa883b8"
!SGWhileGO methodsFor: 'recovered'!
buildLogic: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) identifier.
    recoveredValue2 := methods.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) blockIdWhile: (recoveredValue1) methods: (recoveredValue2) hierarchy: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) methods.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (self) buildInterfaceLogic: (recoveredValue5) block: (recoveredValue6) methods: (recoveredValue7) for: (recoveredValue8).
    ^recoveredValue9
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ac90; bytecode file offset 0x92209c"
!ASDRteStatusGO methodsFor: 'recovered'!
visualCallBackImage
    ^'ControlsRteStatus'
! !

"ASDBase.ic method 0x20023e70; bytecode file offset 0x92209c"
!ASDRteStatusGO methodsFor: 'recovered'!
iconName
    ^'BDERteStatus'
! !

"ASDBase.ic method 0x20023f60; bytecode file offset 0x92209c"
!ASDRteStatusGO methodsFor: 'recovered'!
xmlType
    ^'RteStatusVar'
! !

"ASDBase.ic method 0x20072b48; bytecode file offset 0x96f6d4"
!ASDRteStatusGO methodsFor: 'recovered'!
typeIdForResultPin
    ^4
! !

"ASDBase.ic method 0x2008c208; bytecode file offset 0x988b68"
!ASDRteStatusGO methodsFor: 'recovered'!
visualCallBackString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getPositionString.
    recoveredValue1 := ('Rte Status Variable ') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cb66c; bytecode file offset 0x9c7f28"
!ASDRteStatusGO methodsFor: 'recovered'!
defaultSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PinDistance.
    recoveredValue1 := PinDistance.
    recoveredValue2 := (recoveredValue1) // (2).
    recoveredValue3 := (recoveredValue0) @ (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2018ba98; bytecode file offset 0xa88358"
!ASDRteStatusGO methodsFor: 'recovered'!
buildLogic: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) identifier.
    recoveredValue2 := methods.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) blockIdRteStatus: (recoveredValue1) methods: (recoveredValue2) hierarchy: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := methods.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (self) buildInterfaceLogic: (recoveredValue5) block: (recoveredValue6) methods: (recoveredValue7) for: (recoveredValue8).
    ^recoveredValue9
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001260; bytecode file offset 0x8ffcfc"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
updatePoints
    ^self
! !

"ASDBase.ic method 0x20001f68; bytecode file offset 0x8ffcfc"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
initMeasureGraphic
    ^self
! !

"ASDBase.ic method 0x20028014; bytecode file offset 0x934580"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
windowId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getController.
    recoveredValue1 := (recoveredValue0) windowId.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029c84; bytecode file offset 0x934580"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
getSignalManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getController.
    recoveredValue1 := (recoveredValue0) getAcquisitionObject.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004aa50; bytecode file offset 0x94730c"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
initialize
    isShown := true.
    ^self
! !

"ASDBase.ic method 0x2005d920; bytecode file offset 0x95a1e4"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
changeToHexView
    | recoveredValue0 |
    recoveredValue0 := logWAxis.
    (recoveredValue0) changeToImplView.
    ^self
! !

"ASDBase.ic method 0x2005d92c; bytecode file offset 0x95a1e4"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
changeToPhysView
    | recoveredValue0 |
    recoveredValue0 := logWAxis.
    (recoveredValue0) changeToPhysView.
    ^self
! !

"ASDBase.ic method 0x20060b7c; bytecode file offset 0x95d488"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
wUnit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSignalManager.
    recoveredValue1 := signalId.
    recoveredValue2 := (recoveredValue0) wUnitOfId: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060b8c; bytecode file offset 0x95d488"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
xUnit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSignalManager.
    recoveredValue1 := signalId.
    recoveredValue2 := (recoveredValue0) xUnitOfId: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060b9c; bytecode file offset 0x95d488"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
wFormula
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSignalManager.
    recoveredValue1 := signalId.
    recoveredValue2 := (recoveredValue0) wFormulaOfId: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060bac; bytecode file offset 0x95d488"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
data
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSignalManager.
    recoveredValue1 := signalId.
    recoveredValue2 := (recoveredValue0) dataOfId: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060bbc; bytecode file offset 0x95d488"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
wName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSignalManager.
    recoveredValue1 := signalId.
    recoveredValue2 := (recoveredValue0) wNameOfId: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060bcc; bytecode file offset 0x95d488"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
xName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSignalManager.
    recoveredValue1 := signalId.
    recoveredValue2 := (recoveredValue0) xNameOfId: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006b4a8; bytecode file offset 0x96873c"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
dataId
    | recoveredValue0 |
    recoveredValue0 := signalId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b9d8; bytecode file offset 0x96873c"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
signalId
    | recoveredValue0 |
    recoveredValue0 := signalId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c3fc; bytecode file offset 0x9692b0"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
displayChannelId
    | recoveredValue0 |
    recoveredValue0 := displayChannelId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d2c8; bytecode file offset 0x969c04"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
color
    | recoveredValue0 |
    recoveredValue0 := color.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d784; bytecode file offset 0x96a390"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
displayType
    | recoveredValue0 |
    recoveredValue0 := displayType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006de80; bytecode file offset 0x96a9dc"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
isShown
    | recoveredValue0 |
    recoveredValue0 := isShown.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078cdc; bytecode file offset 0x9757c8"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
isOnlineDLLDisplayChannel
    ^true
! !

"ASDBase.ic method 0x2007a6a4; bytecode file offset 0x97c330"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
isWorkingPointChannel
    ^false
! !

"ASDBase.ic method 0x2008b060; bytecode file offset 0x987934"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
getController
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := logXAxis.
    recoveredValue1 := (recoveredValue0) graphObject.
    recoveredValue2 := (recoveredValue1) manager.
    recoveredValue3 := (recoveredValue2) getController.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c2258; bytecode file offset 0x9bf474"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
assignSignalId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    signalId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2f44; bytecode file offset 0x9bfde0"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
displayChannelId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    displayChannelId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c35f0; bytecode file offset 0x9c058c"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
color: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    color := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c427c; bytecode file offset 0x9c0bf0"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
displayType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    displayType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4770; bytecode file offset 0x9c11bc"
!RBOnlineDLLDisplayChannel methodsFor: 'recovered'!
isShown: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isShown := recoveredValue0.
    ^self
! !


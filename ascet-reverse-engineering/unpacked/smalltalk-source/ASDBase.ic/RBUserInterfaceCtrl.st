"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002ebd4; bytecode file offset 0x934580"
!RBUserInterfaceCtrl methodsFor: 'recovered'!
masterUserInterface
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) userInterface.
    recoveredValue1 := (recoveredValue0) masterUserInterface.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039384; bytecode file offset 0x935c54"
!RBUserInterfaceCtrl methodsFor: 'recovered'!
disableSCMDo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065a2c; bytecode file offset 0x963428"
!RBUserInterfaceCtrl methodsFor: 'recovered'!
userInterface
    | recoveredValue0 |
    recoveredValue0 := userInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007b2fc; bytecode file offset 0x97c330"
!RBUserInterfaceCtrl methodsFor: 'recovered'!
isSCMActiveAndConfigured
    ^false
! !

"ASDBase.ic method 0x200a2af0; bytecode file offset 0x99f57c"
!RBUserInterfaceCtrl methodsFor: 'recovered'!
logWarning: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addWarningText: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200a2b90; bytecode file offset 0x99f57c"
!RBUserInterfaceCtrl methodsFor: 'recovered'!
logInformation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addInfoText: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200a2be0; bytecode file offset 0x99f57c"
!RBUserInterfaceCtrl methodsFor: 'recovered'!
logError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addErrorText: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200be1d4; bytecode file offset 0x9bb178"
!RBUserInterfaceCtrl methodsFor: 'recovered'!
userInterface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    userInterface := recoveredValue0.
    ^self
! !


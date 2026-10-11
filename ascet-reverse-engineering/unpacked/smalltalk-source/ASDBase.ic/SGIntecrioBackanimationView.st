"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000958; bytecode file offset 0x8ffcfc"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
updateBypassControl
    ^self
! !

"ASDBase.ic method 0x20003338; bytecode file offset 0x8ffcfc"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
manageProjectPages
    ^self
! !

"ASDBase.ic method 0x20004420; bytecode file offset 0x90206c"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
createMeasureTaskBox: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20017144; bytecode file offset 0x92209c"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
defaultIcon
    ^'GeneralSimulationINTECRIOBackanimation'
! !

"ASDBase.ic method 0x20019088; bytecode file offset 0x92209c"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
defaultIcon32
    ^'GeneralSimulationINTECRIOBackanimation32'
! !

"ASDBase.ic method 0x2001a57c; bytecode file offset 0x92209c"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
getTitleString
    ^'   ''INTECRIO Backanimation'''
! !

"ASDBase.ic method 0x2004ea74; bytecode file offset 0x94d048"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
backgroundProcessing
    (self) animateStates.
    ^self
! !

"ASDBase.ic method 0x20073c70; bytecode file offset 0x970b34"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
measureTaskBox
    ^nil
! !

"ASDBase.ic method 0x20075c7c; bytecode file offset 0x9757c8"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
isIntecrioBackanimation
    ^true
! !

"ASDBase.ic method 0x200773ec; bytecode file offset 0x9757c8"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
isBackanimationView
    ^true
! !

"ASDBase.ic method 0x2007951c; bytecode file offset 0x97c330"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
isStartSimulationEnable
    ^false
! !

"ASDBase.ic method 0x2007baf4; bytecode file offset 0x97c330"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
isStopSimulationEnable
    ^false
! !

"ASDBase.ic method 0x200a3108; bytecode file offset 0x99f9d4"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
createDataLoggerGroup: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := ('Rnz') == ('EHI_79652').
    ^self
! !

"ASDBase.ic method 0x200b1cd0; bytecode file offset 0x9ae66c"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
isDataloggingPossible
    | recoveredValue0 |
    recoveredValue0 := ('Rnz') == ('EHI_79652').
    ^false
! !

"ASDBase.ic method 0x200b5860; bytecode file offset 0x9b2120"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
initProjectPages
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) enableCTSolver.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200b71a0; bytecode file offset 0x9b3adc"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
windowLabelString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super windowLabelString.
    recoveredValue1 := (self) getTitleString.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c7a2c; bytecode file offset 0x9c42e0"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
setProgramID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    programID := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011b1c8; bytecode file offset 0xa17a8c"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
initTabbingGroup
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) outlineTree.
    (recoveredValue0) addTabGroup.
    recoveredValue1 := (self) calibrationViewBox.
    (recoveredValue1) addTabGroup.
    recoveredValue2 := (self) measureViewBox.
    (recoveredValue2) addTabGroup.
    ^self
! !

"ASDBase.ic method 0x2011c8ac; bytecode file offset 0xa19190"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
initializeAfterCreate
    super initializeAfterCreate.
    (self) iconSmall: ('GeneralSimulationINTECRIOBackanimation') large: ('GeneralSimulationINTECRIOBackanimation32').
    ^self
! !

"ASDBase.ic method 0x2020bb74; bytecode file offset 0xb0844c"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
updateMeasureViewBox
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureViewBox.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) measureCtrl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getViewList.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280d9f38Arg1 | 
    | block280d9f38Value0 block280d9f38Value1 |
    block280d9f38Value0 := block280d9f38Arg1.
    block280d9f38Value1 := (block280d9f38Value0) isOscilloscope.
    block280d9f38Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureViewBox.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) measureCtrl.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedView.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20232cb0; bytecode file offset 0xb2f5ac"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
createTools1: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := XmNetasSingleSelectionCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('toolbarSelection:clientData:callData:') clientData: (nil).
    recoveredValue2 := recoveredArg1.
    (self) createBackToBDEGroup: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) createExperimentGroup: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) createMeasureControlGroup: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) createExpandCollapseGroup: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) createNavigationGroup: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20232cd8; bytecode file offset 0xb2f5ac"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
createTools: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := XmNetasSingleSelectionCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('toolbarSelection:clientData:callData:') clientData: (nil).
    recoveredValue2 := recoveredArg1.
    (self) createBackToBDEGroup: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) createExperimentGroup: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) createMeasureControlGroup: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) createExpandCollapseGroup: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) createNavigationGroup: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20311534; bytecode file offset 0xc0de18"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
checkTargetCode
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := simController.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) simEnvironment.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getModel.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) access.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := programID.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := System.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) isRuntime.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSubModelPseudoAddress: (recoveredStack2) silent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := simController.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) simEnvironment.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) topSimNode.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) setSubModelPseudoAddress: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'The program identifier could not be found on target.
Please make sure that the project integrated and 
downloaded by INTECRIO is up-to-date !!'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205263a4; bytecode file offset 0xe22cf0"
!SGIntecrioBackanimationView methodsFor: 'recovered'!
createForContext: recoveredArg1 makeConfig: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMakeConfig.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) makeConfig.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) implementation.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) makeConfig.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) data.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) makeConfig.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) sgClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForImpl: (recoveredStack2) data: (recoveredStack3) sgClass: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCodeManager: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectIdentifier: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'ETAS_Library_Handling'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'EHI_81765'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) closeServerDll.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'Could not connect to INTECRIO experiment.
The program identifier of the current ASCET project is 0.
Please make sure that your code is up-to-date.'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) setProgramID: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := [:recoveredBlock89Arg1 | 
    | recoveredBlock89Stack0 recoveredBlock89Stack1 recoveredBlock89Stack2 recoveredBlock89Stack3 recoveredBlock89PC recoveredBlock89Step recoveredBlock89Done recoveredBlock89Result |
    recoveredBlock89Stack0 := self.
    recoveredBlock89PC := 96.
    recoveredBlock89Done := false.
    [recoveredBlock89Done not] whileTrue: [
        recoveredBlock89Step := recoveredBlock89PC.
        recoveredBlock89Step = 96 ifTrue: [
            recoveredBlock89Stack1 := SGSimEnvironmentMainCtrl.
            recoveredBlock89PC := 98.
        ].
        recoveredBlock89Step = 98 ifTrue: [
            recoveredBlock89Stack2 := self.
            recoveredBlock89PC := 99.
        ].
        recoveredBlock89Step = 99 ifTrue: [
            recoveredBlock89Stack1 := (recoveredBlock89Stack1) create: (recoveredBlock89Stack2).
            recoveredBlock89PC := 101.
        ].
        recoveredBlock89Step = 101 ifTrue: [
            (recoveredBlock89Stack0) simController: (recoveredBlock89Stack1).
            recoveredBlock89PC := 103.
        ].
        recoveredBlock89Step = 103 ifTrue: [
            recoveredBlock89Stack0 := recoveredArg1.
            recoveredBlock89PC := 106.
        ].
        recoveredBlock89Step = 106 ifTrue: [
            recoveredBlock89Stack0 := (recoveredBlock89Stack0) hasProject.
            recoveredBlock89PC := 108.
        ].
        recoveredBlock89Step = 108 ifTrue: [
            (recoveredBlock89Stack0) ifTrue: [recoveredBlock89PC := 112] ifFalse: [recoveredBlock89PC := 136].
        ].
        recoveredBlock89Step = 112 ifTrue: [
            recoveredBlock89Stack0 := self.
            recoveredBlock89PC := 113.
        ].
        recoveredBlock89Step = 113 ifTrue: [
            recoveredBlock89Stack0 := (recoveredBlock89Stack0) simController.
            recoveredBlock89PC := 115.
        ].
        recoveredBlock89Step = 115 ifTrue: [
            recoveredBlock89Stack1 := recoveredArg1.
            recoveredBlock89PC := 118.
        ].
        recoveredBlock89Step = 118 ifTrue: [
            recoveredBlock89Stack2 := recoveredArg2.
            recoveredBlock89PC := 121.
        ].
        recoveredBlock89Step = 121 ifTrue: [
            recoveredBlock89Stack0 := (recoveredBlock89Stack0) initOnlineSimEnvironment: (recoveredBlock89Stack1) makeConfig: (recoveredBlock89Stack2).
            recoveredBlock89PC := 123.
        ].
        recoveredBlock89Step = 123 ifTrue: [
            recoveredLocal2 := recoveredBlock89Stack0.
            recoveredBlock89PC := 126.
        ].
        recoveredBlock89Step = 126 ifTrue: [
            recoveredBlock89Stack0 := recoveredLocal2.
            recoveredBlock89PC := 129.
        ].
        recoveredBlock89Step = 129 ifTrue: [
            (recoveredBlock89Stack0) ifTrue: [recoveredBlock89PC := 132] ifFalse: [recoveredBlock89PC := 136].
        ].
        recoveredBlock89Step = 132 ifTrue: [
            recoveredBlock89Stack0 := self.
            recoveredBlock89PC := 133.
        ].
        recoveredBlock89Step = 133 ifTrue: [
            recoveredLocal1 := recoveredBlock89Stack0.
            recoveredBlock89PC := 136.
        ].
        recoveredBlock89Step = 136 ifTrue: [
            recoveredBlock89Stack0 := self.
            recoveredBlock89PC := 137.
        ].
        recoveredBlock89Step = 137 ifTrue: [
            recoveredBlock89Stack0 := (recoveredBlock89Stack0) checkTargetCode.
            recoveredBlock89PC := 139.
        ].
        recoveredBlock89Step = 139 ifTrue: [
            (recoveredBlock89Stack0) ifTrue: [recoveredBlock89PC := 142] ifFalse: [recoveredBlock89PC := 166].
        ].
        recoveredBlock89Step = 142 ifTrue: [
            recoveredBlock89Stack0 := self.
            recoveredBlock89PC := 143.
        ].
        recoveredBlock89Step = 143 ifTrue: [
            recoveredBlock89Stack0 := (recoveredBlock89Stack0) simController.
            recoveredBlock89PC := 145.
        ].
        recoveredBlock89Step = 145 ifTrue: [
            recoveredBlock89Stack0 := (recoveredBlock89Stack0) simEnvironment.
            recoveredBlock89PC := 147.
        ].
        recoveredBlock89Step = 147 ifTrue: [
            recoveredBlock89Stack0 := (recoveredBlock89Stack0) topSimNode.
            recoveredBlock89PC := 149.
        ].
        recoveredBlock89Step = 149 ifTrue: [
            recoveredBlock89Stack1 := self.
            recoveredBlock89PC := 150.
        ].
        recoveredBlock89Step = 150 ifTrue: [
            recoveredBlock89Stack1 := (recoveredBlock89Stack1) simController.
            recoveredBlock89PC := 152.
        ].
        recoveredBlock89Step = 152 ifTrue: [
            recoveredBlock89Stack1 := (recoveredBlock89Stack1) simEnvironment.
            recoveredBlock89PC := 154.
        ].
        recoveredBlock89Step = 154 ifTrue: [
            (recoveredBlock89Stack0) initSMStates: (recoveredBlock89Stack1).
            recoveredBlock89PC := 156.
        ].
        recoveredBlock89Step = 156 ifTrue: [
            recoveredBlock89Stack0 := self.
            recoveredBlock89PC := 157.
        ].
        recoveredBlock89Step = 157 ifTrue: [
            recoveredBlock89Stack0 := (recoveredBlock89Stack0) simController.
            recoveredBlock89PC := 159.
        ].
        recoveredBlock89Step = 159 ifTrue: [
            recoveredBlock89Stack0 := (recoveredBlock89Stack0) simEnvironment.
            recoveredBlock89PC := 161.
        ].
        recoveredBlock89Step = 161 ifTrue: [
            recoveredBlock89Stack0 := (recoveredBlock89Stack0) initCTSolvers.
            recoveredBlock89PC := 163.
        ].
        recoveredBlock89Step = 163 ifTrue: [
            recoveredBlock89PC := 176.
        ].
        recoveredBlock89Step = 166 ifTrue: [
            recoveredBlock89Stack0 := self.
            recoveredBlock89PC := 167.
        ].
        recoveredBlock89Step = 167 ifTrue: [
            recoveredBlock89Stack0 := (recoveredBlock89Stack0) simController.
            recoveredBlock89PC := 169.
        ].
        recoveredBlock89Step = 169 ifTrue: [
            (recoveredBlock89Stack0) stopSimulation.
            recoveredBlock89PC := 171.
        ].
        recoveredBlock89Step = 171 ifTrue: [
            recoveredBlock89Stack0 := nil.
            recoveredBlock89PC := 172.
        ].
        recoveredBlock89Step = 172 ifTrue: [
            recoveredBlock89Stack1 := recoveredBlock89Stack0.
            recoveredBlock89PC := 173.
        ].
        recoveredBlock89Step = 173 ifTrue: [
            recoveredLocal1 := recoveredBlock89Stack1.
            recoveredBlock89PC := 176.
        ].
        recoveredBlock89Step = 176 ifTrue: [
            recoveredBlock89Result := recoveredBlock89Stack0.
            recoveredBlock89Done := true.
        ].
    ].
    recoveredBlock89Result
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := 'Opening Experiment for: '.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := uiController.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack4 := SCEtas.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) execWithProgressDialog: (recoveredStack1) message: (recoveredStack2) showProgress: (recoveredStack3) title: (recoveredStack4).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


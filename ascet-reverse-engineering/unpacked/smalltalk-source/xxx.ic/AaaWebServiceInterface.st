"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx.ic method 0x200001a8; bytecode file offset 0x14ca4"
!AaaWebServiceInterface methodsFor: 'recovered'!
userInterface
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) apiManager.
    recoveredValue1 := (recoveredValue0) userInterface.
    ^recoveredValue1
! !

"xxx.ic method 0x200001c8; bytecode file offset 0x14ca4"
!AaaWebServiceInterface methodsFor: 'recovered'!
mainController
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) apiManager.
    recoveredValue1 := (recoveredValue0) mainController.
    ^recoveredValue1
! !

"xxx.ic method 0x200001f0; bytecode file offset 0x14d0c"
!AaaWebServiceInterface methodsFor: 'recovered'!
apiManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AaaManagement.
    recoveredValue1 := (recoveredValue0) instance.
    ^recoveredValue1
! !

"xxx.ic method 0x20000230; bytecode file offset 0x14d0c"
!AaaWebServiceInterface methodsFor: 'recovered'!
editorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AaaEditorHandler.
    recoveredValue1 := (recoveredValue0) instance.
    ^recoveredValue1
! !

"xxx.ic method 0x200002c4; bytecode file offset 0x14da8"
!AaaWebServiceInterface methodsFor: 'recovered'!
getLastErrorText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AaaResult.
    recoveredValue1 := (recoveredValue0) lastError.
    recoveredValue2 := (recoveredValue1) text.
    ^recoveredValue2
! !

"xxx.ic method 0x200002d8; bytecode file offset 0x14da8"
!AaaWebServiceInterface methodsFor: 'recovered'!
getLastErrorNumber
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AaaResult.
    recoveredValue1 := (recoveredValue0) lastError.
    recoveredValue2 := (recoveredValue1) code.
    ^recoveredValue2
! !

"xxx.ic method 0x20000354; bytecode file offset 0x14e20"
!AaaWebServiceInterface methodsFor: 'recovered'!
dbHandler
    | recoveredValue0 |
    recoveredValue0 := dbHandler.
    ^recoveredValue0
! !

"xxx.ic method 0x200003f8; bytecode file offset 0x14ec4"
!AaaWebServiceInterface methodsFor: 'recovered'!
isComponentWithSpecification: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SGItemWithSpec.
    recoveredValue2 := (recoveredValue0) isKindOf: (recoveredValue1).
    ^recoveredValue2
! !

"xxx.ic method 0x20000878; bytecode file offset 0x1534c"
!AaaWebServiceInterface methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := AaaDatabaseHandler.
    recoveredValue1 := (recoveredValue0) instance.
    dbHandler := recoveredValue1.
    ^self
! !

"xxx.ic method 0x200008a0; bytecode file offset 0x1537c"
!AaaWebServiceInterface methodsFor: 'recovered'!
syncWithUI
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CwAppContext.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := [].
    (recoveredValue1) syncExecInUI: (recoveredValue2).
    recoveredValue3 := AaaResult.
    recoveredValue4 := (recoveredValue3) createResultOkay.
    ^recoveredValue4
! !

"xxx.ic method 0x200008ec; bytecode file offset 0x153c8"
!AaaWebServiceInterface methodsFor: 'recovered'!
loopLazyForSeconds: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Delay.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asInteger.
    recoveredValue3 := (recoveredValue0) forSeconds: (recoveredValue2).
    (recoveredValue3) wait.
    recoveredValue4 := AaaResult.
    recoveredValue5 := (recoveredValue4) createResultOkay.
    ^recoveredValue5
! !

"xxx.ic method 0x2000115c; bytecode file offset 0x15c38"
!AaaWebServiceInterface methodsFor: 'recovered'!
getExistingDialogs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) childWindows.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block2800092cArg1 | 
    | block2800092cValue0 block2800092cValue1 block2800092cValue2 |
    block2800092cValue0 := block2800092cArg1.
    block2800092cValue1 := (block2800092cValue0) class.
    block2800092cValue2 := (block2800092cValue1) isDialogClass.
    block2800092cValue2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x200011b8; bytecode file offset 0x15c88"
!AaaWebServiceInterface methodsFor: 'recovered'!
checkCurrentTargetInProject: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetTemporary.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) compilerTool.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx.ic method 0x2000121c; bytecode file offset 0x15cf4"
!AaaWebServiceInterface methodsFor: 'recovered'!
closeMessageDialog
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) closeMessageDialog.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) createResultOkay.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOperationFailed.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x200017e4; bytecode file offset 0x162bc"
!AaaWebServiceInterface methodsFor: 'recovered'!
getMakeConfigFromContext: recoveredArg1 forElement: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeConfig.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) dependentVariable.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolvedMakeConfigForElement: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolvedMakeConfigForElementPath: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx.ic method 0x200021c8; bytecode file offset 0x16ca8"
!AaaWebServiceInterface methodsFor: 'recovered'!
openMessageDialog: recoveredArg1 titel: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMessageDialogOpen.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMessageBoxAlreadyOpen.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiManager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) openMessageDialog: (recoveredStack1) titel: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) createResultOkay.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOperationFailed.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20002950; bytecode file offset 0x17434"
!AaaWebServiceInterface methodsFor: 'recovered'!
getReconnectExperimentClassFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOnlineINTECRIO.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SGIntecrioBackanimationView.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOnlineINCA.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := SGIncaBackanimationView.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOfflineRP.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := SGOnlineSimulationView.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOnlineRP.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := SGOnlineSimulationView.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx.ic method 0x200039dc; bytecode file offset 0x184c8"
!AaaWebServiceInterface methodsFor: 'recovered'!
simulationViewForComponent: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultNetworkContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultMakeConfig.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeConfig.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperimentClassFor: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := #().
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFor: (recoveredStack1) spec: (recoveredStack2) makeConfig: (recoveredStack3) makeConfigStack: (recoveredStack4) context: (recoveredStack5).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20003ab0; bytecode file offset 0x18588"
!AaaWebServiceInterface methodsFor: 'recovered'!
loopBusyForSeconds: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) millisecondClockValue.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 1000.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := Time.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) millisecondClockValue.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) millisecondClockValue.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 1000.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := Time.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) millisecondClockValue.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) createResultOkay.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx.ic method 0x20005008; bytecode file offset 0x19af4"
!AaaWebServiceInterface methodsFor: 'recovered'!
reconnectSimulationViewForComponent: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultNetworkContext.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultMakeConfig.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeConfig.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) getReconnectExperimentClassFor: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := #().
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFor: (recoveredStack1) spec: (recoveredStack2) makeConfig: (recoveredStack3) makeConfigStack: (recoveredStack4) context: (recoveredStack5).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x2000531c; bytecode file offset 0x19e08"
!AaaWebServiceInterface methodsFor: 'recovered'!
getExperimentClassFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGOfflineSimulationView.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) experimentTarget.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOfflinePC.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOfflineRP.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) offlineSimulation.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := SGOfflineSimulationView.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOnlineRP.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOnlinePC.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) offlineSimulation.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := SGOnlineSimulationView.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := SGOfflineSimulationView.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx.ic method 0x20005394; bytecode file offset 0x19e90"
!AaaWebServiceInterface methodsFor: 'recovered'!
getMakeConfigStackFromContext: recoveredArg1 forElement: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeConfig.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) dependentVariable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolvedMakeConfigForElement: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'Call_80502'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'Call_83994'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := EsString.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolvedMakeConfigForElementPath: (recoveredStack2) makeConfigStack: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx.ic method 0x20005c00; bytecode file offset 0x1a6f0"
!AaaWebServiceInterface methodsFor: 'recovered'!
getListOfAvailableSystems
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ASDHwAccessETarget'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := AaaResult.
    recoveredBlock9Value1 := (recoveredBlock9Value0) createOperationNotAvailable.
    ^recoveredBlock9Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 |
    recoveredBlock26Value0 := recoveredLocal3.
    recoveredBlock26Value1 := (recoveredBlock26Value0) getConnectedSystems.
    recoveredBlock26Value2 := recoveredBlock26Value1.
    recoveredLocal2 := recoveredBlock26Value2.
    recoveredBlock26Value1
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock42Value0 recoveredBlock42Value1 |
    recoveredBlock42Value0 := recoveredLocal3.
    recoveredBlock42Value1 := (recoveredBlock42Value0) closeIpManager.
    recoveredBlock42Value1
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) createNoSystemAvailable.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx.ic method 0x20006a44; bytecode file offset 0x1b54c"
!AaaWebServiceInterface methodsFor: 'recovered'!
getDefaultContextForComponent: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbHandler.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getItemFromDatabase: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isComponentWithSpecification: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInvalidOperation.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefaultNetworkContext.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInvalidOperation.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock61Value0 recoveredBlock61Value1 recoveredBlock61Value2 recoveredBlock61Value3 recoveredBlock61Value4 |
    recoveredBlock61Value0 := (self) mainController.
    recoveredBlock61Value1 := recoveredLocal4.
    recoveredBlock61Value2 := (recoveredBlock61Value0) getOpenEditorFor: (recoveredBlock61Value1).
    recoveredBlock61Value3 := [
    | recoveredBlock61Block75Value0 |
    recoveredBlock61Block75Value0 := (self) userInterface.
    recoveredBlock61Block75Value0
].
    recoveredBlock61Value4 := (recoveredBlock61Value2) ifNil: (recoveredBlock61Value3).
    recoveredBlock61Value4
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) syncExecInUI: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := SGMonitorStreamDummy.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUIContext: (recoveredStack1) logStream: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20006b00; bytecode file offset 0x1b604"
!AaaWebServiceInterface methodsFor: 'recovered'!
checkHardwareAvailabilityForProject: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastUsedHwAccess.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) createHardwareNotDefined.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEs113x.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIndirectAccess.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessSystem.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) getListOfAvailableSystems.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectMatchingSystems: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := [:recoveredBlock76Arg1 | 
    | recoveredBlock76Value0 recoveredBlock76Value1 recoveredBlock76Value2 recoveredBlock76Value3 |
    recoveredBlock76Value0 := recoveredLocal1.
    recoveredBlock76Value1 := recoveredBlock76Arg1.
    recoveredBlock76Value2 := (recoveredBlock76Value1) instance.
    recoveredBlock76Value3 := (recoveredBlock76Value0) hasInstance: (recoveredBlock76Value2).
    recoveredBlock76Value3
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock91Value0 recoveredBlock91Value1 |
    recoveredBlock91Value0 := AaaResult.
    recoveredBlock91Value1 := (recoveredBlock91Value0) createHardwareNotFound.
    ^recoveredBlock91Value1
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) preBuildHwCheckStatus: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) createResultOkay.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x200073b4; bytecode file offset 0x1bec0"
!AaaWebServiceInterface methodsFor: 'recovered'!
performCodeManagerAction: recoveredArg1 forComponent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefaultContextForComponent: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) createItemNotLoadable.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkCurrentTargetInProject: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInvalidTarget.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiManager.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock54Local1 recoveredBlock54Local2 recoveredBlock54Stack0 recoveredBlock54Stack1 recoveredBlock54Stack2 recoveredBlock54PC recoveredBlock54Step recoveredBlock54Done recoveredBlock54Result |
    recoveredBlock54Stack0 := self.
    recoveredBlock54PC := 60.
    recoveredBlock54Done := false.
    [recoveredBlock54Done not] whileTrue: [
        recoveredBlock54Step := recoveredBlock54PC.
        recoveredBlock54Step = 60 ifTrue: [
            recoveredBlock54Stack0 := (recoveredBlock54Stack0) mainController.
            recoveredBlock54PC := 62.
        ].
        recoveredBlock54Step = 62 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal1.
            recoveredBlock54PC := 65.
        ].
        recoveredBlock54Step = 65 ifTrue: [
            recoveredBlock54Stack0 := (recoveredBlock54Stack0) createCodeManager: (recoveredBlock54Stack1).
            recoveredBlock54PC := 67.
        ].
        recoveredBlock54Step = 67 ifTrue: [
            recoveredBlock54Local2 := recoveredBlock54Stack0.
            recoveredBlock54PC := 70.
        ].
        recoveredBlock54Step = 70 ifTrue: [
            recoveredBlock54Stack0 := recoveredBlock54Local2.
            recoveredBlock54PC := 73.
        ].
        recoveredBlock54Step = 73 ifTrue: [
            recoveredBlock54Stack0 := (recoveredBlock54Stack0) showSystemMessage.
            recoveredBlock54PC := 75.
        ].
        recoveredBlock54Step = 75 ifTrue: [
            recoveredBlock54Local1 := recoveredBlock54Stack0.
            recoveredBlock54PC := 78.
        ].
        recoveredBlock54Step = 78 ifTrue: [
            recoveredBlock54Stack0 := recoveredBlock54Local2.
            recoveredBlock54PC := 81.
        ].
        recoveredBlock54Step = 81 ifTrue: [
            recoveredBlock54Stack1 := false.
            recoveredBlock54PC := 82.
        ].
        recoveredBlock54Step = 82 ifTrue: [
            (recoveredBlock54Stack0) showSystemMessage: (recoveredBlock54Stack1).
            recoveredBlock54PC := 84.
        ].
        recoveredBlock54Step = 84 ifTrue: [
            recoveredBlock54Stack0 := [
    | recoveredBlock54Block84Value0 recoveredBlock54Block84Value1 recoveredBlock54Block84Value2 recoveredBlock54Block84Value3 |
    recoveredBlock54Block84Value0 := recoveredArg1.
    recoveredBlock54Block84Value1 := recoveredBlock54Local2.
    recoveredBlock54Block84Value2 := recoveredLocal1.
    recoveredBlock54Block84Value3 := (recoveredBlock54Block84Value0) value: (recoveredBlock54Block84Value1) value: (recoveredBlock54Block84Value2).
    recoveredBlock54Block84Value3
].
            recoveredBlock54PC := 102.
        ].
        recoveredBlock54Step = 102 ifTrue: [
            recoveredBlock54Stack1 := [
    | recoveredBlock54Block102Value0 recoveredBlock54Block102Value1 recoveredBlock54Block102Value2 |
    recoveredBlock54Block102Value0 := recoveredBlock54Local2.
    recoveredBlock54Block102Value1 := recoveredBlock54Local1.
    recoveredBlock54Block102Value2 := (recoveredBlock54Block102Value0) showSystemMessage: (recoveredBlock54Block102Value1).
    recoveredBlock54Block102Value2
].
            recoveredBlock54PC := 117.
        ].
        recoveredBlock54Step = 117 ifTrue: [
            (recoveredBlock54Stack0) ensure: (recoveredBlock54Stack1).
            recoveredBlock54PC := 119.
        ].
        recoveredBlock54Step = 119 ifTrue: [
            recoveredBlock54Stack0 := recoveredBlock54Local2.
            recoveredBlock54PC := 122.
        ].
        recoveredBlock54Step = 122 ifTrue: [
            recoveredBlock54Stack0 := (recoveredBlock54Stack0) noErrors.
            recoveredBlock54PC := 124.
        ].
        recoveredBlock54Step = 124 ifTrue: [
            (recoveredBlock54Stack0) ifTrue: [recoveredBlock54PC := 128] ifFalse: [recoveredBlock54PC := 136].
        ].
        recoveredBlock54Step = 128 ifTrue: [
            recoveredBlock54Stack0 := AaaResult.
            recoveredBlock54PC := 130.
        ].
        recoveredBlock54Step = 130 ifTrue: [
            recoveredBlock54Stack0 := (recoveredBlock54Stack0) createResultOkay.
            recoveredBlock54PC := 132.
        ].
        recoveredBlock54Step = 132 ifTrue: [
            recoveredBlock54PC := 140.
        ].
        recoveredBlock54Step = 136 ifTrue: [
            recoveredBlock54Stack0 := AaaResult.
            recoveredBlock54PC := 138.
        ].
        recoveredBlock54Step = 138 ifTrue: [
            recoveredBlock54Stack0 := (recoveredBlock54Stack0) createOperationFailed.
            recoveredBlock54PC := 140.
        ].
        recoveredBlock54Step = 140 ifTrue: [
            recoveredBlock54Result := recoveredBlock54Stack0.
            recoveredBlock54Done := true.
        ].
    ].
    recoveredBlock54Result
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) doLongLastingAction: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20007760; bytecode file offset 0x1c26c"
!AaaWebServiceInterface methodsFor: 'recovered'!
performCodeManagerAction: recoveredArg1 forElement: recoveredArg2 usingProject: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefaultContextForComponent: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkCurrentTargetInProject: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInvalidTarget.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMakeConfigFromContext: (recoveredStack1) forElement: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiManager.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock63Local1 recoveredBlock63Local2 recoveredBlock63Stack0 recoveredBlock63Stack1 recoveredBlock63Stack2 recoveredBlock63PC recoveredBlock63Step recoveredBlock63Done recoveredBlock63Result |
    recoveredBlock63Stack0 := self.
    recoveredBlock63PC := 70.
    recoveredBlock63Done := false.
    [recoveredBlock63Done not] whileTrue: [
        recoveredBlock63Step := recoveredBlock63PC.
        recoveredBlock63Step = 70 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) mainController.
            recoveredBlock63PC := 72.
        ].
        recoveredBlock63Step = 72 ifTrue: [
            recoveredBlock63Stack1 := recoveredLocal2.
            recoveredBlock63PC := 75.
        ].
        recoveredBlock63Step = 75 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) createCodeManager: (recoveredBlock63Stack1).
            recoveredBlock63PC := 77.
        ].
        recoveredBlock63Step = 77 ifTrue: [
            recoveredBlock63Local2 := recoveredBlock63Stack0.
            recoveredBlock63PC := 80.
        ].
        recoveredBlock63Step = 80 ifTrue: [
            recoveredBlock63Stack0 := recoveredBlock63Local2.
            recoveredBlock63PC := 83.
        ].
        recoveredBlock63Step = 83 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) showSystemMessage.
            recoveredBlock63PC := 85.
        ].
        recoveredBlock63Step = 85 ifTrue: [
            recoveredBlock63Local1 := recoveredBlock63Stack0.
            recoveredBlock63PC := 88.
        ].
        recoveredBlock63Step = 88 ifTrue: [
            recoveredBlock63Stack0 := recoveredBlock63Local2.
            recoveredBlock63PC := 91.
        ].
        recoveredBlock63Step = 91 ifTrue: [
            recoveredBlock63Stack1 := false.
            recoveredBlock63PC := 92.
        ].
        recoveredBlock63Step = 92 ifTrue: [
            (recoveredBlock63Stack0) showSystemMessage: (recoveredBlock63Stack1).
            recoveredBlock63PC := 94.
        ].
        recoveredBlock63Step = 94 ifTrue: [
            recoveredBlock63Stack0 := [
    | recoveredBlock63Block94Value0 recoveredBlock63Block94Value1 recoveredBlock63Block94Value2 recoveredBlock63Block94Value3 recoveredBlock63Block94Value4 |
    recoveredBlock63Block94Value0 := recoveredArg1.
    recoveredBlock63Block94Value1 := recoveredBlock63Local2.
    recoveredBlock63Block94Value2 := recoveredLocal1.
    recoveredBlock63Block94Value3 := recoveredLocal2.
    recoveredBlock63Block94Value4 := (recoveredBlock63Block94Value0) value: (recoveredBlock63Block94Value1) value: (recoveredBlock63Block94Value2) value: (recoveredBlock63Block94Value3).
    recoveredBlock63Block94Value4
].
            recoveredBlock63PC := 116.
        ].
        recoveredBlock63Step = 116 ifTrue: [
            recoveredBlock63Stack1 := [
    | recoveredBlock63Block116Value0 recoveredBlock63Block116Value1 recoveredBlock63Block116Value2 |
    recoveredBlock63Block116Value0 := recoveredBlock63Local2.
    recoveredBlock63Block116Value1 := recoveredBlock63Local1.
    recoveredBlock63Block116Value2 := (recoveredBlock63Block116Value0) showSystemMessage: (recoveredBlock63Block116Value1).
    recoveredBlock63Block116Value2
].
            recoveredBlock63PC := 131.
        ].
        recoveredBlock63Step = 131 ifTrue: [
            (recoveredBlock63Stack0) ensure: (recoveredBlock63Stack1).
            recoveredBlock63PC := 133.
        ].
        recoveredBlock63Step = 133 ifTrue: [
            recoveredBlock63Stack0 := recoveredBlock63Local2.
            recoveredBlock63PC := 136.
        ].
        recoveredBlock63Step = 136 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) noErrors.
            recoveredBlock63PC := 138.
        ].
        recoveredBlock63Step = 138 ifTrue: [
            (recoveredBlock63Stack0) ifTrue: [recoveredBlock63PC := 142] ifFalse: [recoveredBlock63PC := 150].
        ].
        recoveredBlock63Step = 142 ifTrue: [
            recoveredBlock63Stack0 := AaaResult.
            recoveredBlock63PC := 144.
        ].
        recoveredBlock63Step = 144 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) createResultOkay.
            recoveredBlock63PC := 146.
        ].
        recoveredBlock63Step = 146 ifTrue: [
            recoveredBlock63PC := 154.
        ].
        recoveredBlock63Step = 150 ifTrue: [
            recoveredBlock63Stack0 := AaaResult.
            recoveredBlock63PC := 152.
        ].
        recoveredBlock63Step = 152 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) createOperationFailed.
            recoveredBlock63PC := 154.
        ].
        recoveredBlock63Step = 154 ifTrue: [
            recoveredBlock63Result := recoveredBlock63Stack0.
            recoveredBlock63Done := true.
        ].
    ].
    recoveredBlock63Result
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) doLongLastingAction: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20008cc8; bytecode file offset 0x1d834"
!AaaWebServiceInterface methodsFor: 'recovered'!
getAllComponentPathOfType: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) reset.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := SGDatabaseAccess.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) createNoDatabase.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := SGItem.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubclasses.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 |
    recoveredBlock29Value0 := recoveredBlock29Arg1.
    recoveredBlock29Value1 := (recoveredBlock29Value0) apiItemTypes.
    recoveredBlock29Value2 := recoveredArg1.
    recoveredBlock29Value3 := (recoveredBlock29Value1) includes: (recoveredBlock29Value2).
    recoveredBlock29Value3
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock45Value0 recoveredBlock45Value1 |
    recoveredBlock45Value0 := AaaResult.
    recoveredBlock45Value1 := (recoveredBlock45Value0) createInvalidArgument.
    ^recoveredBlock45Value1
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := SGItemSpecification.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubclasses.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 |
    recoveredBlock66Value0 := recoveredBlock66Arg1.
    recoveredBlock66Value1 := (recoveredBlock66Value0) apiDiagramTypes.
    recoveredBlock66Value2 := recoveredArg1.
    recoveredBlock66Value3 := (recoveredBlock66Value1) includes: (recoveredBlock66Value2).
    recoveredBlock66Value3
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) readExactClassKeys: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := [:recoveredBlock103Arg1 | 
    | recoveredBlock103Local1 recoveredBlock103Stack0 recoveredBlock103Stack1 recoveredBlock103Stack2 recoveredBlock103Stack3 recoveredBlock103Stack4 recoveredBlock103PC recoveredBlock103Step recoveredBlock103Done recoveredBlock103Result |
    recoveredBlock103Stack0 := self.
    recoveredBlock103PC := 110.
    recoveredBlock103Done := false.
    [recoveredBlock103Done not] whileTrue: [
        recoveredBlock103Step := recoveredBlock103PC.
        recoveredBlock103Step = 110 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Arg1.
            recoveredBlock103PC := 111.
        ].
        recoveredBlock103Step = 111 ifTrue: [
            recoveredBlock103Stack2 := [:block28001130Arg1 | 
    nil
].
            recoveredBlock103PC := 113.
        ].
        recoveredBlock103Step = 113 ifTrue: [
            recoveredBlock103PC := 118.
        ].
        recoveredBlock103Step = 118 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) getObjectIfUndefined: (recoveredBlock103Stack2).
            recoveredBlock103PC := 120.
        ].
        recoveredBlock103Step = 120 ifTrue: [
            recoveredBlock103Local1 := recoveredBlock103Stack1.
            recoveredBlock103PC := 121.
        ].
        recoveredBlock103Step = 121 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 122.
        ].
        recoveredBlock103Step = 122 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Local1.
            recoveredBlock103PC := 123.
        ].
        recoveredBlock103Step = 123 ifTrue: [
            (recoveredBlock103Stack2 == nil) ifTrue: [recoveredBlock103PC := 193] ifFalse: [recoveredBlock103PC := 126].
        ].
        recoveredBlock103Step = 126 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Local1.
            recoveredBlock103PC := 127.
        ].
        recoveredBlock103Step = 127 ifTrue: [
            recoveredBlock103Stack3 := [:block28001154Arg1 | 
    nil
].
            recoveredBlock103PC := 129.
        ].
        recoveredBlock103Step = 129 ifTrue: [
            recoveredBlock103PC := 134.
        ].
        recoveredBlock103Step = 134 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) parentIfUndefined: (recoveredBlock103Stack3).
            recoveredBlock103PC := 136.
        ].
        recoveredBlock103Step = 136 ifTrue: [
            (recoveredBlock103Stack2 == nil) ifTrue: [recoveredBlock103PC := 193] ifFalse: [recoveredBlock103PC := 140].
        ].
        recoveredBlock103Step = 140 ifTrue: [
            recoveredBlock103PC := 141.
        ].
        recoveredBlock103Step = 141 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 142.
        ].
        recoveredBlock103Step = 142 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Local1.
            recoveredBlock103PC := 143.
        ].
        recoveredBlock103Step = 143 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) isProject.
            recoveredBlock103PC := 145.
        ].
        recoveredBlock103Step = 145 ifTrue: [
            (recoveredBlock103Stack2) ifTrue: [recoveredBlock103PC := 148] ifFalse: [recoveredBlock103PC := 154].
        ].
        recoveredBlock103Step = 148 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Local1.
            recoveredBlock103PC := 149.
        ].
        recoveredBlock103Step = 149 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) isDefault.
            recoveredBlock103PC := 151.
        ].
        recoveredBlock103Step = 151 ifTrue: [
            (recoveredBlock103Stack2) ifTrue: [recoveredBlock103PC := 193] ifFalse: [recoveredBlock103PC := 154].
        ].
        recoveredBlock103Step = 154 ifTrue: [
            recoveredBlock103PC := 155.
        ].
        recoveredBlock103Step = 155 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 156.
        ].
        recoveredBlock103Step = 156 ifTrue: [
            recoveredBlock103Stack2 := recoveredLocal2.
            recoveredBlock103PC := 159.
        ].
        recoveredBlock103Step = 159 ifTrue: [
            (recoveredBlock103Stack2 == nil) ifTrue: [recoveredBlock103PC := 186] ifFalse: [recoveredBlock103PC := 162].
        ].
        recoveredBlock103Step = 162 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Local1.
            recoveredBlock103PC := 163.
        ].
        recoveredBlock103Step = 163 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) specifications.
            recoveredBlock103PC := 165.
        ].
        recoveredBlock103Step = 165 ifTrue: [
            recoveredBlock103Stack3 := [:recoveredBlock103Block165Arg1 | 
    | recoveredBlock103Block165Value0 recoveredBlock103Block165Value1 recoveredBlock103Block165Value2 recoveredBlock103Block165Value3 |
    recoveredBlock103Block165Value0 := recoveredBlock103Block165Arg1.
    recoveredBlock103Block165Value1 := (recoveredBlock103Block165Value0) class.
    recoveredBlock103Block165Value2 := recoveredLocal2.
    recoveredBlock103Block165Value3 := (recoveredBlock103Block165Value1) = (recoveredBlock103Block165Value2).
    recoveredBlock103Block165Value3
].
            recoveredBlock103PC := 180.
        ].
        recoveredBlock103Step = 180 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) anySatisfy: (recoveredBlock103Stack3).
            recoveredBlock103PC := 182.
        ].
        recoveredBlock103Step = 182 ifTrue: [
            (recoveredBlock103Stack2) ifTrue: [recoveredBlock103PC := 186] ifFalse: [recoveredBlock103PC := 193].
        ].
        recoveredBlock103Step = 186 ifTrue: [
            recoveredBlock103PC := 187.
        ].
        recoveredBlock103Step = 187 ifTrue: [
            recoveredBlock103Stack1 := recoveredLocal4.
            recoveredBlock103PC := 190.
        ].
        recoveredBlock103Step = 190 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Local1.
            recoveredBlock103PC := 191.
        ].
        recoveredBlock103Step = 191 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) add: (recoveredBlock103Stack2).
            recoveredBlock103PC := 193.
        ].
        recoveredBlock103Step = 193 ifTrue: [
            recoveredBlock103Result := recoveredBlock103Stack1.
            recoveredBlock103Done := true.
        ].
    ].
    recoveredBlock103Result
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := [:block28001178Arg1 :block28001178Arg2 | 
    | block28001178Value0 block28001178Value1 block28001178Value2 block28001178Value3 block28001178Value4 |
    block28001178Value0 := block28001178Arg1.
    block28001178Value1 := (block28001178Value0) componentDatabasePath.
    block28001178Value2 := block28001178Arg2.
    block28001178Value3 := (block28001178Value2) componentDatabasePath.
    block28001178Value4 := (block28001178Value1) < (block28001178Value3).
    block28001178Value4
].
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := '<pathList>'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := [:recoveredBlock236Arg1 | 
    | recoveredBlock236Value0 recoveredBlock236Value1 recoveredBlock236Value2 recoveredBlock236Value3 recoveredBlock236Value4 recoveredBlock236Value5 recoveredBlock236Value6 |
    recoveredBlock236Value0 := recoveredLocal1.
    recoveredBlock236Value1 := recoveredBlock236Value0.
    (recoveredBlock236Value1) cr.
    recoveredBlock236Value2 := recoveredBlock236Value0.
    (recoveredBlock236Value2) nextPutAll: ('<path>').
    recoveredBlock236Value3 := recoveredBlock236Value0.
    recoveredBlock236Value4 := recoveredBlock236Arg1.
    recoveredBlock236Value5 := (recoveredBlock236Value4) pathString.
    (recoveredBlock236Value3) nextPutAll: (recoveredBlock236Value5).
    recoveredBlock236Value6 := (recoveredBlock236Value0) nextPutAll: ('</path>').
    recoveredBlock236Value6
].
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := '</pathList>'.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


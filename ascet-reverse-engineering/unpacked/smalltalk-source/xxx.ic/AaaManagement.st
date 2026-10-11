"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx.ic method 0x20000100; bytecode file offset 0x14bc8"
!AaaManagement methodsFor: 'recovered'!
mainController
    | recoveredValue0 |
    recoveredValue0 := MainController.
    ^recoveredValue0
! !

"xxx.ic method 0x200001b8; bytecode file offset 0x14ca4"
!AaaManagement methodsFor: 'recovered'!
userInterface
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mainController.
    recoveredValue1 := (recoveredValue0) userInterface.
    ^recoveredValue1
! !

"xxx.ic method 0x20000200; bytecode file offset 0x14d0c"
!AaaManagement methodsFor: 'recovered'!
startTool
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMainView.
    recoveredValue1 := (recoveredValue0) run.
    ^recoveredValue1
! !

"xxx.ic method 0x20000294; bytecode file offset 0x14d60"
!AaaManagement methodsFor: 'recovered'!
isSelectHardwarePossibleFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) specification.
    recoveredValue2 := (recoveredValue1) isSelectHardwarePossible.
    ^recoveredValue2
! !

"xxx.ic method 0x200002f8; bytecode file offset 0x14dbc"
!AaaManagement methodsFor: 'recovered'!
resetLongLastingAction
    longLastingAction := false.
    ^false
! !

"xxx.ic method 0x20000324; bytecode file offset 0x14de8"
!AaaManagement methodsFor: 'recovered'!
setLongLastingAction
    longLastingAction := true.
    ^true
! !

"xxx.ic method 0x2000038c; bytecode file offset 0x14e50"
!AaaManagement methodsFor: 'recovered'!
logger
    | recoveredValue0 |
    recoveredValue0 := logger.
    ^recoveredValue0
! !

"xxx.ic method 0x200003d0; bytecode file offset 0x14e94"
!AaaManagement methodsFor: 'recovered'!
logger: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    logger := recoveredValue1.
    ^recoveredValue0
! !

"xxx.ic method 0x20000638; bytecode file offset 0x15100"
!AaaManagement methodsFor: 'recovered'!
doLongLastingAction: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) doLongLastingAction: (recoveredValue0) allowCancel: (false) showProgress: (false).
    ^recoveredValue1
! !

"xxx.ic method 0x20000688; bytecode file offset 0x15158"
!AaaManagement methodsFor: 'recovered'!
closeTool: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := (self) closeTool.
    ^recoveredValue1
! !

"xxx.ic method 0x200007d8; bytecode file offset 0x1529c"
!AaaManagement methodsFor: 'recovered'!
isLongLastingAction
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := longLastingAction.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := longLastingAction.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx.ic method 0x200008d0; bytecode file offset 0x15398"
!AaaManagement methodsFor: 'recovered'!
isMessageDialogOpen
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := messageDialog.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := messageDialog.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx.ic method 0x200010a8; bytecode file offset 0x15b78"
!AaaManagement methodsFor: 'recovered'!
deactivateLogging
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logger.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) logger.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) removeDependent: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) logger: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x200010d0; bytecode file offset 0x15ba4"
!AaaManagement methodsFor: 'recovered'!
isValidFilePathNameForSave: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidFilePathNameForSave.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) createResultOkay.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) createInvalidFileName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx.ic method 0x20001130; bytecode file offset 0x15c04"
!AaaManagement methodsFor: 'recovered'!
closeAllWindows
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := (self) mainController.
    recoveredBlock4Value1 := (self) mainController.
    recoveredBlock4Value2 := (recoveredBlock4Value1) userInterface.
    recoveredBlock4Value3 := (recoveredBlock4Value0) checkAllViewsExcept: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    (self) suppressDialogsFor: (recoveredValue0).
    ^self
! !

"xxx.ic method 0x200012f0; bytecode file offset 0x15dc4"
!AaaManagement methodsFor: 'recovered'!
isTransferPossibleFor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultProjectForItem.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isTransferPossible.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx.ic method 0x2000181c; bytecode file offset 0x162ec"
!AaaManagement methodsFor: 'recovered'!
closeMessageDialog
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := messageDialog.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := messageDialog.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := messageDialog.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            messageDialog := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMessageDialogOpen.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20001d0c; bytecode file offset 0x167ec"
!AaaManagement methodsFor: 'recovered'!
findRunningTool
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMainView.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allInstances.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block28000c20Arg1 | 
    | block28000c20Stack0 block28000c20Stack1 block28000c20Stack2 block28000c20Stack3 block28000c20PC block28000c20Step block28000c20Done block28000c20Result |
    block28000c20Stack0 := self.
    block28000c20PC := 4.
    block28000c20Done := false.
    [block28000c20Done not] whileTrue: [
        block28000c20Step := block28000c20PC.
        block28000c20Step = 4 ifTrue: [
            block28000c20Stack1 := false.
            block28000c20PC := 5.
        ].
        block28000c20Step = 5 ifTrue: [
            block28000c20Stack2 := block28000c20Arg1.
            block28000c20PC := 6.
        ].
        block28000c20Step = 6 ifTrue: [
            block28000c20Stack2 := (block28000c20Stack2) isDestroyed.
            block28000c20PC := 7.
        ].
        block28000c20Step = 7 ifTrue: [
            (block28000c20Stack2) ifTrue: [block28000c20PC := 15] ifFalse: [block28000c20PC := 10].
        ].
        block28000c20Step = 10 ifTrue: [
            block28000c20PC := 11.
        ].
        block28000c20Step = 11 ifTrue: [
            block28000c20Stack1 := block28000c20Arg1.
            block28000c20PC := 12.
        ].
        block28000c20Step = 12 ifTrue: [
            block28000c20Stack1 := (block28000c20Stack1) toolMutex.
            block28000c20PC := 14.
        ].
        block28000c20Step = 14 ifTrue: [
            block28000c20Stack1 := (block28000c20Stack1) notNil.
            block28000c20PC := 15.
        ].
        block28000c20Step = 15 ifTrue: [
            block28000c20Result := block28000c20Stack1.
            block28000c20Done := true.
        ].
    ].
    block28000c20Result
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx.ic method 0x20001e88; bytecode file offset 0x16970"
!AaaManagement methodsFor: 'recovered'!
currentDataLogger
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentExperiment.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28000c44Arg1 | 
    | block28000c44Stack0 block28000c44Stack1 block28000c44Stack2 block28000c44Stack3 block28000c44Stack4 block28000c44PC block28000c44Step block28000c44Done block28000c44Result |
    block28000c44Stack0 := self.
    block28000c44PC := 4.
    block28000c44Done := false.
    [block28000c44Done not] whileTrue: [
        block28000c44Step := block28000c44PC.
        block28000c44Step = 4 ifTrue: [
            block28000c44Stack1 := block28000c44Arg1.
            block28000c44PC := 5.
        ].
        block28000c44Step = 5 ifTrue: [
            block28000c44Stack1 := (block28000c44Stack1) childWindows.
            block28000c44PC := 6.
        ].
        block28000c44Step = 6 ifTrue: [
            block28000c44Stack2 := [:block28000c68Arg1 | 
    | block28000c68Value0 block28000c68Value1 block28000c68Value2 |
    block28000c68Value0 := block28000c68Arg1.
    block28000c68Value1 := SGSimDataloggerView.
    block28000c68Value2 := (block28000c68Value0) isKindOf: (block28000c68Value1).
    block28000c68Value2
].
            block28000c44PC := 8.
        ].
        block28000c44Step = 8 ifTrue: [
            block28000c44PC := 18.
        ].
        block28000c44Step = 18 ifTrue: [
            block28000c44Stack3 := [].
            block28000c44PC := 20.
        ].
        block28000c44Step = 20 ifTrue: [
            block28000c44Stack1 := (block28000c44Stack1) detect: (block28000c44Stack2) ifNone: (block28000c44Stack3).
            block28000c44PC := 22.
        ].
        block28000c44Step = 22 ifTrue: [
            block28000c44Result := block28000c44Stack1.
            block28000c44Done := true.
        ].
    ].
    block28000c44Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20002174; bytecode file offset 0x16c5c"
!AaaManagement methodsFor: 'recovered'!
openMessageDialog: recoveredArg1 titel: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := RBWorkingDialog.
    recoveredValue1 := (self) userInterface.
    recoveredValue2 := (recoveredValue1) shell.
    recoveredValue3 := (recoveredValue0) for: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) messageString: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue3) title: (recoveredValue6).
    messageDialog := recoveredValue7.
    recoveredValue8 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := messageDialog.
    recoveredBlock19Value1 := (recoveredBlock19Value0) open.
    recoveredBlock19Value1
].
    (self) enableDialogsFor: (recoveredValue8).
    recoveredValue9 := (self) isMessageDialogOpen.
    ^recoveredValue9
! !

"xxx.ic method 0x2000226c; bytecode file offset 0x16d58"
!AaaManagement methodsFor: 'recovered'!
activateLogging
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'MultiInstance'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Kk'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMultiInstanceMode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) logger.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := AaaLogger.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) logger: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) logger.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) addDependent: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x200023b4; bytecode file offset 0x16eb8"
!AaaManagement methodsFor: 'recovered'!
suppressDialogsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := GlobalInfoController.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) state.
    recoveredValue3 := (recoveredValue2) copy.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := GlobalInfoController.
    recoveredValue5 := (recoveredValue4) instance.
    (recoveredValue5) outputMediumUserWindow.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := GlobalInfoController.
    recoveredBlock20Value1 := (recoveredBlock20Value0) instance.
    recoveredBlock20Value2 := recoveredLocal1.
    recoveredBlock20Value3 := (recoveredBlock20Value1) state: (recoveredBlock20Value2).
    recoveredBlock20Value3
].
    recoveredValue8 := (recoveredValue6) ensure: (recoveredValue7).
    ^recoveredValue8
! !

"xxx.ic method 0x200023d8; bytecode file offset 0x16eb8"
!AaaManagement methodsFor: 'recovered'!
enableDialogsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := GlobalInfoController.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) state.
    recoveredValue3 := (recoveredValue2) copy.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := GlobalInfoController.
    recoveredValue5 := (recoveredValue4) instance.
    (recoveredValue5) outputMediumDialogs.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := GlobalInfoController.
    recoveredBlock20Value1 := (recoveredBlock20Value0) instance.
    recoveredBlock20Value2 := recoveredLocal1.
    recoveredBlock20Value3 := (recoveredBlock20Value1) state: (recoveredBlock20Value2).
    recoveredBlock20Value3
].
    recoveredValue8 := (recoveredValue6) ensure: (recoveredValue7).
    ^recoveredValue8
! !

"xxx.ic method 0x20002424; bytecode file offset 0x16f0c"
!AaaManagement methodsFor: 'recovered'!
currentExperiment
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGAccessElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSGServer.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) allChildWindows.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block28000cb0Arg1 | 
    | block28000cb0Stack0 block28000cb0Stack1 block28000cb0Stack2 block28000cb0Stack3 block28000cb0PC block28000cb0Step block28000cb0Done block28000cb0Result |
    block28000cb0Stack0 := self.
    block28000cb0PC := 4.
    block28000cb0Done := false.
    [block28000cb0Done not] whileTrue: [
        block28000cb0Step := block28000cb0PC.
        block28000cb0Step = 4 ifTrue: [
            block28000cb0Stack1 := false.
            block28000cb0PC := 5.
        ].
        block28000cb0Step = 5 ifTrue: [
            block28000cb0Stack2 := block28000cb0Arg1.
            block28000cb0PC := 6.
        ].
        block28000cb0Step = 6 ifTrue: [
            block28000cb0Stack2 := (block28000cb0Stack2) isSimulationView.
            block28000cb0PC := 8.
        ].
        block28000cb0Step = 8 ifTrue: [
            (block28000cb0Stack2) ifTrue: [block28000cb0PC := 12] ifFalse: [block28000cb0PC := 17].
        ].
        block28000cb0Step = 12 ifTrue: [
            block28000cb0PC := 13.
        ].
        block28000cb0Step = 13 ifTrue: [
            block28000cb0Stack1 := block28000cb0Arg1.
            block28000cb0PC := 14.
        ].
        block28000cb0Step = 14 ifTrue: [
            block28000cb0Stack1 := (block28000cb0Stack1) isDestroyed.
            block28000cb0PC := 16.
        ].
        block28000cb0Step = 16 ifTrue: [
            block28000cb0Stack1 := (block28000cb0Stack1) not.
            block28000cb0PC := 17.
        ].
        block28000cb0Step = 17 ifTrue: [
            block28000cb0Result := block28000cb0Stack1.
            block28000cb0Done := true.
        ].
    ].
    block28000cb0Result
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x200026cc; bytecode file offset 0x171ac"
!AaaManagement methodsFor: 'recovered'!
isValidFilePathNameForLoad: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) createInvalidFileName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDirectory: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) createInvalidFileName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) createInvalidFileName.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) createResultOkay.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx.ic method 0x20003834; bytecode file offset 0x1832c"
!AaaManagement methodsFor: 'recovered'!
closeTool
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) findRunningTool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28000cf8Arg1 | 
    | block28000cf8Value0 block28000cf8Value1 block28000cf8Value2 block28000cf8Value3 |
    block28000cf8Value0 := CwAppContext.
    block28000cf8Value1 := (block28000cf8Value0) default.
    block28000cf8Value2 := [
    | block28000cf8Block7Value0 block28000cf8Block7Value1 block28000cf8Block7Value2 block28000cf8Block7Value3 |
    block28000cf8Block7Value0 := block28000cf8Arg1.
    (block28000cf8Block7Value0) close: (nil).
    block28000cf8Block7Value1 := GlobalInfoController.
    block28000cf8Block7Value2 := (block28000cf8Block7Value1) instance.
    block28000cf8Block7Value3 := (block28000cf8Block7Value2) outputMediumDialogs.
    block28000cf8Block7Value3
].
    block28000cf8Value3 := (block28000cf8Value1) asyncExecInUI: (block28000cf8Value2).
    block28000cf8Value3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [
    | block28000d1cValue0 block28000d1cValue1 |
    block28000d1cValue0 := EtasMainDatabaseCtrl.
    block28000d1cValue1 := (block28000d1cValue0) closeAscet.
    block28000d1cValue1
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20005c84; bytecode file offset 0x1a774"
!AaaManagement methodsFor: 'recovered'!
isReconnectPossibleFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultProjectForItem.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isControllerTarget.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAutosarProject.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) experimentTarget.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 |
    recoveredBlock53Value0 := recoveredLocal1.
    recoveredBlock53Value1 := (recoveredBlock53Value0) specification.
    recoveredBlock53Value2 := ExperimentOfflinePC.
    recoveredBlock53Value3 := (recoveredBlock53Value1) experimentTarget: (recoveredBlock53Value2).
    recoveredBlock53Value3
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReconnectPossible.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx.ic method 0x200064a4; bytecode file offset 0x1afa4"
!AaaManagement methodsFor: 'recovered'!
isExperimentPossibleFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'MultiInstance'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Kk'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isServerMode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultProjectForItem.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerTarget.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAutosarProject.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentTarget.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock69Value0 recoveredBlock69Value1 recoveredBlock69Value2 recoveredBlock69Value3 |
    recoveredBlock69Value0 := recoveredLocal1.
    recoveredBlock69Value1 := (recoveredBlock69Value0) specification.
    recoveredBlock69Value2 := ExperimentOfflinePC.
    recoveredBlock69Value3 := (recoveredBlock69Value1) experimentTarget: (recoveredBlock69Value2).
    recoveredBlock69Value3
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExperimentPossible.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20006c90; bytecode file offset 0x1b7a4"
!AaaManagement methodsFor: 'recovered'!
doLongLastingAction: recoveredArg1 allowCancel: recoveredArg2 showProgress: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLongLastingAction.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLongLastingActionRunning.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) setLongLastingAction.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 |
    recoveredBlock15Value0 := CwAppContext.
    recoveredBlock15Value1 := (recoveredBlock15Value0) default.
    recoveredBlock15Value2 := [
    | recoveredBlock15Block26Value0 recoveredBlock15Block26Value1 recoveredBlock15Block26Value2 recoveredBlock15Block26Value3 |
    recoveredBlock15Block26Value0 := (self) userInterface.
    recoveredBlock15Block26Value1 := [:recoveredBlock15Block26Block34Arg1 | 
    | recoveredBlock15Block26Block34Stack0 recoveredBlock15Block26Block34Stack1 recoveredBlock15Block26Block34Stack2 recoveredBlock15Block26Block34Stack3 recoveredBlock15Block26Block34Stack4 recoveredBlock15Block26Block34Stack5 recoveredBlock15Block26Block34Stack6 recoveredBlock15Block26Block34Stack7 recoveredBlock15Block26Block34PC recoveredBlock15Block26Block34Step recoveredBlock15Block26Block34Done recoveredBlock15Block26Block34Result |
    recoveredBlock15Block26Block34Stack0 := nil.
    recoveredBlock15Block26Block34PC := 40.
    recoveredBlock15Block26Block34Done := false.
    [recoveredBlock15Block26Block34Done not] whileTrue: [
        recoveredBlock15Block26Block34Step := recoveredBlock15Block26Block34PC.
        recoveredBlock15Block26Block34Step = 40 ifTrue: [
            recoveredBlock15Block26Block34Stack1 := recoveredBlock15Block26Block34Arg1.
            recoveredBlock15Block26Block34PC := 41.
        ].
        recoveredBlock15Block26Block34Step = 41 ifTrue: [
            recoveredBlock15Block26Block34Stack1 := (recoveredBlock15Block26Block34Stack1) class.
            recoveredBlock15Block26Block34PC := 43.
        ].
        recoveredBlock15Block26Block34Step = 43 ifTrue: [
            recoveredBlock15Block26Block34Stack1 := (recoveredBlock15Block26Block34Stack1) inLongOperation.
            recoveredBlock15Block26Block34PC := 45.
        ].
        recoveredBlock15Block26Block34Step = 45 ifTrue: [
            recoveredBlock15Block26Block34Stack2 := true.
            recoveredBlock15Block26Block34PC := 46.
        ].
        recoveredBlock15Block26Block34Step = 46 ifTrue: [
            recoveredBlock15Block26Block34Stack1 := (recoveredBlock15Block26Block34Stack1) = (recoveredBlock15Block26Block34Stack2).
            recoveredBlock15Block26Block34PC := 47.
        ].
        recoveredBlock15Block26Block34Step = 47 ifTrue: [
            (recoveredBlock15Block26Block34Stack1) ifTrue: [recoveredBlock15Block26Block34PC := 50] ifFalse: [recoveredBlock15Block26Block34PC := 60].
        ].
        recoveredBlock15Block26Block34Step = 50 ifTrue: [
            recoveredBlock15Block26Block34Stack1 := recoveredBlock15Block26Block34Arg1.
            recoveredBlock15Block26Block34PC := 51.
        ].
        recoveredBlock15Block26Block34Step = 51 ifTrue: [
            recoveredBlock15Block26Block34Stack2 := recoveredArg1.
            recoveredBlock15Block26Block34PC := 54.
        ].
        recoveredBlock15Block26Block34Step = 54 ifTrue: [
            recoveredBlock15Block26Block34Stack1 := (recoveredBlock15Block26Block34Stack1) execShortOperation: (recoveredBlock15Block26Block34Stack2).
            recoveredBlock15Block26Block34PC := 56.
        ].
        recoveredBlock15Block26Block34Step = 56 ifTrue: [
            recoveredBlock15Block26Block34PC := 77.
        ].
        recoveredBlock15Block26Block34Step = 60 ifTrue: [
            recoveredBlock15Block26Block34Stack1 := recoveredBlock15Block26Block34Arg1.
            recoveredBlock15Block26Block34PC := 61.
        ].
        recoveredBlock15Block26Block34Step = 61 ifTrue: [
            recoveredBlock15Block26Block34Stack2 := recoveredArg1.
            recoveredBlock15Block26Block34PC := 64.
        ].
        recoveredBlock15Block26Block34Step = 64 ifTrue: [
            recoveredBlock15Block26Block34Stack3 := 'Long lasting operation is started by automation interface.'.
            recoveredBlock15Block26Block34PC := 66.
        ].
        recoveredBlock15Block26Block34Step = 66 ifTrue: [
            recoveredBlock15Block26Block34Stack4 := recoveredArg2.
            recoveredBlock15Block26Block34PC := 69.
        ].
        recoveredBlock15Block26Block34Step = 69 ifTrue: [
            recoveredBlock15Block26Block34Stack5 := recoveredArg3.
            recoveredBlock15Block26Block34PC := 72.
        ].
        recoveredBlock15Block26Block34Step = 72 ifTrue: [
            recoveredBlock15Block26Block34Stack6 := 'ASCET Automation Api'.
            recoveredBlock15Block26Block34PC := 74.
        ].
        recoveredBlock15Block26Block34Step = 74 ifTrue: [
            recoveredBlock15Block26Block34Stack1 := (recoveredBlock15Block26Block34Stack1) execLongOperation: (recoveredBlock15Block26Block34Stack2) message: (recoveredBlock15Block26Block34Stack3) allowCancel: (recoveredBlock15Block26Block34Stack4) showProgress: (recoveredBlock15Block26Block34Stack5) title: (recoveredBlock15Block26Block34Stack6).
            recoveredBlock15Block26Block34PC := 77.
        ].
        recoveredBlock15Block26Block34Step = 77 ifTrue: [
            recoveredBlock15Block26Block34Result := recoveredBlock15Block26Block34Stack1.
            recoveredBlock15Block26Block34Done := true.
        ].
    ].
    recoveredBlock15Block26Block34Result
].
    recoveredBlock15Block26Value2 := recoveredArg1.
    recoveredBlock15Block26Value3 := (recoveredBlock15Block26Value0) ifNotNil: (recoveredBlock15Block26Value1) ifNil: (recoveredBlock15Block26Value2).
    recoveredBlock15Block26Value3
].
    recoveredBlock15Value3 := (recoveredBlock15Value1) syncExecInUI: (recoveredBlock15Value2).
    recoveredBlock15Value4 := recoveredBlock15Value3.
    recoveredLocal1 := recoveredBlock15Value4.
    recoveredBlock15Value3
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock91Value0 |
    recoveredBlock91Value0 := (self) resetLongLastingAction.
    recoveredBlock91Value0
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ensure: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := [
    | block28000f38Value0 block28000f38Value1 |
    block28000f38Value0 := AaaResult.
    block28000f38Value1 := (block28000f38Value0) createOperationFailed.
    block28000f38Value1
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


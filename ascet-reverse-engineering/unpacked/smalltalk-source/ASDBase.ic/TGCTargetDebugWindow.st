"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000aafc; bytecode file offset 0x908be4"
!TGCTargetDebugWindow methodsFor: 'recovered'!
menuEditUpdateText
    | recoveredValue0 |
    recoveredValue0 := (self) updateView.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200440ac; bytecode file offset 0x9451f8"
!TGCTargetDebugWindow methodsFor: 'recovered'!
widgetOff
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('off').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200447bc; bytecode file offset 0x9451f8"
!TGCTargetDebugWindow methodsFor: 'recovered'!
widgetOn
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('on').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200478dc; bytecode file offset 0x9451f8"
!TGCTargetDebugWindow methodsFor: 'recovered'!
widgetText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('text').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a41c; bytecode file offset 0x957a6c"
!TGCTargetDebugWindow methodsFor: 'recovered'!
buttonUpdateViewActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateView.
    ^self
! !

"ASDBase.ic method 0x2005af74; bytecode file offset 0x957a6c"
!TGCTargetDebugWindow methodsFor: 'recovered'!
onValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) onValueSet.
    ^self
! !

"ASDBase.ic method 0x2005b16c; bytecode file offset 0x957a6c"
!TGCTargetDebugWindow methodsFor: 'recovered'!
offValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) offValueSet.
    ^self
! !

"ASDBase.ic method 0x2005f040; bytecode file offset 0x95c4f4"
!TGCTargetDebugWindow methodsFor: 'recovered'!
getTargetDebuggerConfig
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (recoveredValue0) title.
    recoveredValue2 := (self) returnWindowConfigurationWithName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008edf8; bytecode file offset 0x98b6b4"
!TGCTargetDebugWindow methodsFor: 'recovered'!
offValueSet
    | recoveredValue0 |
    recoveredValue0 := (self) uiController.
    (recoveredValue0) running: (false).
    ^self
! !

"ASDBase.ic method 0x200917a0; bytecode file offset 0x98e0cc"
!TGCTargetDebugWindow methodsFor: 'recovered'!
initialize
    super initialize.
    ^self
! !

"ASDBase.ic method 0x200d4738; bytecode file offset 0x9d100c"
!TGCTargetDebugWindow methodsFor: 'recovered'!
onValueSet
    | recoveredValue0 |
    recoveredValue0 := (self) uiController.
    (recoveredValue0) running: (true).
    (self) updateContinuously.
    ^self
! !

"ASDBase.ic method 0x2012483c; bytecode file offset 0xa21100"
!TGCTargetDebugWindow methodsFor: 'recovered'!
createMenuBar
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CwMenuBar.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) createFileMenu.
    (recoveredValue3) addMenu: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201377f4; bytecode file offset 0xa340d0"
!TGCTargetDebugWindow methodsFor: 'recovered'!
menuEditClearText
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetText.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) getLastPosition.
    (recoveredValue1) replace: (0) toPos: (recoveredValue3) value: ('').
    ^self
! !

"ASDBase.ic method 0x201393dc; bytecode file offset 0xa35ca0"
!TGCTargetDebugWindow methodsFor: 'recovered'!
buttonClearViewActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetText.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) getLastPosition.
    (recoveredValue1) replace: (0) toPos: (recoveredValue3) value: ('').
    ^self
! !

"ASDBase.ic method 0x20181d28; bytecode file offset 0xa7e5f4"
!TGCTargetDebugWindow methodsFor: 'recovered'!
preClosingActivities
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) uiController.
    (recoveredValue0) running: (false).
    recoveredValue1 := Delay.
    recoveredValue2 := (recoveredValue1) forMilliseconds: (250).
    (recoveredValue2) wait.
    recoveredValue3 := (self) uiController.
    (recoveredValue3) shutDown.
    ^self
! !

"ASDBase.ic method 0x2018c464; bytecode file offset 0xa88d30"
!TGCTargetDebugWindow methodsFor: 'recovered'!
initializeMenuBar
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) createMenuBar.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (self) widgetAt: ('aMainWindow1').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) createMenuBarFor: (recoveredValue4) owner: (self).
    recoveredValue6 := (recoveredValue5) manageChild.
    (recoveredValue2) menuBar: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201ecb80; bytecode file offset 0xae9454"
!TGCTargetDebugWindow methodsFor: 'recovered'!
saveIn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) setToEnd.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetText.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023d580; bytecode file offset 0xb39e58"
!TGCTargetDebugWindow methodsFor: 'recovered'!
saveQueryIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'Overwrite file '.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) okCancel.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) saveIn: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20248eb4; bytecode file offset 0xb45780"
!TGCTargetDebugWindow methodsFor: 'recovered'!
menuContinuousUpdate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOn.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetOn.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOff.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetOff.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOn.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) onValueSet.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) offValueSet.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20275dc0; bytecode file offset 0xb72688"
!TGCTargetDebugWindow methodsFor: 'recovered'!
updateOnOff
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) running.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOn.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) setState: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOff.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) setState: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOn.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) setState: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOff.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) setState: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ce31c; bytecode file offset 0xbcac10"
!TGCTargetDebugWindow methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (30) @ (30).
    (recoveredValue0) minSize: (recoveredValue1).
    (self) iconSmall: ('EditorTargetDebugger') large: ('EditorTargetDebugger32').
    (self) grayBackground.
    recoveredValue2 := (self) shell.
    (recoveredValue2) title: ('C-Target Debug-Window').
    (self) updateOnOff.
    recoveredValue3 := (self) widgetText.
    recoveredValue4 := (self) createFileMenu.
    (recoveredValue3) menu: (recoveredValue4) owner: (self).
    (self) initializeMenuBar.
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x20335a8c; bytecode file offset 0xc32378"
!TGCTargetDebugWindow methodsFor: 'recovered'!
updateContinuously
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack1 := Processor.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            (recoveredBlock4Stack1) yield.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            (recoveredBlock4Stack1) updateView.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := Delay.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := 200.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) forMilliseconds: (recoveredBlock4Stack2).
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            (recoveredBlock4Stack1) wait.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) uiController.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) running.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 38] ifFalse: [recoveredBlock4PC := 43].
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isDestroyed.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 43] ifFalse: [recoveredBlock4PC := 14].
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := (recoveredValue0) forkAt: (3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) processName.
    recoveredValue5 := ('ASD_DBG: ') , (recoveredValue4).
    (recoveredValue2) processName: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x203639ac; bytecode file offset 0xc602b8"
!TGCTargetDebugWindow methodsFor: 'recovered'!
menuSaveAs
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBFileSelectionPrompter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'Save As'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'debug.txt'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) fileName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := XmSAVE.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) accessType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := Dictionary.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := '*.txt'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack6 := ''.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack7 := Blank.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack6 := (recoveredStack6) , (recoveredStack7).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) filterDictionary: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultLogFilePath.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) searchPath: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := '*.*'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) searchMask: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) saveQueryIn: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20429ebc; bytecode file offset 0xd267d4"
!TGCTargetDebugWindow methodsFor: 'recovered'!
createFileMenu
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := MTFile.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuEditClearText'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := 'Clear Text'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 'menuEditUpdateText'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := 'Update Text'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 'menuContinuousUpdate'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := 'Continuous Update'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock54Value0 recoveredBlock54Value1 |
    recoveredBlock54Value0 := (self) widgetOn.
    recoveredBlock54Value1 := (recoveredBlock54Value0) set.
    recoveredBlock54Value1
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := 'menuSaveAs'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := MISaveAs.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := 'close'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := MPExit.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2049c560; bytecode file offset 0xd98e5c"
!TGCTargetDebugWindow methodsFor: 'recovered'!
updateView
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) running: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) readString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock32Local1 recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack2 := self.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isDestroyed.
            recoveredBlock32PC := 41.
        ].
        recoveredBlock32Step = 41 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 131] ifFalse: [recoveredBlock32PC := 44].
        ].
        recoveredBlock32Step = 44 ifTrue: [
            recoveredBlock32PC := 45.
        ].
        recoveredBlock32Step = 45 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 46.
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) widgetText.
            recoveredBlock32PC := 48.
        ].
        recoveredBlock32Step = 48 ifTrue: [
            recoveredLocal1 := recoveredBlock32Stack1.
            recoveredBlock32PC := 51.
        ].
        recoveredBlock32Step = 51 ifTrue: [
            recoveredBlock32Stack1 := 'Rnz'.
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32Stack2 := 'EHI_49562'.
            recoveredBlock32PC := 55.
        ].
        recoveredBlock32Step = 55 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) == (recoveredBlock32Stack2).
            recoveredBlock32PC := 56.
        ].
        recoveredBlock32Step = 56 ifTrue: [
            recoveredBlock32PC := 57.
        ].
        recoveredBlock32Step = 57 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal1.
            recoveredBlock32PC := 60.
        ].
        recoveredBlock32Step = 60 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) osWidget.
            recoveredBlock32PC := 62.
        ].
        recoveredBlock32Step = 62 ifTrue: [
            recoveredBlock32Stack2 := [:recoveredBlock32Block62Arg1 | 
    | recoveredBlock32Block62Value0 recoveredBlock32Block62Value1 recoveredBlock32Block62Value2 |
    recoveredBlock32Block62Value0 := recoveredBlock32Block62Arg1.
    recoveredBlock32Block62Value1 := (recoveredBlock32Block62Value0) vScroll.
    recoveredBlock32Block62Value2 := recoveredBlock32Block62Value1.
    recoveredBlock32Local1 := recoveredBlock32Block62Value2.
    recoveredBlock32Block62Value1
].
            recoveredBlock32PC := 76.
        ].
        recoveredBlock32Step = 76 ifTrue: [
            (recoveredBlock32Stack1) ifNotNil: (recoveredBlock32Stack2).
            recoveredBlock32PC := 78.
        ].
        recoveredBlock32Step = 78 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local1.
            recoveredBlock32PC := 81.
        ].
        recoveredBlock32Step = 81 ifTrue: [
            (recoveredBlock32Stack1 == nil) ifTrue: [recoveredBlock32PC := 114] ifFalse: [recoveredBlock32PC := 84].
        ].
        recoveredBlock32Step = 84 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local1.
            recoveredBlock32PC := 87.
        ].
        recoveredBlock32Step = 87 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) value.
            recoveredBlock32PC := 89.
        ].
        recoveredBlock32Step = 89 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local1.
            recoveredBlock32PC := 92.
        ].
        recoveredBlock32Step = 92 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) maximum.
            recoveredBlock32PC := 94.
        ].
        recoveredBlock32Step = 94 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) = (recoveredBlock32Stack2).
            recoveredBlock32PC := 95.
        ].
        recoveredBlock32Step = 95 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 98] ifFalse: [recoveredBlock32PC := 114].
        ].
        recoveredBlock32Step = 98 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal1.
            recoveredBlock32PC := 101.
        ].
        recoveredBlock32Step = 101 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal1.
            recoveredBlock32PC := 104.
        ].
        recoveredBlock32Step = 104 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) getLastPosition.
            recoveredBlock32PC := 106.
        ].
        recoveredBlock32Step = 106 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal2.
            recoveredBlock32PC := 109.
        ].
        recoveredBlock32Step = 109 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) insertAndShow: (recoveredBlock32Stack2) value: (recoveredBlock32Stack3).
            recoveredBlock32PC := 111.
        ].
        recoveredBlock32Step = 111 ifTrue: [
            recoveredBlock32PC := 127.
        ].
        recoveredBlock32Step = 114 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal1.
            recoveredBlock32PC := 117.
        ].
        recoveredBlock32Step = 117 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal1.
            recoveredBlock32PC := 120.
        ].
        recoveredBlock32Step = 120 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) getLastPosition.
            recoveredBlock32PC := 122.
        ].
        recoveredBlock32Step = 122 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal2.
            recoveredBlock32PC := 125.
        ].
        recoveredBlock32Step = 125 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) insert: (recoveredBlock32Stack2) value: (recoveredBlock32Stack3).
            recoveredBlock32PC := 127.
        ].
        recoveredBlock32Step = 127 ifTrue: [
            recoveredBlock32Stack2 := nil.
            recoveredBlock32PC := 128.
        ].
        recoveredBlock32Step = 128 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack2.
            recoveredBlock32PC := 131.
        ].
        recoveredBlock32Step = 131 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) syncExecInUI: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20665b80; bytecode file offset 0xf6258c"
!TGCTargetDebugWindow methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredBlock24Value0.
    (recoveredBlock24Value1) title: ('C-Debug').
    recoveredBlock24Value2 := recoveredBlock24Value0.
    recoveredBlock24Value3 := recoveredLocal12.
    recoveredBlock24Value4 := (329) * (recoveredBlock24Value3).
    recoveredBlock24Value5 := (recoveredBlock24Value4) rounded.
    (recoveredBlock24Value2) height: (recoveredBlock24Value5).
    recoveredBlock24Value6 := recoveredLocal13.
    recoveredBlock24Value7 := (459) * (recoveredBlock24Value6).
    recoveredBlock24Value8 := (recoveredBlock24Value7) rounded.
    recoveredBlock24Value9 := (recoveredBlock24Value0) width: (recoveredBlock24Value8).
    recoveredBlock24Value9
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'buttonUpdateView'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Value0 recoveredBlock127Value1 recoveredBlock127Value2 recoveredBlock127Value3 recoveredBlock127Value4 recoveredBlock127Value5 recoveredBlock127Value6 recoveredBlock127Value7 recoveredBlock127Value8 recoveredBlock127Value9 recoveredBlock127Value10 recoveredBlock127Value11 recoveredBlock127Value12 recoveredBlock127Value13 recoveredBlock127Value14 recoveredBlock127Value15 recoveredBlock127Value16 recoveredBlock127Value17 |
    recoveredBlock127Value0 := recoveredBlock127Arg1.
    recoveredBlock127Value1 := recoveredBlock127Value0.
    recoveredBlock127Value2 := recoveredLocal13.
    recoveredBlock127Value3 := (117) * (recoveredBlock127Value2).
    recoveredBlock127Value4 := (recoveredBlock127Value3) rounded.
    (recoveredBlock127Value1) x: (recoveredBlock127Value4).
    recoveredBlock127Value5 := recoveredBlock127Value0.
    (recoveredBlock127Value5) labelString: ('Update').
    recoveredBlock127Value6 := recoveredBlock127Value0.
    recoveredBlock127Value7 := recoveredLocal12.
    recoveredBlock127Value8 := (5) * (recoveredBlock127Value7).
    recoveredBlock127Value9 := (recoveredBlock127Value8) rounded.
    (recoveredBlock127Value6) y: (recoveredBlock127Value9).
    recoveredBlock127Value10 := recoveredBlock127Value0.
    recoveredBlock127Value11 := recoveredLocal12.
    recoveredBlock127Value12 := (20) * (recoveredBlock127Value11).
    recoveredBlock127Value13 := (recoveredBlock127Value12) rounded.
    (recoveredBlock127Value10) height: (recoveredBlock127Value13).
    recoveredBlock127Value14 := recoveredLocal13.
    recoveredBlock127Value15 := (90) * (recoveredBlock127Value14).
    recoveredBlock127Value16 := (recoveredBlock127Value15) rounded.
    recoveredBlock127Value17 := (recoveredBlock127Value0) width: (recoveredBlock127Value16).
    recoveredBlock127Value17
].
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := 'buttonUpdateView'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := 'text'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := [:block28125500Arg1 | 
    | block28125500Value0 block28125500Value1 block28125500Value2 |
    block28125500Value0 := block28125500Arg1.
    block28125500Value1 := XmMULTILINEEDIT.
    block28125500Value2 := (block28125500Value0) editMode: (block28125500Value1).
    block28125500Value2
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := 'aScrolledText'.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := 'text'.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := 'rowColumn'.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack3 := [:recoveredBlock260Arg1 | 
    | recoveredBlock260Value0 recoveredBlock260Value1 recoveredBlock260Value2 recoveredBlock260Value3 recoveredBlock260Value4 recoveredBlock260Value5 recoveredBlock260Value6 recoveredBlock260Value7 recoveredBlock260Value8 recoveredBlock260Value9 recoveredBlock260Value10 recoveredBlock260Value11 recoveredBlock260Value12 recoveredBlock260Value13 recoveredBlock260Value14 recoveredBlock260Value15 recoveredBlock260Value16 recoveredBlock260Value17 recoveredBlock260Value18 recoveredBlock260Value19 |
    recoveredBlock260Value0 := recoveredBlock260Arg1.
    recoveredBlock260Value1 := recoveredBlock260Value0.
    (recoveredBlock260Value1) radioBehavior: (true).
    recoveredBlock260Value2 := recoveredBlock260Value0.
    recoveredBlock260Value3 := recoveredLocal12.
    recoveredBlock260Value4 := (5) * (recoveredBlock260Value3).
    recoveredBlock260Value5 := (recoveredBlock260Value4) rounded.
    (recoveredBlock260Value2) y: (recoveredBlock260Value5).
    recoveredBlock260Value6 := recoveredBlock260Value0.
    recoveredBlock260Value7 := recoveredLocal13.
    recoveredBlock260Value8 := (354) * (recoveredBlock260Value7).
    recoveredBlock260Value9 := (recoveredBlock260Value8) rounded.
    (recoveredBlock260Value6) x: (recoveredBlock260Value9).
    recoveredBlock260Value10 := recoveredBlock260Value0.
    recoveredBlock260Value11 := XmHORIZONTAL.
    (recoveredBlock260Value10) orientation: (recoveredBlock260Value11).
    recoveredBlock260Value12 := recoveredBlock260Value0.
    recoveredBlock260Value13 := recoveredLocal12.
    recoveredBlock260Value14 := (20) * (recoveredBlock260Value13).
    recoveredBlock260Value15 := (recoveredBlock260Value14) rounded.
    (recoveredBlock260Value12) height: (recoveredBlock260Value15).
    recoveredBlock260Value16 := recoveredLocal13.
    recoveredBlock260Value17 := (100) * (recoveredBlock260Value16).
    recoveredBlock260Value18 := (recoveredBlock260Value17) rounded.
    recoveredBlock260Value19 := (recoveredBlock260Value0) width: (recoveredBlock260Value18).
    recoveredBlock260Value19
].
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRowColumn: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := 'rowColumn'.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack2 := 'on'.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack3 := [:block28125524Arg1 | 
    | block28125524Value0 block28125524Value1 block28125524Value2 |
    block28125524Value0 := block28125524Arg1.
    block28125524Value1 := block28125524Value0.
    (block28125524Value1) marginWidth: (0).
    block28125524Value2 := (block28125524Value0) marginHeight: (0).
    block28125524Value2
].
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack2 := 'on'.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack2 := 'off'.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack3 := [:recoveredBlock383Arg1 | 
    | recoveredBlock383Value0 recoveredBlock383Value1 recoveredBlock383Value2 recoveredBlock383Value3 recoveredBlock383Value4 recoveredBlock383Value5 recoveredBlock383Value6 |
    recoveredBlock383Value0 := recoveredBlock383Arg1.
    recoveredBlock383Value1 := recoveredBlock383Value0.
    (recoveredBlock383Value1) marginWidth: (0).
    recoveredBlock383Value2 := recoveredBlock383Value0.
    (recoveredBlock383Value2) marginHeight: (0).
    recoveredBlock383Value3 := recoveredLocal12.
    recoveredBlock383Value4 := (30) * (recoveredBlock383Value3).
    recoveredBlock383Value5 := (recoveredBlock383Value4) rounded.
    recoveredBlock383Value6 := (recoveredBlock383Value0) y: (recoveredBlock383Value5).
    recoveredBlock383Value6
].
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack2 := 'off'.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack2 := 'aLabel1'.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack3 := [:recoveredBlock434Arg1 | 
    | recoveredBlock434Value0 recoveredBlock434Value1 recoveredBlock434Value2 recoveredBlock434Value3 recoveredBlock434Value4 recoveredBlock434Value5 recoveredBlock434Value6 recoveredBlock434Value7 recoveredBlock434Value8 recoveredBlock434Value9 recoveredBlock434Value10 recoveredBlock434Value11 recoveredBlock434Value12 recoveredBlock434Value13 recoveredBlock434Value14 recoveredBlock434Value15 recoveredBlock434Value16 recoveredBlock434Value17 recoveredBlock434Value18 recoveredBlock434Value19 recoveredBlock434Value20 recoveredBlock434Value21 |
    recoveredBlock434Value0 := recoveredBlock434Arg1.
    recoveredBlock434Value1 := recoveredBlock434Value0.
    recoveredBlock434Value2 := recoveredLocal13.
    recoveredBlock434Value3 := (207) * (recoveredBlock434Value2).
    recoveredBlock434Value4 := (recoveredBlock434Value3) rounded.
    (recoveredBlock434Value1) x: (recoveredBlock434Value4).
    recoveredBlock434Value5 := recoveredBlock434Value0.
    recoveredBlock434Value6 := XmALIGNMENTEND.
    (recoveredBlock434Value5) alignment: (recoveredBlock434Value6).
    recoveredBlock434Value7 := recoveredBlock434Value0.
    (recoveredBlock434Value7) labelString: ('Continuous Update').
    recoveredBlock434Value8 := recoveredBlock434Value0.
    recoveredBlock434Value9 := recoveredLocal12.
    recoveredBlock434Value10 := (5) * (recoveredBlock434Value9).
    recoveredBlock434Value11 := (recoveredBlock434Value10) rounded.
    (recoveredBlock434Value8) y: (recoveredBlock434Value11).
    recoveredBlock434Value12 := recoveredBlock434Value0.
    recoveredBlock434Value13 := recoveredLocal12.
    recoveredBlock434Value14 := (20) * (recoveredBlock434Value13).
    recoveredBlock434Value15 := (recoveredBlock434Value14) rounded.
    (recoveredBlock434Value12) height: (recoveredBlock434Value15).
    recoveredBlock434Value16 := recoveredBlock434Value0.
    recoveredBlock434Value17 := recoveredLocal13.
    recoveredBlock434Value18 := (142) * (recoveredBlock434Value17).
    recoveredBlock434Value19 := (recoveredBlock434Value18) rounded.
    (recoveredBlock434Value16) width: (recoveredBlock434Value19).
    recoveredBlock434Value20 := recoveredBlock434Value0.
    recoveredBlock434Value21 := (self) defaultLabelBlue.
    (recoveredBlock434Value20) foregroundColor: (recoveredBlock434Value21).
    recoveredBlock434Value0
].
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack2 := 'aLabel1'.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := 'clear'.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack3 := [:recoveredBlock527Arg1 | 
    | recoveredBlock527Value0 recoveredBlock527Value1 recoveredBlock527Value2 recoveredBlock527Value3 recoveredBlock527Value4 recoveredBlock527Value5 recoveredBlock527Value6 recoveredBlock527Value7 recoveredBlock527Value8 recoveredBlock527Value9 recoveredBlock527Value10 recoveredBlock527Value11 recoveredBlock527Value12 recoveredBlock527Value13 recoveredBlock527Value14 recoveredBlock527Value15 recoveredBlock527Value16 recoveredBlock527Value17 |
    recoveredBlock527Value0 := recoveredBlock527Arg1.
    recoveredBlock527Value1 := recoveredBlock527Value0.
    recoveredBlock527Value2 := recoveredLocal13.
    recoveredBlock527Value3 := (5) * (recoveredBlock527Value2).
    recoveredBlock527Value4 := (recoveredBlock527Value3) rounded.
    (recoveredBlock527Value1) x: (recoveredBlock527Value4).
    recoveredBlock527Value5 := recoveredBlock527Value0.
    (recoveredBlock527Value5) labelString: ('Clear Text').
    recoveredBlock527Value6 := recoveredBlock527Value0.
    recoveredBlock527Value7 := recoveredLocal12.
    recoveredBlock527Value8 := (5) * (recoveredBlock527Value7).
    recoveredBlock527Value9 := (recoveredBlock527Value8) rounded.
    (recoveredBlock527Value6) y: (recoveredBlock527Value9).
    recoveredBlock527Value10 := recoveredBlock527Value0.
    recoveredBlock527Value11 := recoveredLocal12.
    recoveredBlock527Value12 := (20) * (recoveredBlock527Value11).
    recoveredBlock527Value13 := (recoveredBlock527Value12) rounded.
    (recoveredBlock527Value10) height: (recoveredBlock527Value13).
    recoveredBlock527Value14 := recoveredLocal13.
    recoveredBlock527Value15 := (90) * (recoveredBlock527Value14).
    recoveredBlock527Value16 := (recoveredBlock527Value15) rounded.
    recoveredBlock527Value17 := (recoveredBlock527Value0) width: (recoveredBlock527Value16).
    recoveredBlock527Value17
].
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack2 := 'clear'.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack2 := [:recoveredBlock608Arg1 | 
    | recoveredBlock608Value0 recoveredBlock608Value1 recoveredBlock608Value2 |
    recoveredBlock608Value0 := recoveredBlock608Arg1.
    recoveredBlock608Value1 := recoveredLocal9.
    recoveredBlock608Value2 := (recoveredBlock608Value0) workWindow: (recoveredBlock608Value1).
    recoveredBlock608Value2
].
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack2 := [:recoveredBlock632Arg1 | 
    | recoveredBlock632Value0 recoveredBlock632Value1 recoveredBlock632Value2 recoveredBlock632Value3 recoveredBlock632Value4 recoveredBlock632Value5 recoveredBlock632Value6 recoveredBlock632Value7 |
    recoveredBlock632Value0 := recoveredBlock632Arg1.
    recoveredBlock632Value1 := recoveredBlock632Value0.
    recoveredBlock632Value2 := XmATTACHFORM.
    (recoveredBlock632Value1) topAttachment: (recoveredBlock632Value2).
    recoveredBlock632Value3 := recoveredBlock632Value0.
    (recoveredBlock632Value3) topOffset: (5).
    recoveredBlock632Value4 := recoveredBlock632Value0.
    recoveredBlock632Value5 := XmATTACHWIDGET.
    (recoveredBlock632Value4) rightAttachment: (recoveredBlock632Value5).
    recoveredBlock632Value6 := recoveredLocal2.
    recoveredBlock632Value7 := (recoveredBlock632Value0) rightWidget: (recoveredBlock632Value6).
    recoveredBlock632Value7
].
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack2 := [:recoveredBlock680Arg1 | 
    | recoveredBlock680Value0 recoveredBlock680Value1 recoveredBlock680Value2 recoveredBlock680Value3 recoveredBlock680Value4 recoveredBlock680Value5 recoveredBlock680Value6 recoveredBlock680Value7 recoveredBlock680Value8 recoveredBlock680Value9 recoveredBlock680Value10 recoveredBlock680Value11 recoveredBlock680Value12 recoveredBlock680Value13 recoveredBlock680Value14 recoveredBlock680Value15 recoveredBlock680Value16 recoveredBlock680Value17 recoveredBlock680Value18 recoveredBlock680Value19 recoveredBlock680Value20 recoveredBlock680Value21 recoveredBlock680Value22 recoveredBlock680Value23 recoveredBlock680Value24 recoveredBlock680Value25 recoveredBlock680Value26 recoveredBlock680Value27 recoveredBlock680Value28 recoveredBlock680Value29 recoveredBlock680Value30 |
    recoveredBlock680Value0 := recoveredBlock680Arg1.
    recoveredBlock680Value1 := recoveredBlock680Value0.
    recoveredBlock680Value2 := XmATTACHFORM.
    (recoveredBlock680Value1) bottomAttachment: (recoveredBlock680Value2).
    recoveredBlock680Value3 := recoveredBlock680Value0.
    (recoveredBlock680Value3) bottomOffset: (5).
    recoveredBlock680Value4 := recoveredBlock680Value0.
    recoveredBlock680Value5 := XmATTACHWIDGET.
    (recoveredBlock680Value4) topAttachment: (recoveredBlock680Value5).
    recoveredBlock680Value6 := recoveredBlock680Value0.
    recoveredBlock680Value7 := recoveredLocal1.
    (recoveredBlock680Value6) topWidget: (recoveredBlock680Value7).
    recoveredBlock680Value8 := recoveredBlock680Value0.
    (recoveredBlock680Value8) topOffset: (10).
    recoveredBlock680Value9 := recoveredBlock680Value0.
    recoveredBlock680Value10 := XmATTACHFORM.
    (recoveredBlock680Value9) leftAttachment: (recoveredBlock680Value10).
    recoveredBlock680Value11 := recoveredBlock680Value0.
    (recoveredBlock680Value11) leftOffset: (5).
    recoveredBlock680Value12 := recoveredBlock680Value0.
    recoveredBlock680Value13 := XmATTACHFORM.
    (recoveredBlock680Value12) rightAttachment: (recoveredBlock680Value13).
    recoveredBlock680Value14 := recoveredBlock680Value0.
    (recoveredBlock680Value14) rightOffset: (5).
    recoveredBlock680Value15 := recoveredBlock680Value0.
    recoveredBlock680Value16 := recoveredLocal13.
    recoveredBlock680Value17 := (120) * (recoveredBlock680Value16).
    recoveredBlock680Value18 := (recoveredBlock680Value17) rounded.
    (recoveredBlock680Value15) x: (recoveredBlock680Value18).
    recoveredBlock680Value19 := recoveredBlock680Value0.
    recoveredBlock680Value20 := recoveredLocal12.
    recoveredBlock680Value21 := (160) * (recoveredBlock680Value20).
    recoveredBlock680Value22 := (recoveredBlock680Value21) rounded.
    (recoveredBlock680Value19) y: (recoveredBlock680Value22).
    recoveredBlock680Value23 := recoveredBlock680Value0.
    recoveredBlock680Value24 := recoveredLocal12.
    recoveredBlock680Value25 := (159) * (recoveredBlock680Value24).
    recoveredBlock680Value26 := (recoveredBlock680Value25) rounded.
    (recoveredBlock680Value23) height: (recoveredBlock680Value26).
    recoveredBlock680Value27 := recoveredLocal13.
    recoveredBlock680Value28 := (393) * (recoveredBlock680Value27).
    recoveredBlock680Value29 := (recoveredBlock680Value28) rounded.
    recoveredBlock680Value30 := (recoveredBlock680Value0) width: (recoveredBlock680Value29).
    recoveredBlock680Value30
].
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack2 := [:block28125548Arg1 | 
    | block28125548Value0 block28125548Value1 block28125548Value2 block28125548Value3 block28125548Value4 block28125548Value5 block28125548Value6 |
    block28125548Value0 := block28125548Arg1.
    block28125548Value1 := block28125548Value0.
    block28125548Value2 := XmATTACHFORM.
    (block28125548Value1) topAttachment: (block28125548Value2).
    block28125548Value3 := block28125548Value0.
    (block28125548Value3) topOffset: (5).
    block28125548Value4 := block28125548Value0.
    block28125548Value5 := XmATTACHSELF.
    (block28125548Value4) rightAttachment: (block28125548Value5).
    block28125548Value6 := (block28125548Value0) rightOffset: (5).
    block28125548Value6
].
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredPC := 848.
        ].
        recoveredStep = 848 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            recoveredStack2 := [:block2812556cArg1 | 
    | block2812556cValue0 block2812556cValue1 block2812556cValue2 block2812556cValue3 block2812556cValue4 block2812556cValue5 block2812556cValue6 block2812556cValue7 block2812556cValue8 |
    block2812556cValue0 := block2812556cArg1.
    block2812556cValue1 := block2812556cValue0.
    block2812556cValue2 := XmATTACHFORM.
    (block2812556cValue1) topAttachment: (block2812556cValue2).
    block2812556cValue3 := block2812556cValue0.
    (block2812556cValue3) topOffset: (5).
    block2812556cValue4 := block2812556cValue0.
    block2812556cValue5 := XmATTACHSELF.
    (block2812556cValue4) leftAttachment: (block2812556cValue5).
    block2812556cValue6 := block2812556cValue0.
    block2812556cValue7 := XmATTACHSELF.
    (block2812556cValue6) rightAttachment: (block2812556cValue7).
    block2812556cValue8 := (block2812556cValue0) rightOffset: (5).
    block2812556cValue8
].
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 912.
        ].
        recoveredStep = 912 ifTrue: [
            recoveredStack2 := [:block28125590Arg1 | 
    | block28125590Value0 block28125590Value1 block28125590Value2 block28125590Value3 block28125590Value4 block28125590Value5 block28125590Value6 |
    block28125590Value0 := block28125590Arg1.
    block28125590Value1 := block28125590Value0.
    block28125590Value2 := XmATTACHFORM.
    (block28125590Value1) topAttachment: (block28125590Value2).
    block28125590Value3 := block28125590Value0.
    (block28125590Value3) topOffset: (5).
    block28125590Value4 := block28125590Value0.
    block28125590Value5 := XmATTACHFORM.
    (block28125590Value4) leftAttachment: (block28125590Value5).
    block28125590Value6 := (block28125590Value0) leftOffset: (5).
    block28125590Value6
].
            recoveredPC := 916.
        ].
        recoveredStep = 916 ifTrue: [
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 957.
        ].
        recoveredStep = 957 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 965.
        ].
        recoveredStep = 965 ifTrue: [
            recoveredStack4 := 'buttonUpdateViewActivate:clientData:callData:'.
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 981.
        ].
        recoveredStep = 981 ifTrue: [
            recoveredStack4 := 'onValue:clientData:callData:'.
            recoveredPC := 984.
        ].
        recoveredStep = 984 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 985.
        ].
        recoveredStep = 985 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 989.
        ].
        recoveredStep = 989 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 992.
        ].
        recoveredStep = 992 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 996.
        ].
        recoveredStep = 996 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 997.
        ].
        recoveredStep = 997 ifTrue: [
            recoveredStack4 := 'offValue:clientData:callData:'.
            recoveredPC := 1000.
        ].
        recoveredStep = 1000 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1001.
        ].
        recoveredStep = 1001 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1005.
        ].
        recoveredStep = 1005 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1008.
        ].
        recoveredStep = 1008 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            recoveredStack4 := 'buttonClearViewActivate:clientData:callData:'.
            recoveredPC := 1016.
        ].
        recoveredStep = 1016 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1017.
        ].
        recoveredStep = 1017 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1021.
        ].
        recoveredStep = 1021 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 1027.
        ].
        recoveredStep = 1027 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 1030.
        ].
        recoveredStep = 1030 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1035.
        ].
        recoveredStep = 1035 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


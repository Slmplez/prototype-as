"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003100; bytecode file offset 0x8ffcfc"
!RB1OfNVariablesCalibrationWindow methodsFor: 'recovered'!
cancelEdit
    ^self
! !

"ASDBase.ic method 0x2004578c; bytecode file offset 0x9451f8"
!RB1OfNVariablesCalibrationWindow methodsFor: 'recovered'!
keyMapText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('keyMapText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004847c; bytecode file offset 0x9451f8"
!RB1OfNVariablesCalibrationWindow methodsFor: 'recovered'!
sdCalibrationExt
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('sdCalibrationExt').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004df1c; bytecode file offset 0x94d048"
!RB1OfNVariablesCalibrationWindow methodsFor: 'recovered'!
updateContents
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20052c5c; bytecode file offset 0x9505d0"
!RB1OfNVariablesCalibrationWindow methodsFor: 'recovered'!
checkDisplayPhys: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20077484; bytecode file offset 0x9757c8"
!RB1OfNVariablesCalibrationWindow methodsFor: 'recovered'!
showSDExtensions
    ^true
! !

"ASDBase.ic method 0x2012d478; bytecode file offset 0xa29d38"
!RB1OfNVariablesCalibrationWindow methodsFor: 'recovered'!
allowWPActions
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeWPDisplay.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationController.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) canAddRemoveWPDuringAcquisition.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201326ac; bytecode file offset 0xa2ef68"
!RB1OfNVariablesCalibrationWindow methodsFor: 'recovered'!
removeDataList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) removeData: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2018590c; bytecode file offset 0xa821d4"
!RB1OfNVariablesCalibrationWindow methodsFor: 'recovered'!
canEditGroupArgs: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := $G.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) applicationController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) canEditGroupArgs.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20191098; bytecode file offset 0xa8d964"
!RB1OfNVariablesCalibrationWindow methodsFor: 'recovered'!
canEditGroupArgs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := $G.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationController.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) canEditGroupArgs.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20260578; bytecode file offset 0xb5ce44"
!RB1OfNVariablesCalibrationWindow methodsFor: 'recovered'!
isClosingPossible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := variables.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isDisplayingWorkingPoint: (recoveredBlock6Stack3).
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 20] ifFalse: [recoveredBlock6PC := 34].
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) applicationController.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) canAddRemoveWPDuringAcquisition.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 34] ifFalse: [recoveredBlock6PC := 28].
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) class.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) confirmStopWorkingPointAcquisition.
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^true
! !

"ASDBase.ic method 0x202cdb40; bytecode file offset 0xbca42c"
!RB1OfNVariablesCalibrationWindow methodsFor: 'recovered'!
updateSDExtensionWidget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_36284'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) sdCalibrationExt.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeProtection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) writeProtection: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) sdCalibrationExt.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) dataElement: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:block280e5c38Arg1 | 
    | block280e5c38Value0 block280e5c38Value1 |
    block280e5c38Value0 := block280e5c38Arg1.
    block280e5c38Value1 := (block280e5c38Value0) mappedWhenManaged: (true).
    block280e5c38Value1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d7874; bytecode file offset 0xbd4150"
!RB1OfNVariablesCalibrationWindow methodsFor: 'recovered'!
menuToggleShowWorkingPoint
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) acquisitionRunning.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationController.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) canAddRemoveWPDuringAcquisition.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) halt.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := RBCalibrationWindow.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) messageStopAcquisitionBeforeChangingWorkingPoint.
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
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDisplayingWorkingPoint: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) removeWorkingPoint: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) addWorkingPoint: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20437e08; bytecode file offset 0xd34710"
!RB1OfNVariablesCalibrationWindow methodsFor: 'recovered'!
openGroupDistributionEditorFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asASDSimLabel.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCalibrationElementWithName: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) determineOpenedCalibrationWindowFor: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) bringToFront.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) selectData: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := RBCalibrationWindow.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) wName.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) infoType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirmEditGroupDistributionOf: (recoveredStack1) type: (recoveredStack2) groupDistribution: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultGroupDistributionViewClasses.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'Numeric editor for group axis coordinate'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptForNewWindowOfClasses: (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClass.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationController.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) createAndOpenCalibrationViewFromClass: (recoveredStack1) onVariableList: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationController.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) addVariableList: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) bringToFront.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDataIdList.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) selectData: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2057861c; bytecode file offset 0xe74f5c"
!RB1OfNVariablesCalibrationWindow methodsFor: 'recovered'!
menuMoveData
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeWPDisplay.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationController.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) canAddRemoveWPDuringAcquisition.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := RBCalibrationWindow.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirmStopWorkingPointAcquisition.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationController.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) stopAcquisition.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedDataIds.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39Stack4 recoveredBlock39Stack5 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 47.
        ].
        recoveredBlock39Step = 47 ifTrue: [
            recoveredBlock39Stack2 := self.
            recoveredBlock39PC := 48.
        ].
        recoveredBlock39Step = 48 ifTrue: [
            recoveredBlock39Stack3 := self.
            recoveredBlock39PC := 49.
        ].
        recoveredBlock39Step = 49 ifTrue: [
            recoveredBlock39Stack3 := (recoveredBlock39Stack3) defaultViewClasses.
            recoveredBlock39PC := 51.
        ].
        recoveredBlock39Step = 51 ifTrue: [
            recoveredBlock39Stack4 := SCMoveVariable.
            recoveredBlock39PC := 53.
        ].
        recoveredBlock39Step = 53 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) promptForNewWindowOfClasses: (recoveredBlock39Stack3) title: (recoveredBlock39Stack4).
            recoveredBlock39PC := 55.
        ].
        recoveredBlock39Step = 55 ifTrue: [
            recoveredBlock39Stack3 := recoveredBlock39Stack2.
            recoveredBlock39PC := 56.
        ].
        recoveredBlock39Step = 56 ifTrue: [
            recoveredLocal4 := recoveredBlock39Stack3.
            recoveredBlock39PC := 59.
        ].
        recoveredBlock39Step = 59 ifTrue: [
            (recoveredBlock39Stack2 ~~ nil) ifTrue: [recoveredBlock39PC := 65] ifFalse: [recoveredBlock39PC := 62].
        ].
        recoveredBlock39Step = 62 ifTrue: [
            recoveredBlock39PC := 63.
        ].
        recoveredBlock39Step = 63 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 64.
        ].
        recoveredBlock39Step = 64 ifTrue: [
            ^recoveredBlock39Stack1
        ].
        recoveredBlock39Step = 65 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Value0 recoveredBlock71Value1 |
    recoveredBlock71Value0 := recoveredBlock71Arg1.
    recoveredBlock71Value1 := (self) getConfigurationObjectOfData: (recoveredBlock71Value0).
    recoveredBlock71Value1
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := [:recoveredBlock97Arg1 | 
    | recoveredBlock97Value0 recoveredBlock97Value1 recoveredBlock97Value2 recoveredBlock97Value3 recoveredBlock97Value4 recoveredBlock97Value5 recoveredBlock97Value6 recoveredBlock97Value7 recoveredBlock97Value8 recoveredBlock97Value9 recoveredBlock97Value10 recoveredBlock97Value11 |
    recoveredBlock97Value0 := recoveredLocal1.
    recoveredBlock97Value1 := recoveredBlock97Arg1.
    recoveredBlock97Value2 := (recoveredBlock97Value1) wName.
    recoveredBlock97Value3 := Dictionary.
    recoveredBlock97Value4 := (recoveredBlock97Value3) new.
    recoveredBlock97Value5 := recoveredBlock97Value4.
    recoveredBlock97Value6 := recoveredBlock97Arg1.
    recoveredBlock97Value7 := (self) checkDisplayPhys: (recoveredBlock97Value6).
    (recoveredBlock97Value5) at: ('isInHardBounds') put: (recoveredBlock97Value7).
    recoveredBlock97Value8 := recoveredBlock97Value4.
    recoveredBlock97Value9 := recoveredBlock97Arg1.
    recoveredBlock97Value10 := (self) checkMonotony: (recoveredBlock97Value9).
    (recoveredBlock97Value8) at: ('isMonotonous') put: (recoveredBlock97Value10).
    recoveredBlock97Value11 := (recoveredBlock97Value0) at: (recoveredBlock97Value2) put: (recoveredBlock97Value4).
    recoveredBlock97Value11
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock138Stack0 recoveredBlock138Stack1 recoveredBlock138Stack2 recoveredBlock138Stack3 recoveredBlock138Stack4 recoveredBlock138Stack5 recoveredBlock138Stack6 recoveredBlock138PC recoveredBlock138Step recoveredBlock138Done recoveredBlock138Result |
    recoveredBlock138Stack0 := self.
    recoveredBlock138PC := 144.
    recoveredBlock138Done := false.
    [recoveredBlock138Done not] whileTrue: [
        recoveredBlock138Step := recoveredBlock138PC.
        recoveredBlock138Step = 144 ifTrue: [
            recoveredBlock138Stack1 := nil.
            recoveredBlock138PC := 145.
        ].
        recoveredBlock138Step = 145 ifTrue: [
            recoveredBlock138Stack2 := recoveredLocal4.
            recoveredBlock138PC := 148.
        ].
        recoveredBlock138Step = 148 ifTrue: [
            recoveredBlock138Stack3 := recoveredLocal3.
            recoveredBlock138PC := 151.
        ].
        recoveredBlock138Step = 151 ifTrue: [
            recoveredBlock138Stack4 := applicationController.
            recoveredBlock138PC := 153.
        ].
        recoveredBlock138Step = 153 ifTrue: [
            recoveredBlock138Stack5 := recoveredLocal2.
            recoveredBlock138PC := 156.
        ].
        recoveredBlock138Step = 156 ifTrue: [
            recoveredBlock138Stack2 := (recoveredBlock138Stack2) manage: (recoveredBlock138Stack3) for: (recoveredBlock138Stack4) with: (recoveredBlock138Stack5).
            recoveredBlock138PC := 159.
        ].
        recoveredBlock138Step = 159 ifTrue: [
            recoveredBlock138Stack3 := recoveredBlock138Stack2.
            recoveredBlock138PC := 160.
        ].
        recoveredBlock138Step = 160 ifTrue: [
            recoveredLocal4 := recoveredBlock138Stack3.
            recoveredBlock138PC := 163.
        ].
        recoveredBlock138Step = 163 ifTrue: [
            (recoveredBlock138Stack2 == nil) ifTrue: [recoveredBlock138PC := 239] ifFalse: [recoveredBlock138PC := 166].
        ].
        recoveredBlock138Step = 166 ifTrue: [
            recoveredBlock138PC := 167.
        ].
        recoveredBlock138Step = 167 ifTrue: [
            recoveredBlock138Stack1 := recoveredLocal4.
            recoveredBlock138PC := 170.
        ].
        recoveredBlock138Step = 170 ifTrue: [
            recoveredBlock138Stack2 := recoveredLocal1.
            recoveredBlock138PC := 173.
        ].
        recoveredBlock138Step = 173 ifTrue: [
            (recoveredBlock138Stack1) displayPhysDict: (recoveredBlock138Stack2).
            recoveredBlock138PC := 175.
        ].
        recoveredBlock138Step = 175 ifTrue: [
            recoveredBlock138Stack1 := recoveredLocal3.
            recoveredBlock138PC := 178.
        ].
        recoveredBlock138Step = 178 ifTrue: [
            recoveredBlock138Stack2 := [:recoveredBlock138Block178Arg1 | 
    | recoveredBlock138Block178Stack0 recoveredBlock138Block178Stack1 recoveredBlock138Block178Stack2 recoveredBlock138Block178Stack3 recoveredBlock138Block178Stack4 recoveredBlock138Block178PC recoveredBlock138Block178Step recoveredBlock138Block178Done recoveredBlock138Block178Result |
    recoveredBlock138Block178Stack0 := self.
    recoveredBlock138Block178PC := 184.
    recoveredBlock138Block178Done := false.
    [recoveredBlock138Block178Done not] whileTrue: [
        recoveredBlock138Block178Step := recoveredBlock138Block178PC.
        recoveredBlock138Block178Step = 184 ifTrue: [
            recoveredBlock138Block178Stack1 := recoveredBlock138Block178Arg1.
            recoveredBlock138Block178PC := 185.
        ].
        recoveredBlock138Block178Step = 185 ifTrue: [
            recoveredBlock138Block178Stack0 := (recoveredBlock138Block178Stack0) isDisplayingWorkingPoint: (recoveredBlock138Block178Stack1).
            recoveredBlock138Block178PC := 187.
        ].
        recoveredBlock138Block178Step = 187 ifTrue: [
            (recoveredBlock138Block178Stack0) ifTrue: [recoveredBlock138Block178PC := 190] ifFalse: [recoveredBlock138Block178PC := 196].
        ].
        recoveredBlock138Block178Step = 190 ifTrue: [
            recoveredBlock138Block178Stack0 := recoveredLocal4.
            recoveredBlock138Block178PC := 193.
        ].
        recoveredBlock138Block178Step = 193 ifTrue: [
            recoveredBlock138Block178Stack1 := recoveredBlock138Block178Arg1.
            recoveredBlock138Block178PC := 194.
        ].
        recoveredBlock138Block178Step = 194 ifTrue: [
            (recoveredBlock138Block178Stack0) addWorkingPoint: (recoveredBlock138Block178Stack1).
            recoveredBlock138Block178PC := 196.
        ].
        recoveredBlock138Block178Step = 196 ifTrue: [
            recoveredBlock138Block178Stack0 := nil.
            recoveredBlock138Block178PC := 197.
        ].
        recoveredBlock138Block178Step = 197 ifTrue: [
            recoveredBlock138Block178Stack1 := self.
            recoveredBlock138Block178PC := 198.
        ].
        recoveredBlock138Block178Step = 198 ifTrue: [
            recoveredBlock138Block178Stack1 := (recoveredBlock138Block178Stack1) refVariables.
            recoveredBlock138Block178PC := 200.
        ].
        recoveredBlock138Block178Step = 200 ifTrue: [
            recoveredBlock138Block178Stack2 := recoveredBlock138Block178Arg1.
            recoveredBlock138Block178PC := 201.
        ].
        recoveredBlock138Block178Step = 201 ifTrue: [
            recoveredBlock138Block178Stack2 := (recoveredBlock138Block178Stack2) wName.
            recoveredBlock138Block178PC := 203.
        ].
        recoveredBlock138Block178Step = 203 ifTrue: [
            recoveredBlock138Block178Stack1 := (recoveredBlock138Block178Stack1) includesKey: (recoveredBlock138Block178Stack2).
            recoveredBlock138Block178PC := 205.
        ].
        recoveredBlock138Block178Step = 205 ifTrue: [
            (recoveredBlock138Block178Stack1) ifTrue: [recoveredBlock138Block178PC := 208] ifFalse: [recoveredBlock138Block178PC := 225].
        ].
        recoveredBlock138Block178Step = 208 ifTrue: [
            recoveredBlock138Block178PC := 209.
        ].
        recoveredBlock138Block178Step = 209 ifTrue: [
            recoveredBlock138Block178Stack0 := recoveredLocal4.
            recoveredBlock138Block178PC := 212.
        ].
        recoveredBlock138Block178Step = 212 ifTrue: [
            recoveredBlock138Block178Stack1 := recoveredBlock138Block178Arg1.
            recoveredBlock138Block178PC := 213.
        ].
        recoveredBlock138Block178Step = 213 ifTrue: [
            recoveredBlock138Block178Stack1 := (recoveredBlock138Block178Stack1) wName.
            recoveredBlock138Block178PC := 215.
        ].
        recoveredBlock138Block178Step = 215 ifTrue: [
            recoveredBlock138Block178Stack2 := self.
            recoveredBlock138Block178PC := 216.
        ].
        recoveredBlock138Block178Step = 216 ifTrue: [
            recoveredBlock138Block178Stack2 := (recoveredBlock138Block178Stack2) refVariables.
            recoveredBlock138Block178PC := 218.
        ].
        recoveredBlock138Block178Step = 218 ifTrue: [
            recoveredBlock138Block178Stack3 := recoveredBlock138Block178Arg1.
            recoveredBlock138Block178PC := 219.
        ].
        recoveredBlock138Block178Step = 219 ifTrue: [
            recoveredBlock138Block178Stack3 := (recoveredBlock138Block178Stack3) wName.
            recoveredBlock138Block178PC := 221.
        ].
        recoveredBlock138Block178Step = 221 ifTrue: [
            recoveredBlock138Block178Stack2 := (recoveredBlock138Block178Stack2) at: (recoveredBlock138Block178Stack3).
            recoveredBlock138Block178PC := 223.
        ].
        recoveredBlock138Block178Step = 223 ifTrue: [
            recoveredBlock138Block178Stack0 := (recoveredBlock138Block178Stack0) refVariableAt: (recoveredBlock138Block178Stack1) put: (recoveredBlock138Block178Stack2).
            recoveredBlock138Block178PC := 225.
        ].
        recoveredBlock138Block178Step = 225 ifTrue: [
            recoveredBlock138Block178Result := recoveredBlock138Block178Stack0.
            recoveredBlock138Block178Done := true.
        ].
    ].
    recoveredBlock138Block178Result
].
            recoveredBlock138PC := 226.
        ].
        recoveredBlock138Step = 226 ifTrue: [
            (recoveredBlock138Stack1) do: (recoveredBlock138Stack2).
            recoveredBlock138PC := 228.
        ].
        recoveredBlock138Step = 228 ifTrue: [
            recoveredBlock138Stack1 := self.
            recoveredBlock138PC := 229.
        ].
        recoveredBlock138Step = 229 ifTrue: [
            recoveredBlock138Stack2 := recoveredLocal3.
            recoveredBlock138PC := 232.
        ].
        recoveredBlock138Step = 232 ifTrue: [
            (recoveredBlock138Stack1) removeDataList: (recoveredBlock138Stack2).
            recoveredBlock138PC := 234.
        ].
        recoveredBlock138Step = 234 ifTrue: [
            recoveredBlock138Stack1 := recoveredLocal4.
            recoveredBlock138PC := 237.
        ].
        recoveredBlock138Step = 237 ifTrue: [
            recoveredBlock138Stack1 := (recoveredBlock138Stack1) bringToFront.
            recoveredBlock138PC := 239.
        ].
        recoveredBlock138Step = 239 ifTrue: [
            recoveredBlock138Result := recoveredBlock138Stack1.
            recoveredBlock138Done := true.
        ].
    ].
    recoveredBlock138Result
].
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := SCMoveVariable.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := Dots.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2) priority: (recoveredStack3).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


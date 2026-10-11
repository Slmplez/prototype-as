"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x20000008; bytecode file offset 0xf3ec"
!AbtWizardAbstractPage methodsFor: 'recovered'!
buildWidgets
    ^self
! !

"abtdau.ic method 0x20000018; bytecode file offset 0xf3ec"
!AbtWizardAbstractPage methodsFor: 'recovered'!
initializePage
    ^self
! !

"abtdau.ic method 0x2000009c; bytecode file offset 0xf43c"
!AbtWizardAbstractPage methodsFor: 'recovered'!
helpTopic
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"abtdau.ic method 0x200000a8; bytecode file offset 0xf43c"
!AbtWizardAbstractPage methodsFor: 'recovered'!
helpFile
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"abtdau.ic method 0x200001c0; bytecode file offset 0xf53c"
!AbtWizardAbstractPage methodsFor: 'recovered'!
logoId
    ^'logo'
! !

"abtdau.ic method 0x200001f0; bytecode file offset 0xf5d4"
!AbtWizardAbstractPage methodsFor: 'recovered'!
backButton
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := (recoveredValue0) backButton.
    ^recoveredValue1
! !

"abtdau.ic method 0x20000200; bytecode file offset 0xf5d4"
!AbtWizardAbstractPage methodsFor: 'recovered'!
helpButton
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := (recoveredValue0) helpButton.
    ^recoveredValue1
! !

"abtdau.ic method 0x20000230; bytecode file offset 0xf5d4"
!AbtWizardAbstractPage methodsFor: 'recovered'!
cancelButton
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := (recoveredValue0) cancelButton.
    ^recoveredValue1
! !

"abtdau.ic method 0x20000240; bytecode file offset 0xf5d4"
!AbtWizardAbstractPage methodsFor: 'recovered'!
getDefaultFontList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := (recoveredValue0) getDefaultFontList.
    ^recoveredValue1
! !

"abtdau.ic method 0x20000250; bytecode file offset 0xf5d4"
!AbtWizardAbstractPage methodsFor: 'recovered'!
nextButton
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := (recoveredValue0) nextButton.
    ^recoveredValue1
! !

"abtdau.ic method 0x200004e8; bytecode file offset 0xf87c"
!AbtWizardAbstractPage methodsFor: 'recovered'!
getImage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getImage: (recoveredValue1).
    ^recoveredValue2
! !

"abtdau.ic method 0x20000520; bytecode file offset 0xf8a8"
!AbtWizardAbstractPage methodsFor: 'recovered'!
checkRequirements: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) checkRequirementsForNextButtonEnablement.
    ^self
! !

"abtdau.ic method 0x2000063c; bytecode file offset 0xf9b4"
!AbtWizardAbstractPage methodsFor: 'recovered'!
pageForm
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allWidgets.
    recoveredValue1 := (recoveredValue0) at: ('pageForm').
    ^recoveredValue1
! !

"abtdau.ic method 0x20000764; bytecode file offset 0xfae0"
!AbtWizardAbstractPage methodsFor: 'recovered'!
controller
    | recoveredValue0 |
    recoveredValue0 := controller.
    ^recoveredValue0
! !

"abtdau.ic method 0x200007a0; bytecode file offset 0xfb0c"
!AbtWizardAbstractPage methodsFor: 'recovered'!
allWidgets
    | recoveredValue0 |
    recoveredValue0 := allWidgets.
    ^recoveredValue0
! !

"abtdau.ic method 0x200007c4; bytecode file offset 0xfb38"
!AbtWizardAbstractPage methodsFor: 'recovered'!
logo
    | recoveredValue0 |
    recoveredValue0 := logo.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000984; bytecode file offset 0xfd00"
!AbtWizardAbstractPage methodsFor: 'recovered'!
tabOrderIds
    ^nil
! !

"abtdau.ic method 0x200009a8; bytecode file offset 0xfd2c"
!AbtWizardAbstractPage methodsFor: 'recovered'!
allRequirementsSatisfied
    ^true
! !

"abtdau.ic method 0x20000b44; bytecode file offset 0xfeb8"
!AbtWizardAbstractPage methodsFor: 'recovered'!
disableNext
    | recoveredValue0 |
    recoveredValue0 := (self) controller.
    (recoveredValue0) nextEnabled: (false).
    ^self
! !

"abtdau.ic method 0x20000b60; bytecode file offset 0xfed4"
!AbtWizardAbstractPage methodsFor: 'recovered'!
enableNext
    | recoveredValue0 |
    recoveredValue0 := (self) controller.
    (recoveredValue0) nextEnabled: (true).
    ^self
! !

"abtdau.ic method 0x20000c7c; bytecode file offset 0xfff0"
!AbtWizardAbstractPage methodsFor: 'recovered'!
draw
    (self) manageChildren.
    (self) checkRequirementsForNextButtonEnablement.
    ^self
! !

"abtdau.ic method 0x20000cf0; bytecode file offset 0x10068"
!AbtWizardAbstractPage methodsFor: 'recovered'!
resetWidgetDictionary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SystemExceptions.
    recoveredValue1 := (recoveredValue0) new.
    (self) allWidgets: (recoveredValue1).
    ^self
! !

"abtdau.ic method 0x20000dcc; bytecode file offset 0x10144"
!AbtWizardAbstractPage methodsFor: 'recovered'!
widgetForId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) allWidgets.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtdau.ic method 0x20000dec; bytecode file offset 0x10164"
!AbtWizardAbstractPage methodsFor: 'recovered'!
title: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := (recoveredValue0) shell.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) title: (recoveredValue2).
    ^self
! !

"abtdau.ic method 0x20000ed8; bytecode file offset 0x1024c"
!AbtWizardAbstractPage methodsFor: 'recovered'!
controller: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    controller := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000f04; bytecode file offset 0x10290"
!AbtWizardAbstractPage methodsFor: 'recovered'!
allWidgets: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    allWidgets := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000f48; bytecode file offset 0x102b4"
!AbtWizardAbstractPage methodsFor: 'recovered'!
logo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    logo := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x2000139c; bytecode file offset 0x1071c"
!AbtWizardAbstractPage methodsFor: 'recovered'!
buildInitialForm
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) allWidgets.
    recoveredValue1 := (self) controller.
    recoveredValue2 := (recoveredValue1) resetPageForm.
    (recoveredValue0) at: ('pageForm') put: (recoveredValue2).
    ^self
! !

"abtdau.ic method 0x20001b84; bytecode file offset 0x10efc"
!AbtWizardAbstractPage methodsFor: 'recovered'!
checkRequirementsForNextButtonEnablement
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allRequirementsSatisfied.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) enableNext.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) disableNext.
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

"abtdau.ic method 0x20001bf8; bytecode file offset 0x10f78"
!AbtWizardAbstractPage methodsFor: 'recovered'!
initialize
    (self) resetWidgetDictionary.
    (self) buildInitialForm.
    (self) buildWidgets.
    (self) initializeWidgets.
    (self) initializePage.
    ^self
! !

"abtdau.ic method 0x20001eac; bytecode file offset 0x11230"
!AbtWizardAbstractPage methodsFor: 'recovered'!
manageChildren
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allWidgets.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := #(268439382 nil 20 8388611 nil nil).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialFocusWidget.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20002540; bytecode file offset 0x118e4"
!AbtWizardAbstractPage methodsFor: 'recovered'!
aboutToDestroyPageForm
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tabOrderIds.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) tabOrderIds.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := (self) allWidgets.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) at: (recoveredBlock10Value1).
    recoveredBlock10Value3 := (recoveredBlock10Value2) removeTabGroup.
    recoveredBlock10Value3
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextButton.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) removeTabGroup.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20002560; bytecode file offset 0x118e4"
!AbtWizardAbstractPage methodsFor: 'recovered'!
initializeWidgets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tabOrderIds.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) tabOrderIds.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := (self) allWidgets.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) at: (recoveredBlock10Value1).
    recoveredBlock10Value3 := (recoveredBlock10Value2) addTabGroup.
    recoveredBlock10Value3
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextButton.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x200025a0; bytecode file offset 0x1192c"
!AbtWizardAbstractPage methodsFor: 'recovered'!
initialFocusWidget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tabOrderIds.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextEnabled.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextButton.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) allWidgets.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) tabOrderIds.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x200036d4; bytecode file offset 0x12a64"
!AbtWizardAbstractPage methodsFor: 'recovered'!
exposeLogo: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logo.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := XCDoubleArrow.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) createGC: (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) logo.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := (recoveredStack4) logo.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) extent: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := (recoveredStack4) @ (recoveredStack5).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := (recoveredStack5) logo.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := (recoveredStack5) extent.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent: (recoveredStack5).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) putDeviceIndependentImage: (recoveredStack1) image: (recoveredStack2) srcRect: (recoveredStack3) destRect: (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) freeGC.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20003a6c; bytecode file offset 0x12e18"
!AbtWizardAbstractPage methodsFor: 'recovered'!
addLogo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    (self) logo: (recoveredValue0).
    recoveredValue1 := (self) allWidgets.
    recoveredValue2 := (self) allWidgets.
    recoveredValue3 := (recoveredValue2) at: ('pageForm').
    recoveredValue4 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 recoveredBlock19Value8 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := recoveredBlock19Value0.
    recoveredBlock19Value2 := (self) logo.
    recoveredBlock19Value3 := (recoveredBlock19Value2) extent.
    recoveredBlock19Value4 := (recoveredBlock19Value3) x.
    (recoveredBlock19Value1) width: (recoveredBlock19Value4).
    recoveredBlock19Value5 := (self) logo.
    recoveredBlock19Value6 := (recoveredBlock19Value5) extent.
    recoveredBlock19Value7 := (recoveredBlock19Value6) y.
    recoveredBlock19Value8 := (recoveredBlock19Value0) height: (recoveredBlock19Value7).
    recoveredBlock19Value8
].
    recoveredValue5 := (recoveredValue3) createDrawingArea: ('logo') argBlock: (recoveredValue4).
    (recoveredValue1) at: ('logo') put: (recoveredValue5).
    recoveredValue6 := (self) allWidgets.
    recoveredValue7 := (recoveredValue6) at: ('logo').
    recoveredValue8 := XKballotcross.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('exposeLogo:clientData:callData:') clientData: (nil).
    ^self
! !


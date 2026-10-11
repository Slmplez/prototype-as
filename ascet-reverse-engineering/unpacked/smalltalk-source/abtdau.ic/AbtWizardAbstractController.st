"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x20000010; bytecode file offset 0xf3ec"
!AbtWizardAbstractController methodsFor: 'recovered'!
setButtonVisiblities
    ^self
! !

"abtdau.ic method 0x200000c0; bytecode file offset 0xf43c"
!AbtWizardAbstractController methodsFor: 'recovered'!
onFinalPage
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000108; bytecode file offset 0xf478"
!AbtWizardAbstractController methodsFor: 'recovered'!
nextButtonPressed: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) nextButtonPressed.
    ^recoveredValue0
! !

"abtdau.ic method 0x2000011c; bytecode file offset 0xf4f8"
!AbtWizardAbstractController methodsFor: 'recovered'!
defaultCancelButtonString
    | recoveredValue0 |
    recoveredValue0 := MxABTwiz3.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000128; bytecode file offset 0xf4f8"
!AbtWizardAbstractController methodsFor: 'recovered'!
defaultNextButtonString
    | recoveredValue0 |
    recoveredValue0 := MxABTwiz7.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000158; bytecode file offset 0xf4f8"
!AbtWizardAbstractController methodsFor: 'recovered'!
defaultBackButtonString
    | recoveredValue0 |
    recoveredValue0 := MxABTwiz2.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000164; bytecode file offset 0xf4f8"
!AbtWizardAbstractController methodsFor: 'recovered'!
defaultHelpButtonString
    | recoveredValue0 |
    recoveredValue0 := MxABTwiz6.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000170; bytecode file offset 0xf4f8"
!AbtWizardAbstractController methodsFor: 'recovered'!
defaultFinishButtonString
    | recoveredValue0 |
    recoveredValue0 := MxABTwiz5.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000188; bytecode file offset 0xf4f8"
!AbtWizardAbstractController methodsFor: 'recovered'!
defaultCancelMessageString
    | recoveredValue0 |
    recoveredValue0 := MxABTwiz4.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000210; bytecode file offset 0xf5d4"
!AbtWizardAbstractController methodsFor: 'recovered'!
getDefaultFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultFont.
    ^recoveredValue1
! !

"abtdau.ic method 0x200003b0; bytecode file offset 0xf71c"
!AbtWizardAbstractController methodsFor: 'recovered'!
initialize
    nextEnabled := true.
    ^self
! !

"abtdau.ic method 0x200003cc; bytecode file offset 0xf784"
!AbtWizardAbstractController methodsFor: 'recovered'!
nextButtonPressed
    (self) subclassResponsibility.
    ^self
! !

"abtdau.ic method 0x20000414; bytecode file offset 0xf784"
!AbtWizardAbstractController methodsFor: 'recovered'!
backButtonPressed
    (self) subclassResponsibility.
    ^self
! !

"abtdau.ic method 0x2000049c; bytecode file offset 0xf80c"
!AbtWizardAbstractController methodsFor: 'recovered'!
buildPage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) newWithController: (self).
    ^recoveredValue1
! !

"abtdau.ic method 0x20000538; bytecode file offset 0xf8a8"
!AbtWizardAbstractController methodsFor: 'recovered'!
backButtonPressed: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) backButtonPressed.
    ^self
! !

"abtdau.ic method 0x20000724; bytecode file offset 0xfa98"
!AbtWizardAbstractController methodsFor: 'recovered'!
cancelWizard
    | recoveredValue0 |
    recoveredValue0 := (self) shell.
    (recoveredValue0) destroyWidget.
    ^self
! !

"abtdau.ic method 0x200007cc; bytecode file offset 0xfb38"
!AbtWizardAbstractController methodsFor: 'recovered'!
title
    | recoveredValue0 |
    recoveredValue0 := title.
    ^recoveredValue0
! !

"abtdau.ic method 0x200007e0; bytecode file offset 0xfb54"
!AbtWizardAbstractController methodsFor: 'recovered'!
model
    | recoveredValue0 |
    recoveredValue0 := model.
    ^recoveredValue0
! !

"abtdau.ic method 0x2000080c; bytecode file offset 0xfb78"
!AbtWizardAbstractController methodsFor: 'recovered'!
currentPage
    | recoveredValue0 |
    recoveredValue0 := currentPage.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000820; bytecode file offset 0xfb8c"
!AbtWizardAbstractController methodsFor: 'recovered'!
shell
    | recoveredValue0 |
    recoveredValue0 := shell.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000834; bytecode file offset 0xfba0"
!AbtWizardAbstractController methodsFor: 'recovered'!
topForm
    | recoveredValue0 |
    recoveredValue0 := topForm.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000848; bytecode file offset 0xfbb4"
!AbtWizardAbstractController methodsFor: 'recovered'!
pageForm
    | recoveredValue0 |
    recoveredValue0 := pageForm.
    ^recoveredValue0
! !

"abtdau.ic method 0x2000085c; bytecode file offset 0xfbc8"
!AbtWizardAbstractController methodsFor: 'recovered'!
buttonForm
    | recoveredValue0 |
    recoveredValue0 := buttonForm.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000870; bytecode file offset 0xfbdc"
!AbtWizardAbstractController methodsFor: 'recovered'!
nextButton
    | recoveredValue0 |
    recoveredValue0 := nextButton.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000884; bytecode file offset 0xfbf0"
!AbtWizardAbstractController methodsFor: 'recovered'!
backButton
    | recoveredValue0 |
    recoveredValue0 := backButton.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000898; bytecode file offset 0xfc04"
!AbtWizardAbstractController methodsFor: 'recovered'!
cancelButton
    | recoveredValue0 |
    recoveredValue0 := cancelButton.
    ^recoveredValue0
! !

"abtdau.ic method 0x200008ac; bytecode file offset 0xfc18"
!AbtWizardAbstractController methodsFor: 'recovered'!
helpButton
    | recoveredValue0 |
    recoveredValue0 := helpButton.
    ^recoveredValue0
! !

"abtdau.ic method 0x200008c8; bytecode file offset 0xfc34"
!AbtWizardAbstractController methodsFor: 'recovered'!
nextEnabled
    | recoveredValue0 |
    recoveredValue0 := nextEnabled.
    ^recoveredValue0
! !

"abtdau.ic method 0x2000095c; bytecode file offset 0xfcc8"
!AbtWizardAbstractController methodsFor: 'recovered'!
cachedImage
    | recoveredValue0 |
    recoveredValue0 := cachedImage.
    ^recoveredValue0
! !

"abtdau.ic method 0x200009d4; bytecode file offset 0xfd48"
!AbtWizardAbstractController methodsFor: 'recovered'!
defaultUseHelpButton
    ^false
! !

"abtdau.ic method 0x200009f0; bytecode file offset 0xfd5c"
!AbtWizardAbstractController methodsFor: 'recovered'!
defaultWidth
    ^550
! !

"abtdau.ic method 0x20000a04; bytecode file offset 0xfd70"
!AbtWizardAbstractController methodsFor: 'recovered'!
defaultHeight
    ^325
! !

"abtdau.ic method 0x20000a98; bytecode file offset 0xfe10"
!AbtWizardAbstractController methodsFor: 'recovered'!
defaultMwmDecorations
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := XKCyrillicIO.
    recoveredValue1 := XmDIALOGCOMMAND.
    recoveredValue2 := (recoveredValue0) | (recoveredValue1).
    ^recoveredValue2
! !

"abtdau.ic method 0x20000d78; bytecode file offset 0x100e8"
!AbtWizardAbstractController methodsFor: 'recovered'!
nextEnabled: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nextEnabled := recoveredValue0.
    (self) updateButtons.
    ^self
! !

"abtdau.ic method 0x20000ee0; bytecode file offset 0x1024c"
!AbtWizardAbstractController methodsFor: 'recovered'!
width: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    width := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000efc; bytecode file offset 0x10290"
!AbtWizardAbstractController methodsFor: 'recovered'!
height: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    height := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000f38; bytecode file offset 0x102b4"
!AbtWizardAbstractController methodsFor: 'recovered'!
title: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    title := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000f5c; bytecode file offset 0x102d0"
!AbtWizardAbstractController methodsFor: 'recovered'!
model: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    model := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000f78; bytecode file offset 0x102ec"
!AbtWizardAbstractController methodsFor: 'recovered'!
currentPage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentPage := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000f94; bytecode file offset 0x10300"
!AbtWizardAbstractController methodsFor: 'recovered'!
shell: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    shell := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000fa8; bytecode file offset 0x10314"
!AbtWizardAbstractController methodsFor: 'recovered'!
topForm: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    topForm := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000fbc; bytecode file offset 0x10328"
!AbtWizardAbstractController methodsFor: 'recovered'!
pageForm: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pageForm := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000fd0; bytecode file offset 0x1033c"
!AbtWizardAbstractController methodsFor: 'recovered'!
buttonForm: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    buttonForm := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000fe4; bytecode file offset 0x10350"
!AbtWizardAbstractController methodsFor: 'recovered'!
nextButton: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nextButton := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20001000; bytecode file offset 0x1036c"
!AbtWizardAbstractController methodsFor: 'recovered'!
backButton: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    backButton := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20001014; bytecode file offset 0x10388"
!AbtWizardAbstractController methodsFor: 'recovered'!
cancelButton: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cancelButton := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20001038; bytecode file offset 0x103a4"
!AbtWizardAbstractController methodsFor: 'recovered'!
helpButton: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    helpButton := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x200010b0; bytecode file offset 0x1041c"
!AbtWizardAbstractController methodsFor: 'recovered'!
cancelMessage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cancelMessage := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x200010d4; bytecode file offset 0x10440"
!AbtWizardAbstractController methodsFor: 'recovered'!
useHelpButton: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    useHelpButton := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20001104; bytecode file offset 0x10470"
!AbtWizardAbstractController methodsFor: 'recovered'!
nextButtonString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nextButtonString := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20001120; bytecode file offset 0x1048c"
!AbtWizardAbstractController methodsFor: 'recovered'!
backButtonString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    backButtonString := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x2000113c; bytecode file offset 0x104a8"
!AbtWizardAbstractController methodsFor: 'recovered'!
cancelButtonString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cancelButtonString := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20001150; bytecode file offset 0x104c4"
!AbtWizardAbstractController methodsFor: 'recovered'!
helpButtonString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    helpButtonString := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x2000116c; bytecode file offset 0x104d8"
!AbtWizardAbstractController methodsFor: 'recovered'!
finishButtonString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    finishButtonString := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20001180; bytecode file offset 0x104ec"
!AbtWizardAbstractController methodsFor: 'recovered'!
cachedImage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cachedImage := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20001354; bytecode file offset 0x106cc"
!AbtWizardAbstractController methodsFor: 'recovered'!
updateButtons
    (self) setButtonVisiblities.
    (self) setButtonLabelStrings.
    (self) setButtonSensitivities.
    ^self
! !

"abtdau.ic method 0x20001684; bytecode file offset 0x10a00"
!AbtWizardAbstractController methodsFor: 'recovered'!
clearAndDrawPage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) currentPage: (recoveredValue0).
    recoveredValue1 := (self) currentPage.
    (recoveredValue1) draw.
    (self) updateButtons.
    ^self
! !

"abtdau.ic method 0x200016f8; bytecode file offset 0x10a68"
!AbtWizardAbstractController methodsFor: 'recovered'!
width
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := width.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultWidth.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            width := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := width.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x20001734; bytecode file offset 0x10aa4"
!AbtWizardAbstractController methodsFor: 'recovered'!
height
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := height.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultHeight.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            height := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := height.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x20001774; bytecode file offset 0x10ae4"
!AbtWizardAbstractController methodsFor: 'recovered'!
useHelpButton
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := useHelpButton.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultUseHelpButton.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            useHelpButton := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := useHelpButton.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x20001794; bytecode file offset 0x10b04"
!AbtWizardAbstractController methodsFor: 'recovered'!
mwmDecorations
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mwmDecorations.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMwmDecorations.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            mwmDecorations := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := mwmDecorations.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x200017b4; bytecode file offset 0x10b24"
!AbtWizardAbstractController methodsFor: 'recovered'!
nextButtonString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nextButtonString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultNextButtonString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            nextButtonString := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nextButtonString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x200017d4; bytecode file offset 0x10b44"
!AbtWizardAbstractController methodsFor: 'recovered'!
backButtonString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := backButtonString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultBackButtonString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            backButtonString := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := backButtonString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x200017f4; bytecode file offset 0x10b64"
!AbtWizardAbstractController methodsFor: 'recovered'!
cancelButtonString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := cancelButtonString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultCancelButtonString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            cancelButtonString := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := cancelButtonString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x20001814; bytecode file offset 0x10b84"
!AbtWizardAbstractController methodsFor: 'recovered'!
helpButtonString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := helpButtonString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultHelpButtonString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            helpButtonString := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := helpButtonString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x20001834; bytecode file offset 0x10ba4"
!AbtWizardAbstractController methodsFor: 'recovered'!
finishButtonString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := finishButtonString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultFinishButtonString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            finishButtonString := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := finishButtonString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x20001ab4; bytecode file offset 0x10e34"
!AbtWizardAbstractController methodsFor: 'recovered'!
helpButtonPressed: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtHelpAccessor.
    recoveredValue1 := (self) currentPage.
    recoveredValue2 := (recoveredValue1) helpFile.
    recoveredValue3 := (self) currentPage.
    recoveredValue4 := (recoveredValue3) helpTopic.
    (recoveredValue0) helpFor: (nil) helpFile: (recoveredValue2) topic: (recoveredValue4) title: (nil).
    ^self
! !

"abtdau.ic method 0x20001b64; bytecode file offset 0x10ed4"
!AbtWizardAbstractController methodsFor: 'recovered'!
cancelMessage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := cancelMessage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultCancelMessageString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := cancelMessage.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x20001bac; bytecode file offset 0x10f20"
!AbtWizardAbstractController methodsFor: 'recovered'!
mwmDecorations: recoveredArg1
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
            mwmDecorations := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) mwmDecorations: (recoveredStack1).
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

"abtdau.ic method 0x20001c84; bytecode file offset 0x10ffc"
!AbtWizardAbstractController methodsFor: 'recovered'!
getDefaultFontList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defaultFontList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CgPrinterScreenInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) getDefaultFont.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            defaultFontList := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := defaultFontList.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x20001ff4; bytecode file offset 0x1136c"
!AbtWizardAbstractController methodsFor: 'recovered'!
setButtonSensitivities
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextEnabled.
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
            recoveredStack0 := (recoveredStack0) nextButton.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextButton.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20002264; bytecode file offset 0x115f0"
!AbtWizardAbstractController methodsFor: 'recovered'!
showError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CwListSelectionPrompter.
    recoveredValue1 := topForm.
    recoveredValue2 := (recoveredValue0) for: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := XKkanaYA.
    (recoveredValue3) buttonType: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := XKfemalesymbol.
    (recoveredValue5) iconType: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) messageString: (recoveredValue8).
    (recoveredValue2) prompt.
    ^self
! !

"abtdau.ic method 0x2000238c; bytecode file offset 0x11718"
!AbtWizardAbstractController methodsFor: 'recovered'!
makeSure: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := CwListSelectionPrompter.
    recoveredValue1 := topForm.
    recoveredValue2 := (recoveredValue0) for: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := CWDontPropagate.
    (recoveredValue3) buttonType: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := XKRight.
    (recoveredValue5) iconType: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) messageString: (recoveredValue8).
    recoveredValue9 := (recoveredValue2) prompt.
    recoveredValue10 := (recoveredValue9) isNil.
    recoveredValue11 := (recoveredValue10) not.
    ^recoveredValue11
! !

"abtdau.ic method 0x2000242c; bytecode file offset 0x117b4"
!AbtWizardAbstractController methodsFor: 'recovered'!
resetPageForm
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) drawWizard.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPage.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPage.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) aboutToDestroyPageForm.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageForm.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) destroyWidget.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNewPageForm.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20002bc8; bytecode file offset 0x11f50"
!AbtWizardAbstractController methodsFor: 'recovered'!
setButtonLabelStrings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) onFinalPage.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextButton.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) finishButtonString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextButton.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextButtonString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) backButton.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) backButtonString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20003344; bytecode file offset 0x126f4"
!AbtWizardAbstractController methodsFor: 'recovered'!
cancelButtonPressed: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwListSelectionPrompter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) topForm.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := MxABTwiz1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := (recoveredStack4) title.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := XKSerbianlje.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) buttonType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := XKCyrillicyu.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) defaultButtonType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := XmPREEDITROOT.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) iconType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) cancelMessage.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) messageString: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) cancelWizard.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x200038cc; bytecode file offset 0x12c80"
!AbtWizardAbstractController methodsFor: 'recovered'!
getNewPageForm
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) topForm.
    recoveredValue1 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 recoveredBlock8Value14 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := recoveredBlock8Value0.
    recoveredBlock8Value2 := (self) height.
    (recoveredBlock8Value1) height: (recoveredBlock8Value2).
    recoveredBlock8Value3 := recoveredBlock8Value0.
    recoveredBlock8Value4 := TopFormMarginHeight.
    (recoveredBlock8Value3) marginHeight: (recoveredBlock8Value4).
    recoveredBlock8Value5 := recoveredBlock8Value0.
    recoveredBlock8Value6 := XmSINGLELINEEDIT.
    (recoveredBlock8Value5) leftAttachment: (recoveredBlock8Value6).
    recoveredBlock8Value7 := recoveredBlock8Value0.
    recoveredBlock8Value8 := XmSINGLELINEEDIT.
    (recoveredBlock8Value7) rightAttachment: (recoveredBlock8Value8).
    recoveredBlock8Value9 := recoveredBlock8Value0.
    recoveredBlock8Value10 := XmSINGLELINEEDIT.
    (recoveredBlock8Value9) topAttachment: (recoveredBlock8Value10).
    recoveredBlock8Value11 := recoveredBlock8Value0.
    recoveredBlock8Value12 := XKOcircumflex.
    (recoveredBlock8Value11) bottomAttachment: (recoveredBlock8Value12).
    recoveredBlock8Value13 := (self) buttonForm.
    recoveredBlock8Value14 := (recoveredBlock8Value0) bottomWidget: (recoveredBlock8Value13).
    recoveredBlock8Value14
].
    recoveredValue2 := (recoveredValue0) createForm: ('pageForm') argBlock: (recoveredValue1).
    (self) pageForm: (recoveredValue2).
    recoveredValue3 := (self) pageForm.
    (recoveredValue3) manageChild.
    recoveredValue4 := (self) pageForm.
    ^recoveredValue4
! !

"abtdau.ic method 0x20003c08; bytecode file offset 0x12fc4"
!AbtWizardAbstractController methodsFor: 'recovered'!
drawWizard
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwDrawnButton.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) title.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := recoveredBlock8Value0.
    recoveredBlock8Value2 := (self) mwmDecorations.
    (recoveredBlock8Value1) mwmDecorations: (recoveredBlock8Value2).
    recoveredBlock8Value3 := (self) width.
    recoveredBlock8Value4 := (recoveredBlock8Value0) width: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) shell: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'topForm'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := #(268443140 nil 64 8388611 nil nil).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) topForm: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) topForm.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) buildButtonForm.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) getNewPageForm.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) realizeWidget.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20003fc4; bytecode file offset 0x13370"
!AbtWizardAbstractController methodsFor: 'recovered'!
buildButtonForm
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) topForm.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'buttonForm'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := #(268443618 nil 42 8388611 nil nil).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) buttonForm: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonForm.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) addButtonsToForm.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonForm.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 'separator'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := #(268443618 nil 61 8388611 nil nil).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSeparator: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20004444; bytecode file offset 0x137d4"
!AbtWizardAbstractController methodsFor: 'recovered'!
getImage: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStreams.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := SIRWXU.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2) oflag: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := CgJPEGStartOfImage.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock33Value0 |
    recoveredBlock33Value0 := recoveredLocal4.
    (recoveredBlock33Value0) close.
    ^nil
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) formatMatchingFileHandle: (recoveredStack2) atOffset: (recoveredStack3) ifNone: (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadFromFileHandle: (recoveredStack2) atOffset: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x200045dc; bytecode file offset 0x13988"
!AbtWizardAbstractController methodsFor: 'recovered'!
addButtonsToForm
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) useHelpButton.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) helpButtonString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := 'helpButtonPressed:clientData:callData:'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) createButton: (recoveredStack2) offset: (recoveredStack3) callback: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) helpButton: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := ButtonWidth.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := ButtonRowOffset.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
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
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) cancelButtonString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := 'cancelButtonPressed:clientData:callData:'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) createButton: (recoveredStack2) offset: (recoveredStack3) callback: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) cancelButton: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := ButtonWidth.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := ButtonRowOffset.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) nextButtonString.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := 'nextButtonPressed:clientData:callData:'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) createButton: (recoveredStack2) offset: (recoveredStack3) callback: (recoveredStack4).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) nextButton: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := ButtonWidth.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) backButtonString.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := 'backButtonPressed:clientData:callData:'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) createButton: (recoveredStack2) offset: (recoveredStack3) callback: (recoveredStack4).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) backButton: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20004720; bytecode file offset 0x13ad4"
!AbtWizardAbstractController methodsFor: 'recovered'!
createButton: recoveredArg1 offset: recoveredArg2 callback: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) buttonForm.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 recoveredBlock8Value14 recoveredBlock8Value15 recoveredBlock8Value16 recoveredBlock8Value17 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := recoveredBlock8Value0.
    recoveredBlock8Value2 := (self) getDefaultFontList.
    (recoveredBlock8Value1) fontList: (recoveredBlock8Value2).
    recoveredBlock8Value3 := recoveredBlock8Value0.
    recoveredBlock8Value4 := ButtonWidth.
    (recoveredBlock8Value3) width: (recoveredBlock8Value4).
    recoveredBlock8Value5 := recoveredBlock8Value0.
    (recoveredBlock8Value5) recomputeSize: (false).
    recoveredBlock8Value6 := recoveredBlock8Value0.
    recoveredBlock8Value7 := XmSINGLELINEEDIT.
    (recoveredBlock8Value6) rightAttachment: (recoveredBlock8Value7).
    recoveredBlock8Value8 := recoveredBlock8Value0.
    recoveredBlock8Value9 := recoveredArg2.
    (recoveredBlock8Value8) rightOffset: (recoveredBlock8Value9).
    recoveredBlock8Value10 := recoveredBlock8Value0.
    recoveredBlock8Value11 := XmSINGLELINEEDIT.
    (recoveredBlock8Value10) topAttachment: (recoveredBlock8Value11).
    recoveredBlock8Value12 := recoveredBlock8Value0.
    recoveredBlock8Value13 := GenericOffset.
    (recoveredBlock8Value12) topOffset: (recoveredBlock8Value13).
    recoveredBlock8Value14 := recoveredBlock8Value0.
    recoveredBlock8Value15 := XmSINGLELINEEDIT.
    (recoveredBlock8Value14) bottomAttachment: (recoveredBlock8Value15).
    recoveredBlock8Value16 := GenericOffset.
    recoveredBlock8Value17 := (recoveredBlock8Value0) bottomOffset: (recoveredBlock8Value16).
    recoveredBlock8Value17
].
    recoveredValue3 := (recoveredValue0) createPushButton: (recoveredValue1) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := XKByelorussianshortu.
    recoveredValue6 := recoveredArg3.
    (recoveredValue4) addCallback: (recoveredValue5) receiver: (self) selector: (recoveredValue6) clientData: (nil).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) manageChild.
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !


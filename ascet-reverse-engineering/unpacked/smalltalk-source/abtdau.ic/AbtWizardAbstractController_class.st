"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x200001b4; bytecode file offset 0xf53c"
!AbtWizardAbstractController class methodsFor: 'recovered'!
fontCandidates
    ^#()
! !

"abtdau.ic method 0x20000378; bytecode file offset 0xf6e4"
!AbtWizardAbstractController class methodsFor: 'recovered'!
initializeClassInstanceVariables
    recoveredLegacyIvar15 := nil.
    ^self
! !

"abtdau.ic method 0x20000b7c; bytecode file offset 0xfef0"
!AbtWizardAbstractController class methodsFor: 'recovered'!
platformDependentWidgetHeight
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) defaultFont.
    recoveredValue1 := (recoveredValue0) height.
    recoveredValue2 := (recoveredValue1) + (10).
    ^recoveredValue2
! !

"abtdau.ic method 0x20000bac; bytecode file offset 0xff24"
!AbtWizardAbstractController class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"abtdau.ic method 0x20001070; bytecode file offset 0x103e4"
!AbtWizardAbstractController class methodsFor: 'recovered'!
defaultFont: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar15 := recoveredXValue0.
    ^self
! !

"abtdau.ic method 0x2000151c; bytecode file offset 0x10898"
!AbtWizardAbstractController class methodsFor: 'recovered'!
title: recoveredArg1 model: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) resetConstants.
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) title: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) model: (recoveredValue3).
    ^recoveredValue4
! !

"abtdau.ic method 0x20001ae4; bytecode file offset 0x10e60"
!AbtWizardAbstractController class methodsFor: 'recovered'!
findFont
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) preferredFontName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := CwOleClipboardOwner.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadQueryFont: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20001cac; bytecode file offset 0x11030"
!AbtWizardAbstractController class methodsFor: 'recovered'!
resetConstants
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) defaultFont.
    recoveredValue1 := (recoveredValue0) textWidth: ('Move Down').
    recoveredValue2 := (recoveredValue1) + (20).
    ButtonWidth := recoveredValue2.
    recoveredValue3 := (self) platformDependentWidgetHeight.
    WidgetHeight := recoveredValue3.
    ^self
! !

"abtdau.ic method 0x200023fc; bytecode file offset 0x11774"
!AbtWizardAbstractController class methodsFor: 'recovered'!
defaultFont
    | recoveredXLocal1 recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXStack3 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar15.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            (recoveredXStack1 ~~ nil) ifTrue: [recoveredXPC := 25] ifFalse: [recoveredXPC := 10].
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack1 := self.
            recoveredXPC := 11.
        ].
        recoveredXStep = 11 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) findFont.
            recoveredXPC := 12.
        ].
        recoveredXStep = 12 ifTrue: [
            recoveredXStack2 := recoveredXStack1.
            recoveredXPC := 13.
        ].
        recoveredXStep = 13 ifTrue: [
            recoveredLegacyIvar15 := recoveredXStack2.
            recoveredXPC := 15.
        ].
        recoveredXStep = 15 ifTrue: [
            (recoveredXStack1 ~~ nil) ifTrue: [recoveredXPC := 23] ifFalse: [recoveredXPC := 18].
        ].
        recoveredXStep = 18 ifTrue: [
            recoveredXStack1 := CwTwoButtonPrompter.
            recoveredXPC := 20.
        ].
        recoveredXStep = 20 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) abtWizardDefaultFont.
            recoveredXPC := 21.
        ].
        recoveredXStep = 21 ifTrue: [
            recoveredLegacyIvar15 := recoveredXStack1.
            recoveredXPC := 23.
        ].
        recoveredXStep = 23 ifTrue: [
            recoveredXStack1 := nil.
            recoveredXPC := 24.
        ].
        recoveredXStep = 24 ifTrue: [
            recoveredXLocal1 := recoveredXStack1.
            recoveredXPC := 25.
        ].
        recoveredXStep = 25 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar15.
            recoveredXPC := 27.
        ].
        recoveredXStep = 27 ifTrue: [
            ^recoveredXStack1
        ].
    ]
! !

"abtdau.ic method 0x200026a8; bytecode file offset 0x11a34"
!AbtWizardAbstractController class methodsFor: 'recovered'!
preferredFontName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontCandidates.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := #(268440404 nil 24 8421379 nil nil).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


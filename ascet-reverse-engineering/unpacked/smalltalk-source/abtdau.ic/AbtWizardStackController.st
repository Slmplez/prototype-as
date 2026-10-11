"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x20000278; bytecode file offset 0xf5e8"
!AbtWizardStackController methodsFor: 'recovered'!
goBackToPageClass: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) buildPage: (recoveredValue0).
    ^recoveredValue1
! !

"abtdau.ic method 0x20000714; bytecode file offset 0xfa98"
!AbtWizardStackController methodsFor: 'recovered'!
finishWizard
    | recoveredValue0 |
    recoveredValue0 := (self) shell.
    (recoveredValue0) destroyWidget.
    ^self
! !

"abtdau.ic method 0x20000970; bytecode file offset 0xfcdc"
!AbtWizardStackController methodsFor: 'recovered'!
pageStack
    | recoveredValue0 |
    recoveredValue0 := pageStack.
    ^recoveredValue0
! !

"abtdau.ic method 0x20001194; bytecode file offset 0x10500"
!AbtWizardStackController methodsFor: 'recovered'!
pageStack: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pageStack := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20001658; bytecode file offset 0x109d8"
!AbtWizardStackController methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := CldtConstants.
    recoveredValue1 := (recoveredValue0) new.
    (self) pageStack: (recoveredValue1).
    ^self
! !

"abtdau.ic method 0x20001a00; bytecode file offset 0x10d84"
!AbtWizardStackController methodsFor: 'recovered'!
backButtonPressed
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) currentPage.
    (recoveredValue0) backRecordInfo.
    recoveredValue1 := (self) pageStack.
    recoveredValue2 := (recoveredValue1) removeLast.
    recoveredValue3 := (self) goBackToPageClass: (recoveredValue2).
    (self) clearAndDrawPage: (recoveredValue3).
    ^self
! !

"abtdau.ic method 0x200024bc; bytecode file offset 0x11854"
!AbtWizardStackController methodsFor: 'recovered'!
getNextPage
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) currentPage.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := ('nextFrom') , (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := OSUInt64.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) asSymbol.
    recoveredValue7 := (recoveredValue4) selector: (recoveredValue6) arguments: (#()) receiver: (self).
    recoveredValue8 := (recoveredValue7) send.
    recoveredValue9 := (self) buildPage: (recoveredValue8).
    ^recoveredValue9
! !

"abtdau.ic method 0x200027b4; bytecode file offset 0x11b38"
!AbtWizardStackController methodsFor: 'recovered'!
setButtonSensitivities
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super setButtonSensitivities.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageStack.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) backButton.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) backButton.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
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

"abtdau.ic method 0x20002fa4; bytecode file offset 0x12338"
!AbtWizardStackController methodsFor: 'recovered'!
nextButtonPressed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPage.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) validatePage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPage.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) processNextPressed.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) onFinalPage.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) finishWizard.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageStack.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentPage.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNextPage.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) clearAndDrawPage: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


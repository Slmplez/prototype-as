"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200004a8; bytecode file offset 0x8ffcfc"
!EtasItemTextWidget methodsFor: 'recovered'!
initLabels
    ^self
! !

"ASDBase.ic method 0x200022a8; bytecode file offset 0x8ffcfc"
!EtasItemTextWidget methodsFor: 'recovered'!
initializeAfterOpen
    ^self
! !

"ASDBase.ic method 0x20045a9c; bytecode file offset 0x9451f8"
!EtasItemTextWidget methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('lab').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200478ac; bytecode file offset 0x9451f8"
!EtasItemTextWidget methodsFor: 'recovered'!
text
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('itemText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20052f68; bytecode file offset 0x9505d0"
!EtasItemTextWidget methodsFor: 'recovered'!
updateForObserver: recoveredArg1
    (self) fillContent.
    ^self
! !

"ASDBase.ic method 0x200641b4; bytecode file offset 0x961970"
!EtasItemTextWidget methodsFor: 'recovered'!
setFocusTextWidget
    | recoveredValue0 |
    recoveredValue0 := (self) text.
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x2009bb20; bytecode file offset 0x998444"
!EtasItemTextWidget methodsFor: 'recovered'!
initFonts
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := (self) text.
    (recoveredValue0) updateTextFont: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2010bf5c; bytecode file offset 0xa08928"
!EtasItemTextWidget methodsFor: 'recovered'!
initializeAfterCreate
    super initializeAfterCreate.
    (self) initLabels.
    (self) fillContent.
    ^self
! !

"ASDBase.ic method 0x20198a4c; bytecode file offset 0xa95320"
!EtasItemTextWidget methodsFor: 'recovered'!
fillContent
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) item.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue2) printASDInfoOn: (recoveredValue3).
    recoveredValue4 := (self) text.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) contents.
    (recoveredValue4) setString: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201a9de0; bytecode file offset 0xaa6740"
!EtasItemTextWidget methodsFor: 'recovered'!
initFocusWrapper
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RBFocusBorderController.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) borderWidth: (3).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (self) text.
    recoveredValue6 := (recoveredValue4) with: (recoveredValue5).
    (recoveredValue3) addWidgets: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20331468; bytecode file offset 0xc2ddb4"
!EtasItemTextWidget methodsFor: 'recovered'!
installActionKeysStarting: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetKeyActions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [
    | block280ece20Value0 block280ece20Value1 |
    block280ece20Value0 := Dictionary.
    block280ece20Value1 := (block280ece20Value0) new.
    block280ece20Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'Alt-'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := 'setFocusTextWidget'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack7 := SCSelect.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack8 := EtasInfoLabel.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack7 := (recoveredStack7) bindWith: (recoveredStack8).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041fc44; bytecode file offset 0xd1c55c"
!EtasItemTextWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'itemText'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280fc3f0Arg1 | 
    | block280fc3f0Value0 block280fc3f0Value1 block280fc3f0Value2 block280fc3f0Value3 |
    block280fc3f0Value0 := block280fc3f0Arg1.
    block280fc3f0Value1 := block280fc3f0Value0.
    block280fc3f0Value2 := XmMULTILINEEDIT.
    (block280fc3f0Value1) editMode: (block280fc3f0Value2).
    block280fc3f0Value3 := (block280fc3f0Value0) editable: (false).
    block280fc3f0Value3
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'itemText'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'sitemText'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) parent.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [:block280fc414Arg1 | 
    | block280fc414Value0 block280fc414Value1 block280fc414Value2 block280fc414Value3 block280fc414Value4 block280fc414Value5 block280fc414Value6 block280fc414Value7 block280fc414Value8 block280fc414Value9 block280fc414Value10 block280fc414Value11 block280fc414Value12 |
    block280fc414Value0 := block280fc414Arg1.
    block280fc414Value1 := block280fc414Value0.
    block280fc414Value2 := XmATTACHFORM.
    (block280fc414Value1) bottomAttachment: (block280fc414Value2).
    block280fc414Value3 := block280fc414Value0.
    (block280fc414Value3) bottomOffset: (0).
    block280fc414Value4 := block280fc414Value0.
    block280fc414Value5 := XmATTACHFORM.
    (block280fc414Value4) topAttachment: (block280fc414Value5).
    block280fc414Value6 := block280fc414Value0.
    (block280fc414Value6) topOffset: (0).
    block280fc414Value7 := block280fc414Value0.
    block280fc414Value8 := XmATTACHFORM.
    (block280fc414Value7) leftAttachment: (block280fc414Value8).
    block280fc414Value9 := block280fc414Value0.
    (block280fc414Value9) leftOffset: (0).
    block280fc414Value10 := block280fc414Value0.
    block280fc414Value11 := XmATTACHFORM.
    (block280fc414Value10) rightAttachment: (block280fc414Value11).
    block280fc414Value12 := (block280fc414Value0) rightOffset: (0).
    block280fc414Value12
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


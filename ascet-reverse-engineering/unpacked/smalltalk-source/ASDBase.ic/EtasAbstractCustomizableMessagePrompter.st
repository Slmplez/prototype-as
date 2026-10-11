"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003f28; bytecode file offset 0x90206c"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
items: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000cdfc; bytecode file offset 0x909ab8"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
selectedItems: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000de18; bytecode file offset 0x90ab8c"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
storeAnswer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002c804; bytecode file offset 0x934580"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
close
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (recoveredValue0) destroyWidget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d9dc; bytecode file offset 0x95a2b8"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
form
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := shell.
    recoveredValue1 := (recoveredValue0) children.
    recoveredValue2 := (recoveredValue1) first.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20069c20; bytecode file offset 0x966bdc"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
shell
    | recoveredValue0 |
    recoveredValue0 := shell.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a86c; bytecode file offset 0x967a18"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
message
    | recoveredValue0 |
    recoveredValue0 := message.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b4f0; bytecode file offset 0x96873c"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
gc
    | recoveredValue0 |
    recoveredValue0 := gc.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c01c; bytecode file offset 0x9692b0"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
nextTimeButton
    | recoveredValue0 |
    recoveredValue0 := nextTimeButton.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cfa0; bytecode file offset 0x969c04"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
allButton
    | recoveredValue0 |
    recoveredValue0 := allButton.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e41c; bytecode file offset 0x96af48"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
prompterID
    | recoveredValue0 |
    recoveredValue0 := prompterID.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ee8c; bytecode file offset 0x96b8a0"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
defaultButton
    | recoveredValue0 |
    recoveredValue0 := defaultButton.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f198; bytecode file offset 0x96bc1c"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
buttons
    | recoveredValue0 |
    recoveredValue0 := buttons.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f698; bytecode file offset 0x96bf7c"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
nextTimeButtonText
    | recoveredValue0 |
    recoveredValue0 := nextTimeButtonText.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fa80; bytecode file offset 0x96c42c"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
allButtonText
    | recoveredValue0 |
    recoveredValue0 := allButtonText.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fba8; bytecode file offset 0x96c6ac"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
buttonText
    | recoveredValue0 |
    recoveredValue0 := buttonText.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ff1c; bytecode file offset 0x96c850"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
multiMode
    | recoveredValue0 |
    recoveredValue0 := multiMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073d90; bytecode file offset 0x970b34"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
selectedItems
    ^nil
! !

"ASDBase.ic method 0x20078c84; bytecode file offset 0x9757c8"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
okButtonAvailable
    ^true
! !

"ASDBase.ic method 0x20083058; bytecode file offset 0x97f90c"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
gc: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    gc := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200906e8; bytecode file offset 0x98d054"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
storedDecisionResult
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) optionInstance.
    recoveredValue2 := (self) prompterID.
    recoveredValue3 := (recoveredValue1) getDialogDecision: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c1338; bytecode file offset 0x9bdf14"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
shell: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    shell := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1904; bytecode file offset 0x9beac8"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
message: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    message := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c49a4; bytecode file offset 0x9c16b0"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
prompterID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    prompterID := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5430; bytecode file offset 0x9c1f64"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
defaultButton: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultButton := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5784; bytecode file offset 0x9c22c8"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
buttons: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    buttons := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5a70; bytecode file offset 0x9c25bc"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
nextTimeButtonText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nextTimeButtonText := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5e90; bytecode file offset 0x9c2804"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
nextTimeButtonVisible: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nextTimeButtonVisible := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5f64; bytecode file offset 0x9c29e8"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
allButtonText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    allButtonText := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6210; bytecode file offset 0x9c2bec"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
buttonText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    buttonText := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6354; bytecode file offset 0x9c2dd0"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
multiMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    multiMode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e286c; bytecode file offset 0x9df120"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
nextTimeButtonVisible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := nextTimeButtonVisible.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := nextTimeButtonVisible.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f2f4c; bytecode file offset 0x9ef808"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
isDestroyed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201064ec; bytecode file offset 0xa02da4"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
buttonStyle
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := buttonStyle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'OK'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := buttonStyle.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20111c58; bytecode file offset 0xa0e518"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
closeDialogRequested: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'YESNO'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011632c; bytecode file offset 0xa12be0"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
type
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            type := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201301ac; bytecode file offset 0xa2ca98"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
allButtonAvailable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) multiMode.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    ^recoveredBlock5Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x2016365c; bytecode file offset 0xa5ff38"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
cancelButtonString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) cancelButtonPosition.
    recoveredValue1 := (self) buttonString: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    ^recoveredBlock7Value0
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^'Cancel'
! !

"ASDBase.ic method 0x20163674; bytecode file offset 0xa5ff38"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
noButtonString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) noButtonPosition.
    recoveredValue1 := (self) buttonString: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    ^recoveredBlock7Value0
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^'No'
! !

"ASDBase.ic method 0x20171cbc; bytecode file offset 0xa6e57c"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
getAllButtonText
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allButtonText.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) allButtonText.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'APPLYALL'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 'Apply to all items'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) allButtonText.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20197c48; bytecode file offset 0xa94518"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
no: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASDUserActionObserver.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) labelString.
    (recoveredValue1) addUserAction: (recoveredValue3) type: ('Dialog') window: (self).
    recoveredValue4 := (self) form.
    (recoveredValue4) unmanageChild.
    answer := false.
    ^self
! !

"ASDBase.ic method 0x20197c84; bytecode file offset 0xa94554"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
cancel: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASDUserActionObserver.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) labelString.
    (recoveredValue1) addUserAction: (recoveredValue3) type: ('Dialog') window: (self).
    recoveredValue4 := (self) form.
    (recoveredValue4) unmanageChild.
    answer := nil.
    ^self
! !

"ASDBase.ic method 0x201afdb0; bytecode file offset 0xaac670"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
yesAllButtonAvailable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'YES1YES2NOCANCEL'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'YESALWAYSNOCANCEL'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e8ca4; bytecode file offset 0xae556c"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
buttonStyle: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := EtasAbstractUserQuestion.
    recoveredBlock4Value1 := (recoveredBlock4Value0) buttonStyles.
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := (recoveredBlock4Value1) includes: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    (self) runtimeAssert: (recoveredValue0) additionalInfo: ('invalid button style').
    recoveredValue1 := recoveredArg1.
    buttonStyle := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2020ddb8; bytecode file offset 0xb0a670"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
type: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            type := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023f1e4; bytecode file offset 0xb3bab0"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
buttonString: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonText.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonText.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) numberOfButtons.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) buttonText.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202743e8; bytecode file offset 0xb70cc4"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
initializeIcon
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := IdiInformation.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := IdiWarning.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := IdiError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := IdiQuestion.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := EtasIcon.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromSystem: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202939c4; bytecode file offset 0xb90290"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
setDefaultButton: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) buttons.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) name.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) equals: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) shell.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) setDefaultButton: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20297248; bytecode file offset 0xb93b20"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
yesAllButtonString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) yesAllButtonPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonString: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    ^recoveredBlock7Value0
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'YES1YES2NOCANCEL'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 'Yes'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'YESALWAYSNOCANCEL'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 'Yes, Always'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := 'OK'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e124c; bytecode file offset 0xbddb24"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
setModalState
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompterStyle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := XmSYSTEMMODAL.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
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
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setSysModal.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompterStyle.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := XmFULLAPPLICATIONMODAL.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) setAppModal.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompterStyle.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := XmPRIMARYAPPLICATIONMODAL.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) setPrimaryModal.
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

"ASDBase.ic method 0x2030ba94; bytecode file offset 0xc08360"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
noButtonAvailable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'YESNO'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'NOYES'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'YESNOCANCEL'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'YES1YES2NOCANCEL'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'YESALWAYSNOCANCEL'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031b7b8; bytecode file offset 0xc18090"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
getNextTimeButtonText
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextTimeButtonText.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextTimeButtonText.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'REMDECISION'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 'Remember my Decision'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextTimeButtonText.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'DONTSHOWHINTAGAIN'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 'Don''t show this hint again'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextTimeButtonText.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'DONTSHOWAGAIN'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := 'Don''t show this message again'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextTimeButtonText.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 'ALWAYSSAVECHANGES'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := 'Always save changes'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextTimeButtonText.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035980c; bytecode file offset 0xc56100"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
cancelButtonAvailable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'OKCANCEL'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'CANCELOK'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'YESCANCEL'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'YESNOCANCEL'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'YES1YES2NOCANCEL'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'YESALWAYSNOCANCEL'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20359830; bytecode file offset 0xc56100"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
yesButtonAvailable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'YESNO'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'NOYES'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'YESCANCEL'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'YESNOCANCEL'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'YES1YES2NOCANCEL'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'YESALWAYSNOCANCEL'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20371790; bytecode file offset 0xc6e07c"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
ok: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDUserActionObserver.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) labelString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'Dialog'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) addUserAction: (recoveredStack2) type: (recoveredStack3) window: (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'call_77428'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) shell.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) isDestroyed.
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 44] ifFalse: [recoveredBlock21PC := 38].
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 40.
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) form.
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) unmanageChild.
            recoveredBlock21PC := 44.
        ].
        recoveredBlock21Step = 44 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'YES1YES2NOCANCEL'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            answer := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            answer := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037cb78; bytecode file offset 0xc79454"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
checkDefaultButton
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultButton.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock10Value0 |
    recoveredBlock10Value0 := (self) defaultButton.
    recoveredBlock10Value0
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'OK'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock20Value0 |
    recoveredBlock20Value0 := (self) setDefaultButton: ('okButton').
    recoveredBlock20Value0
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 'YES'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock32Value0 |
    recoveredBlock32Value0 := (self) setDefaultButton: ('okButton').
    recoveredBlock32Value0
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack5 := 'NO'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock44Value0 |
    recoveredBlock44Value0 := (self) setDefaultButton: ('noButton').
    recoveredBlock44Value0
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack7 := 'CANCEL'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack8 := [
    | recoveredBlock56Value0 |
    recoveredBlock56Value0 := (self) setDefaultButton: ('cancelButton').
    recoveredBlock56Value0
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) case: (recoveredStack1) do: (recoveredStack2) case: (recoveredStack3) do: (recoveredStack4) case: (recoveredStack5) do: (recoveredStack6) case: (recoveredStack7) do: (recoveredStack8).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d652c; bytecode file offset 0xcd2e24"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
yesAll: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDUserActionObserver.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) labelString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'Dialog'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) addUserAction: (recoveredStack2) type: (recoveredStack3) window: (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'call_77428'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) shell.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) isDestroyed.
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 44] ifFalse: [recoveredBlock21PC := 38].
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 40.
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) form.
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) unmanageChild.
            recoveredBlock21PC := 44.
        ].
        recoveredBlock21Step = 44 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'YES1YES2NOCANCEL'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            answer := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            answer := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextTimeButton.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock70Value0 recoveredBlock70Value1 |
    recoveredBlock70Value0 := (self) nextTimeButton.
    recoveredBlock70Value1 := (recoveredBlock70Value0) set: (true).
    recoveredBlock70Value1
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
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

"ASDBase.ic method 0x203f2b24; bytecode file offset 0xcef408"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
okButtonString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) okButtonPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonString: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    ^recoveredBlock7Value0
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'YESNO'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 'Yes'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'NOYES'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 'Yes'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'YESCANCEL'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := 'Yes'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'YESNOCANCEL'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 'Yes'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'YES1YES2NOCANCEL'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := 'Yes'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := 'YESALWAYSNOCANCEL'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := 'Yes'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := 'OK'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041ca94; bytecode file offset 0xd1936c"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
noButtonPosition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'OK'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 0.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'OKCANCEL'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'CANCELOK'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'YESNO'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := 2.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'NOYES'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'YESNOCANCEL'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'YES1YES2NOCANCEL'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := 3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 'YESALWAYSNOCANCEL'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := 3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041cb28; bytecode file offset 0xd19400"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
cancelButtonPosition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'OK'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 0.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'OKCANCEL'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'CANCELOK'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'YESNO'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := 0.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'NOYES'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'YESNOCANCEL'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := 3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'YES1YES2NOCANCEL'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := 4.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 'YESALWAYSNOCANCEL'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := 4.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20449da8; bytecode file offset 0xd466ac"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
openShellModal: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := CwWMShell.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusShell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) createShell.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) createWidgetHierarchy.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) setModalState.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) initializeAfterCreate.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'NOYES'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) buttons.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) setDefaultButton: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'CANCELOK'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) buttons.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) setDefaultButton: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'YESALWAYSNOCANCEL'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) buttons.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) setDefaultButton: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) checkDefaultButton.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) redraw.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044d39c; bytecode file offset 0xd49c78"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
yesAllButtonPosition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'OK'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 0.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'OKCANCEL'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'YESCANCEL'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'CANCELOK'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := 0.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'YESNO'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'NOYES'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'YESNOCANCEL'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 'YES1YES2NOCANCEL'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 'YESALWAYSNOCANCEL'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044d440; bytecode file offset 0xd49d1c"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
okButtonPosition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'OK'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 1.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'OKCANCEL'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'YESCANCEL'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'CANCELOK'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := 2.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'YESNO'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'NOYES'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'YESNOCANCEL'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 'YES1YES2NOCANCEL'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 'YESALWAYSNOCANCEL'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044d4e4; bytecode file offset 0xd49dc0"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
numberOfButtons
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'OK'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 1.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'OKCANCEL'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'CANCELOK'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'YESNO'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := 2.
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
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'YESCANCEL'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'NOYES'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'YESNOCANCEL'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := 3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 'YES1YES2NOCANCEL'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := 4.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonStyle.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 'YESALWAYSNOCANCEL'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := 4.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c6800; bytecode file offset 0xdc3134"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
createShell
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := CwWMShell.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusShell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := CwTopLevelShell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'tempShell'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:block28106c30Arg1 | 
    | block28106c30Value0 block28106c30Value1 |
    block28106c30Value0 := block28106c30Arg1.
    block28106c30Value1 := (block28106c30Value0) mappedWhenManaged: (false).
    block28106c30Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) createApplicationShell: (recoveredStack1) argBlock: (recoveredStack2).
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
            (recoveredStack0) realizeWidget.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'EtasMessagePrompterShell'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Stack0 recoveredBlock56Stack1 recoveredBlock56Stack2 recoveredBlock56Stack3 recoveredBlock56Stack4 recoveredBlock56Stack5 recoveredBlock56PC recoveredBlock56Step recoveredBlock56Done recoveredBlock56Result |
    recoveredBlock56Stack0 := self.
    recoveredBlock56PC := 62.
    recoveredBlock56Done := false.
    [recoveredBlock56Done not] whileTrue: [
        recoveredBlock56Step := recoveredBlock56PC.
        recoveredBlock56Step = 62 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 63.
        ].
        recoveredBlock56Step = 63 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Stack1.
            recoveredBlock56PC := 64.
        ].
        recoveredBlock56Step = 64 ifTrue: [
            recoveredBlock56Stack3 := self.
            recoveredBlock56PC := 65.
        ].
        recoveredBlock56Step = 65 ifTrue: [
            recoveredBlock56Stack3 := (recoveredBlock56Stack3) title.
            recoveredBlock56PC := 67.
        ].
        recoveredBlock56Step = 67 ifTrue: [
            (recoveredBlock56Stack2) title: (recoveredBlock56Stack3).
            recoveredBlock56Stack2 := recoveredBlock56Stack1.
            recoveredBlock56PC := 70.
        ].
        recoveredBlock56Step = 70 ifTrue: [
            recoveredBlock56Stack3 := RBWindowsResourceManager.
            recoveredBlock56PC := 72.
        ].
        recoveredBlock56Step = 72 ifTrue: [
            recoveredBlock56Stack3 := (recoveredBlock56Stack3) defaultIcon.
            recoveredBlock56PC := 74.
        ].
        recoveredBlock56Step = 74 ifTrue: [
            (recoveredBlock56Stack2) icon: (recoveredBlock56Stack3).
            recoveredBlock56PC := 76.
        ].
        recoveredBlock56Step = 76 ifTrue: [
            recoveredBlock56Stack2 := MWMDECORBORDER.
            recoveredBlock56PC := 78.
        ].
        recoveredBlock56Step = 78 ifTrue: [
            recoveredBlock56Stack3 := MWMDECORTITLE.
            recoveredBlock56PC := 80.
        ].
        recoveredBlock56Step = 80 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) | (recoveredBlock56Stack3).
            recoveredBlock56PC := 82.
        ].
        recoveredBlock56Step = 82 ifTrue: [
            recoveredBlock56Stack3 := self.
            recoveredBlock56PC := 83.
        ].
        recoveredBlock56Step = 83 ifTrue: [
            recoveredBlock56Stack3 := (recoveredBlock56Stack3) buttonStyle.
            recoveredBlock56PC := 85.
        ].
        recoveredBlock56Step = 85 ifTrue: [
            recoveredBlock56Stack4 := 'YESNO'.
            recoveredBlock56PC := 87.
        ].
        recoveredBlock56Step = 87 ifTrue: [
            (recoveredBlock56Stack3 ~~ recoveredBlock56Stack4) ifTrue: [recoveredBlock56PC := 96] ifFalse: [recoveredBlock56PC := 90].
        ].
        recoveredBlock56Step = 90 ifTrue: [
            recoveredBlock56Stack3 := 0.
            recoveredBlock56PC := 92.
        ].
        recoveredBlock56Step = 92 ifTrue: [
            recoveredBlock56PC := 98.
        ].
        recoveredBlock56Step = 96 ifTrue: [
            recoveredBlock56Stack3 := MWMDECORMENU.
            recoveredBlock56PC := 98.
        ].
        recoveredBlock56Step = 98 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) | (recoveredBlock56Stack3).
            recoveredBlock56PC := 100.
        ].
        recoveredBlock56Step = 100 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) mwmDecorations: (recoveredBlock56Stack2).
            recoveredBlock56PC := 102.
        ].
        recoveredBlock56Step = 102 ifTrue: [
            recoveredBlock56Result := recoveredBlock56Stack1.
            recoveredBlock56Done := true.
        ].
    ].
    recoveredBlock56Result
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) shell: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := XmNwindowCloseCallback.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := 'closeDialogRequested:clientData:callData:'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := XmNdestroyCallback.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := [:recoveredBlock131Arg1 :recoveredBlock131Arg2 :recoveredBlock131Arg3 | 
    | recoveredBlock131Value0 recoveredBlock131Value1 |
    recoveredBlock131Value0 := recoveredLocal1.
    recoveredBlock131Value1 := (recoveredBlock131Value0) destroyWidget.
    recoveredBlock131Value1
].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := 'value:value:value:'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204dbca8; bytecode file offset 0xdd85dc"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
prompt
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionInstance.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompterID.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDialogDisabled: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := 'Automatically answered '.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := self.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) storedDecisionResult.
            recoveredBlock16PC := 27.
        ].
        recoveredBlock16Step = 27 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 30] ifFalse: [recoveredBlock16PC := 36].
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack2 := 'YES'.
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            recoveredBlock16PC := 38.
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16Stack2 := 'NO'.
            recoveredBlock16PC := 38.
        ].
        recoveredBlock16Step = 38 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 40.
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack2 := ' to "'.
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 44.
        ].
        recoveredBlock16Step = 44 ifTrue: [
            recoveredBlock16Stack2 := self.
            recoveredBlock16PC := 45.
        ].
        recoveredBlock16Step = 45 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) title.
            recoveredBlock16PC := 47.
        ].
        recoveredBlock16Step = 47 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 49.
        ].
        recoveredBlock16Step = 49 ifTrue: [
            recoveredBlock16Stack2 := '"'.
            recoveredBlock16PC := 51.
        ].
        recoveredBlock16Step = 51 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 53.
        ].
        recoveredBlock16Step = 53 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) addInfoTextBlock: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) storedDecisionResult.
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
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNil.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) openShellModal: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) bringToFront.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) makeAlwaysOnTop: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) readAndDispatch.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) wait.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 109].
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) updateDisplay.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := answer.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 143] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := answer.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) storeAnswer: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 157] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) destroyWidget.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := answer.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2060df30; bytecode file offset 0xf0a838"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := $~.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttons.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 recoveredBlock12Value11 recoveredBlock12Value12 recoveredBlock12Value13 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (recoveredBlock12Value0) labelString.
    recoveredBlock12Local1 := recoveredBlock12Value1.
    recoveredBlock12Value2 := recoveredBlock12Arg1.
    recoveredBlock12Value3 := recoveredBlock12Local1.
    recoveredBlock12Value4 := recoveredLocal1.
    recoveredBlock12Value5 := [
    | recoveredBlock12Block34Stack0 recoveredBlock12Block34Stack1 recoveredBlock12Block34Stack2 recoveredBlock12Block34PC recoveredBlock12Block34Step recoveredBlock12Block34Done recoveredBlock12Block34Result |
    recoveredBlock12Block34Stack0 := nil.
    recoveredBlock12Block34PC := 40.
    recoveredBlock12Block34Done := false.
    [recoveredBlock12Block34Done not] whileTrue: [
        recoveredBlock12Block34Step := recoveredBlock12Block34PC.
        recoveredBlock12Block34Step = 40 ifTrue: [
            recoveredBlock12Block34Stack1 := recoveredBlock12Local1.
            recoveredBlock12Block34PC := 43.
        ].
        recoveredBlock12Block34Step = 43 ifTrue: [
            recoveredBlock12Block34Stack1 := (recoveredBlock12Block34Stack1) notEmpty.
            recoveredBlock12Block34PC := 44.
        ].
        recoveredBlock12Block34Step = 44 ifTrue: [
            (recoveredBlock12Block34Stack1) ifTrue: [recoveredBlock12Block34PC := 48] ifFalse: [recoveredBlock12Block34PC := 56].
        ].
        recoveredBlock12Block34Step = 48 ifTrue: [
            recoveredBlock12Block34Stack1 := recoveredBlock12Local1.
            recoveredBlock12Block34PC := 51.
        ].
        recoveredBlock12Block34Step = 51 ifTrue: [
            recoveredBlock12Block34Stack1 := (recoveredBlock12Block34Stack1) first.
            recoveredBlock12Block34PC := 52.
        ].
        recoveredBlock12Block34Step = 52 ifTrue: [
            recoveredBlock12Block34PC := 57.
        ].
        recoveredBlock12Block34Step = 56 ifTrue: [
            recoveredBlock12Block34Stack1 := nil.
            recoveredBlock12Block34PC := 57.
        ].
        recoveredBlock12Block34Step = 57 ifTrue: [
            recoveredBlock12Block34Result := recoveredBlock12Block34Stack1.
            recoveredBlock12Block34Done := true.
        ].
    ].
    recoveredBlock12Block34Result
].
    recoveredBlock12Value6 := (recoveredBlock12Value3) abtMnemonic: (recoveredBlock12Value4) ifAbsent: (recoveredBlock12Value5).
    (recoveredBlock12Value2) mnemonic: (recoveredBlock12Value6).
    recoveredBlock12Value7 := recoveredBlock12Arg1.
    recoveredBlock12Value8 := recoveredBlock12Local1.
    recoveredBlock12Value9 := recoveredLocal1.
    recoveredBlock12Value10 := (recoveredBlock12Value8) abtWithoutMnemonic: (recoveredBlock12Value9).
    (recoveredBlock12Value7) labelString: (recoveredBlock12Value10).
    recoveredBlock12Value11 := recoveredBlock12Arg1.
    (recoveredBlock12Value11) updateOSLabel.
    recoveredBlock12Value12 := recoveredBlock12Arg1.
    recoveredBlock12Value13 := (recoveredBlock12Value12) updateMnemonic.
    recoveredBlock12Value13
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) numberOfButtons.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttons.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 40.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) buttons.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) numberOfButtons.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 229].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttons.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) buttons.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttons.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := (recoveredStack2) buttons.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttons.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := 90.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := (recoveredStack2) buttons.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := (recoveredStack0) numberOfButtons.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 329].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttons.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := 60.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := (recoveredStack2) buttons.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttons.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := 40.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := (recoveredStack2) buttons.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttons.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := 140.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := (recoveredStack2) buttons.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := (recoveredStack0) numberOfButtons.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 338] ifFalse: [recoveredPC := 478].
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttons.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack2 := 110.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := (recoveredStack2) buttons.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttons.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack2 := (recoveredStack2) buttons.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttons.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack2 := 190.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack2 := (recoveredStack2) buttons.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttons.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack2 := 90.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack2 := (recoveredStack2) buttons.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack2 := 500.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20660d18; bytecode file offset 0xf5d6f8"
!EtasAbstractCustomizableMessagePrompter methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) initializeIcon.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'form'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [:block28124fa8Arg1 | 
    | block28124fa8Value0 block28124fa8Value1 |
    block28124fa8Value0 := block28124fa8Arg1.
    block28124fa8Value1 := (block28124fa8Value0) autoUnmanage: (false).
    block28124fa8Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'icon'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 recoveredBlock31Value5 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := recoveredBlock31Value0.
    recoveredBlock31Value2 := XmICON.
    (recoveredBlock31Value1) labelType: (recoveredBlock31Value2).
    recoveredBlock31Value3 := recoveredBlock31Value0.
    recoveredBlock31Value4 := (self) initializeIcon.
    (recoveredBlock31Value3) labelIcon: (recoveredBlock31Value4).
    recoveredBlock31Value5 := (recoveredBlock31Value0) width: (32).
    recoveredBlock31Value5
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 'label'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 recoveredBlock64Value4 |
    recoveredBlock64Value0 := recoveredBlock64Arg1.
    recoveredBlock64Value1 := recoveredBlock64Value0.
    recoveredBlock64Value2 := (self) message.
    (recoveredBlock64Value1) labelString: (recoveredBlock64Value2).
    recoveredBlock64Value3 := XmALIGNMENTBEGINNING.
    recoveredBlock64Value4 := (recoveredBlock64Value0) alignment: (recoveredBlock64Value3).
    recoveredBlock64Value4
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 'yesAllButton'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := [:recoveredBlock92Arg1 | 
    | recoveredBlock92Value0 recoveredBlock92Value1 recoveredBlock92Value2 recoveredBlock92Value3 |
    recoveredBlock92Value0 := recoveredBlock92Arg1.
    recoveredBlock92Value1 := recoveredBlock92Value0.
    recoveredBlock92Value2 := (self) yesAllButtonString.
    (recoveredBlock92Value1) labelString: (recoveredBlock92Value2).
    recoveredBlock92Value3 := (recoveredBlock92Value0) width: (80).
    recoveredBlock92Value3
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) yesAllButtonAvailable.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := [:recoveredBlock140Arg1 | 
    | recoveredBlock140Value0 recoveredBlock140Value1 recoveredBlock140Value2 recoveredBlock140Value3 |
    recoveredBlock140Value0 := recoveredBlock140Arg1.
    recoveredBlock140Value1 := recoveredBlock140Value0.
    recoveredBlock140Value2 := (self) okButtonString.
    (recoveredBlock140Value1) labelString: (recoveredBlock140Value2).
    recoveredBlock140Value3 := (recoveredBlock140Value0) width: (80).
    recoveredBlock140Value3
].
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) okButtonAvailable.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := 'noButton'.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := [:recoveredBlock188Arg1 | 
    | recoveredBlock188Value0 recoveredBlock188Value1 recoveredBlock188Value2 recoveredBlock188Value3 |
    recoveredBlock188Value0 := recoveredBlock188Arg1.
    recoveredBlock188Value1 := recoveredBlock188Value0.
    recoveredBlock188Value2 := (self) noButtonString.
    (recoveredBlock188Value1) labelString: (recoveredBlock188Value2).
    recoveredBlock188Value3 := (recoveredBlock188Value0) width: (80).
    recoveredBlock188Value3
].
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) noButtonAvailable.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredPC := 231.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := [:recoveredBlock236Arg1 | 
    | recoveredBlock236Value0 recoveredBlock236Value1 recoveredBlock236Value2 recoveredBlock236Value3 |
    recoveredBlock236Value0 := recoveredBlock236Arg1.
    recoveredBlock236Value1 := recoveredBlock236Value0.
    recoveredBlock236Value2 := (self) cancelButtonString.
    (recoveredBlock236Value1) labelString: (recoveredBlock236Value2).
    recoveredBlock236Value3 := (recoveredBlock236Value0) width: (80).
    recoveredBlock236Value3
].
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := (recoveredStack0) cancelButtonAvailable.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 266] ifFalse: [recoveredPC := 274].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredPC := 279.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := 'nextTime'.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := [:recoveredBlock284Arg1 | 
    | recoveredBlock284Value0 recoveredBlock284Value1 recoveredBlock284Value2 recoveredBlock284Value3 recoveredBlock284Value4 recoveredBlock284Value5 recoveredBlock284Value6 recoveredBlock284Value7 recoveredBlock284Value8 recoveredBlock284Value9 recoveredBlock284Value10 recoveredBlock284Value11 |
    recoveredBlock284Value0 := recoveredBlock284Arg1.
    recoveredBlock284Value1 := recoveredBlock284Value0.
    recoveredBlock284Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock284Value1) alignment: (recoveredBlock284Value2).
    recoveredBlock284Value3 := recoveredBlock284Value0.
    recoveredBlock284Value4 := (self) class.
    recoveredBlock284Value5 := (recoveredBlock284Value4) optionInstance.
    recoveredBlock284Value6 := (self) prompterID.
    recoveredBlock284Value7 := (recoveredBlock284Value5) isDialogDisabled: (recoveredBlock284Value6).
    (recoveredBlock284Value3) set: (recoveredBlock284Value7).
    recoveredBlock284Value8 := recoveredBlock284Value0.
    (recoveredBlock284Value8) height: (20).
    recoveredBlock284Value9 := recoveredBlock284Value0.
    recoveredBlock284Value10 := (self) getNextTimeButtonText.
    (recoveredBlock284Value9) labelString: (recoveredBlock284Value10).
    recoveredBlock284Value11 := (recoveredBlock284Value0) sensitive: (true).
    recoveredBlock284Value11
].
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            nextTimeButton := recoveredStack0.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := 'all'.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := [:recoveredBlock333Arg1 | 
    | recoveredBlock333Value0 recoveredBlock333Value1 recoveredBlock333Value2 recoveredBlock333Value3 recoveredBlock333Value4 recoveredBlock333Value5 recoveredBlock333Value6 |
    recoveredBlock333Value0 := recoveredBlock333Arg1.
    recoveredBlock333Value1 := recoveredBlock333Value0.
    recoveredBlock333Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock333Value1) alignment: (recoveredBlock333Value2).
    recoveredBlock333Value3 := recoveredBlock333Value0.
    (recoveredBlock333Value3) height: (20).
    recoveredBlock333Value4 := recoveredBlock333Value0.
    recoveredBlock333Value5 := (self) getAllButtonText.
    (recoveredBlock333Value4) labelString: (recoveredBlock333Value5).
    recoveredBlock333Value6 := (recoveredBlock333Value0) sensitive: (true).
    recoveredBlock333Value6
].
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            allButton := recoveredStack0.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := [:recoveredBlock368Arg1 | 
    | recoveredBlock368Value0 recoveredBlock368Value1 recoveredBlock368Value2 recoveredBlock368Value3 recoveredBlock368Value4 recoveredBlock368Value5 recoveredBlock368Value6 recoveredBlock368Value7 recoveredBlock368Value8 recoveredBlock368Value9 recoveredBlock368Value10 recoveredBlock368Value11 recoveredBlock368Value12 recoveredBlock368Value13 |
    recoveredBlock368Value0 := recoveredBlock368Arg1.
    recoveredBlock368Value1 := recoveredBlock368Value0.
    recoveredBlock368Value2 := XmATTACHFORM.
    (recoveredBlock368Value1) topAttachment: (recoveredBlock368Value2).
    recoveredBlock368Value3 := recoveredBlock368Value0.
    (recoveredBlock368Value3) topOffset: (10).
    recoveredBlock368Value4 := recoveredBlock368Value0.
    recoveredBlock368Value5 := XmATTACHWIDGET.
    (recoveredBlock368Value4) bottomAttachment: (recoveredBlock368Value5).
    recoveredBlock368Value6 := recoveredBlock368Value0.
    recoveredBlock368Value7 := nextTimeButton.
    (recoveredBlock368Value6) bottomWidget: (recoveredBlock368Value7).
    recoveredBlock368Value8 := recoveredBlock368Value0.
    (recoveredBlock368Value8) bottomOffset: (10).
    recoveredBlock368Value9 := recoveredBlock368Value0.
    recoveredBlock368Value10 := XmATTACHFORM.
    (recoveredBlock368Value9) leftAttachment: (recoveredBlock368Value10).
    recoveredBlock368Value11 := recoveredBlock368Value0.
    (recoveredBlock368Value11) leftOffset: (10).
    recoveredBlock368Value12 := XmATTACHNONE.
    recoveredBlock368Value13 := (recoveredBlock368Value0) rightAttachment: (recoveredBlock368Value12).
    recoveredBlock368Value13
].
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := [:recoveredBlock420Arg1 | 
    | recoveredBlock420Value0 recoveredBlock420Value1 recoveredBlock420Value2 recoveredBlock420Value3 recoveredBlock420Value4 recoveredBlock420Value5 recoveredBlock420Value6 recoveredBlock420Value7 recoveredBlock420Value8 recoveredBlock420Value9 recoveredBlock420Value10 recoveredBlock420Value11 recoveredBlock420Value12 recoveredBlock420Value13 recoveredBlock420Value14 recoveredBlock420Value15 recoveredBlock420Value16 |
    recoveredBlock420Value0 := recoveredBlock420Arg1.
    recoveredBlock420Value1 := recoveredBlock420Value0.
    recoveredBlock420Value2 := XmATTACHFORM.
    (recoveredBlock420Value1) topAttachment: (recoveredBlock420Value2).
    recoveredBlock420Value3 := recoveredBlock420Value0.
    (recoveredBlock420Value3) topOffset: (10).
    recoveredBlock420Value4 := recoveredBlock420Value0.
    recoveredBlock420Value5 := XmATTACHWIDGET.
    (recoveredBlock420Value4) bottomAttachment: (recoveredBlock420Value5).
    recoveredBlock420Value6 := recoveredBlock420Value0.
    recoveredBlock420Value7 := nextTimeButton.
    (recoveredBlock420Value6) bottomWidget: (recoveredBlock420Value7).
    recoveredBlock420Value8 := recoveredBlock420Value0.
    (recoveredBlock420Value8) bottomOffset: (10).
    recoveredBlock420Value9 := recoveredBlock420Value0.
    recoveredBlock420Value10 := XmATTACHWIDGET.
    (recoveredBlock420Value9) leftAttachment: (recoveredBlock420Value10).
    recoveredBlock420Value11 := recoveredBlock420Value0.
    recoveredBlock420Value12 := recoveredLocal4.
    (recoveredBlock420Value11) leftWidget: (recoveredBlock420Value12).
    recoveredBlock420Value13 := recoveredBlock420Value0.
    (recoveredBlock420Value13) leftOffset: (10).
    recoveredBlock420Value14 := recoveredBlock420Value0.
    recoveredBlock420Value15 := XmATTACHFORM.
    (recoveredBlock420Value14) rightAttachment: (recoveredBlock420Value15).
    recoveredBlock420Value16 := (recoveredBlock420Value0) rightOffset: (10).
    recoveredBlock420Value16
].
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack0 := (recoveredStack0) allButtonAvailable.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 490] ifFalse: [recoveredPC := 548].
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack0 := nextTimeButton.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack1 := [:recoveredBlock492Arg1 | 
    | recoveredBlock492Value0 recoveredBlock492Value1 recoveredBlock492Value2 recoveredBlock492Value3 recoveredBlock492Value4 recoveredBlock492Value5 recoveredBlock492Value6 recoveredBlock492Value7 recoveredBlock492Value8 recoveredBlock492Value9 recoveredBlock492Value10 recoveredBlock492Value11 recoveredBlock492Value12 recoveredBlock492Value13 |
    recoveredBlock492Value0 := recoveredBlock492Arg1.
    recoveredBlock492Value1 := recoveredBlock492Value0.
    recoveredBlock492Value2 := XmATTACHNONE.
    (recoveredBlock492Value1) topAttachment: (recoveredBlock492Value2).
    recoveredBlock492Value3 := recoveredBlock492Value0.
    recoveredBlock492Value4 := XmATTACHWIDGET.
    (recoveredBlock492Value3) bottomAttachment: (recoveredBlock492Value4).
    recoveredBlock492Value5 := recoveredBlock492Value0.
    recoveredBlock492Value6 := allButton.
    (recoveredBlock492Value5) bottomWidget: (recoveredBlock492Value6).
    recoveredBlock492Value7 := recoveredBlock492Value0.
    (recoveredBlock492Value7) bottomOffset: (5).
    recoveredBlock492Value8 := recoveredBlock492Value0.
    recoveredBlock492Value9 := XmATTACHFORM.
    (recoveredBlock492Value8) leftAttachment: (recoveredBlock492Value9).
    recoveredBlock492Value10 := recoveredBlock492Value0.
    (recoveredBlock492Value10) leftOffset: (52).
    recoveredBlock492Value11 := recoveredBlock492Value0.
    recoveredBlock492Value12 := XmATTACHFORM.
    (recoveredBlock492Value11) rightAttachment: (recoveredBlock492Value12).
    recoveredBlock492Value13 := (recoveredBlock492Value0) rightOffset: (10).
    recoveredBlock492Value13
].
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredPC := 602.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack0 := nextTimeButton.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := [:recoveredBlock550Arg1 | 
    | recoveredBlock550Value0 recoveredBlock550Value1 recoveredBlock550Value2 recoveredBlock550Value3 recoveredBlock550Value4 recoveredBlock550Value5 recoveredBlock550Value6 recoveredBlock550Value7 recoveredBlock550Value8 recoveredBlock550Value9 recoveredBlock550Value10 recoveredBlock550Value11 recoveredBlock550Value12 recoveredBlock550Value13 |
    recoveredBlock550Value0 := recoveredBlock550Arg1.
    recoveredBlock550Value1 := recoveredBlock550Value0.
    recoveredBlock550Value2 := XmATTACHNONE.
    (recoveredBlock550Value1) topAttachment: (recoveredBlock550Value2).
    recoveredBlock550Value3 := recoveredBlock550Value0.
    recoveredBlock550Value4 := XmATTACHWIDGET.
    (recoveredBlock550Value3) bottomAttachment: (recoveredBlock550Value4).
    recoveredBlock550Value5 := recoveredBlock550Value0.
    recoveredBlock550Value6 := recoveredLocal5.
    (recoveredBlock550Value5) bottomWidget: (recoveredBlock550Value6).
    recoveredBlock550Value7 := recoveredBlock550Value0.
    (recoveredBlock550Value7) bottomOffset: (10).
    recoveredBlock550Value8 := recoveredBlock550Value0.
    recoveredBlock550Value9 := XmATTACHFORM.
    (recoveredBlock550Value8) leftAttachment: (recoveredBlock550Value9).
    recoveredBlock550Value10 := recoveredBlock550Value0.
    (recoveredBlock550Value10) leftOffset: (52).
    recoveredBlock550Value11 := recoveredBlock550Value0.
    recoveredBlock550Value12 := XmATTACHFORM.
    (recoveredBlock550Value11) rightAttachment: (recoveredBlock550Value12).
    recoveredBlock550Value13 := (recoveredBlock550Value0) rightOffset: (10).
    recoveredBlock550Value13
].
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack0 := allButton.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack1 := [:recoveredBlock604Arg1 | 
    | recoveredBlock604Value0 recoveredBlock604Value1 recoveredBlock604Value2 recoveredBlock604Value3 recoveredBlock604Value4 recoveredBlock604Value5 recoveredBlock604Value6 recoveredBlock604Value7 recoveredBlock604Value8 recoveredBlock604Value9 recoveredBlock604Value10 recoveredBlock604Value11 recoveredBlock604Value12 recoveredBlock604Value13 |
    recoveredBlock604Value0 := recoveredBlock604Arg1.
    recoveredBlock604Value1 := recoveredBlock604Value0.
    recoveredBlock604Value2 := XmATTACHNONE.
    (recoveredBlock604Value1) topAttachment: (recoveredBlock604Value2).
    recoveredBlock604Value3 := recoveredBlock604Value0.
    recoveredBlock604Value4 := XmATTACHWIDGET.
    (recoveredBlock604Value3) bottomAttachment: (recoveredBlock604Value4).
    recoveredBlock604Value5 := recoveredBlock604Value0.
    recoveredBlock604Value6 := recoveredLocal5.
    (recoveredBlock604Value5) bottomWidget: (recoveredBlock604Value6).
    recoveredBlock604Value7 := recoveredBlock604Value0.
    (recoveredBlock604Value7) bottomOffset: (10).
    recoveredBlock604Value8 := recoveredBlock604Value0.
    recoveredBlock604Value9 := XmATTACHFORM.
    (recoveredBlock604Value8) leftAttachment: (recoveredBlock604Value9).
    recoveredBlock604Value10 := recoveredBlock604Value0.
    (recoveredBlock604Value10) leftOffset: (52).
    recoveredBlock604Value11 := recoveredBlock604Value0.
    recoveredBlock604Value12 := XmATTACHFORM.
    (recoveredBlock604Value11) rightAttachment: (recoveredBlock604Value12).
    recoveredBlock604Value13 := (recoveredBlock604Value0) rightOffset: (10).
    recoveredBlock604Value13
].
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack1 := [:block28124fccArg1 | 
    | block28124fccValue0 block28124fccValue1 block28124fccValue2 block28124fccValue3 block28124fccValue4 block28124fccValue5 block28124fccValue6 block28124fccValue7 block28124fccValue8 block28124fccValue9 |
    block28124fccValue0 := block28124fccArg1.
    block28124fccValue1 := block28124fccValue0.
    block28124fccValue2 := XmATTACHNONE.
    (block28124fccValue1) topAttachment: (block28124fccValue2).
    block28124fccValue3 := block28124fccValue0.
    block28124fccValue4 := XmATTACHFORM.
    (block28124fccValue3) bottomAttachment: (block28124fccValue4).
    block28124fccValue5 := block28124fccValue0.
    (block28124fccValue5) bottomOffset: (10).
    block28124fccValue6 := block28124fccValue0.
    block28124fccValue7 := XmATTACHNONE.
    (block28124fccValue6) rightAttachment: (block28124fccValue7).
    block28124fccValue8 := XmATTACHNONE.
    block28124fccValue9 := (block28124fccValue0) leftAttachment: (block28124fccValue8).
    block28124fccValue9
].
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack1 := [:block28124ff0Arg1 | 
    | block28124ff0Value0 block28124ff0Value1 block28124ff0Value2 block28124ff0Value3 block28124ff0Value4 block28124ff0Value5 block28124ff0Value6 block28124ff0Value7 block28124ff0Value8 block28124ff0Value9 |
    block28124ff0Value0 := block28124ff0Arg1.
    block28124ff0Value1 := block28124ff0Value0.
    block28124ff0Value2 := XmATTACHNONE.
    (block28124ff0Value1) topAttachment: (block28124ff0Value2).
    block28124ff0Value3 := block28124ff0Value0.
    block28124ff0Value4 := XmATTACHFORM.
    (block28124ff0Value3) bottomAttachment: (block28124ff0Value4).
    block28124ff0Value5 := block28124ff0Value0.
    (block28124ff0Value5) bottomOffset: (10).
    block28124ff0Value6 := block28124ff0Value0.
    block28124ff0Value7 := XmATTACHNONE.
    (block28124ff0Value6) rightAttachment: (block28124ff0Value7).
    block28124ff0Value8 := XmATTACHNONE.
    block28124ff0Value9 := (block28124ff0Value0) leftAttachment: (block28124ff0Value8).
    block28124ff0Value9
].
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack1 := [:block28125014Arg1 | 
    | block28125014Value0 block28125014Value1 block28125014Value2 block28125014Value3 block28125014Value4 block28125014Value5 block28125014Value6 block28125014Value7 block28125014Value8 block28125014Value9 |
    block28125014Value0 := block28125014Arg1.
    block28125014Value1 := block28125014Value0.
    block28125014Value2 := XmATTACHNONE.
    (block28125014Value1) topAttachment: (block28125014Value2).
    block28125014Value3 := block28125014Value0.
    block28125014Value4 := XmATTACHFORM.
    (block28125014Value3) bottomAttachment: (block28125014Value4).
    block28125014Value5 := block28125014Value0.
    (block28125014Value5) bottomOffset: (10).
    block28125014Value6 := block28125014Value0.
    block28125014Value7 := XmATTACHNONE.
    (block28125014Value6) leftAttachment: (block28125014Value7).
    block28125014Value8 := XmATTACHNONE.
    block28125014Value9 := (block28125014Value0) rightAttachment: (block28125014Value8).
    block28125014Value9
].
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack1 := [:block28125038Arg1 | 
    | block28125038Value0 block28125038Value1 block28125038Value2 block28125038Value3 block28125038Value4 block28125038Value5 block28125038Value6 block28125038Value7 block28125038Value8 block28125038Value9 |
    block28125038Value0 := block28125038Arg1.
    block28125038Value1 := block28125038Value0.
    block28125038Value2 := XmATTACHNONE.
    (block28125038Value1) topAttachment: (block28125038Value2).
    block28125038Value3 := block28125038Value0.
    block28125038Value4 := XmATTACHFORM.
    (block28125038Value3) bottomAttachment: (block28125038Value4).
    block28125038Value5 := block28125038Value0.
    (block28125038Value5) bottomOffset: (10).
    block28125038Value6 := block28125038Value0.
    block28125038Value7 := XmATTACHNONE.
    (block28125038Value6) leftAttachment: (block28125038Value7).
    block28125038Value8 := XmATTACHNONE.
    block28125038Value9 := (block28125038Value0) rightAttachment: (block28125038Value8).
    block28125038Value9
].
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            recoveredStack3 := 'yesAll:clientData:callData:'.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            recoveredStack3 := 'ok:clientData:callData:'.
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            recoveredStack3 := 'no:clientData:callData:'.
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 851.
        ].
        recoveredStep = 851 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 862.
        ].
        recoveredStep = 862 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack3 := 'cancel:clientData:callData:'.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 871.
        ].
        recoveredStep = 871 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 874.
        ].
        recoveredStep = 874 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextTimeButtonVisible.
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 890] ifFalse: [recoveredPC := 894].
        ].
        recoveredStep = 890 ifTrue: [
            recoveredStack0 := nextTimeButton.
            recoveredPC := 892.
        ].
        recoveredStep = 892 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 895.
        ].
        recoveredStep = 895 ifTrue: [
            recoveredStack0 := (recoveredStack0) allButtonAvailable.
            recoveredPC := 899.
        ].
        recoveredStep = 899 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 902] ifFalse: [recoveredPC := 906].
        ].
        recoveredStep = 902 ifTrue: [
            recoveredStack0 := allButton.
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 906.
        ].
        recoveredStep = 906 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 912.
        ].
        recoveredStep = 912 ifTrue: [
            (recoveredStack0) defaultButton: (recoveredStack1).
            recoveredPC := 917.
        ].
        recoveredStep = 917 ifTrue: [
            recoveredStack0 := nextTimeButton.
            recoveredPC := 919.
        ].
        recoveredStep = 919 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 923.
        ].
        recoveredStep = 923 ifTrue: [
            recoveredStack0 := allButton.
            recoveredPC := 925.
        ].
        recoveredStep = 925 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 929.
        ].
        recoveredStep = 929 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 937.
        ].
        recoveredStep = 937 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 940.
        ].
        recoveredStep = 940 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 945.
        ].
        recoveredStep = 945 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 948.
        ].
        recoveredStep = 948 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 975.
        ].
        recoveredStep = 975 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 978.
        ].
        recoveredStep = 978 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 983.
        ].
        recoveredStep = 983 ifTrue: [
            (recoveredStack0) buttons: (recoveredStack1).
            recoveredPC := 987.
        ].
        recoveredStep = 987 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 988.
        ].
        recoveredStep = 988 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200028f8; bytecode file offset 0x8ffcfc"
!EtasMessageBoxDialog methodsFor: 'recovered'!
setDefaultWindowConfigurationForUserInterface
    ^self
! !

"ASDBase.ic method 0x20009f5c; bytecode file offset 0x908be4"
!EtasMessageBoxDialog methodsFor: 'recovered'!
topWidget
    | recoveredValue0 |
    recoveredValue0 := (self) messageBox.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004392c; bytecode file offset 0x9451f8"
!EtasMessageBoxDialog methodsFor: 'recovered'!
messageBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('messageBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20087c44; bytecode file offset 0x9845b8"
!EtasMessageBoxDialog methodsFor: 'recovered'!
decorations
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := MWMDECORBORDER.
    recoveredValue1 := MWMDECORTITLE.
    recoveredValue2 := (recoveredValue0) | (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2013dd18; bytecode file offset 0xa3a5e0"
!EtasMessageBoxDialog methodsFor: 'recovered'!
setTopWidgetAttachments
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) topWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cbcacArg1 | 
    | block280cbcacValue0 block280cbcacValue1 block280cbcacValue2 |
    block280cbcacValue0 := block280cbcacArg1.
    block280cbcacValue1 := XmATTACHFORM.
    block280cbcacValue2 := (block280cbcacValue0) topAttachment: (block280cbcacValue1).
    block280cbcacValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
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

"ASDBase.ic method 0x201d80f0; bytecode file offset 0xad49c8"
!EtasMessageBoxDialog methodsFor: 'recovered'!
initializeButtons
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    super initializeButtons.
    recoveredValue0 := (self) shell.
    recoveredValue1 := (self) topWidget.
    recoveredValue2 := (recoveredValue1) preferredExtent.
    recoveredValue3 := (recoveredValue2) y.
    recoveredValue4 := (self) button: (1).
    recoveredValue5 := (recoveredValue4) height.
    recoveredValue6 := (recoveredValue3) + (recoveredValue5).
    (recoveredValue0) height: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2022cdac; bytecode file offset 0xb2967c"
!EtasMessageBoxDialog methodsFor: 'recovered'!
setMessageString: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) messageBox.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) messageString: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageBox.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) preferredExtent.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20244958; bytecode file offset 0xb41234"
!EtasMessageBoxDialog methodsFor: 'recovered'!
createTopWidgetParent: recoveredArg1 widgetDictionary: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'messageBox'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [:block280de3b4Arg1 | 
    | block280de3b4Value0 block280de3b4Value1 block280de3b4Value2 block280de3b4Value3 block280de3b4Value4 |
    block280de3b4Value0 := block280de3b4Arg1.
    block280de3b4Value1 := block280de3b4Value0.
    block280de3b4Value2 := XmDIALOGQUESTION.
    (block280de3b4Value1) dialogType: (block280de3b4Value2).
    block280de3b4Value3 := XmRESIZEGROW.
    block280de3b4Value4 := (block280de3b4Value0) resizePolicy: (block280de3b4Value3).
    block280de3b4Value4
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMessageBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'messageBox'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2024e92c; bytecode file offset 0xb4b204"
!EtasMessageBoxDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) messageBox.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := XmDIALOGOKBUTTON.
    recoveredValue3 := (recoveredValue1) getChild: (recoveredValue2).
    (recoveredValue3) unmanageChild.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := XmDIALOGHELPBUTTON.
    recoveredValue6 := (recoveredValue4) getChild: (recoveredValue5).
    (recoveredValue6) unmanageChild.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmDIALOGSEPARATOR.
    recoveredValue9 := (recoveredValue7) getChild: (recoveredValue8).
    (recoveredValue9) unmanageChild.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := XmDIALOGCANCELBUTTON.
    recoveredValue12 := (recoveredValue10) getChild: (recoveredValue11).
    (recoveredValue12) unmanageChild.
    super initializeAfterCreate.
    ^self
! !


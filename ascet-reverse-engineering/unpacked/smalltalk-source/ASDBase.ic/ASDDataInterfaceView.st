"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2017dc98; bytecode file offset 0xa7a564"
!ASDDataInterfaceView methodsFor: 'recovered'!
visiblePaletteButtons
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) paletteBasicBlocksName.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue4) at: (recoveredValue6) put: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201ca6f4; bytecode file offset 0xac6fc4"
!ASDDataInterfaceView methodsFor: 'recovered'!
editorName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) editorName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ' Interface Editor'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038a1d0; bytecode file offset 0xc86ac4"
!ASDDataInterfaceView methodsFor: 'recovered'!
writeDefaultToolbarConfiguration
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) add: ('Separator').
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) add: ('GeneralUndo').
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) add: ('GeneralRedo').
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) add: ('GeneralEditData').
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) add: ('GeneralEditImplementation').
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) add: ('GeneralCut').
    recoveredValue8 := recoveredLocal1.
    (recoveredValue8) add: ('GeneralCopy').
    recoveredValue9 := recoveredLocal1.
    (recoveredValue9) add: ('GeneralPaste').
    recoveredValue10 := recoveredLocal1.
    (recoveredValue10) add: ('GeneralDelete').
    recoveredValue11 := recoveredLocal1.
    (recoveredValue11) add: ('Separator').
    recoveredValue12 := recoveredLocal1.
    (recoveredValue12) add: ('GeneralComponentAdd').
    recoveredValue13 := (self) userInterfaceManager.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (self) toolbarGeneralsName.
    (recoveredValue13) writeToolbarConfiguration: (recoveredValue14) toolbar: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x203f62cc; bytecode file offset 0xcf2bcc"
!ASDDataInterfaceView methodsFor: 'recovered'!
availableToolbarButtons
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    (recoveredValue6) add: ('Separator').
    recoveredValue7 := recoveredLocal2.
    (recoveredValue7) add: ('GeneralUndo').
    recoveredValue8 := recoveredLocal2.
    (recoveredValue8) add: ('GeneralRedo').
    recoveredValue9 := recoveredLocal2.
    (recoveredValue9) add: ('GeneralEditData').
    recoveredValue10 := recoveredLocal2.
    (recoveredValue10) add: ('GeneralEditImplementation').
    recoveredValue11 := recoveredLocal2.
    (recoveredValue11) add: ('GeneralCut').
    recoveredValue12 := recoveredLocal2.
    (recoveredValue12) add: ('GeneralCopy').
    recoveredValue13 := recoveredLocal2.
    (recoveredValue13) add: ('GeneralPaste').
    recoveredValue14 := recoveredLocal2.
    (recoveredValue14) add: ('GeneralDelete').
    recoveredValue15 := recoveredLocal2.
    (recoveredValue15) add: ('GeneralOptions').
    recoveredValue16 := recoveredLocal2.
    (recoveredValue16) add: ('EditorNavigateUp').
    recoveredValue17 := recoveredLocal2.
    (recoveredValue17) add: ('GeneralComponentAdd').
    recoveredValue18 := recoveredLocal3.
    recoveredValue19 := (self) toolbarGeneralsName.
    recoveredValue20 := recoveredLocal2.
    (recoveredValue18) at: (recoveredValue19) put: (recoveredValue20).
    recoveredValue21 := recoveredLocal3.
    recoveredValue22 := (self) toolbarBasicBlocksName.
    recoveredValue23 := recoveredLocal1.
    (recoveredValue21) at: (recoveredValue22) put: (recoveredValue23).
    recoveredValue24 := recoveredLocal3.
    ^recoveredValue24
! !


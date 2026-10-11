"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001320; bytecode file offset 0x8ffcfc"
!ASDBDECommentDialog methodsFor: 'recovered'!
initializeViewConfigurationFrame
    ^self
! !

"ASDBase.ic method 0x2004438c; bytecode file offset 0x9451f8"
!ASDBDECommentDialog methodsFor: 'recovered'!
widgetOkButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('okButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044c8c; bytecode file offset 0x9451f8"
!ASDBDECommentDialog methodsFor: 'recovered'!
widgetCommentField
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('commentField').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004573c; bytecode file offset 0x9451f8"
!ASDBDECommentDialog methodsFor: 'recovered'!
widgetViewConfigurationFrame
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('viewConfigurationFrame').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ed68; bytecode file offset 0x94d048"
!ASDBDECommentDialog methodsFor: 'recovered'!
cancel
    (self) close.
    ^self
! !

"ASDBase.ic method 0x2005a7d0; bytecode file offset 0x957a6c"
!ASDBDECommentDialog methodsFor: 'recovered'!
cancelButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005aadc; bytecode file offset 0x957a6c"
!ASDBDECommentDialog methodsFor: 'recovered'!
okButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x200706a8; bytecode file offset 0x96d06c"
!ASDBDECommentDialog methodsFor: 'recovered'!
text
    | recoveredValue0 |
    recoveredValue0 := text.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200709d8; bytecode file offset 0x96d3ec"
!ASDBDECommentDialog methodsFor: 'recovered'!
readOnly
    | recoveredValue0 |
    recoveredValue0 := readOnly.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070bd4; bytecode file offset 0x96d580"
!ASDBDECommentDialog methodsFor: 'recovered'!
graphicObject
    | recoveredValue0 |
    recoveredValue0 := graphicObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070d28; bytecode file offset 0x96d6a4"
!ASDBDECommentDialog methodsFor: 'recovered'!
useDefaults
    | recoveredValue0 |
    recoveredValue0 := useDefaults.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c6ca0; bytecode file offset 0x9c36ec"
!ASDBDECommentDialog methodsFor: 'recovered'!
text: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    text := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c70b8; bytecode file offset 0x9c3a8c"
!ASDBDECommentDialog methodsFor: 'recovered'!
readOnly: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    readOnly := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7244; bytecode file offset 0x9c3c10"
!ASDBDECommentDialog methodsFor: 'recovered'!
graphicObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    graphicObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7438; bytecode file offset 0x9c3d64"
!ASDBDECommentDialog methodsFor: 'recovered'!
useDefaults: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    useDefaults := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e6600; bytecode file offset 0x9e30bc"
!ASDBDECommentDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 |
    super initializeAfterOpen.
    recoveredValue0 := (self) widgetCommentField.
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x200e8bf0; bytecode file offset 0x9e54ac"
!ASDBDECommentDialog methodsFor: 'recovered'!
title: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    title := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    super title: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20118804; bytecode file offset 0xa150e8"
!ASDBDECommentDialog methodsFor: 'recovered'!
ok
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetCommentField.
    recoveredValue1 := (recoveredValue0) getString.
    (self) result: (recoveredValue1).
    (self) changeViewConfiguration.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x20152538; bytecode file offset 0xa4edf4"
!ASDBDECommentDialog methodsFor: 'recovered'!
title
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := title.
    recoveredValue1 := [
    ^'Insert/Edit Comment'
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := title.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20171a7c; bytecode file offset 0xa6e344"
!ASDBDECommentDialog methodsFor: 'recovered'!
initializeSensitivity
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) readOnly.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCommentField.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOkButton.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
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

"ASDBase.ic method 0x202a0808; bytecode file offset 0xb9d0f4"
!ASDBDECommentDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initializeAfterCreate.
    (self) updateFonts.
    (self) initializeViewConfigurationFrame.
    (self) installActionKeys.
    recoveredValue0 := (self) widgetCommentField.
    recoveredValue1 := (self) text.
    (recoveredValue0) setString: (recoveredValue1).
    recoveredValue2 := (self) widgetCommentField.
    (recoveredValue2) selectAll.
    recoveredValue3 := (self) options.
    recoveredValue4 := (recoveredValue3) first.
    recoveredValue5 := (recoveredValue4) optionClass.
    (self) update: (recoveredValue5).
    (self) initializeSensitivity.
    ^self
! !

"ASDBase.ic method 0x202a6aa0; bytecode file offset 0xba337c"
!ASDBDECommentDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) at: ('Ctrl-o') put: ('ok').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) at: ('Alt-o') put: ('ok').
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := HKCancel.
    (recoveredValue6) at: (recoveredValue7) put: ('cancel').
    recoveredLocal1 := recoveredValue3.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (self) shell.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x204497bc; bytecode file offset 0xd460d4"
!ASDBDECommentDialog methodsFor: 'recovered'!
initializeViewConfiguration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) graphicObject.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectInvisibleCategoriesForObjects: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            options := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) useDefaults.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := options.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:block280fee9cArg1 | 
    | block280fee9cValue0 block280fee9cValue1 block280fee9cValue2 block280fee9cValue3 block280fee9cValue4 block280fee9cValue5 block280fee9cValue6 block280fee9cValue7 block280fee9cValue8 block280fee9cValue9 block280fee9cValue10 |
    block280fee9cValue0 := MainController.
    block280fee9cValue1 := (block280fee9cValue0) allCategories.
    block280fee9cValue2 := [:block280fee9cBlock8Arg1 | 
    | block280fee9cBlock8Value0 block280fee9cBlock8Value1 block280fee9cBlock8Value2 block280fee9cBlock8Value3 block280fee9cBlock8Value4 |
    block280fee9cBlock8Value0 := block280fee9cBlock8Arg1.
    block280fee9cBlock8Value1 := (block280fee9cBlock8Value0) name.
    block280fee9cBlock8Value2 := block280fee9cArg1.
    block280fee9cBlock8Value3 := (block280fee9cBlock8Value2) label.
    block280fee9cBlock8Value4 := (block280fee9cBlock8Value1) = (block280fee9cBlock8Value3).
    block280fee9cBlock8Value4
].
    block280fee9cValue3 := [].
    block280fee9cValue4 := (block280fee9cValue1) detect: (block280fee9cValue2) ifNone: (block280fee9cValue3).
    block280fee9cValue5 := [:block280fee9cBlock28Arg1 | 
    | block280fee9cBlock28Value0 block280fee9cBlock28Value1 block280fee9cBlock28Value2 block280fee9cBlock28Value3 |
    block280fee9cBlock28Value0 := block280fee9cBlock28Arg1.
    block280fee9cBlock28Value1 := (block280fee9cBlock28Value0) basicBlockLists.
    block280fee9cBlock28Value2 := [:block280fee9cBlock28Block37Arg1 :block280fee9cBlock28Block37Arg2 | 
    | block280fee9cBlock28Block37Stack0 block280fee9cBlock28Block37Stack1 block280fee9cBlock28Block37Stack2 block280fee9cBlock28Block37Stack3 block280fee9cBlock28Block37Stack4 block280fee9cBlock28Block37PC block280fee9cBlock28Block37Step block280fee9cBlock28Block37Done block280fee9cBlock28Block37Result |
    block280fee9cBlock28Block37Stack0 := nil.
    block280fee9cBlock28Block37PC := 44.
    block280fee9cBlock28Block37Done := false.
    [block280fee9cBlock28Block37Done not] whileTrue: [
        block280fee9cBlock28Block37Step := block280fee9cBlock28Block37PC.
        block280fee9cBlock28Block37Step = 44 ifTrue: [
            block280fee9cBlock28Block37Stack1 := nil.
            block280fee9cBlock28Block37PC := 45.
        ].
        block280fee9cBlock28Block37Step = 45 ifTrue: [
            block280fee9cBlock28Block37Stack2 := block280fee9cBlock28Block37Arg2.
            block280fee9cBlock28Block37PC := 46.
        ].
        block280fee9cBlock28Block37Step = 46 ifTrue: [
            block280fee9cBlock28Block37Stack3 := 'Comment'.
            block280fee9cBlock28Block37PC := 48.
        ].
        block280fee9cBlock28Block37Step = 48 ifTrue: [
            block280fee9cBlock28Block37Stack2 := (block280fee9cBlock28Block37Stack2) includes: (block280fee9cBlock28Block37Stack3).
            block280fee9cBlock28Block37PC := 50.
        ].
        block280fee9cBlock28Block37Step = 50 ifTrue: [
            (block280fee9cBlock28Block37Stack2) ifTrue: [block280fee9cBlock28Block37PC := 54] ifFalse: [block280fee9cBlock28Block37PC := 61].
        ].
        block280fee9cBlock28Block37Step = 54 ifTrue: [
            block280fee9cBlock28Block37PC := 55.
        ].
        block280fee9cBlock28Block37Step = 55 ifTrue: [
            block280fee9cBlock28Block37Stack1 := block280fee9cArg1.
            block280fee9cBlock28Block37PC := 58.
        ].
        block280fee9cBlock28Block37Step = 58 ifTrue: [
            block280fee9cBlock28Block37Stack2 := block280fee9cBlock28Block37Arg1.
            block280fee9cBlock28Block37PC := 59.
        ].
        block280fee9cBlock28Block37Step = 59 ifTrue: [
            block280fee9cBlock28Block37Stack1 := (block280fee9cBlock28Block37Stack1) value: (block280fee9cBlock28Block37Stack2).
            block280fee9cBlock28Block37PC := 61.
        ].
        block280fee9cBlock28Block37Step = 61 ifTrue: [
            block280fee9cBlock28Block37Result := block280fee9cBlock28Block37Stack1.
            block280fee9cBlock28Block37Done := true.
        ].
    ].
    block280fee9cBlock28Block37Result
].
    block280fee9cBlock28Value3 := (block280fee9cBlock28Value1) keysAndValuesDo: (block280fee9cBlock28Value2).
    block280fee9cBlock28Value3
].
    (block280fee9cValue4) ifNotNil: (block280fee9cValue5).
    block280fee9cValue6 := block280fee9cArg1.
    block280fee9cValue7 := (block280fee9cValue6) optionClass.
    block280fee9cValue8 := block280fee9cArg1.
    block280fee9cValue9 := (block280fee9cValue8) value.
    block280fee9cValue10 := (block280fee9cValue7) originalValue: (block280fee9cValue9).
    block280fee9cValue10
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x204dc65c; bytecode file offset 0xdd8fb8"
!ASDBDECommentDialog methodsFor: 'recovered'!
update: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeDependent: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:block28107cecArg1 | 
    | block28107cecValue0 block28107cecValue1 |
    block28107cecValue0 := block28107cecArg1.
    block28107cecValue1 := (block28107cecValue0) optionClass.
    block28107cecValue1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:block28107d10Arg1 | 
    | block28107d10Value0 block28107d10Value1 block28107d10Value2 |
    block28107d10Value0 := block28107d10Arg1.
    block28107d10Value1 := (block28107d10Value0) optionClass.
    block28107d10Value2 := (block28107d10Value1) isContainerOption.
    block28107d10Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Stack0 recoveredBlock60Stack1 recoveredBlock60Stack2 recoveredBlock60Stack3 recoveredBlock60Stack4 recoveredBlock60PC recoveredBlock60Step recoveredBlock60Done recoveredBlock60Result |
    recoveredBlock60Stack0 := self.
    recoveredBlock60PC := 66.
    recoveredBlock60Done := false.
    [recoveredBlock60Done not] whileTrue: [
        recoveredBlock60Step := recoveredBlock60PC.
        recoveredBlock60Step = 66 ifTrue: [
            recoveredBlock60Stack1 := recoveredLocal1.
            recoveredBlock60PC := 69.
        ].
        recoveredBlock60Step = 69 ifTrue: [
            recoveredBlock60Stack2 := recoveredBlock60Arg1.
            recoveredBlock60PC := 70.
        ].
        recoveredBlock60Step = 70 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) optionClass.
            recoveredBlock60PC := 72.
        ].
        recoveredBlock60Step = 72 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) options.
            recoveredBlock60PC := 73.
        ].
        recoveredBlock60Step = 73 ifTrue: [
            recoveredBlock60Stack3 := [:block28107d34Arg1 | 
    | block28107d34Value0 block28107d34Value1 |
    block28107d34Value0 := block28107d34Arg1.
    block28107d34Value1 := (block28107d34Value0) optionClass.
    block28107d34Value1
].
            recoveredBlock60PC := 75.
        ].
        recoveredBlock60Step = 75 ifTrue: [
            recoveredBlock60PC := 82.
        ].
        recoveredBlock60Step = 82 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) collect: (recoveredBlock60Stack3).
            recoveredBlock60PC := 84.
        ].
        recoveredBlock60Step = 84 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) addAll: (recoveredBlock60Stack2).
            recoveredBlock60PC := 86.
        ].
        recoveredBlock60Step = 86 ifTrue: [
            recoveredBlock60Result := recoveredBlock60Stack1.
            recoveredBlock60Done := true.
        ].
    ].
    recoveredBlock60Result
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock108Stack0 recoveredBlock108Stack1 recoveredBlock108Stack2 recoveredBlock108PC recoveredBlock108Step recoveredBlock108Done recoveredBlock108Result |
    recoveredBlock108Stack0 := self.
    recoveredBlock108PC := 114.
    recoveredBlock108Done := false.
    [recoveredBlock108Done not] whileTrue: [
        recoveredBlock108Step := recoveredBlock108PC.
        recoveredBlock108Step = 114 ifTrue: [
            recoveredBlock108Stack0 := (recoveredBlock108Stack0) options.
            recoveredBlock108PC := 115.
        ].
        recoveredBlock108Step = 115 ifTrue: [
            recoveredBlock108Stack1 := [:block28107d58Arg1 | 
    | block28107d58Stack0 block28107d58Stack1 block28107d58Stack2 block28107d58Stack3 block28107d58PC block28107d58Step block28107d58Done block28107d58Result |
    block28107d58Stack0 := self.
    block28107d58PC := 4.
    block28107d58Done := false.
    [block28107d58Done not] whileTrue: [
        block28107d58Step := block28107d58PC.
        block28107d58Step = 4 ifTrue: [
            block28107d58Stack1 := block28107d58Arg1.
            block28107d58PC := 5.
        ].
        block28107d58Step = 5 ifTrue: [
            block28107d58Stack1 := (block28107d58Stack1) optionClass.
            block28107d58PC := 7.
        ].
        block28107d58Step = 7 ifTrue: [
            (block28107d58Stack1) updateOptionWidget.
            block28107d58PC := 9.
        ].
        block28107d58Step = 9 ifTrue: [
            block28107d58Stack1 := nil.
            block28107d58PC := 10.
        ].
        block28107d58Step = 10 ifTrue: [
            block28107d58Stack2 := block28107d58Arg1.
            block28107d58PC := 11.
        ].
        block28107d58Step = 11 ifTrue: [
            block28107d58Stack2 := (block28107d58Stack2) optionClass.
            block28107d58PC := 13.
        ].
        block28107d58Step = 13 ifTrue: [
            block28107d58Stack2 := (block28107d58Stack2) isContainerOption.
            block28107d58PC := 15.
        ].
        block28107d58Step = 15 ifTrue: [
            (block28107d58Stack2) ifTrue: [block28107d58PC := 18] ifFalse: [block28107d58PC := 36].
        ].
        block28107d58Step = 18 ifTrue: [
            block28107d58PC := 19.
        ].
        block28107d58Step = 19 ifTrue: [
            block28107d58Stack1 := block28107d58Arg1.
            block28107d58PC := 20.
        ].
        block28107d58Step = 20 ifTrue: [
            block28107d58Stack1 := (block28107d58Stack1) optionClass.
            block28107d58PC := 22.
        ].
        block28107d58Step = 22 ifTrue: [
            block28107d58Stack1 := (block28107d58Stack1) options.
            block28107d58PC := 23.
        ].
        block28107d58Step = 23 ifTrue: [
            block28107d58Stack2 := [:block28107d7cArg1 | 
    | block28107d7cValue0 block28107d7cValue1 block28107d7cValue2 |
    block28107d7cValue0 := block28107d7cArg1.
    block28107d7cValue1 := (block28107d7cValue0) optionClass.
    block28107d7cValue2 := (block28107d7cValue1) updateOptionWidget.
    block28107d7cValue2
].
            block28107d58PC := 25.
        ].
        block28107d58Step = 25 ifTrue: [
            block28107d58PC := 34.
        ].
        block28107d58Step = 34 ifTrue: [
            block28107d58Stack1 := (block28107d58Stack1) do: (block28107d58Stack2).
            block28107d58PC := 36.
        ].
        block28107d58Step = 36 ifTrue: [
            block28107d58Result := block28107d58Stack1.
            block28107d58Done := true.
        ].
    ].
    block28107d58Result
].
            recoveredBlock108PC := 117.
        ].
        recoveredBlock108Step = 117 ifTrue: [
            recoveredBlock108PC := 153.
        ].
        recoveredBlock108Step = 153 ifTrue: [
            recoveredBlock108Stack0 := (recoveredBlock108Stack0) do: (recoveredBlock108Stack1).
            recoveredBlock108PC := 155.
        ].
        recoveredBlock108Step = 155 ifTrue: [
            recoveredBlock108Result := recoveredBlock108Stack0.
            recoveredBlock108Done := true.
        ].
    ].
    recoveredBlock108Result
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20507c4c; bytecode file offset 0xe0457c"
!ASDBDECommentDialog methodsFor: 'recovered'!
changeViewConfiguration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) options.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) value.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) graphicObject.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) viewTypeGlobal.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 38].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) graphicObject.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) basicGraphObject.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) attributeName.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            (recoveredBlock5Stack1) clearViewTypeForViewNamed: (recoveredBlock5Stack2).
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5PC := 53.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) graphicObject.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) basicGraphObject.
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) value.
            recoveredBlock5PC := 46.
        ].
        recoveredBlock5Step = 46 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) attributeName.
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            (recoveredBlock5Stack1) setViewType: (recoveredBlock5Stack2) forViewNamed: (recoveredBlock5Stack3).
            recoveredBlock5PC := 53.
        ].
        recoveredBlock5Step = 53 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 54.
        ].
        recoveredBlock5Step = 54 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 57.
        ].
        recoveredBlock5Step = 57 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) optionClass.
            recoveredBlock5PC := 59.
        ].
        recoveredBlock5Step = 59 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isModified.
            recoveredBlock5PC := 61.
        ].
        recoveredBlock5Step = 61 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 64] ifFalse: [recoveredBlock5PC := 176].
        ].
        recoveredBlock5Step = 64 ifTrue: [
            recoveredBlock5PC := 65.
        ].
        recoveredBlock5Step = 65 ifTrue: [
            recoveredBlock5Stack1 := MainController.
            recoveredBlock5PC := 67.
        ].
        recoveredBlock5Step = 67 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) allCategories.
            recoveredBlock5PC := 69.
        ].
        recoveredBlock5Step = 69 ifTrue: [
            recoveredBlock5Stack2 := [:recoveredBlock5Block69Arg1 | 
    | recoveredBlock5Block69Value0 recoveredBlock5Block69Value1 recoveredBlock5Block69Value2 recoveredBlock5Block69Value3 recoveredBlock5Block69Value4 |
    recoveredBlock5Block69Value0 := recoveredBlock5Block69Arg1.
    recoveredBlock5Block69Value1 := (recoveredBlock5Block69Value0) name.
    recoveredBlock5Block69Value2 := recoveredBlock5Arg1.
    recoveredBlock5Block69Value3 := (recoveredBlock5Block69Value2) label.
    recoveredBlock5Block69Value4 := (recoveredBlock5Block69Value1) = (recoveredBlock5Block69Value3).
    recoveredBlock5Block69Value4
].
            recoveredBlock5PC := 86.
        ].
        recoveredBlock5Step = 86 ifTrue: [
            recoveredBlock5Stack3 := [].
            recoveredBlock5PC := 88.
        ].
        recoveredBlock5Step = 88 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) detect: (recoveredBlock5Stack2) ifNone: (recoveredBlock5Stack3).
            recoveredBlock5PC := 90.
        ].
        recoveredBlock5Step = 90 ifTrue: [
            recoveredBlock5Stack2 := [:recoveredBlock5Block90Arg1 | 
    | recoveredBlock5Block90Stack0 recoveredBlock5Block90Stack1 recoveredBlock5Block90Stack2 recoveredBlock5Block90Stack3 recoveredBlock5Block90Stack4 recoveredBlock5Block90PC recoveredBlock5Block90Step recoveredBlock5Block90Done recoveredBlock5Block90Result |
    recoveredBlock5Block90Stack0 := nil.
    recoveredBlock5Block90PC := 96.
    recoveredBlock5Block90Done := false.
    [recoveredBlock5Block90Done not] whileTrue: [
        recoveredBlock5Block90Step := recoveredBlock5Block90PC.
        recoveredBlock5Block90Step = 96 ifTrue: [
            recoveredBlock5Block90Stack1 := recoveredBlock5Block90Arg1.
            recoveredBlock5Block90PC := 99.
        ].
        recoveredBlock5Block90Step = 99 ifTrue: [
            recoveredBlock5Block90Stack1 := (recoveredBlock5Block90Stack1) basicBlockLists.
            recoveredBlock5Block90PC := 101.
        ].
        recoveredBlock5Block90Step = 101 ifTrue: [
            recoveredBlock5Block90Stack2 := [:recoveredBlock5Block90Block101Arg1 :recoveredBlock5Block90Block101Arg2 | 
    | recoveredBlock5Block90Block101Stack0 recoveredBlock5Block90Block101Stack1 recoveredBlock5Block90Block101Stack2 recoveredBlock5Block90Block101Stack3 recoveredBlock5Block90Block101Stack4 recoveredBlock5Block90Block101Stack5 recoveredBlock5Block90Block101PC recoveredBlock5Block90Block101Step recoveredBlock5Block90Block101Done recoveredBlock5Block90Block101Result |
    recoveredBlock5Block90Block101Stack0 := nil.
    recoveredBlock5Block90Block101PC := 108.
    recoveredBlock5Block90Block101Done := false.
    [recoveredBlock5Block90Block101Done not] whileTrue: [
        recoveredBlock5Block90Block101Step := recoveredBlock5Block90Block101PC.
        recoveredBlock5Block90Block101Step = 108 ifTrue: [
            recoveredBlock5Block90Block101Stack1 := nil.
            recoveredBlock5Block90Block101PC := 109.
        ].
        recoveredBlock5Block90Block101Step = 109 ifTrue: [
            recoveredBlock5Block90Block101Stack2 := recoveredBlock5Block90Block101Arg2.
            recoveredBlock5Block90Block101PC := 110.
        ].
        recoveredBlock5Block90Block101Step = 110 ifTrue: [
            recoveredBlock5Block90Block101Stack3 := 'Comment'.
            recoveredBlock5Block90Block101PC := 112.
        ].
        recoveredBlock5Block90Block101Step = 112 ifTrue: [
            recoveredBlock5Block90Block101Stack2 := (recoveredBlock5Block90Block101Stack2) includes: (recoveredBlock5Block90Block101Stack3).
            recoveredBlock5Block90Block101PC := 114.
        ].
        recoveredBlock5Block90Block101Step = 114 ifTrue: [
            (recoveredBlock5Block90Block101Stack2) ifTrue: [recoveredBlock5Block90Block101PC := 118] ifFalse: [recoveredBlock5Block90Block101PC := 141].
        ].
        recoveredBlock5Block90Block101Step = 118 ifTrue: [
            recoveredBlock5Block90Block101PC := 119.
        ].
        recoveredBlock5Block90Block101Step = 119 ifTrue: [
            recoveredBlock5Block90Block101Stack1 := recoveredBlock5Block90Arg1.
            recoveredBlock5Block90Block101PC := 122.
        ].
        recoveredBlock5Block90Block101Step = 122 ifTrue: [
            recoveredBlock5Block90Block101Stack1 := (recoveredBlock5Block90Block101Stack1) basicBlockLists.
            recoveredBlock5Block90Block101PC := 124.
        ].
        recoveredBlock5Block90Block101Step = 124 ifTrue: [
            recoveredBlock5Block90Block101Stack2 := recoveredBlock5Block90Block101Arg1.
            recoveredBlock5Block90Block101PC := 125.
        ].
        recoveredBlock5Block90Block101Step = 125 ifTrue: [
            recoveredBlock5Block90Block101Stack3 := recoveredBlock5Block90Block101Arg2.
            recoveredBlock5Block90Block101PC := 126.
        ].
        recoveredBlock5Block90Block101Step = 126 ifTrue: [
            recoveredBlock5Block90Block101Stack4 := [:block2810ace0Arg1 | 
    | block2810ace0Value0 block2810ace0Value1 |
    block2810ace0Value0 := block2810ace0Arg1.
    block2810ace0Value1 := (block2810ace0Value0) = ('Comment').
    block2810ace0Value1
].
            recoveredBlock5Block90Block101PC := 128.
        ].
        recoveredBlock5Block90Block101Step = 128 ifTrue: [
            recoveredBlock5Block90Block101PC := 137.
        ].
        recoveredBlock5Block90Block101Step = 137 ifTrue: [
            recoveredBlock5Block90Block101Stack3 := (recoveredBlock5Block90Block101Stack3) reject: (recoveredBlock5Block90Block101Stack4).
            recoveredBlock5Block90Block101PC := 139.
        ].
        recoveredBlock5Block90Block101Step = 139 ifTrue: [
            recoveredBlock5Block90Block101Stack1 := (recoveredBlock5Block90Block101Stack1) at: (recoveredBlock5Block90Block101Stack2) put: (recoveredBlock5Block90Block101Stack3).
            recoveredBlock5Block90Block101PC := 141.
        ].
        recoveredBlock5Block90Block101Step = 141 ifTrue: [
            recoveredBlock5Block90Block101Result := recoveredBlock5Block90Block101Stack1.
            recoveredBlock5Block90Block101Done := true.
        ].
    ].
    recoveredBlock5Block90Block101Result
].
            recoveredBlock5Block90PC := 142.
        ].
        recoveredBlock5Block90Step = 142 ifTrue: [
            (recoveredBlock5Block90Stack1) keysAndValuesDo: (recoveredBlock5Block90Stack2).
            recoveredBlock5Block90PC := 144.
        ].
        recoveredBlock5Block90Step = 144 ifTrue: [
            recoveredBlock5Block90Stack1 := recoveredBlock5Block90Arg1.
            recoveredBlock5Block90PC := 147.
        ].
        recoveredBlock5Block90Step = 147 ifTrue: [
            recoveredBlock5Block90Stack1 := (recoveredBlock5Block90Stack1) basicBlockLists.
            recoveredBlock5Block90PC := 149.
        ].
        recoveredBlock5Block90Step = 149 ifTrue: [
            recoveredBlock5Block90Stack2 := recoveredBlock5Arg1.
            recoveredBlock5Block90PC := 152.
        ].
        recoveredBlock5Block90Step = 152 ifTrue: [
            recoveredBlock5Block90Stack2 := (recoveredBlock5Block90Stack2) optionClass.
            recoveredBlock5Block90PC := 154.
        ].
        recoveredBlock5Block90Step = 154 ifTrue: [
            recoveredBlock5Block90Stack2 := (recoveredBlock5Block90Stack2) getString.
            recoveredBlock5Block90PC := 156.
        ].
        recoveredBlock5Block90Step = 156 ifTrue: [
            recoveredBlock5Block90Stack3 := [
    | block2810ad04Value0 block2810ad04Value1 |
    block2810ad04Value0 := OrderedCollection.
    block2810ad04Value1 := (block2810ad04Value0) new.
    block2810ad04Value1
].
            recoveredBlock5Block90PC := 158.
        ].
        recoveredBlock5Block90Step = 158 ifTrue: [
            recoveredBlock5Block90PC := 167.
        ].
        recoveredBlock5Block90Step = 167 ifTrue: [
            recoveredBlock5Block90Stack1 := (recoveredBlock5Block90Stack1) at: (recoveredBlock5Block90Stack2) ifAbsent: (recoveredBlock5Block90Stack3).
            recoveredBlock5Block90PC := 169.
        ].
        recoveredBlock5Block90Step = 169 ifTrue: [
            recoveredBlock5Block90Stack2 := 'Comment'.
            recoveredBlock5Block90PC := 171.
        ].
        recoveredBlock5Block90Step = 171 ifTrue: [
            recoveredBlock5Block90Stack1 := (recoveredBlock5Block90Stack1) add: (recoveredBlock5Block90Stack2).
            recoveredBlock5Block90PC := 173.
        ].
        recoveredBlock5Block90Step = 173 ifTrue: [
            recoveredBlock5Block90Result := recoveredBlock5Block90Stack1.
            recoveredBlock5Block90Done := true.
        ].
    ].
    recoveredBlock5Block90Result
].
            recoveredBlock5PC := 174.
        ].
        recoveredBlock5Step = 174 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) ifNotNil: (recoveredBlock5Stack2).
            recoveredBlock5PC := 176.
        ].
        recoveredBlock5Step = 176 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x206561fc; bytecode file offset 0xf52c1c"
!ASDBDECommentDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 recoveredBlock15Value13 recoveredBlock15Value14 recoveredBlock15Value15 recoveredBlock15Value16 recoveredBlock15Value17 recoveredBlock15Value18 recoveredBlock15Value19 recoveredBlock15Value20 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredBlock15Value0.
    recoveredBlock15Value2 := MWMINPUTMODELESS.
    (recoveredBlock15Value1) mwmInputMode: (recoveredBlock15Value2).
    recoveredBlock15Value3 := recoveredBlock15Value0.
    recoveredBlock15Value4 := (self) title.
    (recoveredBlock15Value3) title: (recoveredBlock15Value4).
    recoveredBlock15Value5 := recoveredBlock15Value0.
    recoveredBlock15Value6 := MWMDECORBORDER.
    recoveredBlock15Value7 := MWMDECORRESIZEH.
    recoveredBlock15Value8 := (recoveredBlock15Value6) | (recoveredBlock15Value7).
    recoveredBlock15Value9 := MWMDECORTITLE.
    recoveredBlock15Value10 := (recoveredBlock15Value8) | (recoveredBlock15Value9).
    recoveredBlock15Value11 := MWMDECORMENU.
    recoveredBlock15Value12 := (recoveredBlock15Value10) | (recoveredBlock15Value11).
    (recoveredBlock15Value5) mwmDecorations: (recoveredBlock15Value12).
    recoveredBlock15Value13 := recoveredBlock15Value0.
    recoveredBlock15Value14 := (self) class.
    recoveredBlock15Value15 := (recoveredBlock15Value14) minSize.
    recoveredBlock15Value16 := (recoveredBlock15Value15) y.
    (recoveredBlock15Value13) height: (recoveredBlock15Value16).
    recoveredBlock15Value17 := (self) class.
    recoveredBlock15Value18 := (recoveredBlock15Value17) minSize.
    recoveredBlock15Value19 := (recoveredBlock15Value18) x.
    recoveredBlock15Value20 := (recoveredBlock15Value0) width: (recoveredBlock15Value19).
    recoveredBlock15Value20
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := 'viewConfigurationFrame'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := [:recoveredBlock135Arg1 | 
    | recoveredBlock135Value0 recoveredBlock135Value1 recoveredBlock135Value2 recoveredBlock135Value3 recoveredBlock135Value4 recoveredBlock135Value5 recoveredBlock135Value6 recoveredBlock135Value7 |
    recoveredBlock135Value0 := recoveredBlock135Arg1.
    recoveredBlock135Value1 := recoveredBlock135Value0.
    (recoveredBlock135Value1) labelString: ('View Configuration').
    recoveredBlock135Value2 := (self) options.
    recoveredBlock135Value3 := (recoveredBlock135Value2) size.
    recoveredBlock135Value4 := (recoveredBlock135Value3) * (30).
    recoveredBlock135Value5 := (recoveredBlock135Value4) + (25).
    recoveredBlock135Value6 := (recoveredBlock135Value5) min: (175).
    recoveredBlock135Value7 := (recoveredBlock135Value0) height: (recoveredBlock135Value6).
    recoveredBlock135Value7
].
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := 'viewConfigurationFrame'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := 'viewConfigurationForm'.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := 'scrolledViewConfigurationArea'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := [:block28123da8Arg1 | 
    | block28123da8Value0 block28123da8Value1 block28123da8Value2 block28123da8Value3 block28123da8Value4 |
    block28123da8Value0 := block28123da8Arg1.
    block28123da8Value1 := block28123da8Value0.
    block28123da8Value2 := XmAUTOMATIC.
    (block28123da8Value1) scrollingPolicy: (block28123da8Value2).
    block28123da8Value3 := XmASNEEDED.
    block28123da8Value4 := (block28123da8Value0) scrollBarDisplayPolicy: (block28123da8Value3).
    block28123da8Value4
].
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := 'scrolledViewConfigurationArea'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := 'scrolledViewConfigurationForm'.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack0) createOptionWidgetsInForm: (recoveredStack1).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := [:block28123dccArg1 | 
    | block28123dccValue0 block28123dccValue1 block28123dccValue2 block28123dccValue3 |
    block28123dccValue0 := block28123dccArg1.
    block28123dccValue1 := block28123dccValue0.
    (block28123dccValue1) labelString: ('OK').
    block28123dccValue2 := block28123dccValue0.
    (block28123dccValue2) height: (25).
    block28123dccValue3 := (block28123dccValue0) width: (100).
    block28123dccValue3
].
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := [:block28123df0Arg1 | 
    | block28123df0Value0 block28123df0Value1 block28123df0Value2 block28123df0Value3 |
    block28123df0Value0 := block28123df0Arg1.
    block28123df0Value1 := block28123df0Value0.
    (block28123df0Value1) labelString: ('Cancel').
    block28123df0Value2 := block28123df0Value0.
    (block28123df0Value2) height: (25).
    block28123df0Value3 := (block28123df0Value0) width: (100).
    block28123df0Value3
].
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := 'commentField'.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := [:block28123e14Arg1 | 
    | block28123e14Value0 block28123e14Value1 block28123e14Value2 |
    block28123e14Value0 := block28123e14Arg1.
    block28123e14Value1 := XmMULTILINEEDIT.
    block28123e14Value2 := (block28123e14Value0) editMode: (block28123e14Value1).
    block28123e14Value2
].
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := 'scrolledCommentField'.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := 'commentField'.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := [:recoveredBlock410Arg1 | 
    | recoveredBlock410Value0 recoveredBlock410Value1 recoveredBlock410Value2 |
    recoveredBlock410Value0 := recoveredBlock410Arg1.
    recoveredBlock410Value1 := recoveredLocal9.
    recoveredBlock410Value2 := (recoveredBlock410Value0) workWindow: (recoveredBlock410Value1).
    recoveredBlock410Value2
].
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := [:recoveredBlock434Arg1 | 
    | recoveredBlock434Value0 recoveredBlock434Value1 recoveredBlock434Value2 recoveredBlock434Value3 recoveredBlock434Value4 recoveredBlock434Value5 recoveredBlock434Value6 recoveredBlock434Value7 recoveredBlock434Value8 recoveredBlock434Value9 recoveredBlock434Value10 recoveredBlock434Value11 recoveredBlock434Value12 |
    recoveredBlock434Value0 := recoveredBlock434Arg1.
    recoveredBlock434Value1 := recoveredBlock434Value0.
    recoveredBlock434Value2 := XmATTACHNONE.
    (recoveredBlock434Value1) topAttachment: (recoveredBlock434Value2).
    recoveredBlock434Value3 := recoveredBlock434Value0.
    recoveredBlock434Value4 := XmATTACHFORM.
    (recoveredBlock434Value3) bottomAttachment: (recoveredBlock434Value4).
    recoveredBlock434Value5 := recoveredBlock434Value0.
    (recoveredBlock434Value5) bottomOffset: (5).
    recoveredBlock434Value6 := recoveredBlock434Value0.
    recoveredBlock434Value7 := XmATTACHNONE.
    (recoveredBlock434Value6) leftAttachment: (recoveredBlock434Value7).
    recoveredBlock434Value8 := recoveredBlock434Value0.
    recoveredBlock434Value9 := XmATTACHWIDGET.
    (recoveredBlock434Value8) rightAttachment: (recoveredBlock434Value9).
    recoveredBlock434Value10 := recoveredBlock434Value0.
    recoveredBlock434Value11 := recoveredLocal7.
    (recoveredBlock434Value10) rightWidget: (recoveredBlock434Value11).
    recoveredBlock434Value12 := (recoveredBlock434Value0) rightOffset: (5).
    recoveredBlock434Value12
].
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack1 := [:recoveredBlock504Arg1 | 
    | recoveredBlock504Value0 recoveredBlock504Value1 recoveredBlock504Value2 recoveredBlock504Value3 recoveredBlock504Value4 recoveredBlock504Value5 recoveredBlock504Value6 recoveredBlock504Value7 recoveredBlock504Value8 recoveredBlock504Value9 recoveredBlock504Value10 recoveredBlock504Value11 recoveredBlock504Value12 recoveredBlock504Value13 recoveredBlock504Value14 |
    recoveredBlock504Value0 := recoveredBlock504Arg1.
    recoveredBlock504Value1 := recoveredBlock504Value0.
    recoveredBlock504Value2 := XmATTACHWIDGET.
    (recoveredBlock504Value1) bottomAttachment: (recoveredBlock504Value2).
    recoveredBlock504Value3 := recoveredBlock504Value0.
    recoveredBlock504Value4 := recoveredLocal6.
    (recoveredBlock504Value3) bottomWidget: (recoveredBlock504Value4).
    recoveredBlock504Value5 := recoveredBlock504Value0.
    (recoveredBlock504Value5) bottomOffset: (5).
    recoveredBlock504Value6 := recoveredBlock504Value0.
    recoveredBlock504Value7 := XmATTACHFORM.
    (recoveredBlock504Value6) topAttachment: (recoveredBlock504Value7).
    recoveredBlock504Value8 := recoveredBlock504Value0.
    (recoveredBlock504Value8) topOffset: (5).
    recoveredBlock504Value9 := recoveredBlock504Value0.
    recoveredBlock504Value10 := XmATTACHFORM.
    (recoveredBlock504Value9) leftAttachment: (recoveredBlock504Value10).
    recoveredBlock504Value11 := recoveredBlock504Value0.
    (recoveredBlock504Value11) leftOffset: (5).
    recoveredBlock504Value12 := recoveredBlock504Value0.
    recoveredBlock504Value13 := XmATTACHFORM.
    (recoveredBlock504Value12) rightAttachment: (recoveredBlock504Value13).
    recoveredBlock504Value14 := (recoveredBlock504Value0) rightOffset: (5).
    recoveredBlock504Value14
].
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack1 := [:recoveredBlock586Arg1 | 
    | recoveredBlock586Value0 recoveredBlock586Value1 recoveredBlock586Value2 recoveredBlock586Value3 recoveredBlock586Value4 recoveredBlock586Value5 recoveredBlock586Value6 recoveredBlock586Value7 recoveredBlock586Value8 recoveredBlock586Value9 recoveredBlock586Value10 recoveredBlock586Value11 recoveredBlock586Value12 recoveredBlock586Value13 |
    recoveredBlock586Value0 := recoveredBlock586Arg1.
    recoveredBlock586Value1 := recoveredBlock586Value0.
    recoveredBlock586Value2 := XmATTACHNONE.
    (recoveredBlock586Value1) topAttachment: (recoveredBlock586Value2).
    recoveredBlock586Value3 := recoveredBlock586Value0.
    recoveredBlock586Value4 := XmATTACHWIDGET.
    (recoveredBlock586Value3) bottomAttachment: (recoveredBlock586Value4).
    recoveredBlock586Value5 := recoveredBlock586Value0.
    recoveredBlock586Value6 := recoveredLocal7.
    (recoveredBlock586Value5) bottomWidget: (recoveredBlock586Value6).
    recoveredBlock586Value7 := recoveredBlock586Value0.
    (recoveredBlock586Value7) bottomOffset: (5).
    recoveredBlock586Value8 := recoveredBlock586Value0.
    recoveredBlock586Value9 := XmATTACHFORM.
    (recoveredBlock586Value8) rightAttachment: (recoveredBlock586Value9).
    recoveredBlock586Value10 := recoveredBlock586Value0.
    (recoveredBlock586Value10) rightOffset: (5).
    recoveredBlock586Value11 := recoveredBlock586Value0.
    recoveredBlock586Value12 := XmATTACHFORM.
    (recoveredBlock586Value11) leftAttachment: (recoveredBlock586Value12).
    recoveredBlock586Value13 := (recoveredBlock586Value0) leftOffset: (5).
    recoveredBlock586Value13
].
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack1 := [:block28123e38Arg1 | 
    | block28123e38Value0 block28123e38Value1 block28123e38Value2 block28123e38Value3 block28123e38Value4 block28123e38Value5 block28123e38Value6 block28123e38Value7 block28123e38Value8 |
    block28123e38Value0 := block28123e38Arg1.
    block28123e38Value1 := block28123e38Value0.
    block28123e38Value2 := XmATTACHFORM.
    (block28123e38Value1) topAttachment: (block28123e38Value2).
    block28123e38Value3 := block28123e38Value0.
    block28123e38Value4 := XmATTACHFORM.
    (block28123e38Value3) bottomAttachment: (block28123e38Value4).
    block28123e38Value5 := block28123e38Value0.
    block28123e38Value6 := XmATTACHFORM.
    (block28123e38Value5) rightAttachment: (block28123e38Value6).
    block28123e38Value7 := XmATTACHFORM.
    block28123e38Value8 := (block28123e38Value0) leftAttachment: (block28123e38Value7).
    block28123e38Value8
].
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack1 := [:block28123e5cArg1 | 
    | block28123e5cValue0 block28123e5cValue1 block28123e5cValue2 block28123e5cValue3 block28123e5cValue4 block28123e5cValue5 block28123e5cValue6 block28123e5cValue7 block28123e5cValue8 block28123e5cValue9 block28123e5cValue10 |
    block28123e5cValue0 := block28123e5cArg1.
    block28123e5cValue1 := block28123e5cValue0.
    block28123e5cValue2 := XmATTACHNONE.
    (block28123e5cValue1) topAttachment: (block28123e5cValue2).
    block28123e5cValue3 := block28123e5cValue0.
    block28123e5cValue4 := XmATTACHFORM.
    (block28123e5cValue3) bottomAttachment: (block28123e5cValue4).
    block28123e5cValue5 := block28123e5cValue0.
    (block28123e5cValue5) bottomOffset: (5).
    block28123e5cValue6 := block28123e5cValue0.
    block28123e5cValue7 := XmATTACHNONE.
    (block28123e5cValue6) leftAttachment: (block28123e5cValue7).
    block28123e5cValue8 := block28123e5cValue0.
    block28123e5cValue9 := XmATTACHFORM.
    (block28123e5cValue8) rightAttachment: (block28123e5cValue9).
    block28123e5cValue10 := (block28123e5cValue0) rightOffset: (5).
    block28123e5cValue10
].
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack1 := XmNresizeCallback.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack3 := 'shellResizeCallback:clientData:callData:'.
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack3 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            recoveredStack3 := 'cancelButtonActivate:clientData:callData:'.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006bdc8; bytecode file offset 0x96873c"
!RBEnhancedTextEditPolicy methodsFor: 'recovered'!
characterMethod
    | recoveredValue0 |
    recoveredValue0 := characterMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ccc0; bytecode file offset 0x969c04"
!RBEnhancedTextEditPolicy methodsFor: 'recovered'!
checkAdditionals
    | recoveredValue0 |
    recoveredValue0 := checkAdditionals.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200944d0; bytecode file offset 0x990d88"
!RBEnhancedTextEditPolicy methodsFor: 'recovered'!
createWidgetUnder: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := characterMethod.
    recoveredValue2 := (self) createWidgetUnder: (recoveredValue0) characterMethod: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c27c8; bytecode file offset 0x9bf474"
!RBEnhancedTextEditPolicy methodsFor: 'recovered'!
characterMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    characterMethod := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3ae8; bytecode file offset 0x9c058c"
!RBEnhancedTextEditPolicy methodsFor: 'recovered'!
checkAdditionals: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    checkAdditionals := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cea54; bytecode file offset 0x9cb318"
!RBEnhancedTextEditPolicy methodsFor: 'recovered'!
setSelectionEndsLeft
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (0).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cea7c; bytecode file offset 0x9cb340"
!RBEnhancedTextEditPolicy methodsFor: 'recovered'!
setSelectionEndsRight
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (1).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ceab0; bytecode file offset 0x9cb368"
!RBEnhancedTextEditPolicy methodsFor: 'recovered'!
selectionEndsRight
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20162a68; bytecode file offset 0xa5f32c"
!RBEnhancedTextEditPolicy methodsFor: 'recovered'!
initialize
    super initialize.
    state := 0.
    characterMethod := 'checkAlphaNumeric:'.
    (self) setSelectionEndsRight.
    ^self
! !

"ASDBase.ic method 0x20166bd4; bytecode file offset 0xa634b8"
!RBEnhancedTextEditPolicy methodsFor: 'recovered'!
hookPermanentCallbacksOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super hookPermanentCallbacksOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := XmNmodifyVerifyCallback.
    (recoveredValue1) addCallback: (recoveredValue2) receiver: (self) selector: ('anEnhancedTextModify:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x2031d9c0; bytecode file offset 0xc1a2a0"
!RBEnhancedTextEditPolicy methodsFor: 'recovered'!
createWidgetUnder: recoveredArg1 characterMethod: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := self.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) widget.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) fontList.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            (recoveredBlock9Stack1) fontList: (recoveredBlock9Stack2).
            recoveredBlock9PC := 22.
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) selectionEndsRight.
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            (recoveredBlock9Stack0) ifTrue: [recoveredBlock9PC := 28] ifFalse: [recoveredBlock9PC := 38].
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9Stack0 := recoveredBlock9Arg1.
            recoveredBlock9PC := 29.
        ].
        recoveredBlock9Step = 29 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 30.
        ].
        recoveredBlock9Step = 30 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) editMode.
            recoveredBlock9PC := 32.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            (recoveredBlock9Stack0) editMode: (recoveredBlock9Stack1).
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9PC := 48.
        ].
        recoveredBlock9Step = 38 ifTrue: [
            recoveredBlock9Stack0 := recoveredBlock9Arg1.
            recoveredBlock9PC := 39.
        ].
        recoveredBlock9Step = 39 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Stack0.
            recoveredBlock9PC := 40.
        ].
        recoveredBlock9Step = 40 ifTrue: [
            recoveredBlock9Stack2 := XmMULTILINEEDIT.
            recoveredBlock9PC := 42.
        ].
        recoveredBlock9Step = 42 ifTrue: [
            (recoveredBlock9Stack1) editMode: (recoveredBlock9Stack2).
            recoveredBlock9PC := 44.
        ].
        recoveredBlock9Step = 44 ifTrue: [
            recoveredBlock9Stack1 := 1.
            recoveredBlock9PC := 46.
        ].
        recoveredBlock9Step = 46 ifTrue: [
            (recoveredBlock9Stack0) rows: (recoveredBlock9Stack1).
            recoveredBlock9PC := 48.
        ].
        recoveredBlock9Step = 48 ifTrue: [
            recoveredBlock9Stack0 := recoveredBlock9Arg1.
            recoveredBlock9PC := 49.
        ].
        recoveredBlock9Step = 49 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg2.
            recoveredBlock9PC := 52.
        ].
        recoveredBlock9Step = 52 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) characterMethod: (recoveredBlock9Stack1).
            recoveredBlock9PC := 54.
        ].
        recoveredBlock9Step = 54 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack0.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    recoveredValue2 := (recoveredValue0) createEnhancedText: ('enhancedText') argBlock: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20328200; bytecode file offset 0xc24ae4"
!RBEnhancedTextEditPolicy methodsFor: 'recovered'!
positionWidget: recoveredArg1 x: recoveredArg2 y: recoveredArg3 width: recoveredArg4 height: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isManaged.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack7 := (recoveredStack7) borderWidth.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) configureWidget: (recoveredStack3) y: (recoveredStack4) width: (recoveredStack5) height: (recoveredStack6) borderWidth: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) manageChild.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) mapWidget.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusProxy.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasFocus.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) setInputFocus.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) cursorPosition: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) selection.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) setSelection: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20345758; bytecode file offset 0xc4203c"
!RBEnhancedTextEditPolicy methodsFor: 'recovered'!
beginEditOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectionEndsRight.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) selection: (recoveredStack1).
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
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) selection: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) characterMethod.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 |
    recoveredBlock32Value0 := recoveredArg1.
    recoveredBlock32Value1 := recoveredBlock32Value0.
    recoveredBlock32Value2 := recoveredBlock32Arg1.
    (recoveredBlock32Value1) characterMethod: (recoveredBlock32Value2).
    recoveredBlock32Value3 := (self) checkAdditionals.
    recoveredBlock32Value4 := (recoveredBlock32Value0) checkAdditionals: (recoveredBlock32Value3).
    recoveredBlock32Value4
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            super beginEditOn: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


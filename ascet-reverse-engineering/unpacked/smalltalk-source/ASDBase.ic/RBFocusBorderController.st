"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200661d4; bytecode file offset 0x963428"
!RBFocusBorderController methodsFor: 'recovered'!
borderWidth
    | recoveredValue0 |
    recoveredValue0 := borderWidth.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066c74; bytecode file offset 0x9646f8"
!RBFocusBorderController methodsFor: 'recovered'!
borderColor
    | recoveredValue0 |
    recoveredValue0 := borderColor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006809c; bytecode file offset 0x965b90"
!RBFocusBorderController methodsFor: 'recovered'!
borderOffset
    | recoveredValue0 |
    recoveredValue0 := borderOffset.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201cdfdc; bytecode file offset 0xaca898"
!RBFocusBorderController methodsFor: 'recovered'!
borderWidth: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    borderWidth := recoveredValue0.
    recoveredValue1 := widgets.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) borderWidth: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201ce008; bytecode file offset 0xaca8c4"
!RBFocusBorderController methodsFor: 'recovered'!
borderColor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    borderColor := recoveredValue0.
    recoveredValue1 := widgets.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) borderColor: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201ce034; bytecode file offset 0xaca8f0"
!RBFocusBorderController methodsFor: 'recovered'!
borderOffset: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    borderOffset := recoveredValue0.
    recoveredValue1 := widgets.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) borderOffset: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201e05a4; bytecode file offset 0xadce70"
!RBFocusBorderController methodsFor: 'recovered'!
gettingFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusWidget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) active: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) drawFocus.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20219de8; bytecode file offset 0xb166bc"
!RBFocusBorderController methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super initialize.
    borderWidth := 2.
    borderOffset := 1.
    recoveredValue0 := SpColorManager.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) colorNamed: ('red').
    borderColor := recoveredValue2.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    widgets := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x2025c63c; bytecode file offset 0xb58f0c"
!RBFocusBorderController methodsFor: 'recovered'!
losingFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwBasicWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusWidget.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) primaryWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) widget.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) primaryWidget.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusWidget: (recoveredStack2) stillInHierarchy: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) active: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) drawFocus.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ab834; bytecode file offset 0xba80f4"
!RBFocusBorderController methodsFor: 'recovered'!
focusWidget: recoveredArg1 stillInHierarchy: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) children.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) = (recoveredBlock8Stack2).
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 22] ifFalse: [recoveredBlock8PC := 24].
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack1 := true.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg1.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack4 := recoveredBlock8Arg1.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) focusWidget: (recoveredBlock8Stack3) stillInHierarchy: (recoveredBlock8Stack4).
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Stack2.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack3.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 38] ifFalse: [recoveredBlock8PC := 41].
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack1 := true.
            recoveredBlock8PC := 40.
        ].
        recoveredBlock8Step = 40 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^false
! !

"ASDBase.ic method 0x204022e8; bytecode file offset 0xcfebe0"
!RBFocusBorderController methodsFor: 'recovered'!
addWidgets: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5Stack7 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := RBFocusBorderWrapper.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) createForWidget: (recoveredBlock5Stack2).
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Local2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local2.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack3 := borderWidth.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            (recoveredBlock5Stack2) borderWidth: (recoveredBlock5Stack3).
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack3 := borderColor.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            (recoveredBlock5Stack2) borderColor: (recoveredBlock5Stack3).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack2 := borderOffset.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            (recoveredBlock5Stack1) borderOffset: (recoveredBlock5Stack2).
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) usesFocusProxy.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 38] ifFalse: [recoveredBlock5PC := 46].
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) focusProxy.
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5PC := 66.
        ].
        recoveredBlock5Step = 46 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) basicWidget.
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) hasFocusCallback.
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 54] ifFalse: [recoveredBlock5PC := 62].
        ].
        recoveredBlock5Step = 54 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) basicWidget.
            recoveredBlock5PC := 57.
        ].
        recoveredBlock5Step = 57 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 58.
        ].
        recoveredBlock5Step = 58 ifTrue: [
            recoveredBlock5PC := 66.
        ].
        recoveredBlock5Step = 62 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 63.
        ].
        recoveredBlock5Step = 63 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) parent.
            recoveredBlock5PC := 65.
        ].
        recoveredBlock5Step = 65 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 66.
        ].
        recoveredBlock5Step = 66 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
            recoveredBlock5PC := 67.
        ].
        recoveredBlock5Step = 67 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 68.
        ].
        recoveredBlock5Step = 68 ifTrue: [
            recoveredBlock5Stack3 := XmNfocusCallback.
            recoveredBlock5PC := 70.
        ].
        recoveredBlock5Step = 70 ifTrue: [
            recoveredBlock5Stack4 := self.
            recoveredBlock5PC := 71.
        ].
        recoveredBlock5Step = 71 ifTrue: [
            recoveredBlock5Stack5 := 'gettingFocus:clientData:callData:'.
            recoveredBlock5PC := 73.
        ].
        recoveredBlock5Step = 73 ifTrue: [
            recoveredBlock5Stack6 := recoveredBlock5Local2.
            recoveredBlock5PC := 74.
        ].
        recoveredBlock5Step = 74 ifTrue: [
            (recoveredBlock5Stack2) addCallback: (recoveredBlock5Stack3) receiver: (recoveredBlock5Stack4) selector: (recoveredBlock5Stack5) clientData: (recoveredBlock5Stack6).
            recoveredBlock5PC := 77.
        ].
        recoveredBlock5Step = 77 ifTrue: [
            recoveredBlock5Stack2 := XmNlosingFocusCallback.
            recoveredBlock5PC := 79.
        ].
        recoveredBlock5Step = 79 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 80.
        ].
        recoveredBlock5Step = 80 ifTrue: [
            recoveredBlock5Stack4 := 'losingFocus:clientData:callData:'.
            recoveredBlock5PC := 82.
        ].
        recoveredBlock5Step = 82 ifTrue: [
            recoveredBlock5Stack5 := recoveredBlock5Local2.
            recoveredBlock5PC := 83.
        ].
        recoveredBlock5Step = 83 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) addCallback: (recoveredBlock5Stack2) receiver: (recoveredBlock5Stack3) selector: (recoveredBlock5Stack4) clientData: (recoveredBlock5Stack5).
            recoveredBlock5PC := 86.
        ].
        recoveredBlock5Step = 86 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := widgets.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) addAll: (recoveredValue3).
    ^self
! !


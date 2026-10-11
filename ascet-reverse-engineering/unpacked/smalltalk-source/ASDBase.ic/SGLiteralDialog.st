"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006054; bytecode file offset 0x902de8"
!SGLiteralDialog methodsFor: 'recovered'!
literalChange: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x200064b4; bytecode file offset 0x902de8"
!SGLiteralDialog methodsFor: 'recovered'!
literalLosingFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2004492c; bytecode file offset 0x9451f8"
!SGLiteralDialog methodsFor: 'recovered'!
literalTypeNumeric
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('literalTypeNumeric').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044d2c; bytecode file offset 0x9451f8"
!SGLiteralDialog methodsFor: 'recovered'!
literalComboBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('literalComboBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044e0c; bytecode file offset 0x9451f8"
!SGLiteralDialog methodsFor: 'recovered'!
literalTypeString
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('literalTypeString').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045fdc; bytecode file offset 0x9451f8"
!SGLiteralDialog methodsFor: 'recovered'!
literalTypeNumericHex
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('literalTypeNumericHex').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004874c; bytecode file offset 0x9451f8"
!SGLiteralDialog methodsFor: 'recovered'!
literalTypeNumericBin
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('literalTypeNumericBin').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a608; bytecode file offset 0x957a6c"
!SGLiteralDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005ab48; bytecode file offset 0x957a6c"
!SGLiteralDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x20063b84; bytecode file offset 0x961970"
!SGLiteralDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 |
    recoveredValue0 := (self) literalComboBox.
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x200700f0; bytecode file offset 0x96cb7c"
!SGLiteralDialog methodsFor: 'recovered'!
title
    | recoveredValue0 |
    recoveredValue0 := title.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200709e8; bytecode file offset 0x96d3ec"
!SGLiteralDialog methodsFor: 'recovered'!
enumList
    | recoveredValue0 |
    recoveredValue0 := enumList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070c34; bytecode file offset 0x96d580"
!SGLiteralDialog methodsFor: 'recovered'!
currentResult
    | recoveredValue0 |
    recoveredValue0 := currentResult.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200846b4; bytecode file offset 0x981ca4"
!SGLiteralDialog methodsFor: 'recovered'!
initFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) currentResult: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200b2604; bytecode file offset 0x9aeed0"
!SGLiteralDialog methodsFor: 'recovered'!
cancel
    (self) result: (nil).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200c6860; bytecode file offset 0x9c3164"
!SGLiteralDialog methodsFor: 'recovered'!
title: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    title := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7098; bytecode file offset 0x9c3a8c"
!SGLiteralDialog methodsFor: 'recovered'!
enumList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    enumList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c731c; bytecode file offset 0x9c3c10"
!SGLiteralDialog methodsFor: 'recovered'!
currentResult: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentResult := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cbc58; bytecode file offset 0x9c8654"
!SGLiteralDialog methodsFor: 'recovered'!
predefinedStringEnums
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('true') with: ('false').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f7794; bytecode file offset 0x9f4e38"
!SGLiteralDialog methodsFor: 'recovered'!
predefinedNumericHexEnums
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) predefinedNumericHexValues.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c495cArg1 | 
    | block280c495cValue0 block280c495cValue1 |
    block280c495cValue0 := block280c495cArg1.
    block280c495cValue1 := (block280c495cValue0) asCHexString.
    block280c495cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f7a7c; bytecode file offset 0x9f4e38"
!SGLiteralDialog methodsFor: 'recovered'!
predefinedNumericBinEnums
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) predefinedNumericBinValues.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4db8Arg1 | 
    | block280c4db8Value0 block280c4db8Value1 |
    block280c4db8Value0 := block280c4db8Arg1.
    block280c4db8Value1 := (block280c4db8Value0) asCBinString.
    block280c4db8Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012d94c; bytecode file offset 0xa2a238"
!SGLiteralDialog methodsFor: 'recovered'!
updateWindowLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (self) title.
    recoveredValue2 := (recoveredValue1) , (' ').
    recoveredValue3 := (self) currentResult.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    (recoveredValue0) title: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2014eeb4; bytecode file offset 0xa4b77c"
!SGLiteralDialog methodsFor: 'recovered'!
initializeAfterCreate
    (self) updateWindowLabel.
    (self) initWidgetFonts.
    (self) checkCurrentValueAndUpdateWidgets.
    (self) installActionKeys.
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x201dcbf4; bytecode file offset 0xad94b8"
!SGLiteralDialog methodsFor: 'recovered'!
literalTypeNumericHex: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := keepLastNumericHex.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := keepLastNumericHex.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) currentResult: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) updateWidgetsNumericHex.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dcc28; bytecode file offset 0xad94ec"
!SGLiteralDialog methodsFor: 'recovered'!
literalTypeNumericBin: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := keepLastNumericBin.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := keepLastNumericBin.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) currentResult: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) updateWidgetsNumericBin.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e2fc8; bytecode file offset 0xadf8b4"
!SGLiteralDialog methodsFor: 'recovered'!
updateWidgetsNumericHex
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
            recoveredStack1 := (recoveredStack1) predefinedNumericHexEnums.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d6818Arg1 | 
    | block280d6818Value0 block280d6818Value1 |
    block280d6818Value0 := block280d6818Arg1.
    block280d6818Value1 := (block280d6818Value0) isCHexString.
    block280d6818Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block280d683cArg1 | 
    | block280d683cValue0 block280d683cValue1 |
    block280d683cValue0 := block280d683cArg1.
    block280d683cValue1 := (block280d683cValue0) asCHexString.
    block280d683cValue1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) updateWidgetsNumericValues: (recoveredStack1) checkBlock: (recoveredStack2) convertBlock: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e2fe8; bytecode file offset 0xadf8b4"
!SGLiteralDialog methodsFor: 'recovered'!
updateWidgetsNumericBin
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
            recoveredStack1 := (recoveredStack1) predefinedNumericBinEnums.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d6860Arg1 | 
    | block280d6860Value0 block280d6860Value1 |
    block280d6860Value0 := block280d6860Arg1.
    block280d6860Value1 := (block280d6860Value0) isCBinString.
    block280d6860Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block280d6884Arg1 | 
    | block280d6884Value0 block280d6884Value1 |
    block280d6884Value0 := block280d6884Arg1.
    block280d6884Value1 := (block280d6884Value0) asCBinString.
    block280d6884Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) updateWidgetsNumericValues: (recoveredStack1) checkBlock: (recoveredStack2) convertBlock: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f92d4; bytecode file offset 0xaf5ba0"
!SGLiteralDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalComboBox.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkLiteralPromptIfWrong: (recoveredStack1) literal: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20274fb0; bytecode file offset 0xb71878"
!SGLiteralDialog methodsFor: 'recovered'!
predefinedNumericBinValues
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) add: (0).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) add: (1).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) add: (128).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) add: (255).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) add: (32768).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) add: (65535).
    ^recoveredValue1
! !

"ASDBase.ic method 0x202c3c24; bytecode file offset 0xbc04fc"
!SGLiteralDialog methodsFor: 'recovered'!
initWidgetFonts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280e5284Arg1 | 
    | block280e5284Stack0 block280e5284Stack1 block280e5284Stack2 block280e5284Stack3 block280e5284Stack4 block280e5284PC block280e5284Step block280e5284Done block280e5284Result |
    block280e5284Stack0 := self.
    block280e5284PC := 4.
    block280e5284Done := false.
    [block280e5284Done not] whileTrue: [
        block280e5284Step := block280e5284PC.
        block280e5284Step = 4 ifTrue: [
            block280e5284Stack1 := block280e5284Arg1.
            block280e5284PC := 5.
        ].
        block280e5284Step = 5 ifTrue: [
            block280e5284Stack1 := (block280e5284Stack1) class.
            block280e5284PC := 6.
        ].
        block280e5284Step = 6 ifTrue: [
            block280e5284Stack2 := CwLabel.
            block280e5284PC := 8.
        ].
        block280e5284Step = 8 ifTrue: [
            block280e5284Stack1 := (block280e5284Stack1) = (block280e5284Stack2).
            block280e5284PC := 9.
        ].
        block280e5284Step = 9 ifTrue: [
            (block280e5284Stack1) ifTrue: [block280e5284PC := 12] ifFalse: [block280e5284PC := 19].
        ].
        block280e5284Step = 12 ifTrue: [
            block280e5284Stack1 := block280e5284Arg1.
            block280e5284PC := 13.
        ].
        block280e5284Step = 13 ifTrue: [
            block280e5284Stack2 := SGUserInterfaceSettings.
            block280e5284PC := 15.
        ].
        block280e5284Step = 15 ifTrue: [
            block280e5284Stack2 := (block280e5284Stack2) smallFontList.
            block280e5284PC := 17.
        ].
        block280e5284Step = 17 ifTrue: [
            (block280e5284Stack1) fontList: (block280e5284Stack2).
            block280e5284PC := 19.
        ].
        block280e5284Step = 19 ifTrue: [
            block280e5284Stack1 := nil.
            block280e5284PC := 20.
        ].
        block280e5284Step = 20 ifTrue: [
            block280e5284Stack2 := block280e5284Arg1.
            block280e5284PC := 21.
        ].
        block280e5284Step = 21 ifTrue: [
            block280e5284Stack2 := (block280e5284Stack2) class.
            block280e5284PC := 22.
        ].
        block280e5284Step = 22 ifTrue: [
            block280e5284Stack3 := RBEnhancedText.
            block280e5284PC := 24.
        ].
        block280e5284Step = 24 ifTrue: [
            block280e5284Stack2 := (block280e5284Stack2) = (block280e5284Stack3).
            block280e5284PC := 25.
        ].
        block280e5284Step = 25 ifTrue: [
            (block280e5284Stack2) ifTrue: [block280e5284PC := 28] ifFalse: [block280e5284PC := 36].
        ].
        block280e5284Step = 28 ifTrue: [
            block280e5284PC := 29.
        ].
        block280e5284Step = 29 ifTrue: [
            block280e5284Stack1 := block280e5284Arg1.
            block280e5284PC := 30.
        ].
        block280e5284Step = 30 ifTrue: [
            block280e5284Stack2 := SGUserInterfaceSettings.
            block280e5284PC := 32.
        ].
        block280e5284Step = 32 ifTrue: [
            block280e5284Stack2 := (block280e5284Stack2) smallFontList.
            block280e5284PC := 34.
        ].
        block280e5284Step = 34 ifTrue: [
            block280e5284Stack1 := (block280e5284Stack1) fontList: (block280e5284Stack2).
            block280e5284PC := 36.
        ].
        block280e5284Step = 36 ifTrue: [
            block280e5284Result := block280e5284Stack1.
            block280e5284Done := true.
        ].
    ].
    block280e5284Result
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fa488; bytecode file offset 0xbf6d5c"
!SGLiteralDialog methodsFor: 'recovered'!
checkLiteralPromptIfWrong: recoveredArg1 literal: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLiteralAllowBool: (recoveredStack2) allowInteger: (recoveredStack3) allowFloat: (recoveredStack4) allowAnsiC: (recoveredStack5).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := '<empty literal> is not valid!!'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := ' is not a valid value !!'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203137a0; bytecode file offset 0xc10070"
!SGLiteralDialog methodsFor: 'recovered'!
predefinedNumericHexValues
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) add: (0).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) add: (128).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) add: (255).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) add: (2048).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) add: (4095).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) add: (32768).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) add: (65535).
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) add: (2147483648).
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) add: (4294967295).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20320444; bytecode file offset 0xc1cd1c"
!SGLiteralDialog methodsFor: 'recovered'!
literalTypeString: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalComboBox.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCHexString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            keepLastNumericHex := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) currentResult: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCBinString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalComboBox.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            keepLastNumericBin := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) currentResult: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) updateWidgetsString.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203209b0; bytecode file offset 0xc1d304"
!SGLiteralDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := XKCancel.
    (recoveredValue5) at: (recoveredValue6) put: ('cancel').
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := Character.
    recoveredValue9 := (recoveredValue8) value: (13).
    (recoveredValue7) at: (recoveredValue9) put: ('ok').
    recoveredValue10 := recoveredValue4.
    (recoveredValue10) at: ('Alt-o') put: ('ok').
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) at: ('Alt-c') put: ('cancel').
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (self) shell.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue12) at: (recoveredValue13) put: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x20332424; bytecode file offset 0xc2ed0c"
!SGLiteralDialog methodsFor: 'recovered'!
updateWidgetsString
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentResult.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
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
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumList.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) predefinedStringEnums.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := EsString.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlockNumeric.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalComboBox.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalComboBox.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
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

"ASDBase.ic method 0x203a4d08; bytecode file offset 0xca15f0"
!SGLiteralDialog methodsFor: 'recovered'!
checkCurrentValueAndUpdateWidgets
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentResult.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLiteral.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLiteral.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFloat.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCHexString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalTypeNumericHex.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) updateWidgetsNumericHex.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCBinString.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalTypeNumericBin.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) updateWidgetsNumericBin.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalTypeString.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) updateWidgetsString.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204501a0; bytecode file offset 0xd4ca94"
!SGLiteralDialog methodsFor: 'recovered'!
updateWidgetsNumericValues: recoveredArg1 checkBlock: recoveredArg2 convertBlock: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentResult.
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
            recoveredStack0 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentResult.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentResult.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentResult.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLiteral.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFloat.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentResult.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLiteral.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) printString.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) printString.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := EsString.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlockNumeric.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalComboBox.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalComboBox.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 111.
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

"ASDBase.ic method 0x206660ec; bytecode file offset 0xf62b54"
!SGLiteralDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 recoveredBlock25Value12 recoveredBlock25Value13 recoveredBlock25Value14 recoveredBlock25Value15 recoveredBlock25Value16 recoveredBlock25Value17 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    recoveredBlock25Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock25Value1) mwmInputMode: (recoveredBlock25Value2).
    recoveredBlock25Value3 := recoveredBlock25Value0.
    (recoveredBlock25Value3) title: ('Block Layout').
    recoveredBlock25Value4 := recoveredBlock25Value0.
    recoveredBlock25Value5 := (self) class.
    recoveredBlock25Value6 := (recoveredBlock25Value5) minSize.
    recoveredBlock25Value7 := (recoveredBlock25Value6) x.
    (recoveredBlock25Value4) width: (recoveredBlock25Value7).
    recoveredBlock25Value8 := recoveredBlock25Value0.
    recoveredBlock25Value9 := (self) class.
    recoveredBlock25Value10 := (recoveredBlock25Value9) minSize.
    recoveredBlock25Value11 := (recoveredBlock25Value10) y.
    (recoveredBlock25Value8) height: (recoveredBlock25Value11).
    recoveredBlock25Value12 := recoveredBlock25Value0.
    recoveredBlock25Value13 := MWMDECORALL.
    recoveredBlock25Value14 := MWMDECORMINIMIZE.
    recoveredBlock25Value15 := (recoveredBlock25Value13) | (recoveredBlock25Value14).
    recoveredBlock25Value16 := MWMDECORMAXIMIZE.
    recoveredBlock25Value17 := (recoveredBlock25Value15) | (recoveredBlock25Value16).
    (recoveredBlock25Value12) mwmDecorations: (recoveredBlock25Value17).
    recoveredBlock25Value0
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := [:recoveredBlock139Arg1 | 
    | recoveredBlock139Value0 recoveredBlock139Value1 recoveredBlock139Value2 |
    recoveredBlock139Value0 := recoveredBlock139Arg1.
    recoveredBlock139Value1 := recoveredLocal10.
    recoveredBlock139Value2 := (recoveredBlock139Value0) workWindow: (recoveredBlock139Value1).
    recoveredBlock139Value2
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := 'frame'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := [:block281255b4Arg1 | 
    | block281255b4Value0 block281255b4Value1 |
    block281255b4Value0 := block281255b4Arg1.
    block281255b4Value1 := block281255b4Value0.
    (block281255b4Value1) labelString: ('Literal').
    block281255b4Value0
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := 'frame'.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := 'form'.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := [:block281255d8Arg1 | 
    | block281255d8Value0 |
    block281255d8Value0 := block281255d8Arg1.
    block281255d8Value0
].
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := 'form'.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := 'literalComboBox'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := [:block281255fcArg1 | 
    | block281255fcValue0 block281255fcValue1 block281255fcValue2 block281255fcValue3 block281255fcValue4 |
    block281255fcValue0 := block281255fcArg1.
    block281255fcValue1 := block281255fcValue0.
    (block281255fcValue1) editable: (true).
    block281255fcValue2 := block281255fcValue0.
    (block281255fcValue2) visibleItemCount: (25).
    block281255fcValue3 := block281255fcValue0.
    (block281255fcValue3) height: (22).
    block281255fcValue4 := (block281255fcValue0) width: (128).
    block281255fcValue4
].
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := 'literalComboBox'.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := 'literalTypeRC'.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack3 := [:block28125620Arg1 | 
    | block28125620Value0 block28125620Value1 block28125620Value2 block28125620Value3 |
    block28125620Value0 := block28125620Arg1.
    block28125620Value1 := block28125620Value0.
    (block28125620Value1) radioBehavior: (true).
    block28125620Value2 := block28125620Value0.
    block28125620Value3 := XmVERTICAL.
    (block28125620Value2) orientation: (block28125620Value3).
    block28125620Value0
].
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRowColumn: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := 'literalTypeRC'.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := 'literalTypeNumericHex'.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack3 := [:block28125644Arg1 | 
    | block28125644Value0 block28125644Value1 block28125644Value2 block28125644Value3 |
    block28125644Value0 := block28125644Arg1.
    block28125644Value1 := block28125644Value0.
    (block28125644Value1) labelString: ('Numeric (Hex)').
    block28125644Value2 := block28125644Value0.
    (block28125644Value2) marginWidth: (0).
    block28125644Value3 := block28125644Value0.
    (block28125644Value3) marginHeight: (0).
    block28125644Value0
].
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := 'literalTypeNumericHex'.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := 'literalTypeNumericBin'.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack3 := [:block28125668Arg1 | 
    | block28125668Value0 block28125668Value1 block28125668Value2 block28125668Value3 |
    block28125668Value0 := block28125668Arg1.
    block28125668Value1 := block28125668Value0.
    (block28125668Value1) labelString: ('Numeric (Bin)').
    block28125668Value2 := block28125668Value0.
    (block28125668Value2) marginWidth: (0).
    block28125668Value3 := block28125668Value0.
    (block28125668Value3) marginHeight: (0).
    block28125668Value0
].
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack2 := 'literalTypeNumericBin'.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := 'literalTypeString'.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack3 := [:block2812568cArg1 | 
    | block2812568cValue0 block2812568cValue1 block2812568cValue2 block2812568cValue3 |
    block2812568cValue0 := block2812568cArg1.
    block2812568cValue1 := block2812568cValue0.
    (block2812568cValue1) labelString: ('Others').
    block2812568cValue2 := block2812568cValue0.
    (block2812568cValue2) marginWidth: (0).
    block2812568cValue3 := block2812568cValue0.
    (block2812568cValue3) marginHeight: (0).
    block2812568cValue0
].
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack2 := 'literalTypeString'.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack3 := [:block281256b0Arg1 | 
    | block281256b0Value0 block281256b0Value1 block281256b0Value2 block281256b0Value3 |
    block281256b0Value0 := block281256b0Arg1.
    block281256b0Value1 := block281256b0Value0.
    (block281256b0Value1) labelString: ('&OK').
    block281256b0Value2 := block281256b0Value0.
    (block281256b0Value2) height: (30).
    block281256b0Value3 := (block281256b0Value0) width: (75).
    block281256b0Value3
].
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack3 := [:block281256d4Arg1 | 
    | block281256d4Value0 block281256d4Value1 block281256d4Value2 block281256d4Value3 |
    block281256d4Value0 := block281256d4Arg1.
    block281256d4Value1 := block281256d4Value0.
    (block281256d4Value1) labelString: ('&Cancel').
    block281256d4Value2 := block281256d4Value0.
    (block281256d4Value2) height: (30).
    block281256d4Value3 := (block281256d4Value0) width: (75).
    block281256d4Value3
].
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack2 := [:recoveredBlock572Arg1 | 
    | recoveredBlock572Value0 recoveredBlock572Value1 recoveredBlock572Value2 recoveredBlock572Value3 recoveredBlock572Value4 recoveredBlock572Value5 recoveredBlock572Value6 recoveredBlock572Value7 recoveredBlock572Value8 recoveredBlock572Value9 recoveredBlock572Value10 recoveredBlock572Value11 recoveredBlock572Value12 recoveredBlock572Value13 recoveredBlock572Value14 |
    recoveredBlock572Value0 := recoveredBlock572Arg1.
    recoveredBlock572Value1 := recoveredBlock572Value0.
    recoveredBlock572Value2 := XmATTACHFORM.
    (recoveredBlock572Value1) topAttachment: (recoveredBlock572Value2).
    recoveredBlock572Value3 := recoveredBlock572Value0.
    (recoveredBlock572Value3) topOffset: (2).
    recoveredBlock572Value4 := recoveredBlock572Value0.
    recoveredBlock572Value5 := XmATTACHFORM.
    (recoveredBlock572Value4) rightAttachment: (recoveredBlock572Value5).
    recoveredBlock572Value6 := recoveredBlock572Value0.
    (recoveredBlock572Value6) rightOffset: (2).
    recoveredBlock572Value7 := recoveredBlock572Value0.
    recoveredBlock572Value8 := XmATTACHFORM.
    (recoveredBlock572Value7) leftAttachment: (recoveredBlock572Value8).
    recoveredBlock572Value9 := recoveredBlock572Value0.
    (recoveredBlock572Value9) leftOffset: (2).
    recoveredBlock572Value10 := recoveredBlock572Value0.
    recoveredBlock572Value11 := XmATTACHWIDGET.
    (recoveredBlock572Value10) bottomAttachment: (recoveredBlock572Value11).
    recoveredBlock572Value12 := recoveredBlock572Value0.
    recoveredBlock572Value13 := recoveredLocal6.
    (recoveredBlock572Value12) bottomWidget: (recoveredBlock572Value13).
    recoveredBlock572Value14 := (recoveredBlock572Value0) bottomOffset: (5).
    recoveredBlock572Value14
].
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack2 := [:block281256f8Arg1 | 
    | block281256f8Value0 block281256f8Value1 block281256f8Value2 block281256f8Value3 block281256f8Value4 block281256f8Value5 |
    block281256f8Value0 := block281256f8Arg1.
    block281256f8Value1 := block281256f8Value0.
    block281256f8Value2 := XmATTACHFORM.
    (block281256f8Value1) topAttachment: (block281256f8Value2).
    block281256f8Value3 := block281256f8Value0.
    (block281256f8Value3) topOffset: (32).
    block281256f8Value4 := XmATTACHFORM.
    block281256f8Value5 := (block281256f8Value0) leftAttachment: (block281256f8Value4).
    block281256f8Value5
].
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack2 := [:block2812571cArg1 | 
    | block2812571cValue0 block2812571cValue1 block2812571cValue2 block2812571cValue3 block2812571cValue4 block2812571cValue5 block2812571cValue6 block2812571cValue7 block2812571cValue8 block2812571cValue9 |
    block2812571cValue0 := block2812571cArg1.
    block2812571cValue1 := block2812571cValue0.
    block2812571cValue2 := XmATTACHFORM.
    (block2812571cValue1) topAttachment: (block2812571cValue2).
    block2812571cValue3 := block2812571cValue0.
    (block2812571cValue3) topOffset: (5).
    block2812571cValue4 := block2812571cValue0.
    block2812571cValue5 := XmATTACHFORM.
    (block2812571cValue4) leftAttachment: (block2812571cValue5).
    block2812571cValue6 := block2812571cValue0.
    (block2812571cValue6) leftOffset: (5).
    block2812571cValue7 := block2812571cValue0.
    block2812571cValue8 := XmATTACHFORM.
    (block2812571cValue7) rightAttachment: (block2812571cValue8).
    block2812571cValue9 := (block2812571cValue0) rightOffset: (5).
    block2812571cValue9
].
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            recoveredStack2 := [:block28125740Arg1 | 
    | block28125740Value0 block28125740Value1 block28125740Value2 block28125740Value3 block28125740Value4 block28125740Value5 block28125740Value6 block28125740Value7 block28125740Value8 block28125740Value9 block28125740Value10 |
    block28125740Value0 := block28125740Arg1.
    block28125740Value1 := block28125740Value0.
    block28125740Value2 := XmATTACHNONE.
    (block28125740Value1) leftAttachment: (block28125740Value2).
    block28125740Value3 := block28125740Value0.
    block28125740Value4 := XmATTACHNONE.
    (block28125740Value3) topAttachment: (block28125740Value4).
    block28125740Value5 := block28125740Value0.
    block28125740Value6 := XmATTACHFORM.
    (block28125740Value5) rightAttachment: (block28125740Value6).
    block28125740Value7 := block28125740Value0.
    (block28125740Value7) rightOffset: (2).
    block28125740Value8 := block28125740Value0.
    block28125740Value9 := XmATTACHFORM.
    (block28125740Value8) bottomAttachment: (block28125740Value9).
    block28125740Value10 := (block28125740Value0) bottomOffset: (2).
    block28125740Value10
].
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredStack2 := [:recoveredBlock807Arg1 | 
    | recoveredBlock807Value0 recoveredBlock807Value1 recoveredBlock807Value2 recoveredBlock807Value3 recoveredBlock807Value4 recoveredBlock807Value5 recoveredBlock807Value6 recoveredBlock807Value7 recoveredBlock807Value8 recoveredBlock807Value9 recoveredBlock807Value10 recoveredBlock807Value11 recoveredBlock807Value12 recoveredBlock807Value13 |
    recoveredBlock807Value0 := recoveredBlock807Arg1.
    recoveredBlock807Value1 := recoveredBlock807Value0.
    recoveredBlock807Value2 := XmATTACHNONE.
    (recoveredBlock807Value1) leftAttachment: (recoveredBlock807Value2).
    recoveredBlock807Value3 := recoveredBlock807Value0.
    recoveredBlock807Value4 := XmATTACHNONE.
    (recoveredBlock807Value3) topAttachment: (recoveredBlock807Value4).
    recoveredBlock807Value5 := recoveredBlock807Value0.
    recoveredBlock807Value6 := XmATTACHWIDGET.
    (recoveredBlock807Value5) rightAttachment: (recoveredBlock807Value6).
    recoveredBlock807Value7 := recoveredBlock807Value0.
    recoveredBlock807Value8 := recoveredLocal6.
    (recoveredBlock807Value7) rightWidget: (recoveredBlock807Value8).
    recoveredBlock807Value9 := recoveredBlock807Value0.
    (recoveredBlock807Value9) rightOffset: (5).
    recoveredBlock807Value10 := recoveredBlock807Value0.
    recoveredBlock807Value11 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock807Value10) bottomAttachment: (recoveredBlock807Value11).
    recoveredBlock807Value12 := recoveredLocal6.
    recoveredBlock807Value13 := (recoveredBlock807Value0) bottomWidget: (recoveredBlock807Value12).
    recoveredBlock807Value13
].
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 874.
        ].
        recoveredStep = 874 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            recoveredStack4 := 'shellResizeCallback:clientData:callData:'.
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 892.
        ].
        recoveredStep = 892 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredStack3 := XmNvalueChangedCallback.
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            recoveredStack5 := 'literalChange:clientData:callData:'.
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 905.
        ].
        recoveredStep = 905 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 908.
        ].
        recoveredStep = 908 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            recoveredStack4 := 'literalLosingFocus:clientData:callData:'.
            recoveredPC := 912.
        ].
        recoveredStep = 912 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 917.
        ].
        recoveredStep = 917 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 920.
        ].
        recoveredStep = 920 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 924.
        ].
        recoveredStep = 924 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 925.
        ].
        recoveredStep = 925 ifTrue: [
            recoveredStack4 := 'literalTypeNumericHex:clientData:callData:'.
            recoveredPC := 928.
        ].
        recoveredStep = 928 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 929.
        ].
        recoveredStep = 929 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 936.
        ].
        recoveredStep = 936 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 940.
        ].
        recoveredStep = 940 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            recoveredStack4 := 'literalTypeNumericBin:clientData:callData:'.
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 945.
        ].
        recoveredStep = 945 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 957.
        ].
        recoveredStep = 957 ifTrue: [
            recoveredStack4 := 'literalTypeString:clientData:callData:'.
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 965.
        ].
        recoveredStep = 965 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 977.
        ].
        recoveredStep = 977 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 981.
        ].
        recoveredStep = 981 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 984.
        ].
        recoveredStep = 984 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 988.
        ].
        recoveredStep = 988 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 989.
        ].
        recoveredStep = 989 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 992.
        ].
        recoveredStep = 992 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 993.
        ].
        recoveredStep = 993 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 997.
        ].
        recoveredStep = 997 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1000.
        ].
        recoveredStep = 1000 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1005.
        ].
        recoveredStep = 1005 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1008.
        ].
        recoveredStep = 1008 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1016.
        ].
        recoveredStep = 1016 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1021.
        ].
        recoveredStep = 1021 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 1027.
        ].
        recoveredStep = 1027 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 1030.
        ].
        recoveredStep = 1030 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1035.
        ].
        recoveredStep = 1035 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001abdc; bytecode file offset 0x92209c"
!ASDScintillaOptions methodsFor: 'recovered'!
optionsXMLCategory
    ^'EditorSettings\TextEditor\Scintilla'
! !

"ASDBase.ic method 0x2001e5d8; bytecode file offset 0x92209c"
!ASDScintillaOptions methodsFor: 'recovered'!
groupString
    ^'Appearance\Editors\Text'
! !

"ASDBase.ic method 0x200517e0; bytecode file offset 0x94f0e0"
!ASDScintillaOptions methodsFor: 'recovered'!
optionCodeFont
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fontManager.
    recoveredValue1 := (recoveredValue0) codeFont.
    recoveredValue2 := (recoveredValue1) fontStruct.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005c528; bytecode file offset 0x959680"
!ASDScintillaOptions methodsFor: 'recovered'!
defaultScintillaColorPreprocessor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) blue.
    recoveredValue2 := (recoveredValue1) asOSRGB.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005c550; bytecode file offset 0x959680"
!ASDScintillaOptions methodsFor: 'recovered'!
defaultScintillaColorComments
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) darkGreen.
    recoveredValue2 := (recoveredValue1) asOSRGB.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005c794; bytecode file offset 0x959680"
!ASDScintillaOptions methodsFor: 'recovered'!
defaultScintillaColorKeywords
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) blue.
    recoveredValue2 := (recoveredValue1) asOSRGB.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005c870; bytecode file offset 0x959680"
!ASDScintillaOptions methodsFor: 'recovered'!
defaultScintillaColorNumbers
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) blue.
    recoveredValue2 := (recoveredValue1) asOSRGB.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005caa0; bytecode file offset 0x959680"
!ASDScintillaOptions methodsFor: 'recovered'!
defaultScintillaColorOperator
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) black.
    recoveredValue2 := (recoveredValue1) asOSRGB.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005cc1c; bytecode file offset 0x959680"
!ASDScintillaOptions methodsFor: 'recovered'!
defaultScintillaColorStrings
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) darkBlue.
    recoveredValue2 := (recoveredValue1) asOSRGB.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200616b8; bytecode file offset 0x95e838"
!ASDScintillaOptions methodsFor: 'recovered'!
groupStringColors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) groupString.
    recoveredValue1 := (recoveredValue0) , ('\Syntax Highlighting').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20072ce8; bytecode file offset 0x96f6d4"
!ASDScintillaOptions methodsFor: 'recovered'!
defaultScintillaAutoIndent
    ^4
! !

"ASDBase.ic method 0x20074b84; bytecode file offset 0x9757c8"
!ASDScintillaOptions methodsFor: 'recovered'!
defaultScintillaEnableChangeTracking
    ^true
! !

"ASDBase.ic method 0x2007560c; bytecode file offset 0x9757c8"
!ASDScintillaOptions methodsFor: 'recovered'!
defaultScintillaShowLineNumbers
    ^true
! !

"ASDBase.ic method 0x20077984; bytecode file offset 0x9757c8"
!ASDScintillaOptions methodsFor: 'recovered'!
defaultScintillaEnableClosingBraces
    ^true
! !

"ASDBase.ic method 0x20077af4; bytecode file offset 0x9757c8"
!ASDScintillaOptions methodsFor: 'recovered'!
defaultScintillaEnableFolding
    ^true
! !

"ASDBase.ic method 0x20077c24; bytecode file offset 0x9757c8"
!ASDScintillaOptions methodsFor: 'recovered'!
defaultScintillaEnableSyntaxHighlighting
    ^true
! !

"ASDBase.ic method 0x20078984; bytecode file offset 0x9757c8"
!ASDScintillaOptions methodsFor: 'recovered'!
defaultScintillaEnableAutoCompletion
    ^true
! !

"ASDBase.ic method 0x20079cf4; bytecode file offset 0x97c330"
!ASDScintillaOptions methodsFor: 'recovered'!
defaultScintillaShowWhitespace
    ^false
! !

"ASDBase.ic method 0x2008133c; bytecode file offset 0x97dc10"
!ASDScintillaOptions methodsFor: 'recovered'!
defaultScintillaColorKeywords2
    ^127
! !

"ASDBase.ic method 0x2020c98c; bytecode file offset 0xb09508"
!ASDScintillaOptions methodsFor: 'recovered'!
optionScintillaColorStrings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da2e0Arg1 | 
    | block280da2e0Value0 block280da2e0Value1 block280da2e0Value2 |
    block280da2e0Value0 := block280da2e0Arg1.
    block280da2e0Value1 := (block280da2e0Value0) attributeName.
    block280da2e0Value2 := (block280da2e0Value1) = ('ScintillaColorStrings').
    block280da2e0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultScintillaColorStrings.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020c9b4; bytecode file offset 0xb09508"
!ASDScintillaOptions methodsFor: 'recovered'!
optionScintillaAutoIndent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da304Arg1 | 
    | block280da304Value0 block280da304Value1 block280da304Value2 |
    block280da304Value0 := block280da304Arg1.
    block280da304Value1 := (block280da304Value0) attributeName.
    block280da304Value2 := (block280da304Value1) = ('ScintillaAutoIndent').
    block280da304Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultScintillaAutoIndent.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020c9dc; bytecode file offset 0xb09508"
!ASDScintillaOptions methodsFor: 'recovered'!
optionScintillaColorPreprocessor
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da328Arg1 | 
    | block280da328Value0 block280da328Value1 block280da328Value2 |
    block280da328Value0 := block280da328Arg1.
    block280da328Value1 := (block280da328Value0) attributeName.
    block280da328Value2 := (block280da328Value1) = ('ScintillaColorPreprocessor').
    block280da328Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultScintillaColorPreprocessor.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020ca04; bytecode file offset 0xb09508"
!ASDScintillaOptions methodsFor: 'recovered'!
optionScintillaColorKeywords2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da34cArg1 | 
    | block280da34cValue0 block280da34cValue1 block280da34cValue2 |
    block280da34cValue0 := block280da34cArg1.
    block280da34cValue1 := (block280da34cValue0) attributeName.
    block280da34cValue2 := (block280da34cValue1) = ('ScintillaColorKeywords2').
    block280da34cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultScintillaColorKeywords2.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020ca2c; bytecode file offset 0xb09508"
!ASDScintillaOptions methodsFor: 'recovered'!
optionScintillaEnableClosingBraces
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da370Arg1 | 
    | block280da370Value0 block280da370Value1 block280da370Value2 |
    block280da370Value0 := block280da370Arg1.
    block280da370Value1 := (block280da370Value0) attributeName.
    block280da370Value2 := (block280da370Value1) = ('ScintillaEnableClosingBraces').
    block280da370Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultScintillaEnableClosingBraces.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020ca54; bytecode file offset 0xb09508"
!ASDScintillaOptions methodsFor: 'recovered'!
optionScintillaColorNumbers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da394Arg1 | 
    | block280da394Value0 block280da394Value1 block280da394Value2 |
    block280da394Value0 := block280da394Arg1.
    block280da394Value1 := (block280da394Value0) attributeName.
    block280da394Value2 := (block280da394Value1) = ('ScintillaColorNumbers').
    block280da394Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultScintillaColorNumbers.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020ca7c; bytecode file offset 0xb09508"
!ASDScintillaOptions methodsFor: 'recovered'!
optionScintillaColorOperator
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da3b8Arg1 | 
    | block280da3b8Value0 block280da3b8Value1 block280da3b8Value2 |
    block280da3b8Value0 := block280da3b8Arg1.
    block280da3b8Value1 := (block280da3b8Value0) attributeName.
    block280da3b8Value2 := (block280da3b8Value1) = ('ScintillaColorOperator').
    block280da3b8Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultScintillaColorOperator.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020caa4; bytecode file offset 0xb09508"
!ASDScintillaOptions methodsFor: 'recovered'!
optionScintillaShowWhitespace
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da3dcArg1 | 
    | block280da3dcValue0 block280da3dcValue1 block280da3dcValue2 |
    block280da3dcValue0 := block280da3dcArg1.
    block280da3dcValue1 := (block280da3dcValue0) attributeName.
    block280da3dcValue2 := (block280da3dcValue1) = ('ScintillaShowWhitespace').
    block280da3dcValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultScintillaShowWhitespace.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020caf4; bytecode file offset 0xb09508"
!ASDScintillaOptions methodsFor: 'recovered'!
optionScintillaEnableChangeTracking
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da424Arg1 | 
    | block280da424Value0 block280da424Value1 block280da424Value2 |
    block280da424Value0 := block280da424Arg1.
    block280da424Value1 := (block280da424Value0) attributeName.
    block280da424Value2 := (block280da424Value1) = ('ScintillaEnableChangeTracking').
    block280da424Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultScintillaEnableChangeTracking.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020cb44; bytecode file offset 0xb09508"
!ASDScintillaOptions methodsFor: 'recovered'!
optionScintillaColorComments
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da46cArg1 | 
    | block280da46cValue0 block280da46cValue1 block280da46cValue2 |
    block280da46cValue0 := block280da46cArg1.
    block280da46cValue1 := (block280da46cValue0) attributeName.
    block280da46cValue2 := (block280da46cValue1) = ('ScintillaColorComments').
    block280da46cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultScintillaColorComments.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020cb6c; bytecode file offset 0xb09508"
!ASDScintillaOptions methodsFor: 'recovered'!
optionScintillaEnableFolding
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da490Arg1 | 
    | block280da490Value0 block280da490Value1 block280da490Value2 |
    block280da490Value0 := block280da490Arg1.
    block280da490Value1 := (block280da490Value0) attributeName.
    block280da490Value2 := (block280da490Value1) = ('ScintillaEnableFolding').
    block280da490Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultScintillaEnableFolding.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020cb94; bytecode file offset 0xb09508"
!ASDScintillaOptions methodsFor: 'recovered'!
optionScintillaEnableSyntaxHighlighting
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da4b4Arg1 | 
    | block280da4b4Value0 block280da4b4Value1 block280da4b4Value2 |
    block280da4b4Value0 := block280da4b4Arg1.
    block280da4b4Value1 := (block280da4b4Value0) attributeName.
    block280da4b4Value2 := (block280da4b4Value1) = ('ScintillaEnableSyntaxHighlighting').
    block280da4b4Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultScintillaEnableSyntaxHighlighting.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020cbbc; bytecode file offset 0xb09508"
!ASDScintillaOptions methodsFor: 'recovered'!
optionScintillaEnableAutoCompletion
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da4d8Arg1 | 
    | block280da4d8Value0 block280da4d8Value1 block280da4d8Value2 |
    block280da4d8Value0 := block280da4d8Arg1.
    block280da4d8Value1 := (block280da4d8Value0) attributeName.
    block280da4d8Value2 := (block280da4d8Value1) = ('ScintillaEnableAutoCompletion').
    block280da4d8Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultScintillaEnableAutoCompletion.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020cbe4; bytecode file offset 0xb09508"
!ASDScintillaOptions methodsFor: 'recovered'!
optionScintillaShowLineNumbers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da4fcArg1 | 
    | block280da4fcValue0 block280da4fcValue1 block280da4fcValue2 |
    block280da4fcValue0 := block280da4fcArg1.
    block280da4fcValue1 := (block280da4fcValue0) attributeName.
    block280da4fcValue2 := (block280da4fcValue1) = ('ScintillaShowLineNumbers').
    block280da4fcValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultScintillaShowLineNumbers.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020cc34; bytecode file offset 0xb09508"
!ASDScintillaOptions methodsFor: 'recovered'!
optionScintillaColorKeywords
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da544Arg1 | 
    | block280da544Value0 block280da544Value1 block280da544Value2 |
    block280da544Value0 := block280da544Arg1.
    block280da544Value1 := (block280da544Value0) attributeName.
    block280da544Value2 := (block280da544Value1) = ('ScintillaColorKeywords').
    block280da544Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultScintillaColorKeywords.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027e67c; bytecode file offset 0xb7b0b0"
!ASDScintillaOptions methodsFor: 'recovered'!
initializeScintillaColorOperator
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) optionsXMLCategory.
    recoveredValue2 := EtasColorOption.
    recoveredValue3 := (self) defaultScintillaColorOperator.
    recoveredValue4 := (self) defaultScintillaColorOperator.
    recoveredValue5 := (self) groupStringColors.
    recoveredValue6 := (recoveredValue2) label: ('Operators') description: ('Syntax highlighting color for operators') toolTip: ('Syntax highlighting color for operators') value: (recoveredValue3) default: (recoveredValue4) group: (recoveredValue5) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue7 := (self) userOptionFile.
    recoveredValue8 := (recoveredValue0) xmlCategory: (recoveredValue1) attributeName: ('ScintillaColorOperator') optionClass: (recoveredValue6) optionFile: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2027e6b4; bytecode file offset 0xb7b0b0"
!ASDScintillaOptions methodsFor: 'recovered'!
initializeScintillaColorStrings
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) optionsXMLCategory.
    recoveredValue2 := EtasColorOption.
    recoveredValue3 := (self) defaultScintillaColorStrings.
    recoveredValue4 := (self) defaultScintillaColorStrings.
    recoveredValue5 := (self) groupStringColors.
    recoveredValue6 := (recoveredValue2) label: ('Strings') description: ('Syntax highlighting color for strings') toolTip: ('Syntax highlighting color for strings') value: (recoveredValue3) default: (recoveredValue4) group: (recoveredValue5) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue7 := (self) userOptionFile.
    recoveredValue8 := (recoveredValue0) xmlCategory: (recoveredValue1) attributeName: ('ScintillaColorStrings') optionClass: (recoveredValue6) optionFile: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2027e6ec; bytecode file offset 0xb7b0b0"
!ASDScintillaOptions methodsFor: 'recovered'!
initializeScintillaColorKeywords2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) optionsXMLCategory.
    recoveredValue2 := EtasColorOption.
    recoveredValue3 := (self) defaultScintillaColorKeywords2.
    recoveredValue4 := (self) defaultScintillaColorKeywords2.
    recoveredValue5 := (self) groupStringColors.
    recoveredValue6 := (recoveredValue2) label: ('Model Identifiers') description: ('Syntax highlighting color for model identifiers') toolTip: ('Syntax highlighting color for model identifiers') value: (recoveredValue3) default: (recoveredValue4) group: (recoveredValue5) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue7 := (self) userOptionFile.
    recoveredValue8 := (recoveredValue0) xmlCategory: (recoveredValue1) attributeName: ('ScintillaColorKeywords2') optionClass: (recoveredValue6) optionFile: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2027e724; bytecode file offset 0xb7b0b0"
!ASDScintillaOptions methodsFor: 'recovered'!
initializeScintillaColorPreprocessor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) optionsXMLCategory.
    recoveredValue2 := EtasColorOption.
    recoveredValue3 := (self) defaultScintillaColorPreprocessor.
    recoveredValue4 := (self) defaultScintillaColorPreprocessor.
    recoveredValue5 := (self) groupStringColors.
    recoveredValue6 := (recoveredValue2) label: ('Preprocessor Statements') description: ('Syntax highlighting color for preprocessor statements') toolTip: ('Syntax highlighting color for preprocessor statements') value: (recoveredValue3) default: (recoveredValue4) group: (recoveredValue5) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue7 := (self) userOptionFile.
    recoveredValue8 := (recoveredValue0) xmlCategory: (recoveredValue1) attributeName: ('ScintillaColorPreprocessor') optionClass: (recoveredValue6) optionFile: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2027e75c; bytecode file offset 0xb7b0b0"
!ASDScintillaOptions methodsFor: 'recovered'!
initializeScintillaColorKeywords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) optionsXMLCategory.
    recoveredValue2 := EtasColorOption.
    recoveredValue3 := (self) defaultScintillaColorKeywords.
    recoveredValue4 := (self) defaultScintillaColorKeywords.
    recoveredValue5 := (self) groupStringColors.
    recoveredValue6 := (recoveredValue2) label: ('Language Keywords') description: ('Syntax highlighting color for language keywords') toolTip: ('Syntax highlighting color for language keywords') value: (recoveredValue3) default: (recoveredValue4) group: (recoveredValue5) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue7 := (self) userOptionFile.
    recoveredValue8 := (recoveredValue0) xmlCategory: (recoveredValue1) attributeName: ('ScintillaColorKeywords') optionClass: (recoveredValue6) optionFile: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2027e794; bytecode file offset 0xb7b0b0"
!ASDScintillaOptions methodsFor: 'recovered'!
initializeScintillaColorNumbers
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) optionsXMLCategory.
    recoveredValue2 := EtasColorOption.
    recoveredValue3 := (self) defaultScintillaColorNumbers.
    recoveredValue4 := (self) defaultScintillaColorNumbers.
    recoveredValue5 := (self) groupStringColors.
    recoveredValue6 := (recoveredValue2) label: ('Numbers') description: ('Syntax highlighting color for numbers') toolTip: ('Syntax highlighting color for numbers') value: (recoveredValue3) default: (recoveredValue4) group: (recoveredValue5) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue7 := (self) userOptionFile.
    recoveredValue8 := (recoveredValue0) xmlCategory: (recoveredValue1) attributeName: ('ScintillaColorNumbers') optionClass: (recoveredValue6) optionFile: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2027e7cc; bytecode file offset 0xb7b0b0"
!ASDScintillaOptions methodsFor: 'recovered'!
initializeScintillaColorComments
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) optionsXMLCategory.
    recoveredValue2 := EtasColorOption.
    recoveredValue3 := (self) defaultScintillaColorComments.
    recoveredValue4 := (self) defaultScintillaColorComments.
    recoveredValue5 := (self) groupStringColors.
    recoveredValue6 := (recoveredValue2) label: ('Comments') description: ('Syntax highlighting color for comments') toolTip: ('Syntax highlighting color for comments') value: (recoveredValue3) default: (recoveredValue4) group: (recoveredValue5) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue7 := (self) userOptionFile.
    recoveredValue8 := (recoveredValue0) xmlCategory: (recoveredValue1) attributeName: ('ScintillaColorComments') optionClass: (recoveredValue6) optionFile: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20304070; bytecode file offset 0xc0099c"
!ASDScintillaOptions methodsFor: 'recovered'!
initializeScintillaEnableAutoCompletion
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ScintillaEnableAutoCompletion'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Enable Auto-Completion for Local Elements'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Enable auto-completion for local elements.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Enable Auto-Completion for Local Elements'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) defaultScintillaEnableAutoCompletion.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := (recoveredStack9) defaultScintillaEnableAutoCompletion.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203040b0; bytecode file offset 0xc0099c"
!ASDScintillaOptions methodsFor: 'recovered'!
initializeScintillaEnableChangeTracking
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ScintillaEnableChangeTracking'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Track Source Code Changes'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Track source code changes.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Track Source Code Changes'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) defaultScintillaEnableChangeTracking.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := (recoveredStack9) defaultScintillaEnableChangeTracking.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20304128; bytecode file offset 0xc00a14"
!ASDScintillaOptions methodsFor: 'recovered'!
initializeScintillaEnableClosingBraces
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ScintillaEnableClosingBraces'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Insert Closing Brackets Automatically'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Insert closing braces, square brackets and parentheses automatically'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Insert closing braces, square brackets and parentheses automatically'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) defaultScintillaEnableClosingBraces.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := (recoveredStack9) defaultScintillaEnableClosingBraces.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203041a0; bytecode file offset 0xc00b5c"
!ASDScintillaOptions methodsFor: 'recovered'!
initializeScintillaEnableFolding
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ScintillaEnableFolding'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Enable Folding'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Enable folding for blocks of code.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Enable folding for blocks of code'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) defaultScintillaEnableFolding.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := (recoveredStack9) defaultScintillaEnableFolding.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203041e4; bytecode file offset 0xc00b5c"
!ASDScintillaOptions methodsFor: 'recovered'!
initializeScintillaShowWhitespace
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ScintillaShowWhitespace'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Show Whitespace'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Show whitespace.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Show whitespace'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) defaultScintillaShowWhitespace.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := (recoveredStack9) defaultScintillaShowWhitespace.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20304228; bytecode file offset 0xc00b5c"
!ASDScintillaOptions methodsFor: 'recovered'!
initializeScintillaShowLineNumbers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ScintillaShowLineNumbers'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Show Line Numbers'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Show line numbers.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Show line numbers'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) defaultScintillaShowLineNumbers.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := (recoveredStack9) defaultScintillaShowLineNumbers.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2030426c; bytecode file offset 0xc00b5c"
!ASDScintillaOptions methodsFor: 'recovered'!
initializeScintillaEnableSyntaxHighlighting
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ScintillaEnableSyntaxHighlighting'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Enable Syntax Highlighting'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Enable syntax highlighting for C and ESDL editors.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Enable syntax highlighting for C and ESDL editors'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) defaultScintillaEnableSyntaxHighlighting.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := (recoveredStack9) defaultScintillaEnableSyntaxHighlighting.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupStringColors.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20352060; bytecode file offset 0xc4e954"
!ASDScintillaOptions methodsFor: 'recovered'!
initializeScintillaAutoIndent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ScintillaAutoIndent'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasNumericOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Automatic Indentation'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Amount of blanks to indent new lines with'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Amount of blanks to indent new lines with'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) defaultScintillaAutoIndent.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := (recoveredStack9) defaultScintillaAutoIndent.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack6 := 0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack5) min: (recoveredStack6).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := 80.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := (recoveredStack4) max: (recoveredStack5).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20421c24; bytecode file offset 0xd1e524"
!ASDScintillaOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    super initialize.
    recoveredValue0 := (self) options.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) initializeScintillaAutoIndent.
    (recoveredValue1) add: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) initializeScintillaEnableAutoCompletion.
    (recoveredValue3) add: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) initializeScintillaEnableFolding.
    (recoveredValue5) add: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) initializeScintillaEnableSyntaxHighlighting.
    (recoveredValue7) add: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := (self) initializeScintillaEnableClosingBraces.
    (recoveredValue9) add: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := (self) initializeScintillaEnableChangeTracking.
    (recoveredValue11) add: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := (self) initializeScintillaShowLineNumbers.
    (recoveredValue13) add: (recoveredValue14).
    recoveredValue15 := recoveredValue0.
    recoveredValue16 := (self) initializeScintillaShowWhitespace.
    (recoveredValue15) add: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    recoveredValue18 := (self) initializeScintillaColorComments.
    (recoveredValue17) add: (recoveredValue18).
    recoveredValue19 := recoveredValue0.
    recoveredValue20 := (self) initializeScintillaColorNumbers.
    (recoveredValue19) add: (recoveredValue20).
    recoveredValue21 := recoveredValue0.
    recoveredValue22 := (self) initializeScintillaColorStrings.
    (recoveredValue21) add: (recoveredValue22).
    recoveredValue23 := recoveredValue0.
    recoveredValue24 := (self) initializeScintillaColorPreprocessor.
    (recoveredValue23) add: (recoveredValue24).
    recoveredValue25 := recoveredValue0.
    recoveredValue26 := (self) initializeScintillaColorOperator.
    (recoveredValue25) add: (recoveredValue26).
    recoveredValue27 := recoveredValue0.
    recoveredValue28 := (self) initializeScintillaColorKeywords.
    (recoveredValue27) add: (recoveredValue28).
    recoveredValue29 := recoveredValue0.
    recoveredValue30 := (self) initializeScintillaColorKeywords2.
    (recoveredValue29) add: (recoveredValue30).
    ^self
! !


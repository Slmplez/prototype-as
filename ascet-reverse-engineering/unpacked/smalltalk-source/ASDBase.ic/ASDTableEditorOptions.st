"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022b68; bytecode file offset 0x92209c"
!ASDTableEditorOptions methodsFor: 'recovered'!
groupString
    ^'Appearance\Editors\Table'
! !

"ASDBase.ic method 0x201916b8; bytecode file offset 0xa8dfa4"
!ASDTableEditorOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super initialize.
    recoveredValue0 := (self) options.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) initializeTableInputColor.
    (recoveredValue1) add: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) initializeTableOutputColor.
    (recoveredValue3) add: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20283700; bytecode file offset 0xb8007c"
!ASDTableEditorOptions methodsFor: 'recovered'!
optionTableOutputColor
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) allOptions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280e16e4Arg1 | 
    | block280e16e4Value0 block280e16e4Value1 block280e16e4Value2 |
    block280e16e4Value0 := block280e16e4Arg1.
    block280e16e4Value1 := (block280e16e4Value0) attributeName.
    block280e16e4Value2 := (block280e16e4Value1) = ('TableOutputColor').
    block280e16e4Value2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 |
    recoveredBlock20Value0 := CgRGBColor.
    recoveredBlock20Value1 := (recoveredBlock20Value0) lightGray.
    ^recoveredBlock20Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) detect: (recoveredStack3) ifNone: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionClass.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromOSRGB: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20283768; bytecode file offset 0xb8007c"
!ASDTableEditorOptions methodsFor: 'recovered'!
optionTableInputColor
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) allOptions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280e172cArg1 | 
    | block280e172cValue0 block280e172cValue1 block280e172cValue2 |
    block280e172cValue0 := block280e172cArg1.
    block280e172cValue1 := (block280e172cValue0) attributeName.
    block280e172cValue2 := (block280e172cValue1) = ('TableInputColor').
    block280e172cValue2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 |
    recoveredBlock20Value0 := CgRGBColor.
    recoveredBlock20Value1 := (recoveredBlock20Value0) white.
    ^recoveredBlock20Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) detect: (recoveredStack3) ifNone: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionClass.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromOSRGB: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202d6e40; bytecode file offset 0xbd37c4"
!ASDTableEditorOptions methodsFor: 'recovered'!
initializeTableInputColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasColorOption.
    recoveredValue2 := CgRGBColor.
    recoveredValue3 := (recoveredValue2) white.
    recoveredValue4 := (recoveredValue3) asOSRGB.
    recoveredValue5 := CgRGBColor.
    recoveredValue6 := (recoveredValue5) white.
    recoveredValue7 := (recoveredValue6) asOSRGB.
    recoveredValue8 := (self) groupString.
    recoveredValue9 := (recoveredValue1) label: ('Input Color') description: ('Cell Background Color for the Inputs of Conditional/Boolean Tables') toolTip: ('Cell Background Color for Inputs') value: (recoveredValue4) default: (recoveredValue7) group: (recoveredValue8) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue10 := (self) userOptionFile.
    recoveredValue11 := (recoveredValue0) xmlCategory: ('EditorSettings\TableEditor') attributeName: ('TableInputColor') oldName: ('Tableinputcolor') optionClass: (recoveredValue9) optionFile: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x202d6ed0; bytecode file offset 0xbd37c4"
!ASDTableEditorOptions methodsFor: 'recovered'!
initializeTableOutputColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasColorOption.
    recoveredValue2 := CgRGBColor.
    recoveredValue3 := (recoveredValue2) lightGray.
    recoveredValue4 := (recoveredValue3) asOSRGB.
    recoveredValue5 := CgRGBColor.
    recoveredValue6 := (recoveredValue5) lightGray.
    recoveredValue7 := (recoveredValue6) asOSRGB.
    recoveredValue8 := (self) groupString.
    recoveredValue9 := (recoveredValue1) label: ('Output Color') description: ('Cell Background Color for the Outputs of Conditional/Boolean Tables') toolTip: ('Cell Background Color for Outputs') value: (recoveredValue4) default: (recoveredValue7) group: (recoveredValue8) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue10 := (self) userOptionFile.
    recoveredValue11 := (recoveredValue0) xmlCategory: ('EditorSettings\TableEditor') attributeName: ('TableOutputColor') oldName: ('Tableoutputcolor') optionClass: (recoveredValue9) optionFile: (recoveredValue10).
    ^recoveredValue11
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015e3c; bytecode file offset 0x92209c"
!ASDStatemachineEditorOptions methodsFor: 'recovered'!
bezierTransitionType60
    ^'##bezierLines60'
! !

"ASDBase.ic method 0x20018d64; bytecode file offset 0x92209c"
!ASDStatemachineEditorOptions methodsFor: 'recovered'!
bezierTransitionType52
    ^'##bezierLines52'
! !

"ASDBase.ic method 0x2001931c; bytecode file offset 0x92209c"
!ASDStatemachineEditorOptions methodsFor: 'recovered'!
groupString
    ^'Appearance\Editors\State Machine'
! !

"ASDBase.ic method 0x2001ba40; bytecode file offset 0x92209c"
!ASDStatemachineEditorOptions methodsFor: 'recovered'!
roundedOrthogonalTransitionType
    ^'##roundedOrthogonalLines'
! !

"ASDBase.ic method 0x20104698; bytecode file offset 0xa00fd0"
!ASDStatemachineEditorOptions methodsFor: 'recovered'!
transitionTypeStringCollection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('Bezier lines') with: ('Bezier lines - legacy') with: ('Orthogonal rounded lines').
    ^recoveredValue1
! !

"ASDBase.ic method 0x201049e4; bytecode file offset 0xa01584"
!ASDStatemachineEditorOptions methodsFor: 'recovered'!
transitionTypeValueCollection
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) bezierTransitionType60.
    recoveredValue2 := (self) bezierTransitionType52.
    recoveredValue3 := (self) roundedOrthogonalTransitionType.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x202000f4; bytecode file offset 0xafcc28"
!ASDStatemachineEditorOptions methodsFor: 'recovered'!
optionBDEConvertTransitionType
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
            recoveredStack1 := [:block280d8e7cArg1 | 
    | block280d8e7cValue0 block280d8e7cValue1 block280d8e7cValue2 |
    block280d8e7cValue0 := block280d8e7cArg1.
    block280d8e7cValue1 := (block280d8e7cValue0) attributeName.
    block280d8e7cValue2 := (block280d8e7cValue1) = ('BDEConvertTransitionType').
    block280d8e7cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20200214; bytecode file offset 0xafcc28"
!ASDStatemachineEditorOptions methodsFor: 'recovered'!
optionESDLAsDefault
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
            recoveredStack1 := [:block280d8f9cArg1 | 
    | block280d8f9cValue0 block280d8f9cValue1 block280d8f9cValue2 |
    block280d8f9cValue0 := block280d8f9cArg1.
    block280d8f9cValue1 := (block280d8f9cValue0) attributeName.
    block280d8f9cValue2 := (block280d8f9cValue1) = ('ESDLAsDefault').
    block280d8f9cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020cc0c; bytecode file offset 0xb09508"
!ASDStatemachineEditorOptions methodsFor: 'recovered'!
optionBDETransitionType
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
            recoveredStack1 := [:block280da520Arg1 | 
    | block280da520Value0 block280da520Value1 block280da520Value2 |
    block280da520Value0 := block280da520Arg1.
    block280da520Value1 := (block280da520Value0) attributeName.
    block280da520Value2 := (block280da520Value1) = ('BDETransitionType').
    block280da520Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) bezierTransitionType60.
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

"ASDBase.ic method 0x2023cfdc; bytecode file offset 0xb398b0"
!ASDStatemachineEditorOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    super initialize.
    recoveredValue0 := (self) options.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) initializeESDLAsDefault.
    (recoveredValue1) add: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) initializeBDEAnimatedStatesColor.
    (recoveredValue3) add: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) initializeBDETransitionType.
    (recoveredValue5) add: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) initializeBDEConvertTransitionType.
    (recoveredValue7) add: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x202696e0; bytecode file offset 0xb65fc4"
!ASDStatemachineEditorOptions methodsFor: 'recovered'!
initializeESDLAsDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := (recoveredValue1) label: ('Use ESDL as Default for State Machine') description: ('Use ESDL as default for state machine') toolTip: ('Use ESDL as Default for State Machine') value: (false) default: (false) group: (recoveredValue2) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue4 := (self) userOptionFile.
    recoveredValue5 := (recoveredValue0) xmlCategory: ('EditorSettings\Statemachine') attributeName: ('ESDLAsDefault') oldName: ('UseESDLAsDefault') optionClass: (recoveredValue3) optionFile: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20283734; bytecode file offset 0xb8007c"
!ASDStatemachineEditorOptions methodsFor: 'recovered'!
optionBDEAnimatedStatesColor
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
            recoveredStack3 := [:block280e1708Arg1 | 
    | block280e1708Value0 block280e1708Value1 block280e1708Value2 |
    block280e1708Value0 := block280e1708Arg1.
    block280e1708Value1 := (block280e1708Value0) attributeName.
    block280e1708Value2 := (block280e1708Value1) = ('BDEAnimatedStatesColor').
    block280e1708Value2
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
    recoveredBlock20Value1 := (recoveredBlock20Value0) green.
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

"ASDBase.ic method 0x202d6e88; bytecode file offset 0xbd37c4"
!ASDStatemachineEditorOptions methodsFor: 'recovered'!
initializeBDEAnimatedStatesColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasColorOption.
    recoveredValue2 := CgRGBColor.
    recoveredValue3 := (recoveredValue2) green.
    recoveredValue4 := (recoveredValue3) asOSRGB.
    recoveredValue5 := CgRGBColor.
    recoveredValue6 := (recoveredValue5) green.
    recoveredValue7 := (recoveredValue6) asOSRGB.
    recoveredValue8 := (self) groupString.
    recoveredValue9 := (recoveredValue1) label: ('Animated States Color') description: ('Animated states color of the graphic pane in state machines') toolTip: ('Animated states color of the graphic pane') value: (recoveredValue4) default: (recoveredValue7) group: (recoveredValue8) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue10 := (self) userOptionFile.
    recoveredValue11 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('BDEAnimatedStatesColor') oldName: ('Animatedstatescolor') optionClass: (recoveredValue9) optionFile: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x202e09a4; bytecode file offset 0xbdd2d0"
!ASDStatemachineEditorOptions methodsFor: 'recovered'!
initializeBDEConvertTransitionType
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
            recoveredStack2 := 'EditorSettings\BlockDiagram'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'BDEConvertTransitionType'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Convert Transition Type'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Converts existing transitions to current selected transition type.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Covnerts transitions to selected type'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack9 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2044930c; bytecode file offset 0xd45c1c"
!ASDStatemachineEditorOptions methodsFor: 'recovered'!
initializeBDETransitionType
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
            recoveredStack2 := 'EditorSettings\BlockDiagram'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'BDETransitionType'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasEnumerationOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Transition Type'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Defines the type of the graphical objects that represents the state machine transitions.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'State machine transition type '.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) bezierTransitionType60.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := (recoveredStack9) bezierTransitionType60.
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
            recoveredStack11 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack12 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack14 := [:block280fedc4Arg1 | 
    nil
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack6 := (recoveredStack6) transitionTypeValueCollection.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack5) valueCollection: (recoveredStack6).
            recoveredStack5 := recoveredStack4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack6 := (recoveredStack6) transitionTypeStringCollection.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack5) stringCollection: (recoveredStack6).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Local1 recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 |
    recoveredBlock53Value0 := (self) roundedOrthogonalTransitionType.
    recoveredBlock53Local1 := recoveredBlock53Value0.
    recoveredBlock53Value1 := (self) transitionTypeValueCollection.
    recoveredBlock53Value2 := [:recoveredBlock53Block68Arg1 | 
    | recoveredBlock53Block68Stack0 recoveredBlock53Block68Stack1 recoveredBlock53Block68Stack2 recoveredBlock53Block68Stack3 recoveredBlock53Block68Stack4 recoveredBlock53Block68PC recoveredBlock53Block68Step recoveredBlock53Block68Done recoveredBlock53Block68Result |
    recoveredBlock53Block68Stack0 := nil.
    recoveredBlock53Block68PC := 74.
    recoveredBlock53Block68Done := false.
    [recoveredBlock53Block68Done not] whileTrue: [
        recoveredBlock53Block68Step := recoveredBlock53Block68PC.
        recoveredBlock53Block68Step = 74 ifTrue: [
            recoveredBlock53Block68Stack1 := nil.
            recoveredBlock53Block68PC := 75.
        ].
        recoveredBlock53Block68Step = 75 ifTrue: [
            recoveredBlock53Block68Stack2 := recoveredBlock53Block68Arg1.
            recoveredBlock53Block68PC := 76.
        ].
        recoveredBlock53Block68Step = 76 ifTrue: [
            recoveredBlock53Block68Stack2 := (recoveredBlock53Block68Stack2) asString.
            recoveredBlock53Block68PC := 78.
        ].
        recoveredBlock53Block68Step = 78 ifTrue: [
            recoveredBlock53Block68Stack2 := (recoveredBlock53Block68Stack2) zapBlanks.
            recoveredBlock53Block68PC := 80.
        ].
        recoveredBlock53Block68Step = 80 ifTrue: [
            recoveredBlock53Block68Stack3 := recoveredBlock53Arg1.
            recoveredBlock53Block68PC := 83.
        ].
        recoveredBlock53Block68Step = 83 ifTrue: [
            recoveredBlock53Block68Stack3 := (recoveredBlock53Block68Stack3) zapBlanks.
            recoveredBlock53Block68PC := 85.
        ].
        recoveredBlock53Block68Step = 85 ifTrue: [
            recoveredBlock53Block68Stack2 := (recoveredBlock53Block68Stack2) = (recoveredBlock53Block68Stack3).
            recoveredBlock53Block68PC := 86.
        ].
        recoveredBlock53Block68Step = 86 ifTrue: [
            (recoveredBlock53Block68Stack2) ifTrue: [recoveredBlock53Block68PC := 90] ifFalse: [recoveredBlock53Block68PC := 96].
        ].
        recoveredBlock53Block68Step = 90 ifTrue: [
            recoveredBlock53Block68PC := 91.
        ].
        recoveredBlock53Block68Step = 91 ifTrue: [
            recoveredBlock53Block68Stack1 := recoveredBlock53Block68Arg1.
            recoveredBlock53Block68PC := 92.
        ].
        recoveredBlock53Block68Step = 92 ifTrue: [
            recoveredBlock53Block68Stack2 := recoveredBlock53Block68Stack1.
            recoveredBlock53Block68PC := 93.
        ].
        recoveredBlock53Block68Step = 93 ifTrue: [
            recoveredBlock53Local1 := recoveredBlock53Block68Stack2.
            recoveredBlock53Block68PC := 96.
        ].
        recoveredBlock53Block68Step = 96 ifTrue: [
            recoveredBlock53Block68Result := recoveredBlock53Block68Stack1.
            recoveredBlock53Block68Done := true.
        ].
    ].
    recoveredBlock53Block68Result
].
    (recoveredBlock53Value1) do: (recoveredBlock53Value2).
    recoveredBlock53Value3 := recoveredBlock53Local1.
    recoveredBlock53Value3
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlConversionBlock: (recoveredStack5).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


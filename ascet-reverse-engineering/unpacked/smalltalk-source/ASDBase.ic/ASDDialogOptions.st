"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20137bc8; bytecode file offset 0xa34490"
!ASDDialogOptions methodsFor: 'recovered'!
defaultDialogDecisions
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super defaultDialogDecisions.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) replace: ('ASDCreateDefaultProject%Show') with: ('ASDCreateDefaultProject%Yes').
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203c9e98; bytecode file offset 0xcc67ac"
!ASDDialogOptions methodsFor: 'recovered'!
initializeDisabledDialogs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLProjectOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'DisabledDialogs'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasMultiSelectConfigurationOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Confirmation Dialogs'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'A list of all Dialogs that can be disabled. The stored decision is displayed on the left side.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Confirmation Dialogs'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) defaultDialogDecisions.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := (recoveredStack9) defaultDialogDecisions.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack10 := 'Appearance\Confirmation Dialogs'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
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
            recoveredStack6 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack6 := (recoveredStack6) availableCustomizableDialogs.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack5) items: (recoveredStack6).
            recoveredStack5 := recoveredStack4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack6 := 10.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack5) lines: (recoveredStack6).
            recoveredStack5 := recoveredStack4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack5) markerIndex: (recoveredStack6).
            recoveredStack5 := recoveredStack4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack6 := 'GeneralTransparent'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack5) markerIcon: (recoveredStack6).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack5 := 'GeneralNoWindow'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := (recoveredStack4) noMarkerIcon: (recoveredStack5).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'FILE'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCategory: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2040ceec; bytecode file offset 0xd097f4"
!ASDDialogOptions methodsFor: 'recovered'!
optionDisabledDialogs: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableCustomizableDialogs.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block280faff8Arg1 :block280faff8Arg2 | 
    | block280faff8Value0 block280faff8Value1 block280faff8Value2 |
    block280faff8Value0 := block280faff8Arg1.
    block280faff8Value1 := block280faff8Arg2.
    block280faff8Value2 := (block280faff8Value0) < (block280faff8Value1).
    block280faff8Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24Stack5 recoveredBlock24Stack6 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) asString.
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack3 := '%'.
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) , (recoveredBlock24Stack3).
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24Stack3 := recoveredArg1.
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredBlock24Stack4 := recoveredBlock24Arg1.
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24Stack5 := [
    'Show'
].
            recoveredBlock24PC := 46.
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24PC := 53.
        ].
        recoveredBlock24Step = 53 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) at: (recoveredBlock24Stack4) ifAbsent: (recoveredBlock24Stack5).
            recoveredBlock24PC := 55.
        ].
        recoveredBlock24Step = 55 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) , (recoveredBlock24Stack3).
            recoveredBlock24PC := 57.
        ].
        recoveredBlock24Step = 57 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) add: (recoveredBlock24Stack2).
            recoveredBlock24PC := 59.
        ].
        recoveredBlock24Step = 59 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [:block280fb040Arg1 | 
    | block280fb040Value0 block280fb040Value1 block280fb040Value2 |
    block280fb040Value0 := block280fb040Arg1.
    block280fb040Value1 := (block280fb040Value0) attributeName.
    block280fb040Value2 := (block280fb040Value1) = ('DisabledDialogs').
    block280fb040Value2
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a7c24; bytecode file offset 0xda4544"
!ASDDialogOptions methodsFor: 'recovered'!
optionDisabledDialogs
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28104eccArg1 | 
    | block28104eccValue0 block28104eccValue1 block28104eccValue2 |
    block28104eccValue0 := block28104eccArg1.
    block28104eccValue1 := (block28104eccValue0) attributeName.
    block28104eccValue2 := (block28104eccValue1) = ('DisabledDialogs').
    block28104eccValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^#()
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
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Local1 recoveredBlock44Local2 recoveredBlock44Local3 recoveredBlock44Local4 recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44Stack4 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack1 := recoveredBlock44Arg1.
            recoveredBlock44PC := 52.
        ].
        recoveredBlock44Step = 52 ifTrue: [
            recoveredBlock44Stack2 := '%'.
            recoveredBlock44PC := 54.
        ].
        recoveredBlock44Step = 54 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) asArrayOfSubstringsSeparatedBy: (recoveredBlock44Stack2).
            recoveredBlock44PC := 56.
        ].
        recoveredBlock44Step = 56 ifTrue: [
            recoveredBlock44Local4 := recoveredBlock44Stack1.
            recoveredBlock44PC := 57.
        ].
        recoveredBlock44Step = 57 ifTrue: [
            recoveredBlock44Stack1 := recoveredBlock44Local4.
            recoveredBlock44PC := 58.
        ].
        recoveredBlock44Step = 58 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) size.
            recoveredBlock44PC := 60.
        ].
        recoveredBlock44Step = 60 ifTrue: [
            recoveredBlock44Stack2 := 2.
            recoveredBlock44PC := 62.
        ].
        recoveredBlock44Step = 62 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) = (recoveredBlock44Stack2).
            recoveredBlock44PC := 63.
        ].
        recoveredBlock44Step = 63 ifTrue: [
            (recoveredBlock44Stack1) ifTrue: [recoveredBlock44PC := 66] ifFalse: [recoveredBlock44PC := 84].
        ].
        recoveredBlock44Step = 66 ifTrue: [
            recoveredBlock44Stack1 := recoveredLocal1.
            recoveredBlock44PC := 69.
        ].
        recoveredBlock44Step = 69 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Local4.
            recoveredBlock44PC := 70.
        ].
        recoveredBlock44Step = 70 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) first.
            recoveredBlock44PC := 72.
        ].
        recoveredBlock44Step = 72 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) asSBString.
            recoveredBlock44PC := 74.
        ].
        recoveredBlock44Step = 74 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) asSymbol.
            recoveredBlock44PC := 76.
        ].
        recoveredBlock44Step = 76 ifTrue: [
            recoveredBlock44Stack3 := recoveredBlock44Local4.
            recoveredBlock44PC := 77.
        ].
        recoveredBlock44Step = 77 ifTrue: [
            recoveredBlock44Stack3 := (recoveredBlock44Stack3) last.
            recoveredBlock44PC := 79.
        ].
        recoveredBlock44Step = 79 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) at: (recoveredBlock44Stack2) put: (recoveredBlock44Stack3).
            recoveredBlock44PC := 81.
        ].
        recoveredBlock44Step = 81 ifTrue: [
            recoveredBlock44PC := 133.
        ].
        recoveredBlock44Step = 84 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 85.
        ].
        recoveredBlock44Step = 85 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) availableCustomizableDialogs.
            recoveredBlock44PC := 87.
        ].
        recoveredBlock44Step = 87 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Local4.
            recoveredBlock44PC := 88.
        ].
        recoveredBlock44Step = 88 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) first.
            recoveredBlock44PC := 90.
        ].
        recoveredBlock44Step = 90 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) asSBString.
            recoveredBlock44PC := 92.
        ].
        recoveredBlock44Step = 92 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) asSymbol.
            recoveredBlock44PC := 94.
        ].
        recoveredBlock44Step = 94 ifTrue: [
            recoveredBlock44Stack3 := [
    | block28104ef0Value0 block28104ef0Value1 |
    block28104ef0Value0 := Array.
    block28104ef0Value1 := (block28104ef0Value0) with: ('') with: (#('Show')).
    block28104ef0Value1
].
            recoveredBlock44PC := 96.
        ].
        recoveredBlock44Step = 96 ifTrue: [
            recoveredBlock44PC := 109.
        ].
        recoveredBlock44Step = 109 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) at: (recoveredBlock44Stack2) ifAbsent: (recoveredBlock44Stack3).
            recoveredBlock44PC := 111.
        ].
        recoveredBlock44Step = 111 ifTrue: [
            recoveredBlock44Stack2 := 2.
            recoveredBlock44PC := 113.
        ].
        recoveredBlock44Step = 113 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) at: (recoveredBlock44Stack2).
            recoveredBlock44PC := 115.
        ].
        recoveredBlock44Step = 115 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) first.
            recoveredBlock44PC := 117.
        ].
        recoveredBlock44Step = 117 ifTrue: [
            recoveredBlock44Local1 := recoveredBlock44Stack1.
            recoveredBlock44PC := 118.
        ].
        recoveredBlock44Step = 118 ifTrue: [
            recoveredBlock44Stack1 := recoveredLocal1.
            recoveredBlock44PC := 121.
        ].
        recoveredBlock44Step = 121 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Local4.
            recoveredBlock44PC := 122.
        ].
        recoveredBlock44Step = 122 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) first.
            recoveredBlock44PC := 124.
        ].
        recoveredBlock44Step = 124 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) asSBString.
            recoveredBlock44PC := 126.
        ].
        recoveredBlock44Step = 126 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) asSymbol.
            recoveredBlock44PC := 128.
        ].
        recoveredBlock44Step = 128 ifTrue: [
            recoveredBlock44Stack3 := recoveredBlock44Local1.
            recoveredBlock44PC := 129.
        ].
        recoveredBlock44Step = 129 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) at: (recoveredBlock44Stack2) put: (recoveredBlock44Stack3).
            recoveredBlock44PC := 131.
        ].
        recoveredBlock44Step = 131 ifTrue: [
            recoveredBlock44Stack2 := nil.
            recoveredBlock44PC := 132.
        ].
        recoveredBlock44Step = 132 ifTrue: [
            recoveredBlock44Local1 := recoveredBlock44Stack2.
            recoveredBlock44PC := 133.
        ].
        recoveredBlock44Step = 133 ifTrue: [
            recoveredBlock44Result := recoveredBlock44Stack1.
            recoveredBlock44Done := true.
        ].
    ].
    recoveredBlock44Result
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


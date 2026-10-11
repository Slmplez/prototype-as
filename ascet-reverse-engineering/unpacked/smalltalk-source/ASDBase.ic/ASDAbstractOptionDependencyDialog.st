"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200053f8; bytecode file offset 0x90206c"
!ASDAbstractOptionDependencyDialog methodsFor: 'recovered'!
scrollDescriptionTo: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20018380; bytecode file offset 0x92209c"
!ASDAbstractOptionDependencyDialog methodsFor: 'recovered'!
optionGroupName
    ^'With this groupname no options will be found use existing groupname or subclass options'
! !

"ASDBase.ic method 0x2005334c; bytecode file offset 0x9505d0"
!ASDAbstractOptionDependencyDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200704d4; bytecode file offset 0x96ce40"
!ASDAbstractOptionDependencyDialog methodsFor: 'recovered'!
copy
    | recoveredValue0 |
    recoveredValue0 := copy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c6b9c; bytecode file offset 0x9c3470"
!ASDAbstractOptionDependencyDialog methodsFor: 'recovered'!
copy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    copy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d0300; bytecode file offset 0x9ccda0"
!ASDAbstractOptionDependencyDialog methodsFor: 'recovered'!
optionsButtonLabel
    | recoveredValue0 |
    recoveredValue0 := ('hw') == ('call_80531').
    ^'O&ptions'
! !

"ASDBase.ic method 0x200e2604; bytecode file offset 0x9deef8"
!ASDAbstractOptionDependencyDialog methodsFor: 'recovered'!
preClosingActivities
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) options.
    (self) removeViewDependencies: (recoveredValue0).
    recoveredValue1 := super preClosingActivities.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20181280; bytecode file offset 0xa7db50"
!ASDAbstractOptionDependencyDialog methodsFor: 'recovered'!
open
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d0170Arg1 | 
    | block280d0170Value0 block280d0170Value1 block280d0170Value2 |
    block280d0170Value0 := block280d0170Arg1.
    block280d0170Value1 := (block280d0170Value0) optionClass.
    block280d0170Value2 := (block280d0170Value1) resetOriginalValue.
    block280d0170Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            super open.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023313c; bytecode file offset 0xb2fa08"
!ASDAbstractOptionDependencyDialog methodsFor: 'recovered'!
removeViewDependencies: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) optionClass.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack1) removeDependent: (recoveredBlock5Stack2).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) optionClass.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isContainerOption.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 31].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) optionClass.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) options.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) removeViewDependencies: (recoveredBlock5Stack2).
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202d58c4; bytecode file offset 0xbd2190"
!ASDAbstractOptionDependencyDialog methodsFor: 'recovered'!
createOptionWidgetsInForm: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) options.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) optionClass.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) visible.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 20] ifFalse: [recoveredBlock5PC := 39].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) optionClass.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) optionClass.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack4 := recoveredLocal1.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack5 := self.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) createOption: (recoveredBlock5Stack2) inForm: (recoveredBlock5Stack3) topWidget: (recoveredBlock5Stack4) parent: (recoveredBlock5Stack5).
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) updateFonts.
    ^self
! !

"ASDBase.ic method 0x2032f170; bytecode file offset 0xc2ba8c"
!ASDAbstractOptionDependencyDialog methodsFor: 'recovered'!
allOptionsFromOptionCollection: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_70836'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block280ecb98Arg1 | 
    | block280ecb98Value0 block280ecb98Value1 block280ecb98Value2 |
    block280ecb98Value0 := block280ecb98Arg1.
    block280ecb98Value1 := (block280ecb98Value0) optionClass.
    block280ecb98Value2 := (block280ecb98Value1) isContainerOption.
    block280ecb98Value2
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 |
    recoveredBlock32Value0 := recoveredLocal1.
    recoveredBlock32Value1 := recoveredBlock32Arg1.
    recoveredBlock32Value2 := (recoveredBlock32Value1) optionClass.
    recoveredBlock32Value3 := (recoveredBlock32Value2) options.
    recoveredBlock32Value4 := (recoveredBlock32Value0) addAll: (recoveredBlock32Value3).
    recoveredBlock32Value4
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20343c70; bytecode file offset 0xc40554"
!ASDAbstractOptionDependencyDialog methodsFor: 'recovered'!
options
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) allToolOptions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) optionClass.
    recoveredBlock13Value2 := (recoveredBlock13Value1) group.
    recoveredBlock13Value3 := (self) optionGroupName.
    recoveredBlock13Value4 := (recoveredBlock13Value2) = (recoveredBlock13Value3).
    recoveredBlock13Value4
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            options := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            copy := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := options.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) allOptionsFromOptionCollection: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 |
    recoveredBlock43Value0 := copy.
    recoveredBlock43Value1 := recoveredBlock43Arg1.
    recoveredBlock43Value2 := (recoveredBlock43Value1) deepCopy.
    recoveredBlock43Value3 := (recoveredBlock43Value0) add: (recoveredBlock43Value2).
    recoveredBlock43Value3
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204d66bc; bytecode file offset 0xdd2fb4"
!ASDAbstractOptionDependencyDialog methodsFor: 'recovered'!
cancel
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Call_70836'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptionsFromOptionCollection: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptionsFromOptionCollection: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Local1 recoveredBlock26Local2 recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) optionClass.
            recoveredBlock26PC := 38.
        ].
        recoveredBlock26Step = 38 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) modified.
            recoveredBlock26PC := 40.
        ].
        recoveredBlock26Step = 40 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 44] ifFalse: [recoveredBlock26PC := 145].
        ].
        recoveredBlock26Step = 44 ifTrue: [
            recoveredBlock26PC := 45.
        ].
        recoveredBlock26Step = 45 ifTrue: [
            recoveredBlock26Stack1 := 'Kli'.
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            recoveredBlock26Stack2 := 'Call_70244'.
            recoveredBlock26PC := 49.
        ].
        recoveredBlock26Step = 49 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) == (recoveredBlock26Stack2).
            recoveredBlock26PC := 50.
        ].
        recoveredBlock26Step = 50 ifTrue: [
            recoveredBlock26PC := 51.
        ].
        recoveredBlock26Step = 51 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 54.
        ].
        recoveredBlock26Step = 54 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) optionClass.
            recoveredBlock26PC := 56.
        ].
        recoveredBlock26Step = 56 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) value.
            recoveredBlock26PC := 58.
        ].
        recoveredBlock26Step = 58 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack1.
            recoveredBlock26PC := 61.
        ].
        recoveredBlock26Step = 61 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal1.
            recoveredBlock26PC := 64.
        ].
        recoveredBlock26Step = 64 ifTrue: [
            recoveredBlock26Stack2 := [:recoveredBlock26Block64Arg1 | 
    | recoveredBlock26Block64Stack0 recoveredBlock26Block64Stack1 recoveredBlock26Block64Stack2 recoveredBlock26Block64Stack3 recoveredBlock26Block64Stack4 recoveredBlock26Block64PC recoveredBlock26Block64Step recoveredBlock26Block64Done recoveredBlock26Block64Result |
    recoveredBlock26Block64Stack0 := nil.
    recoveredBlock26Block64PC := 70.
    recoveredBlock26Block64Done := false.
    [recoveredBlock26Block64Done not] whileTrue: [
        recoveredBlock26Block64Step := recoveredBlock26Block64PC.
        recoveredBlock26Block64Step = 70 ifTrue: [
            recoveredBlock26Block64Stack1 := false.
            recoveredBlock26Block64PC := 71.
        ].
        recoveredBlock26Block64Step = 71 ifTrue: [
            recoveredBlock26Block64Stack2 := recoveredBlock26Block64Arg1.
            recoveredBlock26Block64PC := 72.
        ].
        recoveredBlock26Block64Step = 72 ifTrue: [
            recoveredBlock26Block64Stack2 := (recoveredBlock26Block64Stack2) attributeName.
            recoveredBlock26Block64PC := 74.
        ].
        recoveredBlock26Block64Step = 74 ifTrue: [
            recoveredBlock26Block64Stack3 := recoveredBlock26Arg1.
            recoveredBlock26Block64PC := 77.
        ].
        recoveredBlock26Block64Step = 77 ifTrue: [
            recoveredBlock26Block64Stack3 := (recoveredBlock26Block64Stack3) attributeName.
            recoveredBlock26Block64PC := 79.
        ].
        recoveredBlock26Block64Step = 79 ifTrue: [
            recoveredBlock26Block64Stack2 := (recoveredBlock26Block64Stack2) = (recoveredBlock26Block64Stack3).
            recoveredBlock26Block64PC := 80.
        ].
        recoveredBlock26Block64Step = 80 ifTrue: [
            (recoveredBlock26Block64Stack2) ifTrue: [recoveredBlock26Block64PC := 84] ifFalse: [recoveredBlock26Block64PC := 94].
        ].
        recoveredBlock26Block64Step = 84 ifTrue: [
            recoveredBlock26Block64PC := 85.
        ].
        recoveredBlock26Block64Step = 85 ifTrue: [
            recoveredBlock26Block64Stack1 := recoveredBlock26Block64Arg1.
            recoveredBlock26Block64PC := 86.
        ].
        recoveredBlock26Block64Step = 86 ifTrue: [
            recoveredBlock26Block64Stack1 := (recoveredBlock26Block64Stack1) xmlCategory.
            recoveredBlock26Block64PC := 88.
        ].
        recoveredBlock26Block64Step = 88 ifTrue: [
            recoveredBlock26Block64Stack2 := recoveredBlock26Arg1.
            recoveredBlock26Block64PC := 91.
        ].
        recoveredBlock26Block64Step = 91 ifTrue: [
            recoveredBlock26Block64Stack2 := (recoveredBlock26Block64Stack2) xmlCategory.
            recoveredBlock26Block64PC := 93.
        ].
        recoveredBlock26Block64Step = 93 ifTrue: [
            recoveredBlock26Block64Stack1 := (recoveredBlock26Block64Stack1) = (recoveredBlock26Block64Stack2).
            recoveredBlock26Block64PC := 94.
        ].
        recoveredBlock26Block64Step = 94 ifTrue: [
            recoveredBlock26Block64Result := recoveredBlock26Block64Stack1.
            recoveredBlock26Block64Done := true.
        ].
    ].
    recoveredBlock26Block64Result
].
            recoveredBlock26PC := 95.
        ].
        recoveredBlock26Step = 95 ifTrue: [
            recoveredBlock26Stack3 := [
    | recoveredBlock26Block95Value0 |
    (self) etasDevHalt.
    recoveredBlock26Block95Value0 := recoveredBlock26Arg1.
    recoveredBlock26Block95Value0
].
            recoveredBlock26PC := 108.
        ].
        recoveredBlock26Step = 108 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) detect: (recoveredBlock26Stack2) ifNone: (recoveredBlock26Stack3).
            recoveredBlock26PC := 110.
        ].
        recoveredBlock26Step = 110 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) value.
            recoveredBlock26PC := 112.
        ].
        recoveredBlock26Step = 112 ifTrue: [
            recoveredBlock26Local2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 115.
        ].
        recoveredBlock26Step = 115 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 116.
        ].
        recoveredBlock26Step = 116 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Local1.
            recoveredBlock26PC := 119.
        ].
        recoveredBlock26Step = 119 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Local2.
            recoveredBlock26PC := 122.
        ].
        recoveredBlock26Step = 122 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) ~= (recoveredBlock26Stack3).
            recoveredBlock26PC := 123.
        ].
        recoveredBlock26Step = 123 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 126] ifFalse: [recoveredBlock26PC := 137].
        ].
        recoveredBlock26Step = 126 ifTrue: [
            recoveredBlock26PC := 127.
        ].
        recoveredBlock26Step = 127 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 130.
        ].
        recoveredBlock26Step = 130 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) optionClass.
            recoveredBlock26PC := 132.
        ].
        recoveredBlock26Step = 132 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Local2.
            recoveredBlock26PC := 135.
        ].
        recoveredBlock26Step = 135 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) value: (recoveredBlock26Stack2).
            recoveredBlock26PC := 137.
        ].
        recoveredBlock26Step = 137 ifTrue: [
            recoveredBlock26Stack2 := nil.
            recoveredBlock26PC := 138.
        ].
        recoveredBlock26Step = 138 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Stack2.
            recoveredBlock26PC := 139.
        ].
        recoveredBlock26Step = 139 ifTrue: [
            recoveredBlock26Local2 := recoveredBlock26Stack3.
            recoveredBlock26PC := 142.
        ].
        recoveredBlock26Step = 142 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack2.
            recoveredBlock26PC := 145.
        ].
        recoveredBlock26Step = 145 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := super cancel.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


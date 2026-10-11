"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200159b0; bytecode file offset 0x92209c"
!ASDDataTypeNameMappingOptions methodsFor: 'recovered'!
attributeCustomDataTypeBasePart
    ^'CustomDataType'
! !

"ASDBase.ic method 0x20015d34; bytecode file offset 0x92209c"
!ASDDataTypeNameMappingOptions methodsFor: 'recovered'!
groupString
    ^'Build\Data Type Names'
! !

"ASDBase.ic method 0x20021eb4; bytecode file offset 0x92209c"
!ASDDataTypeNameMappingOptions methodsFor: 'recovered'!
attributeCustomizedDataTypesActive
    ^'CustomizedDataTypesActive'
! !

"ASDBase.ic method 0x2003ee08; bytecode file offset 0x93bf94"
!ASDDataTypeNameMappingOptions methodsFor: 'recovered'!
listOfCustomizableDataTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBDataTypes.
    recoveredValue1 := (recoveredValue0) listOfCustomizableDataTypes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bc608; bytecode file offset 0x9b8efc"
!ASDDataTypeNameMappingOptions methodsFor: 'recovered'!
attributeCustomDataTypeFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) attributeCustomDataTypeBasePart.
    recoveredValue1 := (recoveredValue0) , ('_').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asCType.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2011d3d4; bytecode file offset 0xa19cc0"
!ASDDataTypeNameMappingOptions methodsFor: 'recovered'!
optionCustomizedDataTypesActive
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributeCustomizedDataTypesActive.
    recoveredValue1 := [
    ^false
].
    recoveredValue2 := (self) optionAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2013adac; bytecode file offset 0xa37668"
!ASDDataTypeNameMappingOptions methodsFor: 'recovered'!
listOfMappingOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := listOfMappingOptions.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) allDataTypeMappingOptions.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    listOfMappingOptions := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201824c0; bytecode file offset 0xa7edc0"
!ASDDataTypeNameMappingOptions methodsFor: 'recovered'!
optionCustomizedDataTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := (self) attributeCustomizedDataTypesActive.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2021276c; bytecode file offset 0xb0f03c"
!ASDDataTypeNameMappingOptions methodsFor: 'recovered'!
allDataTypeMappingOptions
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) attributeCustomDataTypeBasePart.
    recoveredValue1 := (recoveredValue0) , ('*').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) options.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) attributeName.
    recoveredBlock13Value3 := (recoveredBlock13Value0) match: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    recoveredValue4 := (recoveredValue2) select: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20234364; bytecode file offset 0xb30c28"
!ASDDataTypeNameMappingOptions methodsFor: 'recovered'!
optionCustomDataTypeFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionCustomizedDataTypesActive.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeCustomDataTypeFor: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) asCType.
    recoveredBlock14Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) asCType.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023d028; bytecode file offset 0xb398fc"
!ASDDataTypeNameMappingOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := (self) options.
    recoveredValue1 := (self) initializeCustomizedDataTypesActive.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := (self) listOfCustomizableDataTypes.
    recoveredValue3 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 |
    recoveredBlock17Value0 := (self) options.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (self) initializeDataTypeMappingFor: (recoveredBlock17Value1).
    recoveredBlock17Value3 := (recoveredBlock17Value0) add: (recoveredBlock17Value2).
    recoveredBlock17Value3
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202e9b78; bytecode file offset 0xbe6470"
!ASDDataTypeNameMappingOptions methodsFor: 'recovered'!
initializeCustomizedDataTypesActive
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
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributeCustomizedDataTypesActive.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Use Customized Data Type Names'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Enable the feature for mapping of standard ASCET data types to the customized data types.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Use Customized Data Types'.
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
            recoveredStack11 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack12 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack13 := 'STATION'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack14 := [:block280e7a50Arg1 | 
    | block280e7a50Value0 block280e7a50Value1 block280e7a50Value2 |
    block280e7a50Value0 := ASDGeneralOptions.
    block280e7a50Value1 := (block280e7a50Value0) instance.
    block280e7a50Value2 := (block280e7a50Value1) refreshCustomImplementationTypes.
    block280e7a50Value2
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) updateField: (recoveredStack5).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := (recoveredStack5) stationOptionFile.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2033c9a4; bytecode file offset 0xc392a4"
!ASDDataTypeNameMappingOptions methodsFor: 'recovered'!
optionsDialogConfirmed
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280eda5cArg1 | 
    | block280eda5cLocal1 block280eda5cLocal2 block280eda5cValue0 block280eda5cValue1 block280eda5cValue2 block280eda5cValue3 block280eda5cValue4 block280eda5cValue5 block280eda5cValue6 block280eda5cValue7 block280eda5cValue8 block280eda5cValue9 |
    block280eda5cValue0 := block280eda5cArg1.
    block280eda5cValue1 := (block280eda5cValue0) optionClass.
    block280eda5cValue2 := (block280eda5cValue1) originalValue.
    block280eda5cLocal2 := block280eda5cValue2.
    block280eda5cValue3 := block280eda5cArg1.
    block280eda5cValue4 := (block280eda5cValue3) optionClass.
    block280eda5cValue5 := (block280eda5cValue4) value.
    block280eda5cLocal1 := block280eda5cValue5.
    block280eda5cValue6 := block280eda5cLocal2.
    block280eda5cValue7 := block280eda5cLocal1.
    block280eda5cValue8 := (block280eda5cValue6) equalsLiteral: (block280eda5cValue7).
    block280eda5cValue9 := (block280eda5cValue8) not.
    block280eda5cValue9
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'You have made changes in the options for customizing the data type labels.
To ensure that ASCET uses the new values in all cases it is recommended to restart ASCET.'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'ASDCustomizedDataTypeNamesChanged'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'OK'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 'DONTSHOWAGAIN'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) nextTimeButtonText: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'info'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20372b68; bytecode file offset 0xc6f43c"
!ASDDataTypeNameMappingOptions methodsFor: 'recovered'!
hasInvalidOptionValue: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) default.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidANSICIdentifier.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) listOfMappingOptions.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := false.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 44.
        ].
        recoveredBlock36Step = 44 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) optionClass.
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            recoveredBlock36Stack3 := recoveredArg1.
            recoveredBlock36PC := 49.
        ].
        recoveredBlock36Step = 49 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) ~= (recoveredBlock36Stack3).
            recoveredBlock36PC := 50.
        ].
        recoveredBlock36Step = 50 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 54] ifFalse: [recoveredBlock36PC := 65].
        ].
        recoveredBlock36Step = 54 ifTrue: [
            recoveredBlock36PC := 55.
        ].
        recoveredBlock36Step = 55 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Arg1.
            recoveredBlock36PC := 56.
        ].
        recoveredBlock36Step = 56 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) optionClass.
            recoveredBlock36PC := 58.
        ].
        recoveredBlock36Step = 58 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) value.
            recoveredBlock36PC := 59.
        ].
        recoveredBlock36Step = 59 ifTrue: [
            recoveredBlock36Stack2 := recoveredArg1.
            recoveredBlock36PC := 62.
        ].
        recoveredBlock36Step = 62 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) value.
            recoveredBlock36PC := 63.
        ].
        recoveredBlock36Step = 63 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) equalsIgnoringCase: (recoveredBlock36Stack2).
            recoveredBlock36PC := 65.
        ].
        recoveredBlock36Step = 65 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d561c; bytecode file offset 0xcd1f24"
!ASDDataTypeNameMappingOptions methodsFor: 'recovered'!
initializeDataTypeMappingFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) attributeCustomDataTypeFor: (recoveredValue1).
    recoveredValue3 := EtasStringOption.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) longDisplayName.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) longDisplayName.
    recoveredValue8 := ('Define a mapping for the ASCET data type <') , (recoveredValue7).
    recoveredValue9 := (recoveredValue8) , ('>').
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) longDisplayName.
    recoveredValue12 := ('Map data type ') , (recoveredValue11).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) asCType.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) asCType.
    recoveredValue17 := (self) groupString.
    recoveredValue18 := [
    | recoveredBlock44Value0 |
    recoveredBlock44Value0 := (self) optionCustomizedDataTypesActive.
    recoveredBlock44Value0
].
    recoveredValue19 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 recoveredBlock55Value4 recoveredBlock55Value5 |
    recoveredBlock55Value0 := recoveredBlock55Arg1.
    recoveredBlock55Value1 := recoveredBlock55Arg1.
    recoveredBlock55Value2 := (self) hasInvalidOptionValue: (recoveredBlock55Value1).
    (recoveredBlock55Value0) invalid: (recoveredBlock55Value2).
    recoveredBlock55Value3 := ASDGeneralOptions.
    recoveredBlock55Value4 := (recoveredBlock55Value3) instance.
    recoveredBlock55Value5 := (recoveredBlock55Value4) refreshCustomImplementationTypes.
    recoveredBlock55Value5
].
    recoveredValue20 := (recoveredValue3) label: (recoveredValue5) description: (recoveredValue9) toolTip: (recoveredValue12) value: (recoveredValue14) default: (recoveredValue16) group: (recoveredValue17) visible: (true) sensitive: (recoveredValue18) type: ('STATION') userField: (recoveredValue19).
    recoveredValue21 := (self) stationOptionFile.
    recoveredValue22 := (recoveredValue0) xmlCategory: ('ToolSettings') attributeName: (recoveredValue2) optionClass: (recoveredValue20) optionFile: (recoveredValue21).
    ^recoveredValue22
! !


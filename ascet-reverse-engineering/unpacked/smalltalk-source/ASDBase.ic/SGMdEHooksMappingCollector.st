"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005e558; bytecode file offset 0x95ae28"
!SGMdEHooksMappingCollector methodsFor: 'recovered'!
categoryOutputs
    category := 'Outputs'.
    ^self
! !

"ASDBase.ic method 0x2005e564; bytecode file offset 0x95ae28"
!SGMdEHooksMappingCollector methodsFor: 'recovered'!
categoryInputs
    category := 'Inputs'.
    ^self
! !

"ASDBase.ic method 0x20065e84; bytecode file offset 0x963428"
!SGMdEHooksMappingCollector methodsFor: 'recovered'!
mappings
    | recoveredValue0 |
    recoveredValue0 := map.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008b094; bytecode file offset 0x987958"
!SGMdEHooksMappingCollector methodsFor: 'recovered'!
isCategoryInputs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := category.
    recoveredValue1 := (recoveredValue0) == ('Inputs').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b0a0; bytecode file offset 0x987958"
!SGMdEHooksMappingCollector methodsFor: 'recovered'!
isCategoryOutputs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := category.
    recoveredValue1 := (recoveredValue0) == ('Outputs').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009007c; bytecode file offset 0x98c958"
!SGMdEHooksMappingCollector methodsFor: 'recovered'!
setCategoryInputs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryInputs.
    category := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2009008c; bytecode file offset 0x98c958"
!SGMdEHooksMappingCollector methodsFor: 'recovered'!
setCategoryOutputs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryOutputs.
    category := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20139318; bytecode file offset 0xa35bec"
!SGMdEHooksMappingCollector methodsFor: 'recovered'!
mapSecondaryElement: recoveredArg1 toEHooksElementAttributes: recoveredArg2 source: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) fromVarDeclPath.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) mapElement: (recoveredValue1) toEHooksElementAttributes: (recoveredValue2) source: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) addMapping: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201948c4; bytecode file offset 0xa91188"
!SGMdEHooksMappingCollector methodsFor: 'recovered'!
isValidMappingMultipleSources: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCategoryInputs.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'message may not be initialized by more than one ECU variable'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201948f4; bytecode file offset 0xa911b8"
!SGMdEHooksMappingCollector methodsFor: 'recovered'!
isValidMappingMultipleTargets: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCategoryOutputs.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'ECU variables may not be written to by more than one message'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a8dbc; bytecode file offset 0xaa5688"
!SGMdEHooksMappingCollector methodsFor: 'recovered'!
mapElement: recoveredArg1 toEHooksElementAttributes: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGMdEHooksMapping.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := category.
    (recoveredValue2) category: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) fromVarDeclPath: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) ehooksElementAttributes: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg3.
    (recoveredValue8) source: (recoveredValue9).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2035e8b8; bytecode file offset 0xc5b184"
!SGMdEHooksMappingCollector methodsFor: 'recovered'!
createMapping: recoveredArg1 name: recoveredArg2 toEHooksElementAttributes: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := map.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) instancePathSource.
    recoveredBlock9Value2 := recoveredArg3.
    recoveredBlock9Value3 := recoveredArg1.
    recoveredBlock9Value4 := (recoveredBlock9Value3) source.
    recoveredBlock9Value5 := (self) mapElement: (recoveredBlock9Value1) toEHooksElementAttributes: (recoveredBlock9Value2) source: (recoveredBlock9Value4).
    recoveredBlock9Value5
].
    recoveredValue3 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := recoveredArg3.
    recoveredBlock31Value2 := recoveredArg1.
    recoveredBlock31Value3 := (recoveredBlock31Value2) source.
    recoveredBlock31Value4 := (self) mapSecondaryElement: (recoveredBlock31Value0) toEHooksElementAttributes: (recoveredBlock31Value1) source: (recoveredBlock31Value3).
    recoveredBlock31Value4
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2) ifPresent: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    (self) addMapping: (recoveredValue5) name: (recoveredValue6).
    ^self
! !


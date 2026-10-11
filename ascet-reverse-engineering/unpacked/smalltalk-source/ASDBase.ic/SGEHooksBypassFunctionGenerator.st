"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d8c4; bytecode file offset 0x90a4b8"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
collectMappings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019ac0; bytecode file offset 0x92209c"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
leftHandSideMessageMarker
    ^'message'
! !

"ASDBase.ic method 0x2001a2f4; bytecode file offset 0x92209c"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
asdDtScaledVar
    ^'ASD_DT_SCALED'
! !

"ASDBase.ic method 0x2001bce0; bytecode file offset 0x92209c"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
outputDirectionMarker
    ^'output'
! !

"ASDBase.ic method 0x2001c67c; bytecode file offset 0x92209c"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
intermediateType
    ^'real32'
! !

"ASDBase.ic method 0x200234c8; bytecode file offset 0x92209c"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
inputDirectionMarker
    ^'input'
! !

"ASDBase.ic method 0x2002441c; bytecode file offset 0x92209c"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
asdDtScaledType
    ^'ASD_DT_SCALED_TYPE'
! !

"ASDBase.ic method 0x200251d8; bytecode file offset 0x92209c"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
leftHandSideEcuLabelMarker
    ^'ecuLabel'
! !

"ASDBase.ic method 0x20026350; bytecode file offset 0x923928"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
asdDtScaledSavedVar
    ^'Saved_ASD_DT_SCALED'
! !

"ASDBase.ic method 0x2002c554; bytecode file offset 0x934580"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
ehooksBypassFunctions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (recoveredValue0) ehooksBypassFunctions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056e00; bytecode file offset 0x9536dc"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
mdlProjectInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ehooksConfig.
    recoveredValue2 := (self) visitMdlNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059798; bytecode file offset 0x956284"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
convertDisplayIntoECUCVarName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) convertDisplayIntoECUCVarName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006ae0c; bytecode file offset 0x967a18"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
templatesTable
    | recoveredValue0 |
    recoveredValue0 := templatesTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ba38; bytecode file offset 0x96873c"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
mappingUsageTable
    | recoveredValue0 |
    recoveredValue0 := mappingUsageTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20131a98; bytecode file offset 0xa2e3f8"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
sortByName: recoveredArg1
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
            recoveredStack2 := [:block280cae9cArg1 :block280cae9cArg2 | 
    | block280cae9cValue0 block280cae9cValue1 block280cae9cValue2 block280cae9cValue3 block280cae9cValue4 |
    block280cae9cValue0 := block280cae9cArg1.
    block280cae9cValue1 := (block280cae9cValue0) name.
    block280cae9cValue2 := block280cae9cArg2.
    block280cae9cValue3 := (block280cae9cValue2) name.
    block280cae9cValue4 := (block280cae9cValue1) < (block280cae9cValue3).
    block280cae9cValue4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20151534; bytecode file offset 0xa4de28"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
endCriticalSection
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFunctionUseCriticalSection.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksBypassFunctionsStream.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'EH_LEAVE_CRITICAL_SECTION;'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) newlinePutAll: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20151558; bytecode file offset 0xa4de28"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
startCriticalSection
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFunctionUseCriticalSection.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksBypassFunctionsStream.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'EH_ENTER_CRITICAL_SECTION;'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) newlinePutAll: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20151a3c; bytecode file offset 0xa4e318"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    templatesTable := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    mappingUsageTable := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20194628; bytecode file offset 0xa90f0c"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
conversionTemplateEcuLabel: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) needsIntermediateConversion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) outputTemplateFullConversionTemplate.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameterTable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithGeneralArguments: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) outputTemplateNoIntermediateConversionTemplate.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameterTable.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithGeneralArguments: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20194644; bytecode file offset 0xa90f0c"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
conversionTemplateMessage: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) needsIntermediateConversion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) inputTemplateFullConversionTemplate.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameterTable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithGeneralArguments: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) inputTemplateNoIntermediateConversionTemplate.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameterTable.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithGeneralArguments: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e5224; bytecode file offset 0xae1aec"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
real32SignificantBitInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := real32SignificantInterval.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := RBInterval.
    recoveredValue3 := (recoveredValue2) left: (-16777216) right: (16777215).
    real32SignificantInterval := recoveredValue3.
    recoveredValue4 := real32SignificantInterval.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2020b274; bytecode file offset 0xb07b4c"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
inputTemplateNoIntermediateConversionTemplate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) templatesTable.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := (self) genContext.
    recoveredBlock7Value1 := (recoveredBlock7Value0) ehooksSettings.
    recoveredBlock7Value2 := (recoveredBlock7Value1) ehooksGetTemplate.
    recoveredBlock7Value3 := ('ASD_IMPL_TO_IMPL_%ELEMENT.CONVERSIONMACRO.NAME%(') , (recoveredBlock7Value2).
    recoveredBlock7Value4 := (recoveredBlock7Value3) , (')').
    recoveredBlock7Value4
].
    recoveredValue2 := (recoveredValue0) at: ('inputTemplateNoIntermediateConversion') ifAbsentPut: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20232dd4; bytecode file offset 0xb2f69c"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
sortByLabel: recoveredArg1
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
            recoveredStack2 := [:block280dd4a8Arg1 :block280dd4a8Arg2 | 
    | block280dd4a8Stack0 block280dd4a8Stack1 block280dd4a8Stack2 block280dd4a8Stack3 block280dd4a8PC block280dd4a8Step block280dd4a8Done block280dd4a8Result |
    block280dd4a8Stack0 := self.
    block280dd4a8PC := 4.
    block280dd4a8Done := false.
    [block280dd4a8Done not] whileTrue: [
        block280dd4a8Step := block280dd4a8PC.
        block280dd4a8Step = 4 ifTrue: [
            block280dd4a8Stack1 := block280dd4a8Arg1.
            block280dd4a8PC := 5.
        ].
        block280dd4a8Step = 5 ifTrue: [
            block280dd4a8Stack1 := (block280dd4a8Stack1) label.
            block280dd4a8PC := 6.
        ].
        block280dd4a8Step = 6 ifTrue: [
            block280dd4a8Stack2 := block280dd4a8Arg2.
            block280dd4a8PC := 7.
        ].
        block280dd4a8Step = 7 ifTrue: [
            block280dd4a8Stack2 := (block280dd4a8Stack2) label.
            block280dd4a8PC := 8.
        ].
        block280dd4a8Step = 8 ifTrue: [
            block280dd4a8Stack1 := (block280dd4a8Stack1) equals: (block280dd4a8Stack2).
            block280dd4a8PC := 9.
        ].
        block280dd4a8Step = 9 ifTrue: [
            (block280dd4a8Stack1) ifTrue: [block280dd4a8PC := 12] ifFalse: [block280dd4a8PC := 20].
        ].
        block280dd4a8Step = 12 ifTrue: [
            block280dd4a8Stack1 := block280dd4a8Arg1.
            block280dd4a8PC := 13.
        ].
        block280dd4a8Step = 13 ifTrue: [
            block280dd4a8Stack1 := (block280dd4a8Stack1) name.
            block280dd4a8PC := 14.
        ].
        block280dd4a8Step = 14 ifTrue: [
            block280dd4a8Stack2 := block280dd4a8Arg2.
            block280dd4a8PC := 15.
        ].
        block280dd4a8Step = 15 ifTrue: [
            block280dd4a8Stack2 := (block280dd4a8Stack2) name.
            block280dd4a8PC := 16.
        ].
        block280dd4a8Step = 16 ifTrue: [
            block280dd4a8Stack1 := (block280dd4a8Stack1) < (block280dd4a8Stack2).
            block280dd4a8PC := 17.
        ].
        block280dd4a8Step = 17 ifTrue: [
            block280dd4a8PC := 25.
        ].
        block280dd4a8Step = 20 ifTrue: [
            block280dd4a8Stack1 := block280dd4a8Arg1.
            block280dd4a8PC := 21.
        ].
        block280dd4a8Step = 21 ifTrue: [
            block280dd4a8Stack1 := (block280dd4a8Stack1) label.
            block280dd4a8PC := 22.
        ].
        block280dd4a8Step = 22 ifTrue: [
            block280dd4a8Stack2 := block280dd4a8Arg2.
            block280dd4a8PC := 23.
        ].
        block280dd4a8Step = 23 ifTrue: [
            block280dd4a8Stack2 := (block280dd4a8Stack2) label.
            block280dd4a8PC := 24.
        ].
        block280dd4a8Step = 24 ifTrue: [
            block280dd4a8Stack1 := (block280dd4a8Stack1) < (block280dd4a8Stack2).
            block280dd4a8PC := 25.
        ].
        block280dd4a8Step = 25 ifTrue: [
            block280dd4a8Result := block280dd4a8Stack1.
            block280dd4a8Done := true.
        ].
    ].
    block280dd4a8Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202487cc; bytecode file offset 0xb450a8"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
inputTemplateFullConversionTemplate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) templatesTable.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := ('ASD_%INTERMEDIATE.TYPE.ASCET%_TO_IMPL_%ELEMENT.CONVERSIONMACRO.NAME%(') , ('EH_IMPL_TO_%INTERMEDIATE.TYPE.EHOOKS%_PHYS_%ECULABEL%(').
    recoveredBlock7Value1 := (self) genContext.
    recoveredBlock7Value2 := (recoveredBlock7Value1) ehooksSettings.
    recoveredBlock7Value3 := (recoveredBlock7Value2) ehooksGetTemplate.
    recoveredBlock7Value4 := (recoveredBlock7Value0) , (recoveredBlock7Value3).
    recoveredBlock7Value5 := (recoveredBlock7Value4) , ('))').
    recoveredBlock7Value5
].
    recoveredValue2 := (recoveredValue0) at: ('inputTemplateFullConversionTemplate') ifAbsentPut: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20262278; bytecode file offset 0xb5eb54"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
genProcessList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (recoveredValue0) ehooksBypassFunctionsStream.
    (recoveredValue1) sectionBanner: ('Execute Processes').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 |
    recoveredBlock11Value0 := (self) expander.
    recoveredBlock11Value1 := (recoveredBlock11Value0) ehooksBypassFunctionsStream.
    recoveredBlock11Value2 := recoveredBlock11Arg1.
    recoveredBlock11Value3 := (recoveredBlock11Value2) ileFunctionDecl.
    recoveredBlock11Value4 := (recoveredBlock11Value3) genName.
    recoveredBlock11Value5 := (recoveredBlock11Value1) functionCall: (recoveredBlock11Value4) arguments: ('').
    recoveredBlock11Value5
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) expander.
    recoveredValue5 := (recoveredValue4) ehooksBypassFunctionsStream.
    (recoveredValue5) newline.
    ^self
! !

"ASDBase.ic method 0x2026a7f8; bytecode file offset 0xb67114"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
outputTemplateFullConversionTemplate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) templatesTable.
    recoveredValue1 := [
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 |
    recoveredBlock7Value0 := LookupTable.
    recoveredBlock7Value1 := (recoveredBlock7Value0) new.
    recoveredBlock7Local2 := recoveredBlock7Value1.
    recoveredBlock7Local1 := 'EH_%INTERMEDIATE.TYPE.EHOOKS%_PHYS_TO_IMPL_%ECULABEL%(ASD_IMPL_TO_%INTERMEDIATE.TYPE.ASCET%_%ELEMENT.CONVERSIONMACRO.NAME%(%ELEMENT.GENNAME%))'.
    recoveredBlock7Value2 := recoveredBlock7Local2.
    recoveredBlock7Value3 := recoveredBlock7Local1.
    (recoveredBlock7Value2) at: ('VALUE') put: (recoveredBlock7Value3).
    recoveredBlock7Value4 := (self) genContext.
    recoveredBlock7Value5 := (recoveredBlock7Value4) ehooksSettings.
    recoveredBlock7Value6 := (recoveredBlock7Value5) ehooksSetTemplate.
    recoveredBlock7Value7 := recoveredBlock7Local2.
    recoveredBlock7Value8 := (recoveredBlock7Value6) bindWithGeneralArguments: (recoveredBlock7Value7).
    recoveredBlock7Value8
].
    recoveredValue2 := (recoveredValue0) at: ('outputTemplateFullConversionTemplate') ifAbsentPut: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2026a830; bytecode file offset 0xb67114"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
outputTemplateNoIntermediateConversionTemplate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) templatesTable.
    recoveredValue1 := [
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 |
    recoveredBlock7Value0 := LookupTable.
    recoveredBlock7Value1 := (recoveredBlock7Value0) new.
    recoveredBlock7Local2 := recoveredBlock7Value1.
    recoveredBlock7Local1 := 'EH_%ELEMENT.CTYPE.NAME%_TO_IMPL_%ECULABEL%(%ELEMENT.GENNAME%)'.
    recoveredBlock7Value2 := recoveredBlock7Local2.
    recoveredBlock7Value3 := recoveredBlock7Local1.
    (recoveredBlock7Value2) at: ('VALUE') put: (recoveredBlock7Value3).
    recoveredBlock7Value4 := (self) genContext.
    recoveredBlock7Value5 := (recoveredBlock7Value4) ehooksSettings.
    recoveredBlock7Value6 := (recoveredBlock7Value5) ehooksSetTemplate.
    recoveredBlock7Value7 := recoveredBlock7Local2.
    recoveredBlock7Value8 := (recoveredBlock7Value6) bindWithGeneralArguments: (recoveredBlock7Value7).
    recoveredBlock7Value8
].
    recoveredValue2 := (recoveredValue0) at: ('outputTemplateNoIntermediateConversion') ifAbsentPut: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20276154; bytecode file offset 0xb72a2c"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
templateParameterTable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := templateParameterTable.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    templateParameterTable := recoveredValue3.
    recoveredValue4 := templateParameterTable.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) at: ('INTERMEDIATE.TYPE.EHOOKS') put: ('float').
    recoveredValue6 := recoveredValue4.
    recoveredValue7 := (self) intermediateType.
    recoveredValue8 := (recoveredValue7) asUppercase.
    (recoveredValue6) at: ('INTERMEDIATE.TYPE.ASCET') put: (recoveredValue8).
    ^recoveredValue4
! !

"ASDBase.ic method 0x202b89cc; bytecode file offset 0xbb52b0"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
genBypassFunction: recoveredArg1 ehooksConfig: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    (self) beginBypassFunction: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) inputMappings.
    recoveredValue3 := (self) collectMappings: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) outputMappings.
    recoveredValue6 := (self) collectMappings: (recoveredValue5).
    recoveredValue7 := recoveredValue6.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredArg2.
    (self) genInputList: (recoveredValue3) outputList: (recoveredValue6) ehooksConfig: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) attributes.
    recoveredValue11 := (recoveredValue10) period.
    (self) genInitDt: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) processList.
    (self) genProcessList: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredArg2.
    (self) genOutputList: (recoveredValue14) ehooksConfig: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    (self) endBypassFunction: (recoveredValue16).
    ^self
! !

"ASDBase.ic method 0x202e40ac; bytecode file offset 0xbe0994"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
genOutputList: recoveredArg1 ehooksConfig: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (recoveredValue0) ehooksBypassFunctionsStream.
    (recoveredValue1) sectionBanner: ('Copy ASCET output messages to EHOOKS output arguments').
    (self) startCriticalSection.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) sortByLabel: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := (self) outputDirectionMarker.
    recoveredBlock19Value2 := recoveredArg2.
    recoveredBlock19Value3 := recoveredBlock19Arg1.
    recoveredBlock19Value4 := (recoveredBlock19Value3) ehooksElementAttributes.
    recoveredBlock19Value5 := (recoveredBlock19Value4) measurementName.
    recoveredBlock19Value6 := (recoveredBlock19Value2) lookupMeasurementProperties: (recoveredBlock19Value5).
    recoveredBlock19Value7 := (self) genEcuLabelAssignment: (recoveredBlock19Value0) usedAs: (recoveredBlock19Value1) ecuProperties: (recoveredBlock19Value6).
    recoveredBlock19Value7
].
    (recoveredValue3) do: (recoveredValue4).
    (self) endCriticalSection.
    ^self
! !

"ASDBase.ic method 0x2034511c; bytecode file offset 0xc41a18"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
genInitDt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) expander.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) ehooksBypassFunctionsStream.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) newline.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 'ASD_CALC_SCALED_DT macro expects the dT value in milliseconds'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) comment: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 'ASD_CALC_SCALED_DT'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) newlinePutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) openParenthesis.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) asdDtScaledVar.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) listSeparator.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := 1000.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) asInteger.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := 'U'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) closeParenthesis.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) endStmnt.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) newline.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20358070; bytecode file offset 0xc54958"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
genNoIntermediateConversion: recoveredArg1 lhs: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsIntermediateConversion.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftHandSideMessageMarker.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) usedAs.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) inputDirectionMarker.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) usedAs.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) outputDirectionMarker.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) ehooksElementAttributes.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) mdlNoIntermediateInfo: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksBypassFunctionsStream.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) newline.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'no conversion to intermediate representation'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) comment: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035e6c0; bytecode file offset 0xc5afbc"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
genEcuLabelAssignment: recoveredArg1 usedAs: recoveredArg2 ecuProperties: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) mapping: (recoveredValue0) usedAs: (recoveredValue1) ecuProperties: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) asString.
    recoveredValue7 := ('assignment from message (used as ') , (recoveredValue6).
    recoveredValue8 := (recoveredValue7) , (')').
    (self) genMessageAttributes: (recoveredValue4) sectionBanner: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) ehooksElementAttributes.
    recoveredValue11 := recoveredArg3.
    (self) genEcuAttributes: (recoveredValue10) ecuProperties: (recoveredValue11) sectionBanner: ('to ECU label').
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (self) leftHandSideEcuLabelMarker.
    (self) genNoIntermediateConversion: (recoveredValue12) lhs: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    (self) genLossOfPrecision: (recoveredValue14).
    recoveredValue15 := (self) expander.
    recoveredValue16 := (recoveredValue15) ehooksBypassFunctionsStream.
    recoveredValue17 := recoveredValue16.
    (recoveredValue17) newline.
    recoveredValue18 := recoveredValue16.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (self) conversionTemplateEcuLabel: (recoveredValue19).
    (recoveredValue18) ansiCExpr: (recoveredValue20).
    recoveredValue21 := recoveredValue16.
    (recoveredValue21) endStmnt.
    (recoveredValue16) newline.
    ^self
! !

"ASDBase.ic method 0x2035f4e8; bytecode file offset 0xc5bde8"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
endBypassFunction: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) period.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) expander.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) ehooksBypassFunctionsStream.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) newline.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 'restore the original value of dT'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) comment: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) asdDtScaledVar.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) asdDtScaledSavedVar.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) assignStmnt: (recoveredStack2) expr: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksBypassFunctionsStream.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) newline.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := '1'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) returnStmnt: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) closeCompoundStmnt.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) newline.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) beginSubSectionBanner.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'Bypass Function'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) endSection: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203776cc; bytecode file offset 0xc73fb8"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
mapping: recoveredArg1 usedAs: recoveredArg2 ecuProperties: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingUsageTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | block280f201cValue0 block280f201cValue1 |
    block280f201cValue0 := LookupTable.
    block280f201cValue1 := (block280f201cValue0) new.
    block280f201cValue1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 recoveredBlock23Value6 recoveredBlock23Value7 recoveredBlock23Value8 recoveredBlock23Value9 recoveredBlock23Value10 recoveredBlock23Value11 recoveredBlock23Value12 |
    recoveredBlock23Value0 := SGMdEHooksMappingUsage.
    recoveredBlock23Value1 := (recoveredBlock23Value0) create.
    recoveredBlock23Value2 := recoveredBlock23Value1.
    recoveredBlock23Value3 := (self) intermediateType.
    (recoveredBlock23Value2) intermediateType: (recoveredBlock23Value3).
    recoveredBlock23Value4 := recoveredBlock23Value1.
    recoveredBlock23Value5 := recoveredArg1.
    (recoveredBlock23Value4) ehooksMapping: (recoveredBlock23Value5).
    recoveredBlock23Value6 := recoveredBlock23Value1.
    recoveredBlock23Value7 := recoveredArg1.
    recoveredBlock23Value8 := (recoveredBlock23Value7) fromVarDecl.
    (recoveredBlock23Value6) mdlVarDecl: (recoveredBlock23Value8).
    recoveredBlock23Value9 := recoveredBlock23Value1.
    recoveredBlock23Value10 := recoveredArg3.
    (recoveredBlock23Value9) measurementProperties: (recoveredBlock23Value10).
    recoveredBlock23Value11 := recoveredBlock23Value1.
    recoveredBlock23Value12 := recoveredArg2.
    (recoveredBlock23Value11) usedAs: (recoveredBlock23Value12).
    recoveredBlock23Value1
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20383dfc; bytecode file offset 0xc806f8"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
genEcuAttributes: recoveredArg1 ecuProperties: recoveredArg2 sectionBanner: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (recoveredValue0) ehooksBypassFunctionsStream.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg3.
    (recoveredValue2) bannerSectionRowLabel: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) measurementName.
    (recoveredValue4) bannerSectionRowLabel: ('Measurement Name') info: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) arrayIndex.
    recoveredValue10 := (recoveredValue9) asString.
    (recoveredValue7) bannerSectionRowLabel: ('Element Index') info: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := (recoveredValue12) implType.
    recoveredValue14 := (recoveredValue13) asString.
    (recoveredValue11) bannerSectionRowLabel: ('A2l Type') info: (recoveredValue14).
    recoveredValue15 := recoveredValue1.
    recoveredValue16 := recoveredArg2.
    recoveredValue17 := (recoveredValue16) formula.
    recoveredValue18 := (recoveredValue17) asString.
    (recoveredValue15) bannerSectionRowLabel: ('Formula') info: (recoveredValue18).
    recoveredValue19 := recoveredValue1.
    recoveredValue20 := recoveredArg2.
    recoveredValue21 := (recoveredValue20) errLabelImplInterval.
    recoveredValue22 := (recoveredValue21) asString.
    (recoveredValue19) bannerSectionRowLabel: ('Impl Interval') info: (recoveredValue22).
    recoveredValue23 := recoveredValue1.
    recoveredValue24 := recoveredArg2.
    recoveredValue25 := (recoveredValue24) physInterval.
    recoveredValue26 := (recoveredValue25) asString.
    (recoveredValue23) bannerSectionRowLabel: ('Phys Interval') info: (recoveredValue26).
    (recoveredValue1) endSubSectionBanner.
    ^self
! !

"ASDBase.ic method 0x203afbc8; bytecode file offset 0xcac4d0"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
ehooksConfiguration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (recoveredValue0) ehooksBypassFunctionsStream.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cppDefine: ('__ASD_REQUIRES_OS_INFACE') as: ('').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) cppInclude: ('Characteristics.h').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) cppInclude: ('UserBypassFuncs.h').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) cppInclude: ('ConversionFuncs.h').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) cppInclude: ('asd_project_defs.h').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) newline.
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) sectionBanner: ('Global variable definitions').
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) comment: ('define the global scaled dT variable').
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) asdDtScaledVar.
    recoveredValue12 := (self) asdDtScaledType.
    (recoveredValue10) declVar: (recoveredValue11) type: (recoveredValue12).
    (recoveredValue1) newline.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) bypassFunctions.
    recoveredValue15 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 |
    recoveredBlock62Value0 := recoveredBlock62Arg1.
    recoveredBlock62Value1 := recoveredArg1.
    recoveredBlock62Value2 := (self) genBypassFunction: (recoveredBlock62Value0) ehooksConfig: (recoveredBlock62Value1).
    recoveredBlock62Value2
].
    (recoveredValue14) do: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x20423440; bytecode file offset 0xd1fd4c"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
genMessageAssignment: recoveredArg1 usedAs: recoveredArg2 ecuProperties: recoveredArg3 alreadyAssigned: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapping: (recoveredStack1) usedAs: (recoveredStack2) ecuProperties: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'assignment to message (used as '.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := ')'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) genMessageAttributes: (recoveredStack1) sectionBanner: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) ehooksElementAttributes.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 'from ECU label'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) genEcuAttributes: (recoveredStack1) ecuProperties: (recoveredStack2) sectionBanner: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementGenName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksBypassFunctionsStream.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) newline.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementGenName.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := ' has already been initialized'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) comment: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) newline.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementGenName.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftHandSideMessageMarker.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) genNoIntermediateConversion: (recoveredStack1) lhs: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) genLossOfPrecision: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksBypassFunctionsStream.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementGenName.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) conversionTemplateMessage: (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) assignStmnt: (recoveredStack2) expr: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) newline.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20491fb8; bytecode file offset 0xd8e8fc"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
beginBypassFunction: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) period.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksBypassFunctionsStream.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'Bypass Function'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) beginSection: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) subSectionBannerRow.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'Name'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) bannerRowLabel: (recoveredStack2) info: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'Dispatch Point'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) dispatchPoint.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) bannerRowLabel: (recoveredStack2) info: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'Period'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) bannerRowLabel: (recoveredStack2) info: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) endSubSectionBanner.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 'EH_USER_BYPASS_FUNC ('.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := ')'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) openCompoundStmnt.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksBypassFunctionsStream.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) newline.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'save the current value of dT for later restoring'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) comment: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) asdDtScaledType.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := ' '.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) asdDtScaledSavedVar.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) asdDtScaledVar.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) assignStmnt: (recoveredStack1) expr: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksBypassFunctionsStream.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) newline.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) newline.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := #('Perform RAM initialization. Use default number of bytes' 'to initialize. The OTB function will return with failure' 'until the RAM has been initialized.').
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) multiLineComment: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 'if (!!EH_InitRam(0))'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) openCompoundStmnt.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := '0'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) returnStmnt: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) closeCompoundStmnt.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b104c; bytecode file offset 0xdad978"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
genMessageAttributes: recoveredArg1 varDecl: recoveredArg2 sectionBanner: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlFormulaName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlEnumType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlFormulaName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksBypassFunctionsStream.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) beginSubSectionBanner.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) bannerSectionRowLabel: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'Model Name'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlUniqueLabel.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) bannerSectionRowLabel: (recoveredStack2) info: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 'Model Type'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) asModelType.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) bannerSectionRowLabel: (recoveredStack2) info: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'Component'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) accessRoot.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) scope.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) className.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) bannerSectionRowLabel: (recoveredStack2) info: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'Impl Type'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplType.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) asCType.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) bannerSectionRowLabel: (recoveredStack2) info: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 'A2l Type'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) asASAP2DataType.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) bannerSectionRowLabel: (recoveredStack1) info: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlBoolean.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksBypassFunctionsStream.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := 'Formula Name'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) bannerSectionRowLabel: (recoveredStack1) info: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInfinite.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksBypassFunctionsStream.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'Impl Interval'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) bannerSectionRowLabel: (recoveredStack2) info: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := 'Phys Interval'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysInterval.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) bannerSectionRowLabel: (recoveredStack1) info: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b7740; bytecode file offset 0xdb404c"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
genLossOfPrecision: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) intermediateType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'real32'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsIntermediateConversion.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleFloatType.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45Stack4 recoveredBlock45Stack5 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := nil.
            recoveredBlock45PC := 53.
        ].
        recoveredBlock45Step = 53 ifTrue: [
            recoveredBlock45Stack2 := self.
            recoveredBlock45PC := 54.
        ].
        recoveredBlock45Step = 54 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) real32SignificantBitInterval.
            recoveredBlock45PC := 56.
        ].
        recoveredBlock45Step = 56 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Arg1.
            recoveredBlock45PC := 57.
        ].
        recoveredBlock45Step = 57 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) includes: (recoveredBlock45Stack3).
            recoveredBlock45PC := 59.
        ].
        recoveredBlock45Step = 59 ifTrue: [
            (recoveredBlock45Stack2) ifTrue: [recoveredBlock45PC := 81] ifFalse: [recoveredBlock45PC := 62].
        ].
        recoveredBlock45Step = 62 ifTrue: [
            recoveredBlock45PC := 63.
        ].
        recoveredBlock45Step = 63 ifTrue: [
            recoveredBlock45Stack1 := recoveredArg1.
            recoveredBlock45PC := 66.
        ].
        recoveredBlock45Step = 66 ifTrue: [
            recoveredBlock45Stack2 := 'message'.
            recoveredBlock45PC := 68.
        ].
        recoveredBlock45Step = 68 ifTrue: [
            recoveredBlock45Stack3 := recoveredArg1.
            recoveredBlock45PC := 71.
        ].
        recoveredBlock45Step = 71 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) mdlVarDecl.
            recoveredBlock45PC := 73.
        ].
        recoveredBlock45Step = 73 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) errLabel.
            recoveredBlock45PC := 75.
        ].
        recoveredBlock45Step = 75 ifTrue: [
            recoveredBlock45Stack4 := recoveredBlock45Arg1.
            recoveredBlock45PC := 76.
        ].
        recoveredBlock45Step = 76 ifTrue: [
            recoveredBlock45Stack4 := (recoveredBlock45Stack4) asString.
            recoveredBlock45PC := 78.
        ].
        recoveredBlock45Step = 78 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) mdlLossOfPrcesisionWarning: (recoveredBlock45Stack2) with: (recoveredBlock45Stack3) with: (recoveredBlock45Stack4).
            recoveredBlock45PC := 81.
        ].
        recoveredBlock45Step = 81 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack1.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) measurementProperties.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFloatType.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) measurementProperties.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) implInterval.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Stack0 recoveredBlock101Stack1 recoveredBlock101Stack2 recoveredBlock101Stack3 recoveredBlock101Stack4 recoveredBlock101Stack5 recoveredBlock101PC recoveredBlock101Step recoveredBlock101Done recoveredBlock101Result |
    recoveredBlock101Stack0 := self.
    recoveredBlock101PC := 108.
    recoveredBlock101Done := false.
    [recoveredBlock101Done not] whileTrue: [
        recoveredBlock101Step := recoveredBlock101PC.
        recoveredBlock101Step = 108 ifTrue: [
            recoveredBlock101Stack1 := nil.
            recoveredBlock101PC := 109.
        ].
        recoveredBlock101Step = 109 ifTrue: [
            recoveredBlock101Stack2 := self.
            recoveredBlock101PC := 110.
        ].
        recoveredBlock101Step = 110 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) real32SignificantBitInterval.
            recoveredBlock101PC := 112.
        ].
        recoveredBlock101Step = 112 ifTrue: [
            recoveredBlock101Stack3 := recoveredBlock101Arg1.
            recoveredBlock101PC := 113.
        ].
        recoveredBlock101Step = 113 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) includes: (recoveredBlock101Stack3).
            recoveredBlock101PC := 115.
        ].
        recoveredBlock101Step = 115 ifTrue: [
            (recoveredBlock101Stack2) ifTrue: [recoveredBlock101PC := 141] ifFalse: [recoveredBlock101PC := 118].
        ].
        recoveredBlock101Step = 118 ifTrue: [
            recoveredBlock101PC := 119.
        ].
        recoveredBlock101Step = 119 ifTrue: [
            recoveredBlock101Stack1 := recoveredArg1.
            recoveredBlock101PC := 122.
        ].
        recoveredBlock101Step = 122 ifTrue: [
            recoveredBlock101Stack2 := 'ECU label'.
            recoveredBlock101PC := 124.
        ].
        recoveredBlock101Step = 124 ifTrue: [
            recoveredBlock101Stack3 := recoveredArg1.
            recoveredBlock101PC := 127.
        ].
        recoveredBlock101Step = 127 ifTrue: [
            recoveredBlock101Stack3 := (recoveredBlock101Stack3) ehooksElementAttributes.
            recoveredBlock101PC := 129.
        ].
        recoveredBlock101Step = 129 ifTrue: [
            recoveredBlock101Stack3 := (recoveredBlock101Stack3) name.
            recoveredBlock101PC := 131.
        ].
        recoveredBlock101Step = 131 ifTrue: [
            recoveredBlock101Stack4 := recoveredArg1.
            recoveredBlock101PC := 134.
        ].
        recoveredBlock101Step = 134 ifTrue: [
            recoveredBlock101Stack4 := (recoveredBlock101Stack4) measurementProperties.
            recoveredBlock101PC := 136.
        ].
        recoveredBlock101Step = 136 ifTrue: [
            recoveredBlock101Stack4 := (recoveredBlock101Stack4) errLabelImplInterval.
            recoveredBlock101PC := 138.
        ].
        recoveredBlock101Step = 138 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) mdlLossOfPrcesisionWarning: (recoveredBlock101Stack2) with: (recoveredBlock101Stack3) with: (recoveredBlock101Stack4).
            recoveredBlock101PC := 141.
        ].
        recoveredBlock101Step = 141 ifTrue: [
            recoveredBlock101Result := recoveredBlock101Stack1.
            recoveredBlock101Done := true.
        ].
    ].
    recoveredBlock101Result
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204bb138; bytecode file offset 0xdb7a68"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
genMessageAttributes: recoveredArg1 sectionBanner: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromVarDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlFormulaName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlEnumType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlFormulaName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksBypassFunctionsStream.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) beginSubSectionBanner.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) bannerSectionRowLabel: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'Model Name'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlModelName.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) bannerSectionRowLabel: (recoveredStack2) info: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'Model Type'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) asModelType.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) bannerSectionRowLabel: (recoveredStack2) info: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 'Component'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) fromVarDeclReceiver.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) scope.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) className.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) bannerSectionRowLabel: (recoveredStack2) info: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'Impl Type'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplType.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) asCType.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) bannerSectionRowLabel: (recoveredStack2) info: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 'A2l Type'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) asASAP2DataType.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) bannerSectionRowLabel: (recoveredStack1) info: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlBoolean.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksBypassFunctionsStream.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := 'Formula Name'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) bannerSectionRowLabel: (recoveredStack1) info: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInfinite.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksBypassFunctionsStream.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := 'Impl Interval'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) bannerSectionRowLabel: (recoveredStack2) info: (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := 'Phys Interval'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysInterval.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) bannerSectionRowLabel: (recoveredStack1) info: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d25c0; bytecode file offset 0xdceecc"
!SGEHooksBypassFunctionGenerator methodsFor: 'recovered'!
genInputList: recoveredArg1 outputList: recoveredArg2 ehooksConfig: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) expander.
    recoveredValue3 := (recoveredValue2) ehooksBypassFunctionsStream.
    (recoveredValue3) sectionBanner: ('Copy the EHOOKS input arguments to ASCET messages').
    (self) startCriticalSection.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 |
    recoveredBlock28Value0 := recoveredLocal1.
    recoveredBlock28Value1 := recoveredBlock28Arg1.
    recoveredBlock28Value2 := (recoveredBlock28Value1) asCollectionCategoryInput.
    recoveredBlock28Value3 := (recoveredBlock28Value0) addAll: (recoveredBlock28Value2).
    recoveredBlock28Value3
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) sortByLabel: (recoveredValue8).
    recoveredValue10 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 recoveredBlock51Value5 recoveredBlock51Value6 recoveredBlock51Value7 recoveredBlock51Value8 |
    recoveredBlock51Value0 := recoveredBlock51Arg1.
    recoveredBlock51Value1 := (self) inputDirectionMarker.
    recoveredBlock51Value2 := recoveredArg3.
    recoveredBlock51Value3 := recoveredBlock51Arg1.
    recoveredBlock51Value4 := (recoveredBlock51Value3) ehooksElementAttributes.
    recoveredBlock51Value5 := (recoveredBlock51Value4) measurementName.
    recoveredBlock51Value6 := (recoveredBlock51Value2) lookupMeasurementProperties: (recoveredBlock51Value5).
    recoveredBlock51Value7 := recoveredLocal2.
    recoveredBlock51Value8 := (self) genMessageAssignment: (recoveredBlock51Value0) usedAs: (recoveredBlock51Value1) ecuProperties: (recoveredBlock51Value6) alreadyAssigned: (recoveredBlock51Value7).
    recoveredBlock51Value8
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := (self) expander.
    recoveredValue12 := (recoveredValue11) ehooksBypassFunctionsStream.
    (recoveredValue12) sectionBannerList: (#('Copy the EHOOKS output arguments to ASCET messages for initialization,' 'if not already done by EHOOKS input arguments')).
    recoveredValue13 := OrderedCollection.
    recoveredValue14 := (recoveredValue13) new.
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := recoveredArg2.
    recoveredValue16 := [:recoveredBlock97Arg1 | 
    | recoveredBlock97Value0 recoveredBlock97Value1 recoveredBlock97Value2 recoveredBlock97Value3 |
    recoveredBlock97Value0 := recoveredLocal1.
    recoveredBlock97Value1 := recoveredBlock97Arg1.
    recoveredBlock97Value2 := (recoveredBlock97Value1) asCollectionCategoryOutput.
    recoveredBlock97Value3 := (recoveredBlock97Value0) addAll: (recoveredBlock97Value2).
    recoveredBlock97Value3
].
    (recoveredValue15) do: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (self) sortByLabel: (recoveredValue17).
    recoveredValue19 := [:recoveredBlock121Arg1 | 
    | recoveredBlock121Value0 recoveredBlock121Value1 recoveredBlock121Value2 recoveredBlock121Value3 recoveredBlock121Value4 recoveredBlock121Value5 recoveredBlock121Value6 recoveredBlock121Value7 recoveredBlock121Value8 |
    recoveredBlock121Value0 := recoveredBlock121Arg1.
    recoveredBlock121Value1 := (self) outputDirectionMarker.
    recoveredBlock121Value2 := recoveredArg3.
    recoveredBlock121Value3 := recoveredBlock121Arg1.
    recoveredBlock121Value4 := (recoveredBlock121Value3) ehooksElementAttributes.
    recoveredBlock121Value5 := (recoveredBlock121Value4) measurementName.
    recoveredBlock121Value6 := (recoveredBlock121Value2) lookupMeasurementProperties: (recoveredBlock121Value5).
    recoveredBlock121Value7 := recoveredLocal2.
    recoveredBlock121Value8 := (self) genMessageAssignment: (recoveredBlock121Value0) usedAs: (recoveredBlock121Value1) ecuProperties: (recoveredBlock121Value6) alreadyAssigned: (recoveredBlock121Value7).
    recoveredBlock121Value8
].
    (recoveredValue18) do: (recoveredValue19).
    (self) endCriticalSection.
    ^self
! !


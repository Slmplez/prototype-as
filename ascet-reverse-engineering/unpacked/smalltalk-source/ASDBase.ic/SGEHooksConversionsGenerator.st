"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200021a8; bytecode file offset 0x8ffcfc"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
endEHooksConversionFunctions
    ^self
! !

"ASDBase.ic method 0x2001b2c0; bytecode file offset 0x92209c"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
asdLimitMacro
    ^'ASD_LIMIT_TO_BOUNDS'
! !

"ASDBase.ic method 0x2001ee6c; bytecode file offset 0x92209c"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
physValMacroParameter
    ^'_physVal'
! !

"ASDBase.ic method 0x20020b88; bytecode file offset 0x92209c"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
implValMacroParameter
    ^'_implVal'
! !

"ASDBase.ic method 0x20022c64; bytecode file offset 0x92209c"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
asdConvertDtMacro
    ^'ASD_CALC_SCALED_DT'
! !

"ASDBase.ic method 0x20024818; bytecode file offset 0x92209c"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
asdMilliSecToSecMacro
    ^'ASD_MILLISEC_TO_SEC'
! !

"ASDBase.ic method 0x20028d14; bytecode file offset 0x934580"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
ehooksConversions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (recoveredValue0) ehooksConversions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200694d8; bytecode file offset 0x966bdc"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
usedNames
    | recoveredValue0 |
    recoveredValue0 := usedNames.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20081508; bytecode file offset 0x97e234"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
convertDisplayIntoECUCVarName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGEHooksBypassFunctionGenerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) convertDisplayIntoECUCVarName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20082844; bytecode file offset 0x97f140"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
asdImplToImplMacro: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('ASD_IMPL_TO_IMPL_') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200897d0; bytecode file offset 0x9860ac"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
resetUsedNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    usedNames := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20093374; bytecode file offset 0x98fed0"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
asdReal32ToImplMacro: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) asdPhys: ('REAL32') toImplMacro: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093504; bytecode file offset 0x98fed0"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
asdImplToReal64Macro: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) asdImpl: ('REAL64') toPhysMacro: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093514; bytecode file offset 0x98fed0"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
asdReal64ToImplMacro: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) asdPhys: ('REAL64') toImplMacro: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200935a4; bytecode file offset 0x98fed0"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
asdImplToReal32Macro: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) asdImpl: ('REAL32') toPhysMacro: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d6734; bytecode file offset 0x9d3134"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
initialize
    super initialize.
    (self) resetUsedNames.
    ^self
! !

"ASDBase.ic method 0x20120298; bytecode file offset 0xa1cb6c"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
classVarDecl: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMessage.
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlLabel.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) conversionFunctionForVarDecl: (recoveredStack2) label: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201202ac; bytecode file offset 0xa1cb6c"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
instVarDecl: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMessage.
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlUniqueLabel.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) conversionFunctionForVarDecl: (recoveredStack2) label: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20197568; bytecode file offset 0xa93e2c"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
conversionFunctionForVarDecl: recoveredArg1 label: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRecordType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) conversionFunctionForRecordVarDecl: (recoveredStack2) label: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) conversionFunctionForScalarVarDecl: (recoveredStack2) label: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b5e1c; bytecode file offset 0xab26e0"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
asdImpl: recoveredArg1 toPhysMacro: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'ASD_IMPL_TO_'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'ASD_IMPL_TO_'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e9158; bytecode file offset 0xae5a20"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
asdPhys: recoveredArg1 toImplMacro: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'ASD_'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := '_TO_IMPL'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'ASD_'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := '_TO_IMPL_'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201fa150; bytecode file offset 0xaf6a18"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
getFormula: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlEnumType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := RBFormulaId.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) createIdent.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLinearAndInvertible.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := RBFormulaId.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createIdent.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202f9050; bytecode file offset 0xbf592c"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
conversionFunctionForRecordVarDecl: recoveredArg1 label: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) genContext.
    recoveredValue1 := (recoveredValue0) importsTable.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) mdlClass.
    recoveredValue4 := [
    ^self
].
    recoveredValue5 := (recoveredValue1) lookupClassInterface: (recoveredValue3) ifFail: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) sortedInstVars.
    recoveredValue8 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 recoveredBlock27Value6 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := recoveredArg2.
    recoveredBlock27Value2 := recoveredBlock27Arg1.
    recoveredBlock27Value3 := (recoveredBlock27Value2) mdlLabel.
    recoveredBlock27Value4 := (recoveredBlock27Value1) fieldAccess: (recoveredBlock27Value3).
    recoveredBlock27Value5 := (self) convertDisplayIntoECUCVarName: (recoveredBlock27Value4).
    recoveredBlock27Value6 := (self) conversionFunctionForVarDecl: (recoveredBlock27Value0) label: (recoveredBlock27Value5).
    recoveredBlock27Value6
].
    (recoveredValue7) do: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20340718; bytecode file offset 0xc3d01c"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
dtVarDecl: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) genIleType.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredLocal3.
    recoveredValue3 := (self) getFormula: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := (recoveredValue4) getImplType.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) expander.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) mdlLabel.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) scope.
    recoveredValue12 := (recoveredValue11) className.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (recoveredValue13) name.
    recoveredValue15 := recoveredLocal3.
    (recoveredValue7) beginConversionFunctions: ('conversion function for element ') element: (recoveredValue9) modelType: ('dT') owner: (recoveredValue12) formula: (recoveredValue14) implType: (recoveredValue15).
    recoveredValue16 := recoveredValue6.
    recoveredValue17 := (self) asdConvertDtMacro.
    recoveredValue18 := (self) asdReal32ToImplMacro: ('').
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (recoveredValue19) asCType.
    recoveredValue21 := recoveredLocal2.
    recoveredValue22 := (recoveredValue21) offset.
    recoveredValue23 := recoveredLocal2.
    recoveredValue24 := (recoveredValue23) scale.
    recoveredValue25 := (self) asdMilliSecToSecMacro.
    (recoveredValue16) conversionDt: (recoveredValue17) physToImpl: (recoveredValue18) cast: (recoveredValue20) offset: (recoveredValue22) scale: (recoveredValue24) toSecs: (recoveredValue25).
    (recoveredValue6) endConversionFunctions.
    ^self
! !

"ASDBase.ic method 0x2038f160; bytecode file offset 0xc8ba50"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
mdlProjectInterface: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) resetUsedNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) beginEHooksConversionFunctions.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) classVars.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280f3828Arg1 | 
    | block280f3828Value0 block280f3828Value1 |
    block280f3828Value0 := block280f3828Arg1.
    block280f3828Value1 := (block280f3828Value0) isMdlDtVarDecl.
    block280f3828Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := (self) visitMdlNode: (recoveredBlock22Value0).
    recoveredBlock22Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksConfig.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectBypassFunctionInputsOutputs.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:block280f384cArg1 :block280f384cArg2 | 
    | block280f384cValue0 block280f384cValue1 block280f384cValue2 block280f384cValue3 block280f384cValue4 |
    block280f384cValue0 := block280f384cArg1.
    block280f384cValue1 := (block280f384cValue0) errLabel.
    block280f384cValue2 := block280f384cArg2.
    block280f384cValue3 := (block280f384cValue2) errLabel.
    block280f384cValue4 := (block280f384cValue1) < (block280f384cValue3).
    block280f384cValue4
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 |
    recoveredBlock54Value0 := recoveredBlock54Arg1.
    recoveredBlock54Value1 := (self) visitMdlNode: (recoveredBlock54Value0).
    recoveredBlock54Value1
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) endEHooksConversionFunctions.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) checkUsedNames.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a1fc4; bytecode file offset 0xc9e8b4"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
conversionFunction: recoveredArg1 implType: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) convFuncInputUsage.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) asdReal32ToImplMacro: (recoveredValue3).
    recoveredValue5 := (self) physValMacroParameter.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) asCType.
    (recoveredValue2) conversionIdentity: (recoveredValue4) macroParameter: (recoveredValue5) cast: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (self) asdReal64ToImplMacro: (recoveredValue9).
    recoveredValue11 := (self) physValMacroParameter.
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := (recoveredValue12) asCType.
    (recoveredValue8) conversionIdentity: (recoveredValue10) macroParameter: (recoveredValue11) cast: (recoveredValue13).
    recoveredValue14 := recoveredValue0.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (self) asdImplToImplMacro: (recoveredValue15).
    recoveredValue17 := (self) implValMacroParameter.
    recoveredValue18 := recoveredArg2.
    recoveredValue19 := (recoveredValue18) asCType.
    (recoveredValue14) conversionIdentity: (recoveredValue16) macroParameter: (recoveredValue17) cast: (recoveredValue19).
    recoveredValue20 := recoveredValue0.
    (recoveredValue20) conversionFunctionSeparator.
    recoveredValue21 := recoveredValue0.
    (recoveredValue21) convFuncOutputUsage.
    recoveredValue22 := recoveredValue0.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (self) asdImplToReal32Macro: (recoveredValue23).
    recoveredValue25 := (self) implValMacroParameter.
    (recoveredValue22) conversionIdentity: (recoveredValue24) macroParameter: (recoveredValue25) cast: ('real32').
    recoveredValue26 := recoveredArg1.
    recoveredValue27 := (self) asdImplToReal64Macro: (recoveredValue26).
    recoveredValue28 := (self) implValMacroParameter.
    (recoveredValue0) conversionIdentity: (recoveredValue27) macroParameter: (recoveredValue28) cast: ('real64').
    ^self
! !

"ASDBase.ic method 0x203a848c; bytecode file offset 0xca4d70"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
checkUsedNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedNames.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280f4e84Arg1 :block280f4e84Arg2 | 
    | block280f4e84Local1 block280f4e84Local2 block280f4e84Stack0 block280f4e84Stack1 block280f4e84Stack2 block280f4e84Stack3 block280f4e84Stack4 block280f4e84Stack5 block280f4e84Stack6 block280f4e84Stack7 block280f4e84PC block280f4e84Step block280f4e84Done block280f4e84Result |
    block280f4e84Stack0 := self.
    block280f4e84PC := 4.
    block280f4e84Done := false.
    [block280f4e84Done not] whileTrue: [
        block280f4e84Step := block280f4e84PC.
        block280f4e84Step = 4 ifTrue: [
            block280f4e84Stack1 := nil.
            block280f4e84PC := 5.
        ].
        block280f4e84Step = 5 ifTrue: [
            block280f4e84Stack2 := block280f4e84Arg2.
            block280f4e84PC := 6.
        ].
        block280f4e84Step = 6 ifTrue: [
            block280f4e84Stack2 := (block280f4e84Stack2) size.
            block280f4e84PC := 7.
        ].
        block280f4e84Step = 7 ifTrue: [
            block280f4e84Stack3 := 1.
            block280f4e84PC := 9.
        ].
        block280f4e84Step = 9 ifTrue: [
            block280f4e84Stack2 := (block280f4e84Stack2) > (block280f4e84Stack3).
            block280f4e84PC := 10.
        ].
        block280f4e84Step = 10 ifTrue: [
            (block280f4e84Stack2) ifTrue: [block280f4e84PC := 14] ifFalse: [block280f4e84PC := 67].
        ].
        block280f4e84Step = 14 ifTrue: [
            block280f4e84PC := 15.
        ].
        block280f4e84Step = 15 ifTrue: [
            block280f4e84Stack1 := block280f4e84Arg2.
            block280f4e84PC := 16.
        ].
        block280f4e84Step = 16 ifTrue: [
            block280f4e84Stack2 := [:block280f4ea8Arg1 | 
    | block280f4ea8Value0 block280f4ea8Value1 |
    block280f4ea8Value0 := block280f4ea8Arg1.
    block280f4ea8Value1 := (block280f4ea8Value0) source.
    block280f4ea8Value1
].
            block280f4e84PC := 18.
        ].
        block280f4e84Step = 18 ifTrue: [
            block280f4e84PC := 26.
        ].
        block280f4e84Step = 26 ifTrue: [
            block280f4e84Stack1 := (block280f4e84Stack1) collect: (block280f4e84Stack2).
            block280f4e84PC := 28.
        ].
        block280f4e84Step = 28 ifTrue: [
            block280f4e84Local2 := block280f4e84Stack1.
            block280f4e84PC := 29.
        ].
        block280f4e84Step = 29 ifTrue: [
            block280f4e84Stack1 := block280f4e84Arg2.
            block280f4e84PC := 30.
        ].
        block280f4e84Step = 30 ifTrue: [
            block280f4e84Stack2 := [:block280f4eccArg1 | 
    | block280f4eccValue0 block280f4eccValue1 |
    block280f4eccValue0 := block280f4eccArg1.
    block280f4eccValue1 := (block280f4eccValue0) errLabel.
    block280f4eccValue1
].
            block280f4e84PC := 32.
        ].
        block280f4e84Step = 32 ifTrue: [
            block280f4e84PC := 40.
        ].
        block280f4e84Step = 40 ifTrue: [
            block280f4e84Stack1 := (block280f4e84Stack1) collect: (block280f4e84Stack2).
            block280f4e84PC := 42.
        ].
        block280f4e84Step = 42 ifTrue: [
            block280f4e84Local1 := block280f4e84Stack1.
            block280f4e84PC := 43.
        ].
        block280f4e84Step = 43 ifTrue: [
            block280f4e84Stack1 := block280f4e84Arg2.
            block280f4e84PC := 44.
        ].
        block280f4e84Step = 44 ifTrue: [
            block280f4e84Stack1 := (block280f4e84Stack1) first.
            block280f4e84PC := 46.
        ].
        block280f4e84Step = 46 ifTrue: [
            block280f4e84Stack2 := 151.
            block280f4e84PC := 50.
        ].
        block280f4e84Step = 50 ifTrue: [
            block280f4e84Stack3 := block280f4e84Arg1.
            block280f4e84PC := 51.
        ].
        block280f4e84Step = 51 ifTrue: [
            block280f4e84Stack4 := block280f4e84Arg2.
            block280f4e84PC := 52.
        ].
        block280f4e84Step = 52 ifTrue: [
            block280f4e84Stack4 := (block280f4e84Stack4) first.
            block280f4e84PC := 54.
        ].
        block280f4e84Step = 54 ifTrue: [
            block280f4e84Stack4 := (block280f4e84Stack4) source.
            block280f4e84PC := 56.
        ].
        block280f4e84Step = 56 ifTrue: [
            block280f4e84Stack5 := block280f4e84Local2.
            block280f4e84PC := 57.
        ].
        block280f4e84Step = 57 ifTrue: [
            block280f4e84Stack6 := block280f4e84Local1.
            block280f4e84PC := 58.
        ].
        block280f4e84Step = 58 ifTrue: [
            block280f4e84Stack4 := (block280f4e84Stack4) createMultiSource: (block280f4e84Stack5) labels: (block280f4e84Stack6).
            block280f4e84PC := 60.
        ].
        block280f4e84Step = 60 ifTrue: [
            block280f4e84Stack1 := (block280f4e84Stack1) mdlSemErrNo: (block280f4e84Stack2) with: (block280f4e84Stack3) source: (block280f4e84Stack4).
            block280f4e84PC := 63.
        ].
        block280f4e84Step = 63 ifTrue: [
            block280f4e84Stack2 := nil.
            block280f4e84PC := 64.
        ].
        block280f4e84Step = 64 ifTrue: [
            block280f4e84Stack3 := block280f4e84Stack2.
            block280f4e84PC := 65.
        ].
        block280f4e84Step = 65 ifTrue: [
            block280f4e84Local2 := block280f4e84Stack3.
            block280f4e84PC := 66.
        ].
        block280f4e84Step = 66 ifTrue: [
            block280f4e84Local1 := block280f4e84Stack2.
            block280f4e84PC := 67.
        ].
        block280f4e84Step = 67 ifTrue: [
            block280f4e84Result := block280f4e84Stack1.
            block280f4e84Done := true.
        ].
    ].
    block280f4e84Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20454c5c; bytecode file offset 0xd51558"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
conversionFunction: recoveredArg1 implType: recoveredArg2 interval: recoveredArg3 offset: recoveredArg4 scale: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) convFuncInputUsage.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) asdReal32ToImplMacro: (recoveredValue3).
    recoveredValue5 := (self) physValMacroParameter.
    recoveredValue6 := (self) asdReal32ToImplMacro: ('').
    recoveredValue7 := recoveredArg4.
    recoveredValue8 := recoveredArg5.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (self) asdLimitMacro.
    recoveredValue11 := recoveredArg3.
    (recoveredValue2) conversionToImpl: (recoveredValue4) macroParameter: (recoveredValue5) convertMacro: (recoveredValue6) offset: (recoveredValue7) scale: (recoveredValue8) cast: (recoveredValue9) limit: (recoveredValue10) toInterval: (recoveredValue11).
    recoveredValue12 := recoveredValue0.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (self) asdReal64ToImplMacro: (recoveredValue13).
    recoveredValue15 := (self) physValMacroParameter.
    recoveredValue16 := (self) asdReal64ToImplMacro: ('').
    recoveredValue17 := recoveredArg4.
    recoveredValue18 := recoveredArg5.
    recoveredValue19 := recoveredArg2.
    recoveredValue20 := (self) asdLimitMacro.
    recoveredValue21 := recoveredArg3.
    (recoveredValue12) conversionToImpl: (recoveredValue14) macroParameter: (recoveredValue15) convertMacro: (recoveredValue16) offset: (recoveredValue17) scale: (recoveredValue18) cast: (recoveredValue19) limit: (recoveredValue20) toInterval: (recoveredValue21).
    recoveredValue22 := recoveredValue0.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (self) asdImplToImplMacro: (recoveredValue23).
    recoveredValue25 := (self) implValMacroParameter.
    recoveredValue26 := recoveredArg2.
    recoveredValue27 := (self) asdLimitMacro.
    recoveredValue28 := recoveredArg3.
    (recoveredValue22) conversionToImpl: (recoveredValue24) macroParameter: (recoveredValue25) cast: (recoveredValue26) limit: (recoveredValue27) toInterval: (recoveredValue28).
    recoveredValue29 := recoveredValue0.
    (recoveredValue29) conversionFunctionSeparator.
    recoveredValue30 := recoveredValue0.
    (recoveredValue30) convFuncOutputUsage.
    recoveredValue31 := recoveredValue0.
    recoveredValue32 := recoveredArg1.
    recoveredValue33 := (self) asdImplToReal32Macro: (recoveredValue32).
    recoveredValue34 := (self) implValMacroParameter.
    recoveredValue35 := (self) asdImplToReal32Macro: ('').
    recoveredValue36 := recoveredArg4.
    recoveredValue37 := recoveredArg5.
    (recoveredValue31) conversionToPhys: (recoveredValue33) macroParameter: (recoveredValue34) convertMacro: (recoveredValue35) cast: ('real32') offset: (recoveredValue36) scale: (recoveredValue37).
    recoveredValue38 := recoveredArg1.
    recoveredValue39 := (self) asdImplToReal64Macro: (recoveredValue38).
    recoveredValue40 := (self) implValMacroParameter.
    recoveredValue41 := (self) asdImplToReal64Macro: ('').
    recoveredValue42 := recoveredArg4.
    recoveredValue43 := recoveredArg5.
    (recoveredValue0) conversionToPhys: (recoveredValue39) macroParameter: (recoveredValue40) convertMacro: (recoveredValue41) cast: ('real64') offset: (recoveredValue42) scale: (recoveredValue43).
    ^self
! !

"ASDBase.ic method 0x2045a8b8; bytecode file offset 0xd571dc"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
conversionFunctionForScalarVarDecl: recoveredArg1 label: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) genIleType.
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
            recoveredStack0 := (recoveredStack0) getFormula: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedNames.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    | block28100198Value0 block28100198Value1 |
    block28100198Value0 := OrderedCollection.
    block28100198Value1 := (block28100198Value0) new.
    block28100198Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'conversion functions for element '.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlLabel.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) asModelType.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) scope.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := (recoveredStack4) className.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := (recoveredStack5) name.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) beginConversionFunctions: (recoveredStack1) element: (recoveredStack2) modelType: (recoveredStack3) owner: (recoveredStack4) formula: (recoveredStack5) implType: (recoveredStack6).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBFloat.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlBoolean.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) conversionFunction: (recoveredStack1) implType: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplInterval.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := (recoveredStack4) offset.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := (recoveredStack4) asFloat.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack5 := (recoveredStack5) scale.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack5 := (recoveredStack5) asFloat.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) conversionFunction: (recoveredStack1) implType: (recoveredStack2) interval: (recoveredStack3) offset: (recoveredStack4) scale: (recoveredStack5).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) endConversionFunctions.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20497f0c; bytecode file offset 0xd94830"
!SGEHooksConversionsGenerator methodsFor: 'recovered'!
beginEHooksConversionFunctions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) beginConversionFunctionsGeneral.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) asdImplToReal32Macro: ('').
    recoveredValue4 := Array.
    recoveredValue5 := (recoveredValue4) with: ('_implVal') with: ('_offset') with: ('_scale').
    (recoveredValue2) conversionFunction: (recoveredValue3) args: (recoveredValue5) body: ('(((real32)(_implVal) - _offset) / _scale) //in: _implVal (with _offset: formula offset, _scale: formula scale); out: phys value from _implVal').
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := (self) asdImplToReal64Macro: ('').
    recoveredValue8 := Array.
    recoveredValue9 := (recoveredValue8) with: ('_implVal') with: ('_offset') with: ('_scale').
    (recoveredValue6) conversionFunction: (recoveredValue7) args: (recoveredValue9) body: ('(((real64)(_implVal) - _offset) / _scale) //in: _implVal (with _offset: formula offset, _scale: formula scale); out: phys value from _implVal').
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) conversionFunctionSeparator.
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := (self) asdReal32ToImplMacro: ('').
    recoveredValue13 := Array.
    recoveredValue14 := (recoveredValue13) with: ('_physVal') with: ('_offset') with: ('_scale').
    (recoveredValue11) conversionFunction: (recoveredValue12) args: (recoveredValue14) body: ('(((real32)(_physVal) * _scale) + _offset) //in: _physVal (with _offset: formula offset, _scale: formula scale); out: impl value of _physVal').
    recoveredValue15 := recoveredValue0.
    recoveredValue16 := (self) asdReal64ToImplMacro: ('').
    recoveredValue17 := Array.
    recoveredValue18 := (recoveredValue17) with: ('_physVal') with: ('_offset') with: ('_scale').
    (recoveredValue15) conversionFunction: (recoveredValue16) args: (recoveredValue18) body: ('(((real64)(_physVal) * _scale) + _offset) //in: _physVal (with _offset: formula offset, _scale: formula scale); out: impl value of _physVal').
    recoveredValue19 := recoveredValue0.
    (recoveredValue19) conversionFunctionSeparator.
    recoveredValue20 := recoveredValue0.
    recoveredValue21 := (self) asdLimitMacro.
    recoveredValue22 := Array.
    recoveredValue23 := (recoveredValue22) with: ('_value') with: ('_lower') with: ('_upper').
    (recoveredValue20) conversionFunction: (recoveredValue21) args: (recoveredValue23) body: ('(_value > _upper ? _upper :((_value < _lower) ? _lower : _value)) //in: _value not limited; out: _value limited').
    recoveredValue24 := recoveredValue0.
    recoveredValue25 := (self) asdMilliSecToSecMacro.
    recoveredValue26 := Array.
    recoveredValue27 := (recoveredValue26) with: ('_value').
    (recoveredValue24) conversionFunction: (recoveredValue25) args: (recoveredValue27) body: ('(_value / 1000) //in: _value in milliseconds; out: _value in seconds').
    (recoveredValue0) endConversionFunctionsGeneral.
    ^self
! !


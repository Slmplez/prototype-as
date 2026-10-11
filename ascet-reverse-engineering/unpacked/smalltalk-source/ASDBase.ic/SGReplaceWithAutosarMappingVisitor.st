"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2009b534; bytecode file offset 0x997df0"
!SGReplaceWithAutosarMappingVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super assignExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b5914; bytecode file offset 0x9b21d8"
!SGReplaceWithAutosarMappingVisitor methodsFor: 'recovered'!
checkForActivation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) builder.
    recoveredValue1 := (recoveredValue0) genContext.
    recoveredValue2 := (recoveredValue1) autosarSettings.
    recoveredValue3 := (recoveredValue2) mustPerformAutosarGeneration.
    enabled := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20165ff0; bytecode file offset 0xa628b4"
!SGReplaceWithAutosarMappingVisitor methodsFor: 'recovered'!
mdlClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) sortedMethods.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) visitMdlNode: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    (recoveredValue0) sortedMethods: (recoveredValue4).
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ETargetCommon.ic method 0x20001290; bytecode file offset 0x102a0"
!TGCCompilerTool methodsFor: 'recovered'!
evaluateGenerateOSOutput: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeKeywords.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) fileNameMap.
    recoveredValue4 := (recoveredValue3) keys.
    recoveredValue5 := (recoveredValue4) asArray.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) fileNameMap.
    (self) evaluateMakeOutput: (recoveredValue0) phase: ('generate') keywords: (recoveredValue1) modelFiles: (recoveredValue5) fileMap: (recoveredValue7) requiresCheck: (true).
    ^self
! !


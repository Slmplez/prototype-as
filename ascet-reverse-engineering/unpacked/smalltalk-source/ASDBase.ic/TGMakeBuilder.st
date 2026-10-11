"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200866c4; bytecode file offset 0x9830a8"
!TGMakeBuilder methodsFor: 'recovered'!
evaluateLinkerOutput: recoveredArg1 tool: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) evaluateLinkerMakeOutput: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20086730; bytecode file offset 0x9830a8"
!TGMakeBuilder methodsFor: 'recovered'!
prepareWorkingDirectory: recoveredArg1 target: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) prepareMakeWorkingDirectory: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200867c0; bytecode file offset 0x9830a8"
!TGMakeBuilder methodsFor: 'recovered'!
evaluateCompilerOutput: recoveredArg1 tool: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) evaluateCompilerMakeOutput: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009abac; bytecode file offset 0x997488"
!TGMakeBuilder methodsFor: 'recovered'!
linkCode: recoveredArg1 monitorManager: recoveredArg2 target: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) linkCodeExternal: (recoveredValue1) monitorManager: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009abd0; bytecode file offset 0x997488"
!TGMakeBuilder methodsFor: 'recovered'!
linkROMCode: recoveredArg1 monitorManager: recoveredArg2 target: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) linkROMCodeMake: (recoveredValue1) monitorManager: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009abe8; bytecode file offset 0x9974c4"
!TGMakeBuilder methodsFor: 'recovered'!
executeCompile: recoveredArg1 intermediate: recoveredArg2 target: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) executeExternalMakeCompile: (recoveredValue1) intermediate: (recoveredValue2).
    ^self
! !


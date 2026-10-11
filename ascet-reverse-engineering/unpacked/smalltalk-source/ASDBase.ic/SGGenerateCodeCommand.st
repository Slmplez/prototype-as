"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001fa78; bytecode file offset 0x92209c"
!SGGenerateCodeCommand methodsFor: 'recovered'!
label
    ^'Generate Code'
! !

"ASDBase.ic method 0x20033eb4; bytecode file offset 0x934580"
!SGGenerateCodeCommand methodsFor: 'recovered'!
nodesForUpdatingDependentParameter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) make.
    recoveredValue1 := (recoveredValue0) nodesForUpdatingDependentParameter.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063884; bytecode file offset 0x961970"
!SGGenerateCodeCommand methodsFor: 'recovered'!
checkDependentParameters
    | recoveredValue0 |
    recoveredValue0 := (self) codeManager.
    (recoveredValue0) checkDependentParameters.
    ^self
! !

"ASDBase.ic method 0x20064834; bytecode file offset 0x961970"
!SGGenerateCodeCommand methodsFor: 'recovered'!
storeAllNodesCount
    | recoveredValue0 |
    recoveredValue0 := (self) makeGraph.
    (recoveredValue0) storeAllNodesCount.
    ^self
! !

"ASDBase.ic method 0x20064c24; bytecode file offset 0x961970"
!SGGenerateCodeCommand methodsFor: 'recovered'!
createLogicManager
    | recoveredValue0 |
    recoveredValue0 := (self) codeManager.
    (recoveredValue0) createLogicManager.
    ^self
! !

"ASDBase.ic method 0x20074a7c; bytecode file offset 0x9757c8"
!SGGenerateCodeCommand methodsFor: 'recovered'!
requiresExistentCodeHandle
    ^true
! !

"ASDBase.ic method 0x20074d0c; bytecode file offset 0x9757c8"
!SGGenerateCodeCommand methodsFor: 'recovered'!
requiresUpdatingDependentParameter
    ^true
! !

"ASDBase.ic method 0x2024a23c; bytecode file offset 0xb46b18"
!SGGenerateCodeCommand methodsFor: 'recovered'!
prepareCodeGenerationIfFail: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGMdManager.
    (recoveredValue0) prepareCodeGeneration.
    recoveredValue1 := SGIaBuilder.
    (recoveredValue1) prepareCodeGeneration.
    recoveredValue2 := SGLmSource.
    (recoveredValue2) prepareCodeGeneration.
    recoveredValue3 := (self) codeManager.
    recoveredValue4 := (self) currentProjectCache.
    recoveredValue5 := recoveredArg1.
    (recoveredValue3) addCodeGenerationOptions: (recoveredValue4) ifFail: (recoveredValue5).
    recoveredValue6 := (self) codeManager.
    recoveredValue7 := (self) project.
    recoveredValue8 := (recoveredValue7) target.
    recoveredValue9 := recoveredArg1.
    (recoveredValue6) checkECCOAPI: (recoveredValue8) ifFail: (recoveredValue9).
    ^self
! !


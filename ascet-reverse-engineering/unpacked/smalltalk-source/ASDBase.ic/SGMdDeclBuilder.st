"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003690; bytecode file offset 0x90206c"
!SGMdDeclBuilder methodsFor: 'recovered'!
analyzeId: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005d28; bytecode file offset 0x902744"
!SGMdDeclBuilder methodsFor: 'recovered'!
analyzeSpecialCall: recoveredArg1 receiver: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20006588; bytecode file offset 0x902ecc"
!SGMdDeclBuilder methodsFor: 'recovered'!
blockVarDecl: recoveredArg1 class: recoveredArg2 init: recoveredArg3 usage: recoveredArg4
    ^self
! !

"ASDBase.ic method 0x2000812c; bytecode file offset 0x908be4"
!SGMdDeclBuilder methodsFor: 'recovered'!
rememberedInitValues
    | recoveredValue0 |
    recoveredValue0 := (self) charTableValues.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008888; bytecode file offset 0x908be4"
!SGMdDeclBuilder methodsFor: 'recovered'!
importList
    | recoveredValue0 |
    recoveredValue0 := (self) importsTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200096f8; bytecode file offset 0x908be4"
!SGMdDeclBuilder methodsFor: 'recovered'!
endMacroStmnt
    | recoveredValue0 |
    recoveredValue0 := (self) endStmnt.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200488cc; bytecode file offset 0x9451f8"
!SGMdDeclBuilder methodsFor: 'recovered'!
popExpr
    | recoveredValue0 |
    recoveredValue0 := (self) popNode: ('isMdlExpr').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004f224; bytecode file offset 0x94d048"
!SGMdDeclBuilder methodsFor: 'recovered'!
endBaseClassDecl
    (self) endClassDecl.
    ^self
! !

"ASDBase.ic method 0x2004fb78; bytecode file offset 0x94d048"
!SGMdDeclBuilder methodsFor: 'recovered'!
endSRInterfaceDecl
    (self) endARDataTypeDecl.
    ^self
! !

"ASDBase.ic method 0x2004fc20; bytecode file offset 0x94d048"
!SGMdDeclBuilder methodsFor: 'recovered'!
endCalPrmInterfaceDecl
    (self) endARDataTypeDecl.
    ^self
! !

"ASDBase.ic method 0x20050340; bytecode file offset 0x94d048"
!SGMdDeclBuilder methodsFor: 'recovered'!
endClassDecl
    (self) endDataTypeDecl.
    ^self
! !

"ASDBase.ic method 0x20050508; bytecode file offset 0x94d048"
!SGMdDeclBuilder methodsFor: 'recovered'!
endDataInterfaceDecl
    (self) endARDataTypeDecl.
    ^self
! !

"ASDBase.ic method 0x20063b34; bytecode file offset 0x961970"
!SGMdDeclBuilder methodsFor: 'recovered'!
endReturnAttributes
    | recoveredValue0 |
    recoveredValue0 := (self) popVarAttributes.
    (recoveredValue0) prepareMemoryClassForArguments.
    ^self
! !

"ASDBase.ic method 0x20070f58; bytecode file offset 0x96d87c"
!SGMdDeclBuilder methodsFor: 'recovered'!
charTableValues
    | recoveredValue0 |
    recoveredValue0 := charTableValues.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007b69c; bytecode file offset 0x97c330"
!SGMdDeclBuilder methodsFor: 'recovered'!
isMdlMethodBuilder
    ^false
! !

"ASDBase.ic method 0x200841ac; bytecode file offset 0x980a88"
!SGMdDeclBuilder methodsFor: 'recovered'!
semAnaNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) semanticAnalysis.
    recoveredValue1 := recoveredArg1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009f400; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
virtual
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrVirtual.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f428; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
autosarService
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cgAttrARService.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f43c; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
noOptimizeMethodCalls
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cgOptNoMethodCalls.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f450; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
setNoInlining
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoInlining.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f464; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
noContainsCTBlock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoContainsCTBlock.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f48c; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
reference
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrReference.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f4c8; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
setSideEffectFree
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrSideEffectFree.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f4dc; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
calibrationReadOnly
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) swCalibrationSetReadOnly.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f4f0; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
noGetAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoGetAccess.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f504; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
classCachingOff
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cachingOff.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f52c; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
noSystemConstant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoSystemConstant.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f554; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
canBeInvokedConcurrently
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrCanBeInvokedConcurrently.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f568; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
structType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cgOptStruct.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f5cc; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
setPreprocessorInlining
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrPreprocessorInlining.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f608; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
msgCopyReceiveProcess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrMsgCopyReceiveProcess.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f61c; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
noSetAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoSetAccess.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f630; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
messageUsageAllowed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrMessageUsageAllowed.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f658; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
variant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrVariant.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f6a8; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
inputOrOutput
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrInputOrOutput.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f6f8; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
setAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrSetAccess.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f720; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
reinitializeMethod
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrReinitializeMethod.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f734; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
getAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrGetAccess.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f748; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
systemConstant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrSystemConstant.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f75c; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
noMessage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoMessage.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f798; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
noDependent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoDependent.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f7ac; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
ctClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cgOptCTBlock.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f7c0; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
noRedundantData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoRedundantData.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f7e8; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
noReceiverInArgList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoReceiverInArgList.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f860; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
variable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrVariable.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f89c; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
optimizeMethodCalls
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cgOptMethodCalls.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f8b0; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
multipleInstance
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cgOptMultiplelnstance.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f8ec; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
send
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrSend.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f900; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
useServiceRoutine
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrUseServiceRoutine.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f928; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
noReference
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoReference.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f978; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
setModelInlining
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrModelInlining.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f98c; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
deprecatedCClassReference
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrDeprecatedCClassReference.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f9b4; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
setCompilerInlining
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrCompilerInlining.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f9c8; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
representsHWCInstance
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrHWCInstance.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f9dc; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
usePrototype
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrUsePrototype.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009f9f0; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
public
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrPublic.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fa2c; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
msgCopySendProcess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrMsgCopySendProcess.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fa54; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
useCopySemantics
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrCopySemantics.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fab8; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
clearSideEffectFree
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoSideEffectFree.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009facc; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
setProductionCodeOnly
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cgAttrProductionCodeOnly.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fae0; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
receive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrReceive.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009faf4; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
calibrationNotAccessible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) swCalibrationSetNotAccessible.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fb08; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
noCalibration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoCalibration.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fb1c; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
calibration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrCalibration.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fb30; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
singleInstance
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cgOptSinglelnstance.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fb44; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
blockDiagram
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrBlockDiagram.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fb94; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
notGeneratingDataStructures
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cgAttrNotGeneratingDataStructures.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fbbc; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
noVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoVariant.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fbd0; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
noOptimizeMethodCall
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoOptimizeMethodCall.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fc0c; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
orderedElements
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cgOptOrderedElements.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fc20; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
outputParm
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrOutputParm.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fc84; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
calibrationReadWrite
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) swCalibrationSetReadWrite.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fcc0; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
ctIndependent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrCTIndependent.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fcd4; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
arIRVExplicit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrIRVExplicit.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fd88; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
noCTIndependent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoCTIndependent.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fd9c; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
message
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrMessage.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fdb0; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
optimizeMethodCall
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrOptimizeMethodCall.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fdec; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
noParameter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoParameter.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fe00; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
actual
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrActual.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fe14; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
serviceRoutineComponent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cgOptServiceRoutineComponent.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fe50; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
defineAREnumLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cgAttrAREnumLabels.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fe78; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
setAutomaticInlining
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrAutomaticInlining.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fe8c; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
prototype
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cgOptPrototype.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fec8; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
redundantDataSlave
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrRedundantDataSlave.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fef0; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
volatile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrVolatile.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009ff18; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
parameter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrParameter.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009ff2c; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
dependent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrDependent.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009ff40; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
cCodeClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cgOptCCodeBlock.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009ff54; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
classCachingAutomatic
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cachingAutomatic.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009ff7c; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
containsCTBlock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrContainsCTBlock.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009ff90; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
redundantData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrRedundantData.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009ffa4; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
constant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrConstant.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a0008; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
arIRVImplicit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrIRVImplicit.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a0030; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
smClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := (recoveredValue0) cgOptSmClass.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a0058; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
nonVolatile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNoVolatile.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a00f8; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
notInvokedConcurrently
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrNotInvokedConcurrently.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a010c; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
requirePort
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrRequirePort.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a0120; bytecode file offset 0x99c9e0"
!SGMdDeclBuilder methodsFor: 'recovered'!
providePort
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrProvidePort.
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200abc5c; bytecode file offset 0x9a85bc"
!SGMdDeclBuilder methodsFor: 'recovered'!
rememberInitValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) charTableValues.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) plainValue.
    (recoveredValue0) add: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b98a4; bytecode file offset 0x9b63d0"
!SGMdDeclBuilder methodsFor: 'recovered'!
autosarPackageName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) autosarPackageName: (recoveredValue1).
    (self) pushStack: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b98e0; bytecode file offset 0x9b63d0"
!SGMdDeclBuilder methodsFor: 'recovered'!
operatingSystemInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) operatingSystemInfo: (recoveredValue1).
    (self) pushStack: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b98f4; bytecode file offset 0x9b63d0"
!SGMdDeclBuilder methodsFor: 'recovered'!
directAccessAttributes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) directAccessAttributes: (recoveredValue1).
    (self) pushStack: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9908; bytecode file offset 0x9b63d0"
!SGMdDeclBuilder methodsFor: 'recovered'!
arBehaviorUUID: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) arBehaviorUUID: (recoveredValue1).
    (self) pushStack: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9ad4; bytecode file offset 0x9b63d0"
!SGMdDeclBuilder methodsFor: 'recovered'!
interpolationAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) interpolation: (recoveredValue1).
    (self) pushStack: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9ae8; bytecode file offset 0x9b63d0"
!SGMdDeclBuilder methodsFor: 'recovered'!
componentInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) componentInfo: (recoveredValue1).
    (self) pushStack: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9b10; bytecode file offset 0x9b63d0"
!SGMdDeclBuilder methodsFor: 'recovered'!
extrapolationAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) extrapolation: (recoveredValue1).
    (self) pushStack: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c76c4; bytecode file offset 0x9c3fa0"
!SGMdDeclBuilder methodsFor: 'recovered'!
importsTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    importsTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d3204; bytecode file offset 0x9cfac4"
!SGMdDeclBuilder methodsFor: 'recovered'!
endARDataTypeDecl
    | recoveredValue0 |
    recoveredValue0 := (self) classInterface.
    (self) semAnaNode: (recoveredValue0).
    (self) endDataTypeDecl.
    ^self
! !

"ASDBase.ic method 0x200d9748; bytecode file offset 0x9d6030"
!SGMdDeclBuilder methodsFor: 'recovered'!
resolveVariantArraySysConst: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlClassType.
    (self) classType: (recoveredValue1).
    (self) resolveVariantArraySysConst.
    ^self
! !

"ASDBase.ic method 0x200d9770; bytecode file offset 0x9d6030"
!SGMdDeclBuilder methodsFor: 'recovered'!
resolveExportedVariantArraySysConst: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlClassType.
    (self) classType: (recoveredValue1).
    (self) resolveExportedVariantArraySysConst.
    ^self
! !

"ASDBase.ic method 0x200e80ec; bytecode file offset 0x9e49d4"
!SGMdDeclBuilder methodsFor: 'recovered'!
minimumStartTime: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) minimumStartTime: (recoveredValue2).
    (self) pushStack: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200eb290; bytecode file offset 0x9e7b54"
!SGMdDeclBuilder methodsFor: 'recovered'!
createRecordFieldMapping: recoveredArg1 mdlInterface: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGMdRecordFieldsMapping.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) fromVarDeclPath: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue1) mdlInterface: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200fa564; bytecode file offset 0x9f6e28"
!SGMdDeclBuilder methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    charTableValues := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201003a0; bytecode file offset 0x9fcc60"
!SGMdDeclBuilder methodsFor: 'recovered'!
blockVarDecl: recoveredArg1 init: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super blockVarDecl: (recoveredValue0) init: (recoveredValue1).
    (self) pushStack: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20100404; bytecode file offset 0x9fccc4"
!SGMdDeclBuilder methodsFor: 'recovered'!
csInfoAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) popVarAttributes.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue1) csInfoAt: (recoveredValue2) put: (recoveredValue3).
    (self) pushStack: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2012055c; bytecode file offset 0xa1ce1c"
!SGMdDeclBuilder methodsFor: 'recovered'!
resolveDependentParameterFormulas: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) instanceVars.
    recoveredValue2 := recoveredArg1.
    (self) resolveDependentParameterFormulas: (recoveredValue1) mdlClassInterface: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) classVars.
    recoveredValue5 := recoveredArg1.
    (self) resolveDependentParameterFormulas: (recoveredValue4) mdlClassInterface: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2012518c; bytecode file offset 0xa21a4c"
!SGMdDeclBuilder methodsFor: 'recovered'!
beginReturnAttributes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (self) pushStack: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) returnAttributes.
    (self) pushStack: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20127154; bytecode file offset 0xa23a18"
!SGMdDeclBuilder methodsFor: 'recovered'!
returnMemoryClassReference: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) returnAttributes.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) memoryClassReference: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) pushStack: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2012ee84; bytecode file offset 0xa2b74c"
!SGMdDeclBuilder methodsFor: 'recovered'!
classCachingOn
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheLocking.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) popClassOptimizations.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) cachingOn.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) pushStack: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201365f4; bytecode file offset 0xa32eb8"
!SGMdDeclBuilder methodsFor: 'recovered'!
instVarDecl: recoveredArg1 position: recoveredArg2 class: recoveredArg3 init: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGMdInstVarDecl.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) makeNewNode: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    (self) instVarDeclNode: (recoveredValue2) name: (recoveredValue3) position: (recoveredValue4) class: (recoveredValue5) init: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20137fbc; bytecode file offset 0xa34880"
!SGMdDeclBuilder methodsFor: 'recovered'!
directAccessOrigin: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) popNode: ('isMdlMethodDecl').
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) directAccessOrigin: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    (self) pushStack: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2013c8e8; bytecode file offset 0xa391b0"
!SGMdDeclBuilder methodsFor: 'recovered'!
popClassOptimizations
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'isMdlComponentAttributes'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280cb994Value0 block280cb994Value1 |
    block280cb994Value0 := SGCgComponentAttributes.
    block280cb994Value1 := (block280cb994Value0) create.
    block280cb994Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) popNode: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013d19c; bytecode file offset 0xa39a68"
!SGMdDeclBuilder methodsFor: 'recovered'!
endRecordDecl
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) classInterface.
    (self) semAnaNode: (recoveredValue0).
    recoveredValue1 := (self) asMdlMacroBuilder.
    recoveredValue2 := (self) classType.
    (recoveredValue1) declareDefaultMacros: (recoveredValue2).
    (self) endDataTypeDecl.
    ^self
! !

"ASDBase.ic method 0x2013fcd8; bytecode file offset 0xa3c5bc"
!SGMdDeclBuilder methodsFor: 'recovered'!
popStmnt
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) peekStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) endStmnt.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'isMdlStmnt'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) popNode: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014af50; bytecode file offset 0xa4782c"
!SGMdDeclBuilder methodsFor: 'recovered'!
externalStruct: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) cgAttrExternalStruct.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) externalName: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) pushStack: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2014af68; bytecode file offset 0xa4782c"
!SGMdDeclBuilder methodsFor: 'recovered'!
externalTypedef: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) popClassOptimizations.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) cgAttrExternalTypedef.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) externalName: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) pushStack: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2014ee7c; bytecode file offset 0xa4b77c"
!SGMdDeclBuilder methodsFor: 'recovered'!
endDataTypeDecl
    (self) resolveRedundantData.
    (self) resolveDistributions.
    (self) analyzeGenericUnits.
    (self) analyzeGenericUnitsWithOffset.
    (self) endMethodInterfaceTypeDecl.
    ^self
! !

"ASDBase.ic method 0x201528bc; bytecode file offset 0xa4f17c"
!SGMdDeclBuilder methodsFor: 'recovered'!
importsTable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) genContext.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) importsTable.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := importsTable.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20170ae8; bytecode file offset 0xa6d3b4"
!SGMdDeclBuilder methodsFor: 'recovered'!
endMethodInterfaceTypeDecl
    | recoveredValue0 |
    (self) popStack.
    (self) freeStack.
    recoveredValue0 := (self) classInterface.
    (self) pushStack: (recoveredValue0).
    (self) freeTable.
    (self) checkStatus.
    ^self
! !

"ASDBase.ic method 0x201750ec; bytecode file offset 0xa719b8"
!SGMdDeclBuilder methodsFor: 'recovered'!
classDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SGCgComplexInitValue.
    recoveredValue2 := (recoveredValue1) create.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) initId: ('DefaultData').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) initName: ('DefaultData').
    (self) classDecl: (recoveredValue0) dataset: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2018b960; bytecode file offset 0xa88228"
!SGMdDeclBuilder methodsFor: 'recovered'!
resolveMappingsForInstVarDecls: recoveredArg1 mappingTable: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) allObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d0c20Arg1 | 
    | block280d0c20Value0 block280d0c20Value1 |
    block280d0c20Value0 := block280d0c20Arg1.
    block280d0c20Value1 := (block280d0c20Value0) hasFromVarDeclLocalScope.
    block280d0c20Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) resolveMappings: (recoveredStack1) mdlInterface: (recoveredStack2).
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

"ASDBase.ic method 0x2018c7c0; bytecode file offset 0xa89080"
!SGMdDeclBuilder methodsFor: 'recovered'!
lookupQualifiedName: recoveredArg1 source: recoveredArg2 ifFail: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) source.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    (self) source: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) resolveQualifiedName: (recoveredValue2) ifFail: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    (self) source: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201a56e0; bytecode file offset 0xaa2004"
!SGMdDeclBuilder methodsFor: 'recovered'!
methodNeedsIntegerType: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) popMethodAttributes.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) cgOptNeedsIntegerType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) pushStack: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) popMethodAttributes.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) cgOptNeedsStandardType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) pushStack: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a5710; bytecode file offset 0xaa2004"
!SGMdDeclBuilder methodsFor: 'recovered'!
componentNeedsIntegerType: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) popClassOptimizations.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) cgOptNeedsIntegerType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) pushStack: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) popClassOptimizations.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) cgOptNeedsStandardType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) pushStack: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a5728; bytecode file offset 0xaa2004"
!SGMdDeclBuilder methodsFor: 'recovered'!
methodNeedsIntegerCode: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) popMethodAttributes.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) cgOptNeedsIntegerCode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) pushStack: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) popMethodAttributes.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) cgOptNeedsStandardCode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) pushStack: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a5740; bytecode file offset 0xaa2004"
!SGMdDeclBuilder methodsFor: 'recovered'!
componentNeedsIntegerCode: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) popClassOptimizations.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) cgOptNeedsIntegerCode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) pushStack: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) popClassOptimizations.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) cgOptNeedsStandardCode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) pushStack: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a5c88; bytecode file offset 0xaa257c"
!SGMdDeclBuilder methodsFor: 'recovered'!
appErrorDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (self) checkEnumeratedTypeForReservedName: (recoveredValue0).
    recoveredValue1 := SGMdAppErrorInterface.
    recoveredValue2 := (recoveredValue1) create.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) mdlClassType: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) popClassOptimizations.
    (recoveredValue5) optimizations: (recoveredValue6).
    (self) classInterface: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201a5cac; bytecode file offset 0xaa257c"
!SGMdDeclBuilder methodsFor: 'recovered'!
modeGroupDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (self) checkEnumeratedTypeForReservedName: (recoveredValue0).
    recoveredValue1 := SGMdModeGroupInterface.
    recoveredValue2 := (recoveredValue1) create.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) mdlClassType: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) popClassOptimizations.
    (recoveredValue5) optimizations: (recoveredValue6).
    (self) classInterface: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201a9868; bytecode file offset 0xaa6134"
!SGMdDeclBuilder methodsFor: 'recovered'!
arIRVarDecl: recoveredArg1 position: recoveredArg2 class: recoveredArg3 init: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    (self) noSetAccess.
    (self) noGetAccess.
    recoveredValue0 := SGMdInterrunnableVarDecl.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) makeNewNode: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    (self) instVarDeclNode: (recoveredValue2) name: (recoveredValue3) position: (recoveredValue4) class: (recoveredValue5) init: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201b2cf0; bytecode file offset 0xaaf5c4"
!SGMdDeclBuilder methodsFor: 'recovered'!
processDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) popMethodAttributes.
    recoveredValue1 := (recoveredValue0) cgAttrProcess.
    (self) pushStack: (recoveredValue1).
    recoveredValue2 := SGMdProcessDecl.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := (self) makeNewNode: (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) mdlVoidType.
    (self) pushDecl: (recoveredValue4) name: (recoveredValue5) return: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201b4f5c; bytecode file offset 0xab1828"
!SGMdDeclBuilder methodsFor: 'recovered'!
lookupClassInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) importsTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) errorHandler.
    (recoveredBlock6Value0) generalError: ('Class interface can''t be generated due to prior errors') source: (nil).
    recoveredBlock6Value1 := (self) errorHandler.
    recoveredBlock6Value2 := (recoveredBlock6Value1) fatalWithDisplay.
    recoveredBlock6Value2
].
    recoveredValue3 := (recoveredValue0) lookupClassInterface: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201d4d00; bytecode file offset 0xad15cc"
!SGMdDeclBuilder methodsFor: 'recovered'!
lookupVarDecl: recoveredArg1 in: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) removeLast.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) lookup: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) sgClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) lookupClassInterface: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupVarDecl: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f23dc; bytecode file offset 0xaeece8"
!SGMdDeclBuilder methodsFor: 'recovered'!
isRecordType
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableStack.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) peek.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlAbstractDataTypeInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableStack.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) peek.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizations.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgRecordType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f23fc; bytecode file offset 0xaeece8"
!SGMdDeclBuilder methodsFor: 'recovered'!
isSRInterfaceType
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableStack.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) peek.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlAbstractDataTypeInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableStack.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) peek.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizations.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgSRInterfaceType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f241c; bytecode file offset 0xaeece8"
!SGMdDeclBuilder methodsFor: 'recovered'!
isCalPrmInterfaceType
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableStack.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) peek.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlAbstractDataTypeInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableStack.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) peek.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizations.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgCalPrmInterfaceType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f4d44; bytecode file offset 0xaf1620"
!SGMdDeclBuilder methodsFor: 'recovered'!
csInterfaceDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) className.
    (self) checkForReservedName: (recoveredValue1) entity: ('ClientServer interface type').
    recoveredValue2 := SGMdCSInterface.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) mdlClassType: (recoveredValue5).
    recoveredValue6 := (self) popClassOptimizations.
    recoveredValue7 := (recoveredValue6) cgOptCSInterfaceType.
    recoveredValue8 := (recoveredValue3) optimizations: (recoveredValue7).
    (self) classInterface: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20205058; bytecode file offset 0xb01934"
!SGMdDeclBuilder methodsFor: 'recovered'!
importName: recoveredArg1 importedFrom: recoveredArg2 exportName: recoveredArg3 exportedFrom: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) classInterface.
    recoveredValue1 := (recoveredValue0) bindings.
    recoveredValue2 := SGMdBinding.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) importName: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) importingClassName: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredArg3.
    (recoveredValue8) exportName: (recoveredValue9).
    recoveredValue10 := recoveredArg4.
    recoveredValue11 := (recoveredValue3) exportingClassName: (recoveredValue10).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) errLabel.
    (recoveredValue1) addObject: (recoveredValue11) key: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x2021d578; bytecode file offset 0xb19e54"
!SGMdDeclBuilder methodsFor: 'recovered'!
classDecl: recoveredArg1 dataset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) className.
    (self) checkForReservedName: (recoveredValue1) entity: ('component name').
    recoveredValue2 := SGMdClassInterface.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) mdlClassType: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := (self) popClassOptimizations.
    (recoveredValue6) optimizations: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredArg2.
    (recoveredValue8) currentDataSet: (recoveredValue9).
    (self) classInterface: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20234d80; bytecode file offset 0xb316fc"
!SGMdDeclBuilder methodsFor: 'recovered'!
calPrmInterfaceDecl: recoveredArg1 dataset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) className.
    (self) checkForReservedName: (recoveredValue1) entity: ('CalPrm interface type').
    recoveredValue2 := SGMdCalPrmInterface.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) mdlClassType: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := (self) popClassOptimizations.
    recoveredValue8 := (recoveredValue7) cgOptCalPrmInterfaceType.
    (recoveredValue6) optimizations: (recoveredValue8).
    recoveredValue9 := recoveredValue3.
    recoveredValue10 := recoveredArg2.
    (recoveredValue9) currentDataSet: (recoveredValue10).
    (self) classInterface: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20234db4; bytecode file offset 0xb316fc"
!SGMdDeclBuilder methodsFor: 'recovered'!
nvdataInterfaceDecl: recoveredArg1 dataset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) className.
    (self) checkForReservedName: (recoveredValue1) entity: ('NVData interface type').
    recoveredValue2 := SGMdDataInterface.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) mdlClassType: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := (self) popClassOptimizations.
    recoveredValue8 := (recoveredValue7) cgOptNVDataInterfaceType.
    (recoveredValue6) optimizations: (recoveredValue8).
    recoveredValue9 := recoveredValue3.
    recoveredValue10 := recoveredArg2.
    (recoveredValue9) currentDataSet: (recoveredValue10).
    (self) classInterface: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20234de8; bytecode file offset 0xb316fc"
!SGMdDeclBuilder methodsFor: 'recovered'!
recordDecl: recoveredArg1 dataset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) className.
    (self) checkForReservedName: (recoveredValue1) entity: ('Record type').
    recoveredValue2 := SGMdRecordInterface.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) mdlClassType: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := (self) popClassOptimizations.
    recoveredValue8 := (recoveredValue7) cgOptRecordType.
    (recoveredValue6) optimizations: (recoveredValue8).
    recoveredValue9 := recoveredValue3.
    recoveredValue10 := recoveredArg2.
    (recoveredValue9) currentDataSet: (recoveredValue10).
    (self) classInterface: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20234e1c; bytecode file offset 0xb316fc"
!SGMdDeclBuilder methodsFor: 'recovered'!
srInterfaceDecl: recoveredArg1 dataset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) className.
    (self) checkForReservedName: (recoveredValue1) entity: ('SR interface type').
    recoveredValue2 := SGMdSRInterface.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) mdlClassType: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := (self) popClassOptimizations.
    recoveredValue8 := (recoveredValue7) cgOptSRInterfaceType.
    (recoveredValue6) optimizations: (recoveredValue8).
    recoveredValue9 := recoveredValue3.
    recoveredValue10 := recoveredArg2.
    (recoveredValue9) currentDataSet: (recoveredValue10).
    (self) classInterface: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2026c9d4; bytecode file offset 0xb692bc"
!SGMdDeclBuilder methodsFor: 'recovered'!
atomicSWComponentDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) className.
    (self) checkForReservedName: (recoveredValue1) entity: ('Software Component').
    (self) singleInstance.
    recoveredValue2 := SGMdSWComponentInterface.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) mdlClassType: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := (self) popClassOptimizations.
    recoveredValue8 := (recoveredValue7) cgOptSoftwareComponent.
    (recoveredValue6) optimizations: (recoveredValue8).
    (self) classInterface: (recoveredValue3).
    recoveredValue9 := (self) mdlAUTOSARReturnType.
    (self) declEnum: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x20287d6c; bytecode file offset 0xb84650"
!SGMdDeclBuilder methodsFor: 'recovered'!
prepareRedundantDataElement: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRedundantDataMaster.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := SGReservedNames.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) redundantDataStorageName: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) makeName: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := SGMdIdentifier.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) create.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) makeNewNode: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) lookup: (recoveredStack2) expr: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) redundantIdentifier: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) redundantMasterVarDecl: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20296b5c; bytecode file offset 0xb9342c"
!SGMdDeclBuilder methodsFor: 'recovered'!
resolveRedundantData
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRedundantDataFeatureActive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVars.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (self) prepareRedundantDataElement: (recoveredBlock13Value0).
    recoveredBlock13Value1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) classVars.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 |
    recoveredBlock30Value0 := recoveredBlock30Arg1.
    recoveredBlock30Value1 := (self) prepareRedundantDataElement: (recoveredBlock30Value0).
    recoveredBlock30Value1
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20298b38; bytecode file offset 0xb95400"
!SGMdDeclBuilder methodsFor: 'recovered'!
processRefList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 :recoveredBlock7Arg2 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := [
    | recoveredBlock7Block17Value0 recoveredBlock7Block17Value1 recoveredBlock7Block17Value2 recoveredBlock7Block17Value3 recoveredBlock7Block17Value4 |
    recoveredBlock7Block17Value0 := (self) currentMethodDecl.
    recoveredBlock7Block17Value1 := recoveredBlock7Arg2.
    recoveredBlock7Block17Value2 := (self) currentMethodDecl.
    recoveredBlock7Block17Value3 := (recoveredBlock7Block17Value2) errLabel.
    recoveredBlock7Block17Value4 := (recoveredBlock7Block17Value0) mdlWarningNo: (492) with: (recoveredBlock7Block17Value1) with: (recoveredBlock7Block17Value3).
    recoveredBlock7Block17Value4
].
    recoveredBlock7Value2 := (self) processRefQualifiedName: (recoveredBlock7Value0) ifFail: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) doWithIndex: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20299264; bytecode file offset 0xb95b50"
!SGMdDeclBuilder methodsFor: 'recovered'!
atomicSWComponentDecl: recoveredArg1 dataset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) className.
    (self) checkForReservedName: (recoveredValue1) entity: ('Software Component').
    (self) singleInstance.
    recoveredValue2 := SGMdSWComponentInterface.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) mdlClassType: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := (self) popClassOptimizations.
    recoveredValue8 := (recoveredValue7) cgOptSoftwareComponent.
    (recoveredValue6) optimizations: (recoveredValue8).
    recoveredValue9 := recoveredValue3.
    recoveredValue10 := recoveredArg2.
    (recoveredValue9) currentDataSet: (recoveredValue10).
    (self) classInterface: (recoveredValue3).
    recoveredValue11 := (self) mdlAUTOSARReturnType.
    (self) declEnum: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2029fb98; bytecode file offset 0xb9c478"
!SGMdDeclBuilder methodsFor: 'recovered'!
endVarDecls
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) classInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) semAnaNode: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) updateAttributes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) declareAccessMethods.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) asMdlMacroBuilder.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) classType.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) declareDefaultMacros: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) classInterface.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClassType.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeDirectAccess: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) asMdlMacroBuilder.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) classInterface.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) declareAccessMacros: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202caf30; bytecode file offset 0xbc780c"
!SGMdDeclBuilder methodsFor: 'recovered'!
resolveQualifiedName: recoveredArg1 ifFail: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) subStrings: ('.').
    recoveredValue4 := (recoveredValue3) asOrderedCollection.
    recoveredValue5 := (self) classInterface.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := [].
    recoveredValue8 := (self) resolveAccessChain: (recoveredValue4) in: (recoveredValue5) result: (recoveredValue6) ifFail: (recoveredValue7).
    recoveredValue9 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 |
    recoveredBlock29Value0 := recoveredLocal1.
    ^recoveredBlock29Value0
].
    (recoveredValue8) ifNotNil: (recoveredValue9).
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue10) value.
    ^recoveredValue11
! !

"ASDBase.ic method 0x202cb48c; bytecode file offset 0xbc7d78"
!SGMdDeclBuilder methodsFor: 'recovered'!
importVarDecl: recoveredArg1 position: recoveredArg2 class: recoveredArg3 init: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := SGMdImportedClassVarDecl.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) makeNewNode: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) makeName: (recoveredValue4).
    (recoveredValue3) mdlName: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) mdlLabel.
    recoveredValue10 := (self) checkClassType: (recoveredValue7) errLabel: (recoveredValue9).
    (recoveredValue6) mdlClass: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg2.
    (recoveredValue11) position: (recoveredValue12).
    recoveredValue13 := (self) classType.
    recoveredValue14 := (recoveredValue2) scope: (recoveredValue13).
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := ('Rl') == ('Call_80558').
    recoveredValue16 := recoveredLocal1.
    (self) varDecl: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"ASDBase.ic method 0x202e8890; bytecode file offset 0xbe516c"
!SGMdDeclBuilder methodsFor: 'recovered'!
analyseMapping: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromVarDeclPath.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'self'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) fromVarDeclLocalScope.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMappings.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) addObject: (recoveredStack1) key: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202effcc; bytecode file offset 0xbec8c0"
!SGMdDeclBuilder methodsFor: 'recovered'!
projectDecl: recoveredArg1 dataset: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := ('Rl') == ('Call_51606').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) className.
    (self) checkForReservedName: (recoveredValue2) entity: ('project name').
    (self) singleInstance.
    recoveredValue3 := SGMdProjectInterface.
    recoveredValue4 := (recoveredValue3) create.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) mdlClassType: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := (self) popClassOptimizations.
    recoveredValue9 := (recoveredValue8) cgOptProject.
    (recoveredValue7) optimizations: (recoveredValue9).
    recoveredValue10 := recoveredValue4.
    recoveredValue11 := recoveredArg2.
    (recoveredValue10) currentDataSet: (recoveredValue11).
    recoveredLocal1 := recoveredValue4.
    recoveredValue12 := recoveredLocal1.
    (self) classInterface: (recoveredValue12).
    recoveredValue13 := (self) importList.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue13) rememberProjectInterface: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x2031ebf8; bytecode file offset 0xc1b4dc"
!SGMdDeclBuilder methodsFor: 'recovered'!
endProjectDecl
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) classVars.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) mdlLabel.
    recoveredBlock12Value3 := (recoveredBlock12Value0) add: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) dtName.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 15.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) dtName.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) classInterface.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) endClassDecl.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032b134; bytecode file offset 0xc27a14"
!SGMdDeclBuilder methodsFor: 'recovered'!
resolveDistributions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rememberedInitValues.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack4 := recoveredBlock5Arg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) xDistribVarName.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) makeName: (recoveredBlock5Stack4).
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack4 := self.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack5 := SGMdIdentifier.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack5 := (recoveredBlock5Stack5) create.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) makeNewNode: (recoveredBlock5Stack5).
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) lookup: (recoveredBlock5Stack3) expr: (recoveredBlock5Stack4).
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            (recoveredBlock5Stack1) xDistribVarName: (recoveredBlock5Stack2).
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) yDistribVarName.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 55] ifFalse: [recoveredBlock5PC := 36].
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack4 := recoveredBlock5Arg1.
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) yDistribVarName.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) makeName: (recoveredBlock5Stack4).
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack4 := self.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack5 := SGMdIdentifier.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack5 := (recoveredBlock5Stack5) create.
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) makeNewNode: (recoveredBlock5Stack5).
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) lookup: (recoveredBlock5Stack3) expr: (recoveredBlock5Stack4).
            recoveredBlock5PC := 53.
        ].
        recoveredBlock5Step = 53 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) yDistribVarName: (recoveredBlock5Stack2).
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203489e0; bytecode file offset 0xc452bc"
!SGMdDeclBuilder methodsFor: 'recovered'!
enumLabelDecl: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := SGMdEnumValue.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) mdlLabel.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) classInterface.
    recoveredValue5 := (recoveredValue4) mdlClassType.
    recoveredValue6 := (recoveredValue0) createLabel: (recoveredValue2) value: (recoveredValue3) class: (recoveredValue5).
    recoveredValue7 := (self) semAnaNode: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := (self) classInterface.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) mdlLabel.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := [
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 recoveredBlock33Value4 recoveredBlock33Value5 |
    recoveredBlock33Value0 := recoveredLocal2.
    recoveredBlock33Value1 := (recoveredBlock33Value0) errLabel.
    recoveredBlock33Value2 := recoveredLocal2.
    recoveredBlock33Value3 := (recoveredBlock33Value2) mdlClass.
    recoveredBlock33Value4 := (recoveredBlock33Value3) errLabel.
    recoveredBlock33Value5 := (self) mdlSemErrNo: (18) with: (recoveredBlock33Value1) with: (recoveredBlock33Value4).
    recoveredBlock33Value5
].
    (recoveredValue8) decl: (recoveredValue10) id: (recoveredValue11) ifFail: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x2034ebb4; bytecode file offset 0xc4b4b0"
!SGMdDeclBuilder methodsFor: 'recovered'!
moduleDecl: recoveredArg1 genericComponent: recoveredArg2 dataset: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) className.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'module name'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) checkForReservedName: (recoveredStack1) entity: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) singleInstance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := SGMdModuleInterface.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) mdlClassType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) popClassOptimizations.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) cgOptModule.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) optimizations: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) currentDataSet: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizations.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) cgOptGenericComponent.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) classInterface: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAUTOSARActive.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlAUTOSARReturnType.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) declEnum: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034fa14; bytecode file offset 0xc4c300"
!SGMdDeclBuilder methodsFor: 'recovered'!
resolveMappingsForClassInterfaces: recoveredArg1
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
            recoveredStack2 := [:block280eede8Arg1 | 
    | block280eede8Value0 block280eede8Value1 |
    block280eede8Value0 := block280eede8Arg1.
    block280eede8Value1 := (block280eede8Value0) resetMdlMappings.
    block280eede8Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAUTOSARActive.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) swComponentInterface.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectInterface.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) dtName.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) lookup: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) resolveDtAccess: (recoveredStack1) mdlClassInterface: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectInterface.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMappings.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) resolveMappingsForInstVarDecls: (recoveredStack1) mappingTable: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) resolveMappingsForClassVarDecls: (recoveredStack1) mappingTable: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203565a4; bytecode file offset 0xc52e7c"
!SGMdDeclBuilder methodsFor: 'recovered'!
resolveMappingForClassVarDecl: recoveredArg1 mappingTable: recoveredArg2 mdlInterface: recoveredArg3
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
            recoveredStack2 := [].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) resolveBindingForClassVarDecl: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) errLabel.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) resolveMappings: (recoveredStack1) mdlInterface: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlMapped.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlMapping.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValid.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) touch.
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

"ASDBase.ic method 0x2037fc18; bytecode file offset 0xc7c50c"
!SGMdDeclBuilder methodsFor: 'recovered'!
classVarDecl: recoveredArg1 position: recoveredArg2 class: recoveredArg3 init: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) dtName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := SGMdDtVarDecl.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeNewNode: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := SGMdClassVarDecl.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeNewNode: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) makeName: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) mdlName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := (recoveredStack5) mdlLabel.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) checkClassType: (recoveredStack4) errLabel: (recoveredStack5).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack2) mdlClass: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) position: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) classType.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) scope: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) varDecl: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) genIleType.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20395094; bytecode file offset 0xc91980"
!SGMdDeclBuilder methodsFor: 'recovered'!
endAtomicSWComponentDecl
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) classInterface.
    recoveredValue1 := (recoveredValue0) instanceVars.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) mdlClass.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isMdlComplexClassNoEnumType.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 20] ifFalse: [recoveredBlock6PC := 63].
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) mdlClass.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack4 := [].
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) lookupClassInterface: (recoveredBlock6Stack3) ifFail: (recoveredBlock6Stack4).
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack3.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 63] ifFalse: [recoveredBlock6PC := 34].
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Local1.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isMdlCSInterface.
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 42] ifFalse: [recoveredBlock6PC := 63].
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Local1.
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) usedTypesTable.
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) allApplicationErrorTypes.
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            recoveredBlock6Stack2 := [:recoveredBlock6Block48Arg1 | 
    | recoveredBlock6Block48Value0 recoveredBlock6Block48Value1 recoveredBlock6Block48Value2 |
    recoveredBlock6Block48Value0 := recoveredBlock6Block48Arg1.
    recoveredBlock6Block48Value1 := (self) checkClassType: (recoveredBlock6Block48Value0).
    recoveredBlock6Block48Value2 := (self) declEnum: (recoveredBlock6Block48Value1).
    recoveredBlock6Block48Value2
].
            recoveredBlock6PC := 61.
        ].
        recoveredBlock6Step = 61 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) do: (recoveredBlock6Stack2).
            recoveredBlock6PC := 63.
        ].
        recoveredBlock6Step = 63 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) classInterface.
    (recoveredValue3) semAnaEvents.
    (self) endDataTypeDecl.
    ^self
! !

"ASDBase.ic method 0x203ca648; bytecode file offset 0xcc6f6c"
!SGMdDeclBuilder methodsFor: 'recovered'!
analyzeGenericUnits
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVars.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280f6ffcArg1 | 
    | block280f6ffcValue0 block280f6ffcValue1 block280f6ffcValue2 |
    block280f6ffcValue0 := block280f6ffcArg1.
    block280f6ffcValue1 := (block280f6ffcValue0) mdlClass.
    block280f6ffcValue2 := (block280f6ffcValue1) isCgTypeWithGenericPhysicalUnit.
    block280f6ffcValue2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClassType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) cgOptContainsGenericPhysicalUnit.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortedMethods.
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
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 44.
        ].
        recoveredBlock36Step = 44 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) mdlClass.
            recoveredBlock36PC := 45.
        ].
        recoveredBlock36Step = 45 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) isCgTypeWithGenericPhysicalUnit.
            recoveredBlock36PC := 47.
        ].
        recoveredBlock36Step = 47 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 68] ifFalse: [recoveredBlock36PC := 50].
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 51.
        ].
        recoveredBlock36Step = 51 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) parmChildren.
            recoveredBlock36PC := 53.
        ].
        recoveredBlock36Step = 53 ifTrue: [
            recoveredBlock36Stack3 := [:block280f7020Arg1 | 
    | block280f7020Value0 block280f7020Value1 block280f7020Value2 |
    block280f7020Value0 := block280f7020Arg1.
    block280f7020Value1 := (block280f7020Value0) mdlClass.
    block280f7020Value2 := (block280f7020Value1) isCgTypeWithGenericPhysicalUnit.
    block280f7020Value2
].
            recoveredBlock36PC := 55.
        ].
        recoveredBlock36Step = 55 ifTrue: [
            recoveredBlock36PC := 63.
        ].
        recoveredBlock36Step = 63 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) anySatisfy: (recoveredBlock36Stack3).
            recoveredBlock36PC := 65.
        ].
        recoveredBlock36Step = 65 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 68] ifFalse: [recoveredBlock36PC := 79].
        ].
        recoveredBlock36Step = 68 ifTrue: [
            recoveredBlock36PC := 69.
        ].
        recoveredBlock36Step = 69 ifTrue: [
            recoveredBlock36Stack1 := self.
            recoveredBlock36PC := 70.
        ].
        recoveredBlock36Step = 70 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) classInterface.
            recoveredBlock36PC := 71.
        ].
        recoveredBlock36Step = 71 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) mdlClassType.
            recoveredBlock36PC := 73.
        ].
        recoveredBlock36Step = 73 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) attributes.
            recoveredBlock36PC := 75.
        ].
        recoveredBlock36Step = 75 ifTrue: [
            (recoveredBlock36Stack1) cgOptContainsGenericPhysicalUnit.
            recoveredBlock36PC := 77.
        ].
        recoveredBlock36Step = 77 ifTrue: [
            recoveredBlock36Stack1 := self.
            recoveredBlock36PC := 78.
        ].
        recoveredBlock36Step = 78 ifTrue: [
            ^recoveredBlock36Stack1
        ].
        recoveredBlock36Step = 79 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ca684; bytecode file offset 0xcc6f6c"
!SGMdDeclBuilder methodsFor: 'recovered'!
analyzeGenericUnitsWithOffset
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVars.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280f7044Arg1 | 
    | block280f7044Value0 block280f7044Value1 block280f7044Value2 |
    block280f7044Value0 := block280f7044Arg1.
    block280f7044Value1 := (block280f7044Value0) mdlClass.
    block280f7044Value2 := (block280f7044Value1) isCgTypeWithGenericPhysicalUnitWithOffset.
    block280f7044Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClassType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) cgOptContainsGenericPhysicalUnitWithOffset.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortedMethods.
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
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 44.
        ].
        recoveredBlock36Step = 44 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) mdlClass.
            recoveredBlock36PC := 45.
        ].
        recoveredBlock36Step = 45 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) isCgTypeWithGenericPhysicalUnitWithOffset.
            recoveredBlock36PC := 47.
        ].
        recoveredBlock36Step = 47 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 68] ifFalse: [recoveredBlock36PC := 50].
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 51.
        ].
        recoveredBlock36Step = 51 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) parmChildren.
            recoveredBlock36PC := 53.
        ].
        recoveredBlock36Step = 53 ifTrue: [
            recoveredBlock36Stack3 := [:block280f7068Arg1 | 
    | block280f7068Value0 block280f7068Value1 block280f7068Value2 |
    block280f7068Value0 := block280f7068Arg1.
    block280f7068Value1 := (block280f7068Value0) mdlClass.
    block280f7068Value2 := (block280f7068Value1) isCgTypeWithGenericPhysicalUnitWithOffset.
    block280f7068Value2
].
            recoveredBlock36PC := 55.
        ].
        recoveredBlock36Step = 55 ifTrue: [
            recoveredBlock36PC := 63.
        ].
        recoveredBlock36Step = 63 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) anySatisfy: (recoveredBlock36Stack3).
            recoveredBlock36PC := 65.
        ].
        recoveredBlock36Step = 65 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 68] ifFalse: [recoveredBlock36PC := 79].
        ].
        recoveredBlock36Step = 68 ifTrue: [
            recoveredBlock36PC := 69.
        ].
        recoveredBlock36Step = 69 ifTrue: [
            recoveredBlock36Stack1 := self.
            recoveredBlock36PC := 70.
        ].
        recoveredBlock36Step = 70 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) classInterface.
            recoveredBlock36PC := 71.
        ].
        recoveredBlock36Step = 71 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) mdlClassType.
            recoveredBlock36PC := 73.
        ].
        recoveredBlock36Step = 73 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) attributes.
            recoveredBlock36PC := 75.
        ].
        recoveredBlock36Step = 75 ifTrue: [
            (recoveredBlock36Stack1) cgOptContainsGenericPhysicalUnitWithOffset.
            recoveredBlock36PC := 77.
        ].
        recoveredBlock36Step = 77 ifTrue: [
            recoveredBlock36Stack1 := self.
            recoveredBlock36PC := 78.
        ].
        recoveredBlock36Step = 78 ifTrue: [
            ^recoveredBlock36Stack1
        ].
        recoveredBlock36Step = 79 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d1f70; bytecode file offset 0xcce864"
!SGMdDeclBuilder methodsFor: 'recovered'!
directGetAccessAttributes: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) popMethodAttributes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) directAccessAttributes: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrLimitOverflow.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) cgAttrLimitOverflow.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) cgAttrNoLimitOverflow.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrLimitAssignment.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) cgAttrLimitAssignment.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) cgAttrNoLimitAssignment.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrReference.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrReadForReferencedObject.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) cgAttrRead.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) cgAttrNoRead.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrWriteForReferencedObject.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) cgAttrWrite.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) cgAttrNoWrite.
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
            (recoveredStack0) pushStack: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f43e4; bytecode file offset 0xcf0cfc"
!SGMdDeclBuilder methodsFor: 'recovered'!
classInterface: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) source.
    (recoveredValue0) source: (recoveredValue1).
    (self) resetDirectAccessMethodNames.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) mdlClassType.
    (self) classType: (recoveredValue3).
    recoveredValue4 := (self) generator.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) optimizations.
    (recoveredValue4) updateComponentAttributes: (recoveredValue6).
    recoveredValue7 := (self) classType.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) optimizations.
    (recoveredValue7) optimizations: (recoveredValue9).
    recoveredValue10 := (self) importList.
    recoveredValue11 := (self) classKey.
    recoveredValue12 := recoveredArg1.
    (recoveredValue10) decl: (recoveredValue11) id: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    (self) reserveTable: (recoveredValue13).
    (self) reserveStack.
    recoveredValue14 := recoveredArg1.
    (self) pushStack: (recoveredValue14).
    recoveredValue15 := SGMdSelfVarDecl.
    recoveredValue16 := (recoveredValue15) create.
    recoveredValue17 := (self) makeNewNode: (recoveredValue16).
    recoveredValue18 := recoveredValue17.
    recoveredValue19 := (self) mdlSelfKey.
    recoveredValue20 := (self) makeName: (recoveredValue19).
    (recoveredValue18) mdlName: (recoveredValue20).
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := (recoveredValue21) mdlClassType.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (recoveredValue23) optimizations.
    recoveredValue25 := (recoveredValue24) memoryClass.
    recoveredValue26 := (recoveredValue22) asCgReferenceRead: (true) write: (true) memClass: (recoveredValue25).
    recoveredValue27 := (recoveredValue17) mdlClass: (recoveredValue26).
    recoveredLocal1 := recoveredValue27.
    recoveredValue28 := recoveredArg1.
    recoveredValue29 := (self) mdlSelfKey.
    recoveredValue30 := recoveredLocal1.
    (recoveredValue28) decl: (recoveredValue29) id: (recoveredValue30).
    ^self
! !

"ASDBase.ic method 0x204002ec; bytecode file offset 0xcfcbe0"
!SGMdDeclBuilder methodsFor: 'recovered'!
smDecl: recoveredArg1 position: recoveredArg2 class: recoveredArg3 init: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) enumerationValues.
    recoveredValue2 := (recoveredValue1) asSet.
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9Stack5 recoveredBlock9Stack6 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg3.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) enumerationValues.
            recoveredBlock9PC := 21.
        ].
        recoveredBlock9Step = 21 ifTrue: [
            recoveredBlock9Stack3 := [:recoveredBlock9Block21Arg1 | 
    | recoveredBlock9Block21Value0 recoveredBlock9Block21Value1 recoveredBlock9Block21Value2 |
    recoveredBlock9Block21Value0 := recoveredBlock9Block21Arg1.
    recoveredBlock9Block21Value1 := recoveredBlock9Arg1.
    recoveredBlock9Block21Value2 := (recoveredBlock9Block21Value0) equals: (recoveredBlock9Block21Value1).
    recoveredBlock9Block21Value2
].
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) select: (recoveredBlock9Stack3).
            recoveredBlock9PC := 35.
        ].
        recoveredBlock9Step = 35 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) size.
            recoveredBlock9PC := 37.
        ].
        recoveredBlock9Step = 37 ifTrue: [
            recoveredBlock9Stack3 := 1.
            recoveredBlock9PC := 39.
        ].
        recoveredBlock9Step = 39 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) > (recoveredBlock9Stack3).
            recoveredBlock9PC := 40.
        ].
        recoveredBlock9Step = 40 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 44] ifFalse: [recoveredBlock9PC := 67].
        ].
        recoveredBlock9Step = 44 ifTrue: [
            recoveredBlock9PC := 45.
        ].
        recoveredBlock9Step = 45 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 46.
        ].
        recoveredBlock9Step = 46 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) errorHandler.
            recoveredBlock9PC := 48.
        ].
        recoveredBlock9Step = 48 ifTrue: [
            recoveredBlock9Stack2 := 73.
            recoveredBlock9PC := 52.
        ].
        recoveredBlock9Step = 52 ifTrue: [
            recoveredBlock9Stack3 := Array.
            recoveredBlock9PC := 54.
        ].
        recoveredBlock9Step = 54 ifTrue: [
            recoveredBlock9Stack4 := recoveredBlock9Arg1.
            recoveredBlock9PC := 57.
        ].
        recoveredBlock9Step = 57 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) with: (recoveredBlock9Stack4).
            recoveredBlock9PC := 59.
        ].
        recoveredBlock9Step = 59 ifTrue: [
            recoveredBlock9Stack4 := 'Sm'.
            recoveredBlock9PC := 61.
        ].
        recoveredBlock9Step = 61 ifTrue: [
            recoveredBlock9Stack5 := self.
            recoveredBlock9PC := 62.
        ].
        recoveredBlock9Step = 62 ifTrue: [
            recoveredBlock9Stack5 := (recoveredBlock9Stack5) source.
            recoveredBlock9PC := 64.
        ].
        recoveredBlock9Step = 64 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) syntaxErrorNo: (recoveredBlock9Stack2) args: (recoveredBlock9Stack3) category: (recoveredBlock9Stack4) source: (recoveredBlock9Stack5).
            recoveredBlock9PC := 67.
        ].
        recoveredBlock9Step = 67 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := SGMdSmVarDecl.
    recoveredValue5 := (recoveredValue4) create.
    recoveredValue6 := (self) makeNewNode: (recoveredValue5).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := recoveredArg3.
    recoveredValue10 := recoveredArg4.
    (self) instVarDeclNode: (recoveredValue6) name: (recoveredValue7) position: (recoveredValue8) class: (recoveredValue9) init: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2040658c; bytecode file offset 0xd02e80"
!SGMdDeclBuilder methodsFor: 'recovered'!
endCSInterfaceDecl
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) classInterface.
    recoveredValue1 := (recoveredValue0) methodDecls.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Local2 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) mdlClass.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Local2 := recoveredBlock6Stack2.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isMdlARApplicationErrorType.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 20] ifFalse: [recoveredBlock6PC := 48].
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Local2.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) lookupClassInterface: (recoveredBlock6Stack2).
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Local1.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) mdlClassType.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) classInterface.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) mdlClassType.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            (recoveredBlock6Stack1) csInterface: (recoveredBlock6Stack2).
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Local2.
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) classInterface.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) mdlClassType.
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            (recoveredBlock6Stack1) csInterface: (recoveredBlock6Stack2).
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 42.
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) classInterface.
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) usedTypesTable.
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Local2.
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            (recoveredBlock6Stack1) addApplicationErrorType: (recoveredBlock6Stack2).
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 49.
        ].
        recoveredBlock6Step = 49 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) parmChildren.
            recoveredBlock6PC := 51.
        ].
        recoveredBlock6Step = 51 ifTrue: [
            recoveredBlock6Stack2 := [:recoveredBlock6Block51Arg1 | 
    | recoveredBlock6Block51Stack0 recoveredBlock6Block51Stack1 recoveredBlock6Block51Stack2 recoveredBlock6Block51Stack3 recoveredBlock6Block51Stack4 recoveredBlock6Block51PC recoveredBlock6Block51Step recoveredBlock6Block51Done recoveredBlock6Block51Result |
    recoveredBlock6Block51Stack0 := self.
    recoveredBlock6Block51PC := 58.
    recoveredBlock6Block51Done := false.
    [recoveredBlock6Block51Done not] whileTrue: [
        recoveredBlock6Block51Step := recoveredBlock6Block51PC.
        recoveredBlock6Block51Step = 58 ifTrue: [
            recoveredBlock6Block51Stack1 := nil.
            recoveredBlock6Block51PC := 59.
        ].
        recoveredBlock6Block51Step = 59 ifTrue: [
            recoveredBlock6Block51Stack2 := recoveredBlock6Block51Arg1.
            recoveredBlock6Block51PC := 60.
        ].
        recoveredBlock6Block51Step = 60 ifTrue: [
            recoveredBlock6Block51Stack2 := (recoveredBlock6Block51Stack2) mdlClass.
            recoveredBlock6Block51PC := 61.
        ].
        recoveredBlock6Block51Step = 61 ifTrue: [
            recoveredBlock6Block51Stack2 := (recoveredBlock6Block51Stack2) isMdlRecordType.
            recoveredBlock6Block51PC := 63.
        ].
        recoveredBlock6Block51Step = 63 ifTrue: [
            (recoveredBlock6Block51Stack2) ifTrue: [recoveredBlock6Block51PC := 66] ifFalse: [recoveredBlock6Block51PC := 80].
        ].
        recoveredBlock6Block51Step = 66 ifTrue: [
            recoveredBlock6Block51PC := 67.
        ].
        recoveredBlock6Block51Step = 67 ifTrue: [
            recoveredBlock6Block51Stack1 := self.
            recoveredBlock6Block51PC := 68.
        ].
        recoveredBlock6Block51Step = 68 ifTrue: [
            recoveredBlock6Block51Stack1 := (recoveredBlock6Block51Stack1) classInterface.
            recoveredBlock6Block51PC := 69.
        ].
        recoveredBlock6Block51Step = 69 ifTrue: [
            recoveredBlock6Block51Stack1 := (recoveredBlock6Block51Stack1) usedTypesTable.
            recoveredBlock6Block51PC := 71.
        ].
        recoveredBlock6Block51Step = 71 ifTrue: [
            recoveredBlock6Block51Stack2 := self.
            recoveredBlock6Block51PC := 72.
        ].
        recoveredBlock6Block51Step = 72 ifTrue: [
            recoveredBlock6Block51Stack3 := recoveredBlock6Block51Arg1.
            recoveredBlock6Block51PC := 73.
        ].
        recoveredBlock6Block51Step = 73 ifTrue: [
            recoveredBlock6Block51Stack3 := (recoveredBlock6Block51Stack3) mdlClass.
            recoveredBlock6Block51PC := 74.
        ].
        recoveredBlock6Block51Step = 74 ifTrue: [
            recoveredBlock6Block51Stack3 := (recoveredBlock6Block51Stack3) asCgDereferencedType.
            recoveredBlock6Block51PC := 76.
        ].
        recoveredBlock6Block51Step = 76 ifTrue: [
            recoveredBlock6Block51Stack2 := (recoveredBlock6Block51Stack2) lookupClassInterface: (recoveredBlock6Block51Stack3).
            recoveredBlock6Block51PC := 78.
        ].
        recoveredBlock6Block51Step = 78 ifTrue: [
            recoveredBlock6Block51Stack1 := (recoveredBlock6Block51Stack1) addComponentTypeInterface: (recoveredBlock6Block51Stack2).
            recoveredBlock6Block51PC := 80.
        ].
        recoveredBlock6Block51Step = 80 ifTrue: [
            recoveredBlock6Block51Result := recoveredBlock6Block51Stack1.
            recoveredBlock6Block51Done := true.
        ].
    ].
    recoveredBlock6Block51Result
].
            recoveredBlock6PC := 81.
        ].
        recoveredBlock6Step = 81 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) do: (recoveredBlock6Stack2).
            recoveredBlock6PC := 83.
        ].
        recoveredBlock6Step = 83 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) classInterface.
    (self) semAnaNode: (recoveredValue3).
    (self) endMethodInterfaceTypeDecl.
    ^self
! !

"ASDBase.ic method 0x20411038; bytecode file offset 0xd0d930"
!SGMdDeclBuilder methodsFor: 'recovered'!
checkEnumeratedTypeForReservedName: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkReservedNames.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) className.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlModeGroupType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'Mode Group'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'Enumeration'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) checkForReservedName: (recoveredStack1) entity: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAUTOSARActive.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlAUTOSARStandardReturnType.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlRTEStandardReturnType.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumerationLabels.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Stack0 recoveredBlock57Stack1 recoveredBlock57Stack2 recoveredBlock57Stack3 recoveredBlock57Stack4 recoveredBlock57Stack5 recoveredBlock57Stack6 recoveredBlock57PC recoveredBlock57Step recoveredBlock57Done recoveredBlock57Result |
    recoveredBlock57Stack0 := self.
    recoveredBlock57PC := 64.
    recoveredBlock57Done := false.
    [recoveredBlock57Done not] whileTrue: [
        recoveredBlock57Step := recoveredBlock57PC.
        recoveredBlock57Step = 64 ifTrue: [
            recoveredBlock57Stack1 := nil.
            recoveredBlock57PC := 65.
        ].
        recoveredBlock57Step = 65 ifTrue: [
            recoveredBlock57Stack2 := recoveredLocal1.
            recoveredBlock57PC := 68.
        ].
        recoveredBlock57Step = 68 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) enumerationLabels.
            recoveredBlock57PC := 70.
        ].
        recoveredBlock57Step = 70 ifTrue: [
            recoveredBlock57Stack3 := recoveredBlock57Arg1.
            recoveredBlock57PC := 71.
        ].
        recoveredBlock57Step = 71 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) includes: (recoveredBlock57Stack3).
            recoveredBlock57PC := 73.
        ].
        recoveredBlock57Step = 73 ifTrue: [
            (recoveredBlock57Stack2) ifTrue: [recoveredBlock57PC := 76] ifFalse: [recoveredBlock57PC := 93].
        ].
        recoveredBlock57Step = 76 ifTrue: [
            recoveredBlock57PC := 77.
        ].
        recoveredBlock57Step = 77 ifTrue: [
            recoveredBlock57Stack1 := self.
            recoveredBlock57PC := 78.
        ].
        recoveredBlock57Step = 78 ifTrue: [
            recoveredBlock57Stack2 := 11.
            recoveredBlock57PC := 80.
        ].
        recoveredBlock57Step = 80 ifTrue: [
            recoveredBlock57Stack3 := recoveredBlock57Arg1.
            recoveredBlock57PC := 81.
        ].
        recoveredBlock57Step = 81 ifTrue: [
            recoveredBlock57Stack4 := recoveredArg1.
            recoveredBlock57PC := 84.
        ].
        recoveredBlock57Step = 84 ifTrue: [
            recoveredBlock57Stack4 := (recoveredBlock57Stack4) errLabel.
            recoveredBlock57PC := 86.
        ].
        recoveredBlock57Step = 86 ifTrue: [
            recoveredBlock57Stack5 := ' value '.
            recoveredBlock57PC := 88.
        ].
        recoveredBlock57Step = 88 ifTrue: [
            recoveredBlock57Stack4 := (recoveredBlock57Stack4) , (recoveredBlock57Stack5).
            recoveredBlock57PC := 90.
        ].
        recoveredBlock57Step = 90 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) mdlSemErrNo: (recoveredBlock57Stack2) with: (recoveredBlock57Stack3) with: (recoveredBlock57Stack4).
            recoveredBlock57PC := 93.
        ].
        recoveredBlock57Step = 93 ifTrue: [
            recoveredBlock57Result := recoveredBlock57Stack1.
            recoveredBlock57Done := true.
        ].
    ].
    recoveredBlock57Result
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20416538; bytecode file offset 0xd12e34"
!SGMdDeclBuilder methodsFor: 'recovered'!
instVarDeclNode: recoveredArg1 name: recoveredArg2 position: recoveredArg3 class: recoveredArg4 init: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := (recoveredStack4) makeName: (recoveredStack5).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) checkDTName: (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) mdlName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := (recoveredStack5) errLabel.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) checkClassType: (recoveredStack4) errLabel: (recoveredStack5).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) mdlClass: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) position: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) classType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) scope: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock47Value0 |
    recoveredBlock47Value0 := recoveredArg5.
    recoveredBlock47Value0
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) varDecl: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlPrototype.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrGetAccess.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrSetAccess.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := 'class specified as prototype'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'set/get'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) mdlSemErrInvalidDefinition: (recoveredStack1) ofDirectAccess: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20427458; bytecode file offset 0xd23d48"
!SGMdDeclBuilder methodsFor: 'recovered'!
processRefQualifiedName: recoveredArg1 ifFail: recoveredArg2
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
            recoveredStack2 := '.'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 |
    recoveredBlock29Value0 := recoveredLocal1.
    recoveredBlock29Value1 := (recoveredBlock29Value0) at: (2).
    recoveredBlock29Value2 := [:recoveredBlock29Block43Arg1 | 
    | recoveredBlock29Block43Value0 recoveredBlock29Block43Value1 recoveredBlock29Block43Value2 recoveredBlock29Block43Value3 recoveredBlock29Block43Value4 recoveredBlock29Block43Value5 recoveredBlock29Block43Value6 recoveredBlock29Block43Value7 |
    recoveredBlock29Block43Value0 := (self) importsTable.
    recoveredBlock29Block43Value1 := (recoveredBlock29Block43Value0) allComponentInterfaces.
    recoveredBlock29Block43Value2 := (recoveredBlock29Block43Value1) values.
    recoveredBlock29Block43Value3 := [:recoveredBlock29Block43Block56Arg1 | 
    | recoveredBlock29Block43Block56Value0 recoveredBlock29Block43Block56Value1 recoveredBlock29Block43Block56Value2 recoveredBlock29Block43Block56Value3 |
    recoveredBlock29Block43Block56Value0 := recoveredBlock29Block43Block56Arg1.
    recoveredBlock29Block43Block56Value1 := (recoveredBlock29Block43Block56Value0) mdlLabel.
    recoveredBlock29Block43Block56Value2 := recoveredBlock29Arg1.
    recoveredBlock29Block43Block56Value3 := (recoveredBlock29Block43Block56Value1) equals: (recoveredBlock29Block43Block56Value2).
    recoveredBlock29Block43Block56Value3
].
    recoveredBlock29Block43Value4 := [].
    recoveredBlock29Block43Value5 := (recoveredBlock29Block43Value2) detect: (recoveredBlock29Block43Value3) ifNone: (recoveredBlock29Block43Value4).
    recoveredBlock29Block43Value6 := [:recoveredBlock29Block43Block75Arg1 | 
    | recoveredBlock29Block43Block75Value0 recoveredBlock29Block43Block75Value1 recoveredBlock29Block43Block75Value2 |
    recoveredBlock29Block43Block75Value0 := recoveredBlock29Block43Block75Arg1.
    recoveredBlock29Block43Block75Value1 := recoveredBlock29Block43Arg1.
    recoveredBlock29Block43Block75Value2 := (self) moduleInterface: (recoveredBlock29Block43Block75Value0) processRef: (recoveredBlock29Block43Block75Value1).
    ^recoveredBlock29Block43Block75Value2
].
    recoveredBlock29Block43Value7 := (recoveredBlock29Block43Value5) ifNotNil: (recoveredBlock29Block43Value6).
    recoveredBlock29Block43Value7
].
    recoveredBlock29Value3 := (recoveredBlock29Value1) ifNotNil: (recoveredBlock29Value2).
    recoveredBlock29Value3
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2043e5ac; bytecode file offset 0xd3aea0"
!SGMdDeclBuilder methodsFor: 'recovered'!
resolveVariantArraySysConst
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortedInstVars.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) resolveVariantArray: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortedClassVars.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block280fe2f0Arg1 | 
    | block280fe2f0Stack0 block280fe2f0Stack1 block280fe2f0Stack2 block280fe2f0Stack3 block280fe2f0PC block280fe2f0Step block280fe2f0Done block280fe2f0Result |
    block280fe2f0Stack0 := self.
    block280fe2f0PC := 4.
    block280fe2f0Done := false.
    [block280fe2f0Done not] whileTrue: [
        block280fe2f0Step := block280fe2f0PC.
        block280fe2f0Step = 4 ifTrue: [
            block280fe2f0Stack1 := nil.
            block280fe2f0PC := 5.
        ].
        block280fe2f0Step = 5 ifTrue: [
            block280fe2f0Stack2 := block280fe2f0Arg1.
            block280fe2f0PC := 6.
        ].
        block280fe2f0Step = 6 ifTrue: [
            block280fe2f0Stack2 := (block280fe2f0Stack2) isMdlImported.
            block280fe2f0PC := 8.
        ].
        block280fe2f0Step = 8 ifTrue: [
            (block280fe2f0Stack2) ifTrue: [block280fe2f0PC := 12] ifFalse: [block280fe2f0PC := 43].
        ].
        block280fe2f0Step = 12 ifTrue: [
            block280fe2f0PC := 13.
        ].
        block280fe2f0Step = 13 ifTrue: [
            block280fe2f0Stack1 := nil.
            block280fe2f0PC := 14.
        ].
        block280fe2f0Step = 14 ifTrue: [
            block280fe2f0Stack2 := block280fe2f0Arg1.
            block280fe2f0PC := 15.
        ].
        block280fe2f0Step = 15 ifTrue: [
            block280fe2f0Stack2 := (block280fe2f0Stack2) mdlClass.
            block280fe2f0PC := 17.
        ].
        block280fe2f0Step = 17 ifTrue: [
            block280fe2f0Stack2 := (block280fe2f0Stack2) isMdlArray.
            block280fe2f0PC := 19.
        ].
        block280fe2f0Step = 19 ifTrue: [
            (block280fe2f0Stack2) ifTrue: [block280fe2f0PC := 30] ifFalse: [block280fe2f0PC := 22].
        ].
        block280fe2f0Step = 22 ifTrue: [
            block280fe2f0Stack2 := block280fe2f0Arg1.
            block280fe2f0PC := 23.
        ].
        block280fe2f0Step = 23 ifTrue: [
            block280fe2f0Stack2 := (block280fe2f0Stack2) mdlClass.
            block280fe2f0PC := 25.
        ].
        block280fe2f0Step = 25 ifTrue: [
            block280fe2f0Stack2 := (block280fe2f0Stack2) isMdlMatrix.
            block280fe2f0PC := 27.
        ].
        block280fe2f0Step = 27 ifTrue: [
            (block280fe2f0Stack2) ifTrue: [block280fe2f0PC := 30] ifFalse: [block280fe2f0PC := 43].
        ].
        block280fe2f0Step = 30 ifTrue: [
            block280fe2f0PC := 31.
        ].
        block280fe2f0Step = 31 ifTrue: [
            block280fe2f0Stack1 := block280fe2f0Arg1.
            block280fe2f0PC := 32.
        ].
        block280fe2f0Step = 32 ifTrue: [
            block280fe2f0Stack1 := (block280fe2f0Stack1) mdlClass.
            block280fe2f0PC := 34.
        ].
        block280fe2f0Step = 34 ifTrue: [
            block280fe2f0Stack2 := block280fe2f0Arg1.
            block280fe2f0PC := 35.
        ].
        block280fe2f0Step = 35 ifTrue: [
            block280fe2f0Stack2 := (block280fe2f0Stack2) exportDecl.
            block280fe2f0PC := 37.
        ].
        block280fe2f0Step = 37 ifTrue: [
            block280fe2f0Stack2 := (block280fe2f0Stack2) mdlClass.
            block280fe2f0PC := 39.
        ].
        block280fe2f0Step = 39 ifTrue: [
            block280fe2f0Stack2 := (block280fe2f0Stack2) dimensions.
            block280fe2f0PC := 41.
        ].
        block280fe2f0Step = 41 ifTrue: [
            block280fe2f0Stack1 := (block280fe2f0Stack1) dimensions: (block280fe2f0Stack2).
            block280fe2f0PC := 43.
        ].
        block280fe2f0Step = 43 ifTrue: [
            block280fe2f0Result := block280fe2f0Stack1.
            block280fe2f0Done := true.
        ].
    ].
    block280fe2f0Result
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortedMethods.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Stack0 recoveredBlock72Stack1 recoveredBlock72Stack2 recoveredBlock72Stack3 recoveredBlock72PC recoveredBlock72Step recoveredBlock72Done recoveredBlock72Result |
    recoveredBlock72Stack0 := self.
    recoveredBlock72PC := 78.
    recoveredBlock72Done := false.
    [recoveredBlock72Done not] whileTrue: [
        recoveredBlock72Step := recoveredBlock72PC.
        recoveredBlock72Step = 78 ifTrue: [
            recoveredBlock72Stack1 := nil.
            recoveredBlock72PC := 79.
        ].
        recoveredBlock72Step = 79 ifTrue: [
            recoveredBlock72Stack2 := recoveredBlock72Arg1.
            recoveredBlock72PC := 80.
        ].
        recoveredBlock72Step = 80 ifTrue: [
            recoveredBlock72Stack2 := (recoveredBlock72Stack2) isMdlExecutableDecl.
            recoveredBlock72PC := 82.
        ].
        recoveredBlock72Step = 82 ifTrue: [
            (recoveredBlock72Stack2) ifTrue: [recoveredBlock72PC := 86] ifFalse: [recoveredBlock72PC := 104].
        ].
        recoveredBlock72Step = 86 ifTrue: [
            recoveredBlock72PC := 87.
        ].
        recoveredBlock72Step = 87 ifTrue: [
            recoveredBlock72Stack1 := recoveredBlock72Arg1.
            recoveredBlock72PC := 88.
        ].
        recoveredBlock72Step = 88 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) parmChildren.
            recoveredBlock72PC := 90.
        ].
        recoveredBlock72Step = 90 ifTrue: [
            recoveredBlock72Stack2 := [:recoveredBlock72Block90Arg1 | 
    | recoveredBlock72Block90Value0 recoveredBlock72Block90Value1 |
    recoveredBlock72Block90Value0 := recoveredBlock72Block90Arg1.
    recoveredBlock72Block90Value1 := (self) resolveVariantArray: (recoveredBlock72Block90Value0).
    recoveredBlock72Block90Value1
].
            recoveredBlock72PC := 99.
        ].
        recoveredBlock72Step = 99 ifTrue: [
            (recoveredBlock72Stack1) do: (recoveredBlock72Stack2).
            recoveredBlock72PC := 101.
        ].
        recoveredBlock72Step = 101 ifTrue: [
            recoveredBlock72Stack1 := self.
            recoveredBlock72PC := 102.
        ].
        recoveredBlock72Step = 102 ifTrue: [
            recoveredBlock72Stack2 := recoveredBlock72Arg1.
            recoveredBlock72PC := 103.
        ].
        recoveredBlock72Step = 103 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) resolveVariantArray: (recoveredBlock72Stack2).
            recoveredBlock72PC := 104.
        ].
        recoveredBlock72Step = 104 ifTrue: [
            recoveredBlock72Result := recoveredBlock72Stack1.
            recoveredBlock72Done := true.
        ].
    ].
    recoveredBlock72Result
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20447b4c; bytecode file offset 0xd44448"
!SGMdDeclBuilder methodsFor: 'recovered'!
eventList: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) events.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) specificEvent.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isModeSwitch.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 30] ifFalse: [recoveredBlock14PC := 46].
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) name.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) isModeSwitchEntry.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) createARModeSwitchEvent: (recoveredBlock14Stack2) entryActivation: (recoveredBlock14Stack3).
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 42.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14PC := 78.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local1.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isOperationInvoke.
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 52] ifFalse: [recoveredBlock14PC := 64].
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) name.
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) createARInvokeOperationEvent: (recoveredBlock14Stack2).
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 61.
        ].
        recoveredBlock14Step = 61 ifTrue: [
            recoveredBlock14PC := 78.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 65.
        ].
        recoveredBlock14Step = 65 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 66.
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) name.
            recoveredBlock14PC := 68.
        ].
        recoveredBlock14Step = 68 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) period.
            recoveredBlock14PC := 71.
        ].
        recoveredBlock14Step = 71 ifTrue: [
            recoveredBlock14Stack4 := nil.
            recoveredBlock14PC := 72.
        ].
        recoveredBlock14Step = 72 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) createARTimingEvent: (recoveredBlock14Stack2) period: (recoveredBlock14Stack3) offset: (recoveredBlock14Stack4).
            recoveredBlock14PC := 75.
        ].
        recoveredBlock14Step = 75 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 78.
        ].
        recoveredBlock14Step = 78 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 79.
        ].
        recoveredBlock14Step = 79 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) assignedRunnables.
            recoveredBlock14PC := 81.
        ].
        recoveredBlock14Step = 81 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isEmpty.
            recoveredBlock14PC := 83.
        ].
        recoveredBlock14Step = 83 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 96] ifFalse: [recoveredBlock14PC := 86].
        ].
        recoveredBlock14Step = 86 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 89.
        ].
        recoveredBlock14Step = 89 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 90.
        ].
        recoveredBlock14Step = 90 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) assignedRunnables.
            recoveredBlock14PC := 92.
        ].
        recoveredBlock14Step = 92 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) first.
            recoveredBlock14PC := 94.
        ].
        recoveredBlock14Step = 94 ifTrue: [
            (recoveredBlock14Stack1) runnable: (recoveredBlock14Stack2).
            recoveredBlock14PC := 96.
        ].
        recoveredBlock14Step = 96 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 99.
        ].
        recoveredBlock14Step = 99 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal1.
            recoveredBlock14PC := 102.
        ].
        recoveredBlock14Step = 102 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 104.
        ].
        recoveredBlock14Step = 104 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20454390; bytecode file offset 0xd50c80"
!SGMdDeclBuilder methodsFor: 'recovered'!
resolveExportedVariantArraySysConst
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) classInterface.
    recoveredValue1 := (recoveredValue0) sortedClassVars.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isMdlImported.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 110] ifFalse: [recoveredBlock6PC := 20].
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            (recoveredBlock6Stack1) resolveVariantArray: (recoveredBlock6Stack2).
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) mdlClass.
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isMdlArray.
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 48] ifFalse: [recoveredBlock6PC := 38].
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) mdlClass.
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isMdlMatrix.
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 48] ifFalse: [recoveredBlock6PC := 110].
        ].
        recoveredBlock6Step = 48 ifTrue: [
            recoveredBlock6PC := 49.
        ].
        recoveredBlock6Step = 49 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 52.
        ].
        recoveredBlock6Step = 52 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) mdlClass.
            recoveredBlock6PC := 54.
        ].
        recoveredBlock6Step = 54 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) dimensions.
            recoveredBlock6PC := 56.
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6Stack2 := [:recoveredBlock6Block56Arg1 | 
    | recoveredBlock6Block56Stack0 recoveredBlock6Block56Stack1 recoveredBlock6Block56Stack2 recoveredBlock6Block56Stack3 recoveredBlock6Block56Stack4 recoveredBlock6Block56Stack5 recoveredBlock6Block56PC recoveredBlock6Block56Step recoveredBlock6Block56Done recoveredBlock6Block56Result |
    recoveredBlock6Block56Stack0 := nil.
    recoveredBlock6Block56PC := 62.
    recoveredBlock6Block56Done := false.
    [recoveredBlock6Block56Done not] whileTrue: [
        recoveredBlock6Block56Step := recoveredBlock6Block56PC.
        recoveredBlock6Block56Step = 62 ifTrue: [
            recoveredBlock6Block56Stack1 := nil.
            recoveredBlock6Block56PC := 63.
        ].
        recoveredBlock6Block56Step = 63 ifTrue: [
            recoveredBlock6Block56Stack2 := recoveredBlock6Block56Arg1.
            recoveredBlock6Block56PC := 64.
        ].
        recoveredBlock6Block56Step = 64 ifTrue: [
            recoveredBlock6Block56Stack2 := (recoveredBlock6Block56Stack2) isCgVariantDimension.
            recoveredBlock6Block56PC := 66.
        ].
        recoveredBlock6Block56Step = 66 ifTrue: [
            (recoveredBlock6Block56Stack2) ifTrue: [recoveredBlock6Block56PC := 70] ifFalse: [recoveredBlock6Block56PC := 107].
        ].
        recoveredBlock6Block56Step = 70 ifTrue: [
            recoveredBlock6Block56Stack2 := recoveredBlock6Block56Arg1.
            recoveredBlock6Block56PC := 71.
        ].
        recoveredBlock6Block56Step = 71 ifTrue: [
            recoveredBlock6Block56Stack2 := (recoveredBlock6Block56Stack2) sysConstDecl.
            recoveredBlock6Block56PC := 73.
        ].
        recoveredBlock6Block56Step = 73 ifTrue: [
            recoveredBlock6Block56Stack2 := (recoveredBlock6Block56Stack2) isMdlNoDecl.
            recoveredBlock6Block56PC := 75.
        ].
        recoveredBlock6Block56Step = 75 ifTrue: [
            (recoveredBlock6Block56Stack2) ifTrue: [recoveredBlock6Block56PC := 107] ifFalse: [recoveredBlock6Block56PC := 78].
        ].
        recoveredBlock6Block56Step = 78 ifTrue: [
            recoveredBlock6Block56PC := 79.
        ].
        recoveredBlock6Block56Step = 79 ifTrue: [
            recoveredBlock6Block56Stack1 := nil.
            recoveredBlock6Block56PC := 80.
        ].
        recoveredBlock6Block56Step = 80 ifTrue: [
            recoveredBlock6Block56Stack2 := recoveredBlock6Block56Arg1.
            recoveredBlock6Block56PC := 81.
        ].
        recoveredBlock6Block56Step = 81 ifTrue: [
            recoveredBlock6Block56Stack2 := (recoveredBlock6Block56Stack2) sysConstDecl.
            recoveredBlock6Block56PC := 83.
        ].
        recoveredBlock6Block56Step = 83 ifTrue: [
            recoveredBlock6Block56Stack2 := (recoveredBlock6Block56Stack2) isMdlInstVarDecl.
            recoveredBlock6Block56PC := 85.
        ].
        recoveredBlock6Block56Step = 85 ifTrue: [
            (recoveredBlock6Block56Stack2) ifTrue: [recoveredBlock6Block56PC := 88] ifFalse: [recoveredBlock6Block56PC := 107].
        ].
        recoveredBlock6Block56Step = 88 ifTrue: [
            recoveredBlock6Block56PC := 89.
        ].
        recoveredBlock6Block56Step = 89 ifTrue: [
            recoveredBlock6Block56Stack1 := recoveredBlock6Block56Arg1.
            recoveredBlock6Block56PC := 90.
        ].
        recoveredBlock6Block56Step = 90 ifTrue: [
            recoveredBlock6Block56Stack1 := (recoveredBlock6Block56Stack1) sysConstDecl.
            recoveredBlock6Block56PC := 92.
        ].
        recoveredBlock6Block56Step = 92 ifTrue: [
            recoveredBlock6Block56Stack2 := 780.
            recoveredBlock6Block56PC := 96.
        ].
        recoveredBlock6Block56Step = 96 ifTrue: [
            recoveredBlock6Block56Stack3 := recoveredBlock6Arg1.
            recoveredBlock6Block56PC := 99.
        ].
        recoveredBlock6Block56Step = 99 ifTrue: [
            recoveredBlock6Block56Stack3 := (recoveredBlock6Block56Stack3) errLabel.
            recoveredBlock6Block56PC := 101.
        ].
        recoveredBlock6Block56Step = 101 ifTrue: [
            recoveredBlock6Block56Stack4 := recoveredBlock6Block56Arg1.
            recoveredBlock6Block56PC := 102.
        ].
        recoveredBlock6Block56Step = 102 ifTrue: [
            recoveredBlock6Block56Stack4 := (recoveredBlock6Block56Stack4) sysConstDecl.
            recoveredBlock6Block56PC := 104.
        ].
        recoveredBlock6Block56Step = 104 ifTrue: [
            recoveredBlock6Block56Stack1 := (recoveredBlock6Block56Stack1) mdlSemErrNo: (recoveredBlock6Block56Stack2) with: (recoveredBlock6Block56Stack3) with: (recoveredBlock6Block56Stack4).
            recoveredBlock6Block56PC := 107.
        ].
        recoveredBlock6Block56Step = 107 ifTrue: [
            recoveredBlock6Block56Result := recoveredBlock6Block56Stack1.
            recoveredBlock6Block56Done := true.
        ].
    ].
    recoveredBlock6Block56Result
].
            recoveredBlock6PC := 108.
        ].
        recoveredBlock6Step = 108 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) do: (recoveredBlock6Stack2).
            recoveredBlock6PC := 110.
        ].
        recoveredBlock6Step = 110 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2045df34; bytecode file offset 0xd5a818"
!SGMdDeclBuilder methodsFor: 'recovered'!
resolveAccessChain: recoveredArg1 in: recoveredArg2 result: recoveredArg3 ifFail: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyForId: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredArg4.
    recoveredBlock19Value1 := (recoveredBlock19Value0) value.
    ^recoveredBlock19Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) lookup: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSelfDecl.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolveAccessChain: (recoveredStack2) in: (recoveredStack3) result: (recoveredStack4) ifFail: (recoveredStack5).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupClassInterface: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := [:recoveredBlock89Arg1 | 
    | recoveredBlock89Value0 recoveredBlock89Value1 recoveredBlock89Value2 recoveredBlock89Value3 recoveredBlock89Value4 |
    recoveredBlock89Value0 := recoveredArg1.
    recoveredBlock89Value1 := recoveredBlock89Arg1.
    recoveredBlock89Value2 := recoveredArg3.
    recoveredBlock89Value3 := recoveredArg4.
    recoveredBlock89Value4 := (self) resolveAccessChain: (recoveredBlock89Value0) in: (recoveredBlock89Value1) result: (recoveredBlock89Value2) ifFail: (recoveredBlock89Value3).
    ^recoveredBlock89Value4
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20461024; bytecode file offset 0xd5d91c"
!SGMdDeclBuilder methodsFor: 'recovered'!
resolveMappingsForClassVarDecls: recoveredArg1 mappingTable: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) allObjects.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) hasFromVarDeclLocalScope.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 59] ifFalse: [recoveredBlock14PC := 26].
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) fromVarDeclPath.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack2 := $..
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) subStrings: (recoveredBlock14Stack2).
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) first.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 42.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack3 := [
    | block281007c8Value0 block281007c8Value1 |
    block281007c8Value0 := OrderedCollection.
    block281007c8Value1 := (block281007c8Value0) new.
    block281007c8Value1
].
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) at: (recoveredBlock14Stack2) ifAbsentPut: (recoveredBlock14Stack3).
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            recoveredBlock14Stack2 := nil.
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    recoveredValue5 := (recoveredValue3) do: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [:recoveredBlock68Arg1 | 
    | recoveredBlock68Stack0 recoveredBlock68Stack1 recoveredBlock68Stack2 recoveredBlock68Stack3 recoveredBlock68PC recoveredBlock68Step recoveredBlock68Done recoveredBlock68Result |
    recoveredBlock68Stack0 := self.
    recoveredBlock68PC := 74.
    recoveredBlock68Done := false.
    [recoveredBlock68Done not] whileTrue: [
        recoveredBlock68Step := recoveredBlock68PC.
        recoveredBlock68Step = 74 ifTrue: [
            recoveredBlock68Stack1 := recoveredBlock68Arg1.
            recoveredBlock68PC := 77.
        ].
        recoveredBlock68Step = 77 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) sortedClassVars.
            recoveredBlock68PC := 79.
        ].
        recoveredBlock68Step = 79 ifTrue: [
            recoveredBlock68Stack2 := [:recoveredBlock68Block79Arg1 | 
    | recoveredBlock68Block79Value0 recoveredBlock68Block79Value1 recoveredBlock68Block79Value2 recoveredBlock68Block79Value3 |
    recoveredBlock68Block79Value0 := recoveredBlock68Block79Arg1.
    recoveredBlock68Block79Value1 := recoveredLocal1.
    recoveredBlock68Block79Value2 := recoveredBlock68Arg1.
    recoveredBlock68Block79Value3 := (self) resolveMappingForClassVarDecl: (recoveredBlock68Block79Value0) mappingTable: (recoveredBlock68Block79Value1) mdlInterface: (recoveredBlock68Block79Value2).
    recoveredBlock68Block79Value3
].
            recoveredBlock68PC := 97.
        ].
        recoveredBlock68Step = 97 ifTrue: [
            (recoveredBlock68Stack1) do: (recoveredBlock68Stack2).
            recoveredBlock68PC := 99.
        ].
        recoveredBlock68Step = 99 ifTrue: [
            recoveredBlock68Stack1 := nil.
            recoveredBlock68PC := 100.
        ].
        recoveredBlock68Step = 100 ifTrue: [
            recoveredBlock68Stack2 := self.
            recoveredBlock68PC := 101.
        ].
        recoveredBlock68Step = 101 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) errorHandler.
            recoveredBlock68PC := 103.
        ].
        recoveredBlock68Step = 103 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) hasCurrentErrors.
            recoveredBlock68PC := 105.
        ].
        recoveredBlock68Step = 105 ifTrue: [
            (recoveredBlock68Stack2) ifTrue: [recoveredBlock68PC := 108] ifFalse: [recoveredBlock68PC := 114].
        ].
        recoveredBlock68Step = 108 ifTrue: [
            recoveredBlock68PC := 109.
        ].
        recoveredBlock68Step = 109 ifTrue: [
            recoveredBlock68Stack1 := recoveredBlock68Arg1.
            recoveredBlock68PC := 112.
        ].
        recoveredBlock68Step = 112 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) touch.
            recoveredBlock68PC := 114.
        ].
        recoveredBlock68Step = 114 ifTrue: [
            recoveredBlock68Result := recoveredBlock68Stack1.
            recoveredBlock68Done := true.
        ].
    ].
    recoveredBlock68Result
].
    (recoveredValue6) do: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2048f194; bytecode file offset 0xd8ba90"
!SGMdDeclBuilder methodsFor: 'recovered'!
addFieldMapping: recoveredArg1 accessChain: recoveredArg2 fieldMapping: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRecordType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) fieldMapping.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlLabel.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock40Local1 recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 recoveredBlock40Value4 recoveredBlock40Value5 recoveredBlock40Value6 recoveredBlock40Value7 recoveredBlock40Value8 recoveredBlock40Value9 recoveredBlock40Value10 recoveredBlock40Value11 recoveredBlock40Value12 recoveredBlock40Value13 recoveredBlock40Value14 recoveredBlock40Value15 recoveredBlock40Value16 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := (recoveredBlock40Value0) fromVarDeclList.
    recoveredBlock40Value2 := (recoveredBlock40Value1) asOrderedCollection.
    recoveredBlock40Local1 := recoveredBlock40Value2.
    recoveredBlock40Value3 := recoveredBlock40Local1.
    recoveredBlock40Value4 := recoveredLocal2.
    (recoveredBlock40Value3) add: (recoveredBlock40Value4).
    recoveredBlock40Value5 := recoveredArg3.
    recoveredBlock40Value6 := (recoveredBlock40Value5) fromVarDeclPath.
    recoveredBlock40Value7 := (recoveredBlock40Value6) , ('.').
    recoveredBlock40Value8 := recoveredLocal2.
    recoveredBlock40Value9 := (recoveredBlock40Value8) mdlLabel.
    recoveredBlock40Value10 := (recoveredBlock40Value7) , (recoveredBlock40Value9).
    recoveredBlock40Value11 := recoveredLocal2.
    recoveredBlock40Value12 := (recoveredBlock40Value11) mdlClass.
    recoveredBlock40Value13 := (self) lookupClassInterface: (recoveredBlock40Value12).
    recoveredBlock40Value14 := (self) createRecordFieldMapping: (recoveredBlock40Value10) mdlInterface: (recoveredBlock40Value13).
    recoveredBlock40Value15 := recoveredBlock40Value14.
    recoveredBlock40Value16 := recoveredBlock40Local1.
    (recoveredBlock40Value15) fromVarDeclList: (recoveredBlock40Value16).
    recoveredBlock40Value14
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) addFieldMapping: (recoveredStack2) accessChain: (recoveredStack3) fieldMapping: (recoveredStack4).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) fieldMapping.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlLabel.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056a4e0; bytecode file offset 0xe66e20"
!SGMdDeclBuilder methodsFor: 'recovered'!
resolveDtAccess: recoveredArg1 mdlClassInterface: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsRteDtAccess.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlSWComponent.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) classVars.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClassType.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) classType: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) reserveTable: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) resetClassVars.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) dtName.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookup: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) dtName.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlRealType.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) importVarDecl: (recoveredStack1) position: (recoveredStack2) class: (recoveredStack3) init: (recoveredStack4).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) resolveBinding: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) runnableDecls.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortElements: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := [:recoveredBlock104Arg1 | 
    | recoveredBlock104Local1 recoveredBlock104Local2 recoveredBlock104Stack0 recoveredBlock104Stack1 recoveredBlock104Stack2 recoveredBlock104Stack3 recoveredBlock104Stack4 recoveredBlock104Stack5 recoveredBlock104PC recoveredBlock104Step recoveredBlock104Done recoveredBlock104Result |
    recoveredBlock104Stack0 := self.
    recoveredBlock104PC := 110.
    recoveredBlock104Done := false.
    [recoveredBlock104Done not] whileTrue: [
        recoveredBlock104Step := recoveredBlock104PC.
        recoveredBlock104Step = 110 ifTrue: [
            recoveredBlock104Stack1 := nil.
            recoveredBlock104PC := 111.
        ].
        recoveredBlock104Step = 111 ifTrue: [
            recoveredBlock104Stack2 := recoveredBlock104Arg1.
            recoveredBlock104PC := 114.
        ].
        recoveredBlock104Step = 114 ifTrue: [
            recoveredBlock104Stack2 := (recoveredBlock104Stack2) requiresMdlRteDtWrite.
            recoveredBlock104PC := 116.
        ].
        recoveredBlock104Step = 116 ifTrue: [
            (recoveredBlock104Stack2) ifTrue: [recoveredBlock104PC := 120] ifFalse: [recoveredBlock104PC := 233].
        ].
        recoveredBlock104Step = 120 ifTrue: [
            recoveredBlock104PC := 121.
        ].
        recoveredBlock104Step = 121 ifTrue: [
            recoveredBlock104Stack1 := self.
            recoveredBlock104PC := 122.
        ].
        recoveredBlock104Step = 122 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) generator.
            recoveredBlock104PC := 123.
        ].
        recoveredBlock104Step = 123 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) autosarSettings.
            recoveredBlock104PC := 125.
        ].
        recoveredBlock104Step = 125 ifTrue: [
            recoveredBlock104Stack2 := recoveredBlock104Arg1.
            recoveredBlock104PC := 128.
        ].
        recoveredBlock104Step = 128 ifTrue: [
            recoveredBlock104Stack2 := (recoveredBlock104Stack2) mdlLabel.
            recoveredBlock104PC := 130.
        ].
        recoveredBlock104Step = 130 ifTrue: [
            recoveredBlock104Stack3 := recoveredBlock104Arg1.
            recoveredBlock104PC := 133.
        ].
        recoveredBlock104Step = 133 ifTrue: [
            recoveredBlock104Stack3 := (recoveredBlock104Stack3) scope.
            recoveredBlock104PC := 135.
        ].
        recoveredBlock104Step = 135 ifTrue: [
            recoveredBlock104Stack3 := (recoveredBlock104Stack3) componentInfo.
            recoveredBlock104PC := 137.
        ].
        recoveredBlock104Step = 137 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) arTemplateDtVariable: (recoveredBlock104Stack2) componentInfo: (recoveredBlock104Stack3).
            recoveredBlock104PC := 139.
        ].
        recoveredBlock104Step = 139 ifTrue: [
            recoveredBlock104Local2 := recoveredBlock104Stack1.
            recoveredBlock104PC := 142.
        ].
        recoveredBlock104Step = 142 ifTrue: [
            recoveredBlock104Stack1 := recoveredArg1.
            recoveredBlock104PC := 145.
        ].
        recoveredBlock104Step = 145 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) mdlClass.
            recoveredBlock104PC := 147.
        ].
        recoveredBlock104Step = 147 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) formula.
            recoveredBlock104PC := 149.
        ].
        recoveredBlock104Step = 149 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) isIdentityCompliant.
            recoveredBlock104PC := 151.
        ].
        recoveredBlock104Step = 151 ifTrue: [
            (recoveredBlock104Stack1) ifTrue: [recoveredBlock104PC := 154] ifFalse: [recoveredBlock104PC := 166].
        ].
        recoveredBlock104Step = 154 ifTrue: [
            recoveredBlock104Stack1 := self.
            recoveredBlock104PC := 155.
        ].
        recoveredBlock104Step = 155 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) class.
            recoveredBlock104PC := 157.
        ].
        recoveredBlock104Step = 157 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) mdlRealType.
            recoveredBlock104PC := 159.
        ].
        recoveredBlock104Step = 159 ifTrue: [
            recoveredBlock104Local1 := recoveredBlock104Stack1.
            recoveredBlock104PC := 162.
        ].
        recoveredBlock104Step = 162 ifTrue: [
            recoveredBlock104PC := 176.
        ].
        recoveredBlock104Step = 166 ifTrue: [
            recoveredBlock104Stack1 := recoveredArg1.
            recoveredBlock104PC := 169.
        ].
        recoveredBlock104Step = 169 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) mdlClass.
            recoveredBlock104PC := 171.
        ].
        recoveredBlock104Step = 171 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) mdlCopy.
            recoveredBlock104PC := 173.
        ].
        recoveredBlock104Step = 173 ifTrue: [
            recoveredBlock104Local1 := recoveredBlock104Stack1.
            recoveredBlock104PC := 176.
        ].
        recoveredBlock104Step = 176 ifTrue: [
            recoveredBlock104Stack1 := recoveredBlock104Arg1.
            recoveredBlock104PC := 179.
        ].
        recoveredBlock104Step = 179 ifTrue: [
            recoveredBlock104Stack2 := recoveredArg2.
            recoveredBlock104PC := 182.
        ].
        recoveredBlock104Step = 182 ifTrue: [
            recoveredBlock104Stack3 := self.
            recoveredBlock104PC := 183.
        ].
        recoveredBlock104Step = 183 ifTrue: [
            recoveredBlock104Stack4 := recoveredBlock104Local2.
            recoveredBlock104PC := 186.
        ].
        recoveredBlock104Step = 186 ifTrue: [
            recoveredBlock104Stack3 := (recoveredBlock104Stack3) keyForId: (recoveredBlock104Stack4).
            recoveredBlock104PC := 188.
        ].
        recoveredBlock104Step = 188 ifTrue: [
            recoveredBlock104Stack4 := [
    | recoveredBlock104Block188Stack0 recoveredBlock104Block188Stack1 recoveredBlock104Block188Stack2 recoveredBlock104Block188Stack3 recoveredBlock104Block188Stack4 recoveredBlock104Block188Stack5 recoveredBlock104Block188PC recoveredBlock104Block188Step recoveredBlock104Block188Done recoveredBlock104Block188Result |
    recoveredBlock104Block188Stack0 := self.
    recoveredBlock104Block188PC := 194.
    recoveredBlock104Block188Done := false.
    [recoveredBlock104Block188Done not] whileTrue: [
        recoveredBlock104Block188Step := recoveredBlock104Block188PC.
        recoveredBlock104Block188Step = 194 ifTrue: [
            recoveredBlock104Block188Stack1 := recoveredBlock104Local2.
            recoveredBlock104Block188PC := 197.
        ].
        recoveredBlock104Block188Step = 197 ifTrue: [
            recoveredBlock104Block188Stack2 := recoveredLocal2.
            recoveredBlock104Block188PC := 200.
        ].
        recoveredBlock104Block188Step = 200 ifTrue: [
            recoveredBlock104Block188Stack2 := (recoveredBlock104Block188Stack2) + (1).
            recoveredBlock104Block188PC := 201.
        ].
        recoveredBlock104Block188Step = 201 ifTrue: [
            recoveredBlock104Block188Stack3 := recoveredBlock104Block188Stack2.
            recoveredBlock104Block188PC := 202.
        ].
        recoveredBlock104Block188Step = 202 ifTrue: [
            recoveredLocal2 := recoveredBlock104Block188Stack3.
            recoveredBlock104Block188PC := 205.
        ].
        recoveredBlock104Block188Step = 205 ifTrue: [
            recoveredBlock104Block188Stack3 := recoveredBlock104Local1.
            recoveredBlock104Block188PC := 208.
        ].
        recoveredBlock104Block188Step = 208 ifTrue: [
            recoveredBlock104Block188Stack4 := [
    0
].
            recoveredBlock104Block188PC := 210.
        ].
        recoveredBlock104Block188Step = 210 ifTrue: [
            recoveredBlock104Block188PC := 217.
        ].
        recoveredBlock104Block188Step = 217 ifTrue: [
            recoveredBlock104Block188Stack0 := (recoveredBlock104Block188Stack0) classVarDecl: (recoveredBlock104Block188Stack1) position: (recoveredBlock104Block188Stack2) class: (recoveredBlock104Block188Stack3) init: (recoveredBlock104Block188Stack4).
            recoveredBlock104Block188PC := 220.
        ].
        recoveredBlock104Block188Step = 220 ifTrue: [
            recoveredBlock104Block188Result := recoveredBlock104Block188Stack0.
            recoveredBlock104Block188Done := true.
        ].
    ].
    recoveredBlock104Block188Result
].
            recoveredBlock104PC := 221.
        ].
        recoveredBlock104Step = 221 ifTrue: [
            recoveredBlock104Stack2 := (recoveredBlock104Stack2) lookup: (recoveredBlock104Stack3) ifFail: (recoveredBlock104Stack4).
            recoveredBlock104PC := 223.
        ].
        recoveredBlock104Step = 223 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) dtVariable: (recoveredBlock104Stack2).
            recoveredBlock104PC := 225.
        ].
        recoveredBlock104Step = 225 ifTrue: [
            recoveredBlock104Stack2 := nil.
            recoveredBlock104PC := 226.
        ].
        recoveredBlock104Step = 226 ifTrue: [
            recoveredBlock104Stack3 := recoveredBlock104Stack2.
            recoveredBlock104PC := 227.
        ].
        recoveredBlock104Step = 227 ifTrue: [
            recoveredBlock104Local2 := recoveredBlock104Stack3.
            recoveredBlock104PC := 230.
        ].
        recoveredBlock104Step = 230 ifTrue: [
            recoveredBlock104Local1 := recoveredBlock104Stack2.
            recoveredBlock104PC := 233.
        ].
        recoveredBlock104Step = 233 ifTrue: [
            recoveredBlock104Result := recoveredBlock104Stack1.
            recoveredBlock104Done := true.
        ].
    ].
    recoveredBlock104Result
].
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a10ec; bytecode file offset 0xe9da24"
!SGMdDeclBuilder methodsFor: 'recovered'!
enumDecl: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) checkEnumeratedTypeForReservedName: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumerationMap.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25Stack5 recoveredBlock25Stack6 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) enumeratorName.
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 38.
        ].
        recoveredBlock25Step = 38 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) source.
            recoveredBlock25PC := 40.
        ].
        recoveredBlock25Step = 40 ifTrue: [
            (recoveredBlock25Stack0) checkForTempName: (recoveredBlock25Stack1) source: (recoveredBlock25Stack2).
            recoveredBlock25PC := 42.
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25Stack0 := recoveredBlock25Arg1.
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) enumeratorCode.
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            recoveredBlock25Stack1 := -2147483648.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) < (recoveredBlock25Stack1).
            recoveredBlock25PC := 50.
        ].
        recoveredBlock25Step = 50 ifTrue: [
            (recoveredBlock25Stack0) ifTrue: [recoveredBlock25PC := 66] ifFalse: [recoveredBlock25PC := 54].
        ].
        recoveredBlock25Step = 54 ifTrue: [
            recoveredBlock25Stack0 := recoveredBlock25Arg1.
            recoveredBlock25PC := 57.
        ].
        recoveredBlock25Step = 57 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) enumeratorCode.
            recoveredBlock25PC := 59.
        ].
        recoveredBlock25Step = 59 ifTrue: [
            recoveredBlock25Stack1 := 4294967295.
            recoveredBlock25PC := 61.
        ].
        recoveredBlock25Step = 61 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) > (recoveredBlock25Stack1).
            recoveredBlock25PC := 62.
        ].
        recoveredBlock25Step = 62 ifTrue: [
            (recoveredBlock25Stack0) ifTrue: [recoveredBlock25PC := 66] ifFalse: [recoveredBlock25PC := 91].
        ].
        recoveredBlock25Step = 66 ifTrue: [
            recoveredBlock25Stack0 := self.
            recoveredBlock25PC := 67.
        ].
        recoveredBlock25Step = 67 ifTrue: [
            recoveredBlock25Stack1 := 1286.
            recoveredBlock25PC := 70.
        ].
        recoveredBlock25Step = 70 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 73.
        ].
        recoveredBlock25Step = 73 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) enumeratorCode.
            recoveredBlock25PC := 75.
        ].
        recoveredBlock25Step = 75 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 78.
        ].
        recoveredBlock25Step = 78 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) enumeratorName.
            recoveredBlock25PC := 80.
        ].
        recoveredBlock25Step = 80 ifTrue: [
            recoveredBlock25Stack4 := recoveredArg1.
            recoveredBlock25PC := 83.
        ].
        recoveredBlock25Step = 83 ifTrue: [
            recoveredBlock25Stack4 := (recoveredBlock25Stack4) errLabel.
            recoveredBlock25PC := 85.
        ].
        recoveredBlock25Step = 85 ifTrue: [
            recoveredBlock25Stack5 := self.
            recoveredBlock25PC := 86.
        ].
        recoveredBlock25Step = 86 ifTrue: [
            recoveredBlock25Stack5 := (recoveredBlock25Stack5) source.
            recoveredBlock25PC := 88.
        ].
        recoveredBlock25Step = 88 ifTrue: [
            (recoveredBlock25Stack0) mdlSemErrNo: (recoveredBlock25Stack1) with: (recoveredBlock25Stack2) with: (recoveredBlock25Stack3) with: (recoveredBlock25Stack4) source: (recoveredBlock25Stack5).
            recoveredBlock25PC := 91.
        ].
        recoveredBlock25Step = 91 ifTrue: [
            recoveredBlock25Stack0 := recoveredLocal3.
            recoveredBlock25PC := 94.
        ].
        recoveredBlock25Step = 94 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 97.
        ].
        recoveredBlock25Step = 97 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) enumeratorName.
            recoveredBlock25PC := 99.
        ].
        recoveredBlock25Step = 99 ifTrue: [
            recoveredBlock25Stack2 := [].
            recoveredBlock25PC := 101.
        ].
        recoveredBlock25Step = 101 ifTrue: [
            recoveredBlock25Stack3 := [:recoveredBlock25Block101Arg1 | 
    | recoveredBlock25Block101Value0 recoveredBlock25Block101Value1 recoveredBlock25Block101Value2 recoveredBlock25Block101Value3 recoveredBlock25Block101Value4 recoveredBlock25Block101Value5 |
    recoveredBlock25Block101Value0 := recoveredBlock25Arg1.
    recoveredBlock25Block101Value1 := (recoveredBlock25Block101Value0) enumeratorName.
    recoveredBlock25Block101Value2 := recoveredArg1.
    recoveredBlock25Block101Value3 := (recoveredBlock25Block101Value2) errLabel.
    recoveredBlock25Block101Value4 := (self) source.
    recoveredBlock25Block101Value5 := (self) mdlSemErrNo: (1290) with: ('labels') with: (recoveredBlock25Block101Value1) with: (recoveredBlock25Block101Value3) source: (recoveredBlock25Block101Value4).
    recoveredBlock25Block101Value5
].
            recoveredBlock25PC := 131.
        ].
        recoveredBlock25Step = 131 ifTrue: [
            (recoveredBlock25Stack0) at: (recoveredBlock25Stack1) ifAbsentPut: (recoveredBlock25Stack2) ifPresent: (recoveredBlock25Stack3).
            recoveredBlock25PC := 134.
        ].
        recoveredBlock25Step = 134 ifTrue: [
            recoveredBlock25Stack0 := recoveredLocal2.
            recoveredBlock25PC := 137.
        ].
        recoveredBlock25Step = 137 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 140.
        ].
        recoveredBlock25Step = 140 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) enumeratorCode.
            recoveredBlock25PC := 142.
        ].
        recoveredBlock25Step = 142 ifTrue: [
            recoveredBlock25Stack2 := [].
            recoveredBlock25PC := 144.
        ].
        recoveredBlock25Step = 144 ifTrue: [
            recoveredBlock25Stack3 := [:recoveredBlock25Block144Arg1 | 
    | recoveredBlock25Block144Value0 recoveredBlock25Block144Value1 recoveredBlock25Block144Value2 recoveredBlock25Block144Value3 recoveredBlock25Block144Value4 recoveredBlock25Block144Value5 |
    recoveredBlock25Block144Value0 := recoveredBlock25Arg1.
    recoveredBlock25Block144Value1 := (recoveredBlock25Block144Value0) enumeratorCode.
    recoveredBlock25Block144Value2 := recoveredArg1.
    recoveredBlock25Block144Value3 := (recoveredBlock25Block144Value2) errLabel.
    recoveredBlock25Block144Value4 := (self) source.
    recoveredBlock25Block144Value5 := (self) mdlSemErrNo: (1290) with: ('values') with: (recoveredBlock25Block144Value1) with: (recoveredBlock25Block144Value3) source: (recoveredBlock25Block144Value4).
    recoveredBlock25Block144Value5
].
            recoveredBlock25PC := 173.
        ].
        recoveredBlock25Step = 173 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) at: (recoveredBlock25Stack1) ifAbsentPut: (recoveredBlock25Stack2) ifPresent: (recoveredBlock25Stack3).
            recoveredBlock25PC := 176.
        ].
        recoveredBlock25Step = 176 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack0.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) enumerationMap.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) enumeratorCode.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := (recoveredStack2) enumerationMap.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := (recoveredStack2) enumeratorCode.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) integerType.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 237] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := 1289.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := (recoveredStack2) enumeratorCode.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := (recoveredStack3) enumeratorCode.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack5 := (recoveredStack5) source.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := (recoveredStack0) popClassOptimizations.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := (recoveredStack0) definesForEnumValues.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 252] ifFalse: [recoveredPC := 257].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack0) cgAttrDefinesForEnum.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := (recoveredStack0) definesForEnumValues.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 266] ifFalse: [recoveredPC := 271].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack0) cgAttrExpandEnumDefines.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := SGMdEnumInterface.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack2) mdlClassType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack2) optimizations: (recoveredStack3).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack0) classInterface: (recoveredStack1).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a3114; bytecode file offset 0xe9fa50"
!SGMdDeclBuilder methodsFor: 'recovered'!
resolveMappings: recoveredArg1 mdlInterface: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClassType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) classType: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := (recoveredBlock19Value0) fromVarDeclPath.
    recoveredBlock19Value2 := recoveredBlock19Arg1.
    recoveredBlock19Value3 := (recoveredBlock19Value2) source.
    recoveredBlock19Value4 := [
    | recoveredBlock19Block36Value0 |
    recoveredBlock19Block36Value0 := recoveredBlock19Arg1.
    (recoveredBlock19Block36Value0) markInvalid.
    nil
].
    recoveredBlock19Value5 := (self) lookupQualifiedName: (recoveredBlock19Value1) source: (recoveredBlock19Value3) ifFail: (recoveredBlock19Value4).
    recoveredBlock19Value6 := [:recoveredBlock19Block52Arg1 | 
    | recoveredBlock19Block52Local1 recoveredBlock19Block52Local2 recoveredBlock19Block52Local3 recoveredBlock19Block52Local4 recoveredBlock19Block52Stack0 recoveredBlock19Block52Stack1 recoveredBlock19Block52Stack2 recoveredBlock19Block52Stack3 recoveredBlock19Block52Stack4 recoveredBlock19Block52Stack5 recoveredBlock19Block52PC recoveredBlock19Block52Step recoveredBlock19Block52Done recoveredBlock19Block52Result |
    recoveredBlock19Block52Stack0 := self.
    recoveredBlock19Block52PC := 58.
    recoveredBlock19Block52Done := false.
    [recoveredBlock19Block52Done not] whileTrue: [
        recoveredBlock19Block52Step := recoveredBlock19Block52PC.
        recoveredBlock19Block52Step = 58 ifTrue: [
            recoveredBlock19Block52Stack1 := recoveredBlock19Block52Arg1.
            recoveredBlock19Block52PC := 61.
        ].
        recoveredBlock19Block52Step = 61 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) removeFirst.
            recoveredBlock19Block52PC := 63.
        ].
        recoveredBlock19Block52Step = 63 ifTrue: [
            recoveredBlock19Block52Local4 := recoveredBlock19Block52Stack1.
            recoveredBlock19Block52PC := 66.
        ].
        recoveredBlock19Block52Step = 66 ifTrue: [
            recoveredBlock19Block52Stack1 := recoveredBlock19Block52Local4.
            recoveredBlock19Block52PC := 69.
        ].
        recoveredBlock19Block52Step = 69 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) isMdlInstVarDecl.
            recoveredBlock19Block52PC := 71.
        ].
        recoveredBlock19Block52Step = 71 ifTrue: [
            (recoveredBlock19Block52Stack1) ifTrue: [recoveredBlock19Block52PC := 74] ifFalse: [recoveredBlock19Block52PC := 90].
        ].
        recoveredBlock19Block52Step = 74 ifTrue: [
            recoveredBlock19Block52Stack1 := 'self.'.
            recoveredBlock19Block52PC := 76.
        ].
        recoveredBlock19Block52Step = 76 ifTrue: [
            recoveredBlock19Block52Stack2 := recoveredBlock19Block52Local4.
            recoveredBlock19Block52PC := 79.
        ].
        recoveredBlock19Block52Step = 79 ifTrue: [
            recoveredBlock19Block52Stack2 := (recoveredBlock19Block52Stack2) mdlLabel.
            recoveredBlock19Block52PC := 81.
        ].
        recoveredBlock19Block52Step = 81 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) , (recoveredBlock19Block52Stack2).
            recoveredBlock19Block52PC := 83.
        ].
        recoveredBlock19Block52Step = 83 ifTrue: [
            recoveredLocal1 := recoveredBlock19Block52Stack1.
            recoveredBlock19Block52PC := 86.
        ].
        recoveredBlock19Block52Step = 86 ifTrue: [
            recoveredBlock19Block52PC := 98.
        ].
        recoveredBlock19Block52Step = 90 ifTrue: [
            recoveredBlock19Block52Stack1 := recoveredBlock19Block52Local4.
            recoveredBlock19Block52PC := 93.
        ].
        recoveredBlock19Block52Step = 93 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) mdlLabel.
            recoveredBlock19Block52PC := 95.
        ].
        recoveredBlock19Block52Step = 95 ifTrue: [
            recoveredLocal1 := recoveredBlock19Block52Stack1.
            recoveredBlock19Block52PC := 98.
        ].
        recoveredBlock19Block52Step = 98 ifTrue: [
            recoveredBlock19Block52PC := 127.
        ].
        recoveredBlock19Block52Step = 102 ifTrue: [
            recoveredBlock19Block52Stack1 := recoveredBlock19Block52Arg1.
            recoveredBlock19Block52PC := 105.
        ].
        recoveredBlock19Block52Step = 105 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) removeFirst.
            recoveredBlock19Block52PC := 107.
        ].
        recoveredBlock19Block52Step = 107 ifTrue: [
            recoveredBlock19Block52Local4 := recoveredBlock19Block52Stack1.
            recoveredBlock19Block52PC := 110.
        ].
        recoveredBlock19Block52Step = 110 ifTrue: [
            recoveredBlock19Block52Stack1 := recoveredLocal1.
            recoveredBlock19Block52PC := 113.
        ].
        recoveredBlock19Block52Step = 113 ifTrue: [
            recoveredBlock19Block52Stack2 := '.'.
            recoveredBlock19Block52PC := 115.
        ].
        recoveredBlock19Block52Step = 115 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) , (recoveredBlock19Block52Stack2).
            recoveredBlock19Block52PC := 117.
        ].
        recoveredBlock19Block52Step = 117 ifTrue: [
            recoveredBlock19Block52Stack2 := recoveredBlock19Block52Local4.
            recoveredBlock19Block52PC := 120.
        ].
        recoveredBlock19Block52Step = 120 ifTrue: [
            recoveredBlock19Block52Stack2 := (recoveredBlock19Block52Stack2) mdlLabel.
            recoveredBlock19Block52PC := 122.
        ].
        recoveredBlock19Block52Step = 122 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) , (recoveredBlock19Block52Stack2).
            recoveredBlock19Block52PC := 124.
        ].
        recoveredBlock19Block52Step = 124 ifTrue: [
            recoveredLocal1 := recoveredBlock19Block52Stack1.
            recoveredBlock19Block52PC := 127.
        ].
        recoveredBlock19Block52Step = 127 ifTrue: [
            recoveredBlock19Block52Stack1 := recoveredBlock19Block52Local4.
            recoveredBlock19Block52PC := 130.
        ].
        recoveredBlock19Block52Step = 130 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) isMdlMessage.
            recoveredBlock19Block52PC := 132.
        ].
        recoveredBlock19Block52Step = 132 ifTrue: [
            (recoveredBlock19Block52Stack1) ifTrue: [recoveredBlock19Block52PC := 151] ifFalse: [recoveredBlock19Block52PC := 136].
        ].
        recoveredBlock19Block52Step = 136 ifTrue: [
            recoveredBlock19Block52Stack1 := recoveredBlock19Block52Local4.
            recoveredBlock19Block52PC := 139.
        ].
        recoveredBlock19Block52Step = 139 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) isMdlParameter.
            recoveredBlock19Block52PC := 141.
        ].
        recoveredBlock19Block52Step = 141 ifTrue: [
            (recoveredBlock19Block52Stack1) ifTrue: [recoveredBlock19Block52PC := 151] ifFalse: [recoveredBlock19Block52PC := 144].
        ].
        recoveredBlock19Block52Step = 144 ifTrue: [
            recoveredBlock19Block52Stack1 := recoveredBlock19Block52Arg1.
            recoveredBlock19Block52PC := 147.
        ].
        recoveredBlock19Block52Step = 147 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) isEmpty.
            recoveredBlock19Block52PC := 149.
        ].
        recoveredBlock19Block52Step = 149 ifTrue: [
            (recoveredBlock19Block52Stack1) ifTrue: [recoveredBlock19Block52PC := 151] ifFalse: [recoveredBlock19Block52PC := 102].
        ].
        recoveredBlock19Block52Step = 151 ifTrue: [
            recoveredBlock19Block52Stack1 := recoveredBlock19Block52Local4.
            recoveredBlock19Block52PC := 154.
        ].
        recoveredBlock19Block52Step = 154 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) mdlClass.
            recoveredBlock19Block52PC := 156.
        ].
        recoveredBlock19Block52Step = 156 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) isMdlRecordType.
            recoveredBlock19Block52PC := 158.
        ].
        recoveredBlock19Block52Step = 158 ifTrue: [
            (recoveredBlock19Block52Stack1) ifTrue: [recoveredBlock19Block52PC := 162] ifFalse: [recoveredBlock19Block52PC := 264].
        ].
        recoveredBlock19Block52Step = 162 ifTrue: [
            recoveredBlock19Block52Stack1 := recoveredBlock19Block52Arg1.
            recoveredBlock19Block52PC := 165.
        ].
        recoveredBlock19Block52Step = 165 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) notEmpty.
            recoveredBlock19Block52PC := 167.
        ].
        recoveredBlock19Block52Step = 167 ifTrue: [
            (recoveredBlock19Block52Stack1) ifTrue: [recoveredBlock19Block52PC := 170] ifFalse: [recoveredBlock19Block52PC := 264].
        ].
        recoveredBlock19Block52Step = 170 ifTrue: [
            recoveredBlock19Block52Stack1 := recoveredLocal2.
            recoveredBlock19Block52PC := 173.
        ].
        recoveredBlock19Block52Step = 173 ifTrue: [
            recoveredBlock19Block52Stack2 := recoveredBlock19Block52Local4.
            recoveredBlock19Block52PC := 176.
        ].
        recoveredBlock19Block52Step = 176 ifTrue: [
            recoveredBlock19Block52Stack3 := [
    | recoveredBlock19Block52Block176Value0 recoveredBlock19Block52Block176Value1 recoveredBlock19Block52Block176Value2 recoveredBlock19Block52Block176Value3 recoveredBlock19Block52Block176Value4 recoveredBlock19Block52Block176Value5 recoveredBlock19Block52Block176Value6 recoveredBlock19Block52Block176Value7 recoveredBlock19Block52Block176Value8 |
    recoveredBlock19Block52Block176Value0 := recoveredLocal1.
    recoveredBlock19Block52Block176Value1 := recoveredBlock19Block52Local4.
    recoveredBlock19Block52Block176Value2 := (recoveredBlock19Block52Block176Value1) mdlClass.
    recoveredBlock19Block52Block176Value3 := (self) lookupClassInterface: (recoveredBlock19Block52Block176Value2).
    recoveredBlock19Block52Block176Value4 := (self) createRecordFieldMapping: (recoveredBlock19Block52Block176Value0) mdlInterface: (recoveredBlock19Block52Block176Value3).
    recoveredBlock19Block52Block176Value5 := recoveredBlock19Block52Block176Value4.
    recoveredBlock19Block52Block176Value6 := Array.
    recoveredBlock19Block52Block176Value7 := recoveredBlock19Block52Local4.
    recoveredBlock19Block52Block176Value8 := (recoveredBlock19Block52Block176Value6) with: (recoveredBlock19Block52Block176Value7).
    (recoveredBlock19Block52Block176Value5) fromVarDeclList: (recoveredBlock19Block52Block176Value8).
    recoveredBlock19Block52Block176Value4
].
            recoveredBlock19Block52PC := 206.
        ].
        recoveredBlock19Block52Step = 206 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) at: (recoveredBlock19Block52Stack2) ifAbsentPut: (recoveredBlock19Block52Stack3).
            recoveredBlock19Block52PC := 208.
        ].
        recoveredBlock19Block52Step = 208 ifTrue: [
            recoveredBlock19Block52Local3 := recoveredBlock19Block52Stack1.
            recoveredBlock19Block52PC := 211.
        ].
        recoveredBlock19Block52Step = 211 ifTrue: [
            recoveredBlock19Block52Stack1 := recoveredBlock19Block52Arg1.
            recoveredBlock19Block52PC := 214.
        ].
        recoveredBlock19Block52Step = 214 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) asOrderedCollection.
            recoveredBlock19Block52PC := 216.
        ].
        recoveredBlock19Block52Step = 216 ifTrue: [
            recoveredBlock19Block52Local1 := recoveredBlock19Block52Stack1.
            recoveredBlock19Block52PC := 219.
        ].
        recoveredBlock19Block52Step = 219 ifTrue: [
            recoveredBlock19Block52Stack1 := recoveredBlock19Block52Arg1.
            recoveredBlock19Block52PC := 222.
        ].
        recoveredBlock19Block52Step = 222 ifTrue: [
            recoveredBlock19Block52Stack2 := recoveredBlock19Block52Local4.
            recoveredBlock19Block52PC := 225.
        ].
        recoveredBlock19Block52Step = 225 ifTrue: [
            (recoveredBlock19Block52Stack1) addFirst: (recoveredBlock19Block52Stack2).
            recoveredBlock19Block52PC := 227.
        ].
        recoveredBlock19Block52Step = 227 ifTrue: [
            recoveredBlock19Block52Stack1 := recoveredBlock19Arg1.
            recoveredBlock19Block52PC := 230.
        ].
        recoveredBlock19Block52Step = 230 ifTrue: [
            recoveredBlock19Block52Stack2 := recoveredBlock19Block52Arg1.
            recoveredBlock19Block52PC := 233.
        ].
        recoveredBlock19Block52Step = 233 ifTrue: [
            (recoveredBlock19Block52Stack1) fromVarDeclList: (recoveredBlock19Block52Stack2).
            recoveredBlock19Block52PC := 235.
        ].
        recoveredBlock19Block52Step = 235 ifTrue: [
            recoveredBlock19Block52Stack1 := self.
            recoveredBlock19Block52PC := 236.
        ].
        recoveredBlock19Block52Step = 236 ifTrue: [
            recoveredBlock19Block52Stack2 := recoveredBlock19Arg1.
            recoveredBlock19Block52PC := 239.
        ].
        recoveredBlock19Block52Step = 239 ifTrue: [
            recoveredBlock19Block52Stack3 := recoveredBlock19Block52Local1.
            recoveredBlock19Block52PC := 242.
        ].
        recoveredBlock19Block52Step = 242 ifTrue: [
            recoveredBlock19Block52Stack4 := recoveredBlock19Block52Local3.
            recoveredBlock19Block52PC := 245.
        ].
        recoveredBlock19Block52Step = 245 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) addFieldMapping: (recoveredBlock19Block52Stack2) accessChain: (recoveredBlock19Block52Stack3) fieldMapping: (recoveredBlock19Block52Stack4).
            recoveredBlock19Block52PC := 248.
        ].
        recoveredBlock19Block52Step = 248 ifTrue: [
            recoveredBlock19Block52Stack2 := nil.
            recoveredBlock19Block52PC := 249.
        ].
        recoveredBlock19Block52Step = 249 ifTrue: [
            recoveredBlock19Block52Stack3 := recoveredBlock19Block52Stack2.
            recoveredBlock19Block52PC := 250.
        ].
        recoveredBlock19Block52Step = 250 ifTrue: [
            recoveredBlock19Block52Local3 := recoveredBlock19Block52Stack3.
            recoveredBlock19Block52PC := 253.
        ].
        recoveredBlock19Block52Step = 253 ifTrue: [
            recoveredBlock19Block52Stack3 := recoveredBlock19Block52Stack2.
            recoveredBlock19Block52PC := 254.
        ].
        recoveredBlock19Block52Step = 254 ifTrue: [
            recoveredBlock19Block52Local2 := recoveredBlock19Block52Stack3.
            recoveredBlock19Block52PC := 257.
        ].
        recoveredBlock19Block52Step = 257 ifTrue: [
            recoveredBlock19Block52Local1 := recoveredBlock19Block52Stack2.
            recoveredBlock19Block52PC := 260.
        ].
        recoveredBlock19Block52Step = 260 ifTrue: [
            recoveredBlock19Block52PC := 272.
        ].
        recoveredBlock19Block52Step = 264 ifTrue: [
            recoveredBlock19Block52Stack1 := recoveredBlock19Block52Local4.
            recoveredBlock19Block52PC := 267.
        ].
        recoveredBlock19Block52Step = 267 ifTrue: [
            recoveredBlock19Block52Stack2 := recoveredBlock19Arg1.
            recoveredBlock19Block52PC := 270.
        ].
        recoveredBlock19Block52Step = 270 ifTrue: [
            recoveredBlock19Block52Stack1 := (recoveredBlock19Block52Stack1) addMapping: (recoveredBlock19Block52Stack2).
            recoveredBlock19Block52PC := 272.
        ].
        recoveredBlock19Block52Step = 272 ifTrue: [
            recoveredBlock19Block52Result := recoveredBlock19Block52Stack1.
            recoveredBlock19Block52Done := true.
        ].
    ].
    recoveredBlock19Block52Result
].
    recoveredBlock19Value7 := (recoveredBlock19Value5) ifNotNil: (recoveredBlock19Value6).
    recoveredBlock19Value7
].
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := [:block28115924Arg1 :block28115924Arg2 | 
    | block28115924Value0 block28115924Value1 block28115924Value2 |
    block28115924Value0 := block28115924Arg1.
    block28115924Value1 := block28115924Arg2.
    block28115924Value2 := (block28115924Value0) addMapping: (block28115924Value1).
    block28115924Value2
].
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2061d654; bytecode file offset 0xf19ffc"
!SGMdDeclBuilder methodsFor: 'recovered'!
declareAccessMethods
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasInstanceVars.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 519].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceVars.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isMdlConstant.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 26] ifFalse: [recoveredBlock13PC := 64].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) mdlClass.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isMdlPrimitiveBaseClassType.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 34] ifFalse: [recoveredBlock13PC := 64].
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) mdlClass.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isMdlArithmetic.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 42] ifFalse: [recoveredBlock13PC := 56].
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) mdlClass.
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) mdlNativeInitValue.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) asInterval.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) createWithPhysInterval: (recoveredBlock13Stack2).
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) mdlClass.
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 60 ifTrue: [
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 65.
        ].
        recoveredBlock13Step = 65 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) mdlClass.
            recoveredBlock13PC := 67.
        ].
        recoveredBlock13Step = 67 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) checkForDirectGetAccessMethod: (recoveredBlock13Stack1).
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 74] ifFalse: [recoveredBlock13PC := 236].
        ].
        recoveredBlock13Step = 74 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 75.
        ].
        recoveredBlock13Step = 75 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) classInterface.
            recoveredBlock13PC := 76.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) optimizations.
            recoveredBlock13PC := 78.
        ].
        recoveredBlock13Step = 78 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isCgOptimizeMethodCalls.
            recoveredBlock13PC := 80.
        ].
        recoveredBlock13Step = 80 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 87] ifFalse: [recoveredBlock13PC := 84].
        ].
        recoveredBlock13Step = 84 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 85.
        ].
        recoveredBlock13Step = 85 ifTrue: [
            (recoveredBlock13Stack0) noOptimizeMethodCall.
            recoveredBlock13PC := 87.
        ].
        recoveredBlock13Step = 87 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 88.
        ].
        recoveredBlock13Step = 88 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 89.
        ].
        recoveredBlock13Step = 89 ifTrue: [
            recoveredBlock13Stack2 := nil.
            recoveredBlock13PC := 90.
        ].
        recoveredBlock13Step = 90 ifTrue: [
            (recoveredBlock13Stack1) source: (recoveredBlock13Stack2).
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 93.
        ].
        recoveredBlock13Step = 93 ifTrue: [
            (recoveredBlock13Stack1) public.
            recoveredBlock13PC := 95.
        ].
        recoveredBlock13Step = 95 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 96.
        ].
        recoveredBlock13Step = 96 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) attributes.
            recoveredBlock13PC := 98.
        ].
        recoveredBlock13Step = 98 ifTrue: [
            (recoveredBlock13Stack0) directGetAccessAttributes: (recoveredBlock13Stack1).
            recoveredBlock13PC := 100.
        ].
        recoveredBlock13Step = 100 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 101.
        ].
        recoveredBlock13Step = 101 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) mdlClass.
            recoveredBlock13PC := 103.
        ].
        recoveredBlock13Step = 103 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isMdlTypeNeedsReference.
            recoveredBlock13PC := 105.
        ].
        recoveredBlock13Step = 105 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 108] ifFalse: [recoveredBlock13PC := 214].
        ].
        recoveredBlock13Step = 108 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 109.
        ].
        recoveredBlock13Step = 109 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isMdlReference.
            recoveredBlock13PC := 111.
        ].
        recoveredBlock13Step = 111 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 114] ifFalse: [recoveredBlock13PC := 152].
        ].
        recoveredBlock13Step = 114 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 115.
        ].
        recoveredBlock13Step = 115 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) attributes.
            recoveredBlock13PC := 117.
        ].
        recoveredBlock13Step = 117 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isCgAttrReadForReferencedObject.
            recoveredBlock13PC := 119.
        ].
        recoveredBlock13Step = 119 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 122] ifFalse: [recoveredBlock13PC := 128].
        ].
        recoveredBlock13Step = 122 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 123.
        ].
        recoveredBlock13Step = 123 ifTrue: [
            (recoveredBlock13Stack0) read.
            recoveredBlock13PC := 125.
        ].
        recoveredBlock13Step = 125 ifTrue: [
            recoveredBlock13PC := 131.
        ].
        recoveredBlock13Step = 128 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 129.
        ].
        recoveredBlock13Step = 129 ifTrue: [
            (recoveredBlock13Stack0) noRead.
            recoveredBlock13PC := 131.
        ].
        recoveredBlock13Step = 131 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 132.
        ].
        recoveredBlock13Step = 132 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) attributes.
            recoveredBlock13PC := 134.
        ].
        recoveredBlock13Step = 134 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isCgAttrWriteForReferencedObject.
            recoveredBlock13PC := 136.
        ].
        recoveredBlock13Step = 136 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 140] ifFalse: [recoveredBlock13PC := 146].
        ].
        recoveredBlock13Step = 140 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 141.
        ].
        recoveredBlock13Step = 141 ifTrue: [
            (recoveredBlock13Stack0) write.
            recoveredBlock13PC := 143.
        ].
        recoveredBlock13Step = 143 ifTrue: [
            recoveredBlock13PC := 149.
        ].
        recoveredBlock13Step = 146 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 147.
        ].
        recoveredBlock13Step = 147 ifTrue: [
            (recoveredBlock13Stack0) noWrite.
            recoveredBlock13PC := 149.
        ].
        recoveredBlock13Step = 149 ifTrue: [
            recoveredBlock13PC := 183.
        ].
        recoveredBlock13Step = 152 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 153.
        ].
        recoveredBlock13Step = 153 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isMdlInternalRead.
            recoveredBlock13PC := 155.
        ].
        recoveredBlock13Step = 155 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 158] ifFalse: [recoveredBlock13PC := 164].
        ].
        recoveredBlock13Step = 158 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 159.
        ].
        recoveredBlock13Step = 159 ifTrue: [
            (recoveredBlock13Stack0) read.
            recoveredBlock13PC := 161.
        ].
        recoveredBlock13Step = 161 ifTrue: [
            recoveredBlock13PC := 167.
        ].
        recoveredBlock13Step = 164 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 165.
        ].
        recoveredBlock13Step = 165 ifTrue: [
            (recoveredBlock13Stack0) noRead.
            recoveredBlock13PC := 167.
        ].
        recoveredBlock13Step = 167 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 168.
        ].
        recoveredBlock13Step = 168 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isMdlInternalWrite.
            recoveredBlock13PC := 170.
        ].
        recoveredBlock13Step = 170 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 174] ifFalse: [recoveredBlock13PC := 180].
        ].
        recoveredBlock13Step = 174 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 175.
        ].
        recoveredBlock13Step = 175 ifTrue: [
            (recoveredBlock13Stack0) write.
            recoveredBlock13PC := 177.
        ].
        recoveredBlock13Step = 177 ifTrue: [
            recoveredBlock13PC := 183.
        ].
        recoveredBlock13Step = 180 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 181.
        ].
        recoveredBlock13Step = 181 ifTrue: [
            (recoveredBlock13Stack0) noWrite.
            recoveredBlock13PC := 183.
        ].
        recoveredBlock13Step = 183 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local2.
            recoveredBlock13PC := 184.
        ].
        recoveredBlock13Step = 184 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isCgReferenceType.
            recoveredBlock13PC := 186.
        ].
        recoveredBlock13Step = 186 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 208] ifFalse: [recoveredBlock13PC := 190].
        ].
        recoveredBlock13Step = 190 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local2.
            recoveredBlock13PC := 191.
        ].
        recoveredBlock13Step = 191 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 192.
        ].
        recoveredBlock13Step = 192 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isMdlInternalRead.
            recoveredBlock13PC := 194.
        ].
        recoveredBlock13Step = 194 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 195.
        ].
        recoveredBlock13Step = 195 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isMdlInternalWrite.
            recoveredBlock13PC := 197.
        ].
        recoveredBlock13Step = 197 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 198.
        ].
        recoveredBlock13Step = 198 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) attributes.
            recoveredBlock13PC := 200.
        ].
        recoveredBlock13Step = 200 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) memoryClass.
            recoveredBlock13PC := 202.
        ].
        recoveredBlock13Step = 202 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) asCgReferenceRead: (recoveredBlock13Stack1) write: (recoveredBlock13Stack2) memClass: (recoveredBlock13Stack3).
            recoveredBlock13PC := 205.
        ].
        recoveredBlock13Step = 205 ifTrue: [
            recoveredBlock13PC := 209.
        ].
        recoveredBlock13Step = 208 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local2.
            recoveredBlock13PC := 209.
        ].
        recoveredBlock13Step = 209 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 210.
        ].
        recoveredBlock13Step = 210 ifTrue: [
            recoveredBlock13PC := 216.
        ].
        recoveredBlock13Step = 214 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local2.
            recoveredBlock13PC := 215.
        ].
        recoveredBlock13Step = 215 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 216.
        ].
        recoveredBlock13Step = 216 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 217.
        ].
        recoveredBlock13Step = 217 ifTrue: [
            (recoveredBlock13Stack0) setSideEffectFree.
            recoveredBlock13PC := 219.
        ].
        recoveredBlock13Step = 219 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 220.
        ].
        recoveredBlock13Step = 220 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 221.
        ].
        recoveredBlock13Step = 221 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 222.
        ].
        recoveredBlock13Step = 222 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 223.
        ].
        recoveredBlock13Step = 223 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) getAccessMethodName: (recoveredBlock13Stack3).
            recoveredBlock13PC := 225.
        ].
        recoveredBlock13Step = 225 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 226.
        ].
        recoveredBlock13Step = 226 ifTrue: [
            (recoveredBlock13Stack1) methodDecl: (recoveredBlock13Stack2) class: (recoveredBlock13Stack3).
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 229.
        ].
        recoveredBlock13Step = 229 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 230.
        ].
        recoveredBlock13Step = 230 ifTrue: [
            (recoveredBlock13Stack1) directAccessOrigin: (recoveredBlock13Stack2).
            recoveredBlock13PC := 232.
        ].
        recoveredBlock13Step = 232 ifTrue: [
            (recoveredBlock13Stack0) endMethodDecl.
            recoveredBlock13PC := 234.
        ].
        recoveredBlock13Step = 234 ifTrue: [
            recoveredBlock13Stack0 := nil.
            recoveredBlock13PC := 235.
        ].
        recoveredBlock13Step = 235 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 236.
        ].
        recoveredBlock13Step = 236 ifTrue: [
            recoveredBlock13Stack0 := nil.
            recoveredBlock13PC := 237.
        ].
        recoveredBlock13Step = 237 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 238.
        ].
        recoveredBlock13Step = 238 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 239.
        ].
        recoveredBlock13Step = 239 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) checkForDirectSetAccessMethod: (recoveredBlock13Stack2).
            recoveredBlock13PC := 241.
        ].
        recoveredBlock13Step = 241 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 244] ifFalse: [recoveredBlock13PC := 513].
        ].
        recoveredBlock13Step = 244 ifTrue: [
            recoveredBlock13PC := 245.
        ].
        recoveredBlock13Step = 245 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 246.
        ].
        recoveredBlock13Step = 246 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isMdlConstant.
            recoveredBlock13PC := 247.
        ].
        recoveredBlock13Step = 247 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 250] ifFalse: [recoveredBlock13PC := 258].
        ].
        recoveredBlock13Step = 250 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 251.
        ].
        recoveredBlock13Step = 251 ifTrue: [
            recoveredBlock13Stack1 := 'constant'.
            recoveredBlock13PC := 253.
        ].
        recoveredBlock13Step = 253 ifTrue: [
            recoveredBlock13Stack2 := 'set'.
            recoveredBlock13PC := 255.
        ].
        recoveredBlock13Step = 255 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) mdlSemErrInvalidDefinition: (recoveredBlock13Stack1) ofDirectAccess: (recoveredBlock13Stack2).
            recoveredBlock13PC := 257.
        ].
        recoveredBlock13Step = 257 ifTrue: [
            ^recoveredBlock13Stack0
        ].
        recoveredBlock13Step = 258 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 259.
        ].
        recoveredBlock13Step = 259 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) attributes.
            recoveredBlock13PC := 261.
        ].
        recoveredBlock13Step = 261 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isCgAttrReference.
            recoveredBlock13PC := 263.
        ].
        recoveredBlock13Step = 263 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 300] ifFalse: [recoveredBlock13PC := 266].
        ].
        recoveredBlock13Step = 266 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 267.
        ].
        recoveredBlock13Step = 267 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) mdlClass.
            recoveredBlock13PC := 269.
        ].
        recoveredBlock13Step = 269 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isMdlTypeNeedsReference.
            recoveredBlock13PC := 271.
        ].
        recoveredBlock13Step = 271 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 274] ifFalse: [recoveredBlock13PC := 300].
        ].
        recoveredBlock13Step = 274 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 275.
        ].
        recoveredBlock13Step = 275 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) attributes.
            recoveredBlock13PC := 277.
        ].
        recoveredBlock13Step = 277 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isCgAttrCopySemantics.
            recoveredBlock13PC := 279.
        ].
        recoveredBlock13Step = 279 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 300] ifFalse: [recoveredBlock13PC := 282].
        ].
        recoveredBlock13Step = 282 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 283.
        ].
        recoveredBlock13Step = 283 ifTrue: [
            recoveredBlock13Stack1 := 3000.
            recoveredBlock13PC := 286.
        ].
        recoveredBlock13Step = 286 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 287.
        ].
        recoveredBlock13Step = 287 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) errLabel.
            recoveredBlock13PC := 289.
        ].
        recoveredBlock13Step = 289 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 290.
        ].
        recoveredBlock13Step = 290 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) mdlClass.
            recoveredBlock13PC := 292.
        ].
        recoveredBlock13Step = 292 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) errLabelNonCopyType.
            recoveredBlock13PC := 294.
        ].
        recoveredBlock13Step = 294 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) mdlSemErrNo: (recoveredBlock13Stack1) with: (recoveredBlock13Stack2) with: (recoveredBlock13Stack3).
            recoveredBlock13PC := 297.
        ].
        recoveredBlock13Step = 297 ifTrue: [
            recoveredBlock13PC := 513.
        ].
        recoveredBlock13Step = 300 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 301.
        ].
        recoveredBlock13Step = 301 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) classInterface.
            recoveredBlock13PC := 302.
        ].
        recoveredBlock13Step = 302 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) optimizations.
            recoveredBlock13PC := 304.
        ].
        recoveredBlock13Step = 304 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isCgOptimizeMethodCalls.
            recoveredBlock13PC := 306.
        ].
        recoveredBlock13Step = 306 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 313] ifFalse: [recoveredBlock13PC := 310].
        ].
        recoveredBlock13Step = 310 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 311.
        ].
        recoveredBlock13Step = 311 ifTrue: [
            (recoveredBlock13Stack0) noOptimizeMethodCall.
            recoveredBlock13PC := 313.
        ].
        recoveredBlock13Step = 313 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 314.
        ].
        recoveredBlock13Step = 314 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 315.
        ].
        recoveredBlock13Step = 315 ifTrue: [
            (recoveredBlock13Stack0) source: (recoveredBlock13Stack1).
            recoveredBlock13PC := 317.
        ].
        recoveredBlock13Step = 317 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 318.
        ].
        recoveredBlock13Step = 318 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) attributes.
            recoveredBlock13PC := 320.
        ].
        recoveredBlock13Step = 320 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isCgAttrSetAccess.
            recoveredBlock13PC := 322.
        ].
        recoveredBlock13Step = 322 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 332] ifFalse: [recoveredBlock13PC := 326].
        ].
        recoveredBlock13Step = 326 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 327.
        ].
        recoveredBlock13Step = 327 ifTrue: [
            (recoveredBlock13Stack0) private.
            recoveredBlock13PC := 329.
        ].
        recoveredBlock13Step = 329 ifTrue: [
            recoveredBlock13PC := 335.
        ].
        recoveredBlock13Step = 332 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 333.
        ].
        recoveredBlock13Step = 333 ifTrue: [
            (recoveredBlock13Stack0) public.
            recoveredBlock13PC := 335.
        ].
        recoveredBlock13Step = 335 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 336.
        ].
        recoveredBlock13Step = 336 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 337.
        ].
        recoveredBlock13Step = 337 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) attributes.
            recoveredBlock13PC := 339.
        ].
        recoveredBlock13Step = 339 ifTrue: [
            (recoveredBlock13Stack0) directAccessAttributes: (recoveredBlock13Stack1).
            recoveredBlock13PC := 341.
        ].
        recoveredBlock13Step = 341 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 342.
        ].
        recoveredBlock13Step = 342 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) mdlClass.
            recoveredBlock13PC := 344.
        ].
        recoveredBlock13Step = 344 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isMdlTypeNeedsReference.
            recoveredBlock13PC := 346.
        ].
        recoveredBlock13Step = 346 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 350] ifFalse: [recoveredBlock13PC := 391].
        ].
        recoveredBlock13Step = 350 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 351.
        ].
        recoveredBlock13Step = 351 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isMdlReference.
            recoveredBlock13PC := 353.
        ].
        recoveredBlock13Step = 353 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 356] ifFalse: [recoveredBlock13PC := 391].
        ].
        recoveredBlock13Step = 356 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 357.
        ].
        recoveredBlock13Step = 357 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) attributes.
            recoveredBlock13PC := 359.
        ].
        recoveredBlock13Step = 359 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isCgAttrReadForReferencedObject.
            recoveredBlock13PC := 361.
        ].
        recoveredBlock13Step = 361 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 364] ifFalse: [recoveredBlock13PC := 370].
        ].
        recoveredBlock13Step = 364 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 365.
        ].
        recoveredBlock13Step = 365 ifTrue: [
            (recoveredBlock13Stack0) read.
            recoveredBlock13PC := 367.
        ].
        recoveredBlock13Step = 367 ifTrue: [
            recoveredBlock13PC := 373.
        ].
        recoveredBlock13Step = 370 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 371.
        ].
        recoveredBlock13Step = 371 ifTrue: [
            (recoveredBlock13Stack0) noRead.
            recoveredBlock13PC := 373.
        ].
        recoveredBlock13Step = 373 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 374.
        ].
        recoveredBlock13Step = 374 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) attributes.
            recoveredBlock13PC := 376.
        ].
        recoveredBlock13Step = 376 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isCgAttrWriteForReferencedObject.
            recoveredBlock13PC := 378.
        ].
        recoveredBlock13Step = 378 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 382] ifFalse: [recoveredBlock13PC := 388].
        ].
        recoveredBlock13Step = 382 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 383.
        ].
        recoveredBlock13Step = 383 ifTrue: [
            (recoveredBlock13Stack0) write.
            recoveredBlock13PC := 385.
        ].
        recoveredBlock13Step = 385 ifTrue: [
            recoveredBlock13PC := 391.
        ].
        recoveredBlock13Step = 388 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 389.
        ].
        recoveredBlock13Step = 389 ifTrue: [
            (recoveredBlock13Stack0) noWrite.
            recoveredBlock13PC := 391.
        ].
        recoveredBlock13Step = 391 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 392.
        ].
        recoveredBlock13Step = 392 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 393.
        ].
        recoveredBlock13Step = 393 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 394.
        ].
        recoveredBlock13Step = 394 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 395.
        ].
        recoveredBlock13Step = 395 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) setAccessMethodName: (recoveredBlock13Stack3).
            recoveredBlock13PC := 397.
        ].
        recoveredBlock13Step = 397 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 398.
        ].
        recoveredBlock13Step = 398 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) hasMdlCopySemantics.
            recoveredBlock13PC := 400.
        ].
        recoveredBlock13Step = 400 ifTrue: [
            (recoveredBlock13Stack3) ifTrue: [recoveredBlock13PC := 404] ifFalse: [recoveredBlock13PC := 410].
        ].
        recoveredBlock13Step = 404 ifTrue: [
            recoveredBlock13Stack3 := self.
            recoveredBlock13PC := 405.
        ].
        recoveredBlock13Step = 405 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) mdlVoidType.
            recoveredBlock13PC := 407.
        ].
        recoveredBlock13Step = 407 ifTrue: [
            recoveredBlock13PC := 411.
        ].
        recoveredBlock13Step = 410 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local2.
            recoveredBlock13PC := 411.
        ].
        recoveredBlock13Step = 411 ifTrue: [
            (recoveredBlock13Stack1) methodDecl: (recoveredBlock13Stack2) class: (recoveredBlock13Stack3).
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 414.
        ].
        recoveredBlock13Step = 414 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 415.
        ].
        recoveredBlock13Step = 415 ifTrue: [
            (recoveredBlock13Stack1) directAccessOrigin: (recoveredBlock13Stack2).
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 418.
        ].
        recoveredBlock13Step = 418 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 419.
        ].
        recoveredBlock13Step = 419 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) attributes.
            recoveredBlock13PC := 421.
        ].
        recoveredBlock13Step = 421 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) deepCopy.
            recoveredBlock13PC := 423.
        ].
        recoveredBlock13Step = 423 ifTrue: [
            (recoveredBlock13Stack1) pushStack: (recoveredBlock13Stack2).
            recoveredBlock13PC := 425.
        ].
        recoveredBlock13Step = 425 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 426.
        ].
        recoveredBlock13Step = 426 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) source.
            recoveredBlock13PC := 428.
        ].
        recoveredBlock13Step = 428 ifTrue: [
            (recoveredBlock13Stack0) source: (recoveredBlock13Stack1).
            recoveredBlock13PC := 430.
        ].
        recoveredBlock13Step = 430 ifTrue: [
            recoveredBlock13Stack0 := true.
            recoveredBlock13PC := 431.
        ].
        recoveredBlock13Step = 431 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local2.
            recoveredBlock13PC := 432.
        ].
        recoveredBlock13Step = 432 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isMdlComplexClassNoEnumType.
            recoveredBlock13PC := 434.
        ].
        recoveredBlock13Step = 434 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 438] ifFalse: [recoveredBlock13PC := 444].
        ].
        recoveredBlock13Step = 438 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local2.
            recoveredBlock13PC := 439.
        ].
        recoveredBlock13Step = 439 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isMdlRecordType.
            recoveredBlock13PC := 441.
        ].
        recoveredBlock13Step = 441 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 444] ifFalse: [recoveredBlock13PC := 458].
        ].
        recoveredBlock13Step = 444 ifTrue: [
            recoveredBlock13PC := 445.
        ].
        recoveredBlock13Step = 445 ifTrue: [
            recoveredBlock13Stack0 := false.
            recoveredBlock13PC := 446.
        ].
        recoveredBlock13Step = 446 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 447.
        ].
        recoveredBlock13Step = 447 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isMdlReference.
            recoveredBlock13PC := 449.
        ].
        recoveredBlock13Step = 449 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 452] ifFalse: [recoveredBlock13PC := 458].
        ].
        recoveredBlock13Step = 452 ifTrue: [
            recoveredBlock13PC := 453.
        ].
        recoveredBlock13Step = 453 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 454.
        ].
        recoveredBlock13Step = 454 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) attributes.
            recoveredBlock13PC := 456.
        ].
        recoveredBlock13Step = 456 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isCgAttrWriteForReferencedObject.
            recoveredBlock13PC := 458.
        ].
        recoveredBlock13Step = 458 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 461.
        ].
        recoveredBlock13Step = 461 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 462.
        ].
        recoveredBlock13Step = 462 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) mdlClass.
            recoveredBlock13PC := 464.
        ].
        recoveredBlock13Step = 464 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isMdlTypeNeedsReference.
            recoveredBlock13PC := 466.
        ].
        recoveredBlock13Step = 466 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 470] ifFalse: [recoveredBlock13PC := 490].
        ].
        recoveredBlock13Step = 470 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local2.
            recoveredBlock13PC := 471.
        ].
        recoveredBlock13Step = 471 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isCgReferenceType.
            recoveredBlock13PC := 473.
        ].
        recoveredBlock13Step = 473 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 490] ifFalse: [recoveredBlock13PC := 476].
        ].
        recoveredBlock13Step = 476 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local2.
            recoveredBlock13PC := 477.
        ].
        recoveredBlock13Step = 477 ifTrue: [
            recoveredBlock13Stack1 := true.
            recoveredBlock13PC := 478.
        ].
        recoveredBlock13Step = 478 ifTrue: [
            recoveredBlock13Stack2 := false.
            recoveredBlock13PC := 479.
        ].
        recoveredBlock13Step = 479 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 480.
        ].
        recoveredBlock13Step = 480 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) attributes.
            recoveredBlock13PC := 482.
        ].
        recoveredBlock13Step = 482 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) memoryClass.
            recoveredBlock13PC := 484.
        ].
        recoveredBlock13Step = 484 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) asCgReferenceRead: (recoveredBlock13Stack1) write: (recoveredBlock13Stack2) memClass: (recoveredBlock13Stack3).
            recoveredBlock13PC := 487.
        ].
        recoveredBlock13Step = 487 ifTrue: [
            recoveredBlock13PC := 491.
        ].
        recoveredBlock13Step = 490 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local2.
            recoveredBlock13PC := 491.
        ].
        recoveredBlock13Step = 491 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 492.
        ].
        recoveredBlock13Step = 492 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 493.
        ].
        recoveredBlock13Step = 493 ifTrue: [
            recoveredBlock13Stack1 := true.
            recoveredBlock13PC := 494.
        ].
        recoveredBlock13Step = 494 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal1.
            recoveredBlock13PC := 497.
        ].
        recoveredBlock13Step = 497 ifTrue: [
            (recoveredBlock13Stack0) argumentUsageIn: (recoveredBlock13Stack1) out: (recoveredBlock13Stack2).
            recoveredBlock13PC := 499.
        ].
        recoveredBlock13Step = 499 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 500.
        ].
        recoveredBlock13Step = 500 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 501.
        ].
        recoveredBlock13Step = 501 ifTrue: [
            recoveredBlock13Stack2 := 'parm'.
            recoveredBlock13PC := 504.
        ].
        recoveredBlock13Step = 504 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 505.
        ].
        recoveredBlock13Step = 505 ifTrue: [
            (recoveredBlock13Stack1) parmDecl: (recoveredBlock13Stack2) class: (recoveredBlock13Stack3).
            recoveredBlock13PC := 509.
        ].
        recoveredBlock13Step = 509 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) endMethodDecl.
            recoveredBlock13PC := 511.
        ].
        recoveredBlock13Step = 511 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 512.
        ].
        recoveredBlock13Step = 512 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 513.
        ].
        recoveredBlock13Step = 513 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack0) initDirectAccessMethodNames.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


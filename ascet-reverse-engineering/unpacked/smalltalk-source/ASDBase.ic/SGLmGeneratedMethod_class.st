"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200e39fc; bytecode file offset 0x9e02e0"
!SGLmGeneratedMethod class methodsFor: 'recovered'!
createLogicMethodForCtDirectOutput
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := SGContinuousTimeClass.
    recoveredValue3 := (recoveredValue2) directOutputMethodName.
    recoveredValue4 := (self) createMdlName: (recoveredValue3).
    (recoveredValue1) mdlName: (recoveredValue4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e3a18; bytecode file offset 0x9e02e0"
!SGLmGeneratedMethod class methodsFor: 'recovered'!
createLogicMethodForCtNonDirectOutput
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := SGContinuousTimeClass.
    recoveredValue3 := (recoveredValue2) nondirectOutputMethodName.
    recoveredValue4 := (self) createMdlName: (recoveredValue3).
    (recoveredValue1) mdlName: (recoveredValue4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201e7d8c; bytecode file offset 0xae4668"
!SGLmGeneratedMethod class methodsFor: 'recovered'!
createLogicMethodForCopyVector: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) dataModelRef.
    recoveredValue4 := (self) createMdlNameForCopyVar: (recoveredValue3).
    (recoveredValue1) mdlName: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) logicModelRef: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := SGLmGeneratedData.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) type.
    recoveredValue11 := (recoveredValue8) createName: ('arg') type: (recoveredValue10).
    (recoveredValue7) addArgument: (recoveredValue11).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2048b024; bytecode file offset 0xd87930"
!SGLmGeneratedMethod class methodsFor: 'recovered'!
createLogicMethodsForCtSimulation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) create.
    recoveredValue4 := (self) initCtBlockMethodName.
    recoveredValue5 := (self) createMdlName: (recoveredValue4).
    recoveredValue6 := (recoveredValue3) mdlName: (recoveredValue5).
    (recoveredValue2) add: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := (self) create.
    recoveredValue9 := (self) evaluateMethodName.
    recoveredValue10 := (self) createMdlName: (recoveredValue9).
    recoveredValue11 := (recoveredValue8) mdlName: (recoveredValue10).
    (recoveredValue7) add: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) create.
    recoveredValue14 := (self) resetStepLocalMethodName.
    recoveredValue15 := (self) createMdlName: (recoveredValue14).
    recoveredValue16 := (recoveredValue13) mdlName: (recoveredValue15).
    (recoveredValue12) add: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := (self) create.
    recoveredValue19 := recoveredValue18.
    recoveredValue20 := (self) initSimModelMethodName.
    recoveredValue21 := (self) createMdlName: (recoveredValue20).
    (recoveredValue19) mdlName: (recoveredValue21).
    recoveredValue22 := SGLmGeneratedData.
    recoveredValue23 := (self) lmANSICType: ('CTSimExperiment *').
    recoveredValue24 := (recoveredValue22) createName: ('entireCTBlock') type: (recoveredValue23).
    recoveredValue25 := (recoveredValue18) addArgument: (recoveredValue24).
    (recoveredValue17) add: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := (self) create.
    recoveredValue28 := recoveredValue27.
    recoveredValue29 := (self) getBlockDimensionVarName.
    recoveredValue30 := (self) createMdlName: (recoveredValue29).
    (recoveredValue28) mdlName: (recoveredValue30).
    recoveredValue31 := recoveredValue27.
    recoveredValue32 := SGLmGeneratedData.
    recoveredValue33 := (self) blockDimPtrVarName.
    recoveredValue34 := (self) lmANSICType: ('CTModelDimension *').
    recoveredValue35 := (recoveredValue32) createName: (recoveredValue33) type: (recoveredValue34).
    (recoveredValue31) addLocalVar: (recoveredValue35).
    recoveredValue36 := recoveredValue27.
    recoveredValue37 := SGLmGeneratedData.
    recoveredValue38 := (self) subBlockDimensionVarName.
    recoveredValue39 := (self) lmANSICType: ('CTModelDimension *').
    recoveredValue40 := (recoveredValue37) createName: (recoveredValue38) type: (recoveredValue39).
    (recoveredValue36) addLocalVar: (recoveredValue40).
    recoveredValue41 := SGLmGeneratedData.
    recoveredValue42 := (self) getBlockDimensionVarName.
    recoveredValue43 := (self) lmANSICType: ('CTModelDimension *').
    recoveredValue44 := (recoveredValue41) createName: (recoveredValue42) type: (recoveredValue43).
    recoveredValue45 := (recoveredValue27) returnValue: (recoveredValue44).
    (recoveredValue26) add: (recoveredValue45).
    ^recoveredValue1
! !


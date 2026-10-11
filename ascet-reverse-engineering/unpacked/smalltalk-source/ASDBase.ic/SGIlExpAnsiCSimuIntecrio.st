"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016604; bytecode file offset 0x92209c"
!SGIlExpAnsiCSimuIntecrio methodsFor: 'recovered'!
intecrioDefine
    ^'EXT_INTEGRATION'
! !

"ASDBase.ic method 0x200715dc; bytecode file offset 0x96dea0"
!SGIlExpAnsiCSimuIntecrio methodsFor: 'recovered'!
codeCoverageStream
    | recoveredValue0 |
    recoveredValue0 := codeCoverageStream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a16d0; bytecode file offset 0x99dfb8"
!SGIlExpAnsiCSimuIntecrio methodsFor: 'recovered'!
forceIntecrioDefine
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) definesStream.
    recoveredValue1 := (self) intecrioDefine.
    (recoveredValue0) cppDefine: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ad370; bytecode file offset 0x9a9c3c"
!SGIlExpAnsiCSimuIntecrio methodsFor: 'recovered'!
genSixCNameForExecutable: recoveredArg1 scope: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) asModuleName: (recoveredValue1).
    recoveredValue3 := (self) executableName: (recoveredValue0) module: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b0314; bytecode file offset 0x9acbfc"
!SGIlExpAnsiCSimuIntecrio methodsFor: 'recovered'!
switchToRTAExpander
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlOSExpRTASimu.
    recoveredValue1 := (recoveredValue0) create: (self).
    (self) osExpander: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d89a4; bytecode file offset 0x9d5268"
!SGIlExpAnsiCSimuIntecrio methodsFor: 'recovered'!
insertIntecrioDefine: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) intecrioDefine.
    recoveredValue2 := ('#ifndef ') , (recoveredValue1).
    (recoveredValue0) newlinePutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010dd28; bytecode file offset 0xa0a5f0"
!SGIlExpAnsiCSimuIntecrio methodsFor: 'recovered'!
insertIntecrioDefineEnd: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) intecrioDefine.
    recoveredValue2 := ('#endif /* ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' */').
    (recoveredValue0) newlinePutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2012fcd4; bytecode file offset 0xa2c598"
!SGIlExpAnsiCSimuIntecrio methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := (self) createXmlCodeStream.
    codeCoverageStream := recoveredValue0.
    recoveredValue1 := (self) createAnsiCCodeStream.
    additionalVarDeclStream := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x202f3abc; bytecode file offset 0xbf03a8"
!SGIlExpAnsiCSimuIntecrio methodsFor: 'recovered'!
endProgram
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) methodAttributes: (nil).
    recoveredValue0 := (self) methodAttributes.
    (recoveredValue0) cgOptNoCallSimPrePost.
    recoveredValue1 := (self) ileVoid.
    (self) returnType: (recoveredValue1).
    recoveredValue2 := (self) classFunctionNames.
    (recoveredValue2) add: ('getPid').
    recoveredValue3 := (self) ileProgrammIdentifier.
    (self) wrapperFunctionBodyGetAccess: (recoveredValue3).
    recoveredValue4 := (self) classFunctionNames.
    (recoveredValue4) add: ('getNVid').
    recoveredValue5 := (self) ileNVRAMIdentifier.
    (self) wrapperFunctionBodyGetAccess: (recoveredValue5).
    (self) returnType: (nil).
    super endProgram.
    ^self
! !

"ASDBase.ic method 0x20304d74; bytecode file offset 0xc01664"
!SGIlExpAnsiCSimuIntecrio methodsFor: 'recovered'!
endComponent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) declHeader.
    (recoveredValue0) newline.
    recoveredValue1 := (self) declHeader.
    (recoveredValue1) paragraphBanner: ('Initialization of model').
    recoveredValue2 := (self) declHeader.
    (self) insertIntecrioDefine: (recoveredValue2).
    recoveredValue3 := (self) declHeader.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) newlinePutAll: ('extern ASDObject *initializeModel (void);').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) cppElse.
    recoveredValue6 := recoveredValue3.
    (recoveredValue6) newlinePutAll: ('extern ASDObject *initModel_ASCETTop_').
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := (self) moduleName.
    (recoveredValue7) nextPutAll: (recoveredValue8).
    (recoveredValue3) nextPutAll: (' (void);').
    recoveredValue9 := (self) declHeader.
    (self) insertIntecrioDefineEnd: (recoveredValue9).
    super endComponent.
    ^self
! !

"ASDBase.ic method 0x2046ac90; bytecode file offset 0xd6758c"
!SGIlExpAnsiCSimuIntecrio methodsFor: 'recovered'!
wrapperFunctionBodyGetAccess: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 |
    recoveredValue0 := (self) classFunctionNames.
    recoveredValue1 := (recoveredValue0) last.
    recoveredLocal1 := recoveredValue1.
    recoveredLocal2 := 'defineFlag'.
    recoveredValue2 := recoveredLocal1.
    (self) beginWrapperFunction: (recoveredValue2) prefix: ('') specifier: ('static ').
    recoveredValue3 := (self) wrapperStream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) newlinePutAll: ('uint8 ').
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := recoveredLocal2.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    (recoveredValue7) nextPutAll: (' = true;').
    recoveredValue8 := recoveredValue3.
    (recoveredValue8) newlinePutAll: ('addScalar (').
    recoveredValue9 := recoveredValue3.
    recoveredValue10 := (self) wrapperFunctionDataArgument.
    (recoveredValue9) nextPutAll: (recoveredValue10).
    recoveredValue11 := recoveredValue3.
    (recoveredValue11) listSeparator.
    recoveredValue12 := recoveredValue3.
    (recoveredValue12) nextPutAll: ('(uint8 *)&').
    recoveredValue13 := recoveredValue3.
    recoveredValue14 := recoveredArg1.
    (recoveredValue13) nextPutAll: (recoveredValue14).
    recoveredValue15 := recoveredValue3.
    (recoveredValue15) listSeparator.
    recoveredValue16 := recoveredValue3.
    (recoveredValue16) nextPutAll: ('sizeof(').
    recoveredValue17 := recoveredValue3.
    recoveredValue18 := recoveredArg1.
    (recoveredValue17) nextPutAll: (recoveredValue18).
    recoveredValue19 := recoveredValue3.
    (recoveredValue19) nextPutAll: ('));').
    recoveredValue20 := recoveredValue3.
    (recoveredValue20) newlinePutAll: ('addScalar (').
    recoveredValue21 := recoveredValue3.
    recoveredValue22 := (self) wrapperFunctionDataArgument.
    (recoveredValue21) nextPutAll: (recoveredValue22).
    recoveredValue23 := recoveredValue3.
    (recoveredValue23) listSeparator.
    recoveredValue24 := recoveredValue3.
    (recoveredValue24) nextPutAll: ('(uint8 *)&').
    recoveredValue25 := recoveredValue3.
    recoveredValue26 := recoveredLocal2.
    (recoveredValue25) nextPutAll: (recoveredValue26).
    recoveredValue27 := recoveredValue3.
    (recoveredValue27) listSeparator.
    recoveredValue28 := recoveredValue3.
    (recoveredValue28) nextPutAll: ('sizeof(').
    recoveredValue29 := recoveredValue3.
    recoveredValue30 := recoveredLocal2.
    (recoveredValue29) nextPutAll: (recoveredValue30).
    (recoveredValue3) nextPutAll: ('));').
    recoveredValue31 := recoveredLocal1.
    (self) endWrapperFunction: (recoveredValue31).
    ^self
! !

"ASDBase.ic method 0x204e81e8; bytecode file offset 0xde4b2c"
!SGIlExpAnsiCSimuIntecrio methodsFor: 'recovered'!
beginProject: recoveredArg1 init: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 |
    recoveredValue0 := (self) componentAttributes.
    (recoveredValue0) cgOptSinglelnstance.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (self) beginComponent: (recoveredValue1) init: (recoveredValue2).
    recoveredValue3 := (self) modelInitStream.
    (recoveredValue3) sectionBanner: ('Initialization of model').
    recoveredValue4 := (self) classInit.
    (self) newlinePutCComment: ('Initialize all referenced classes') on: (recoveredValue4).
    recoveredValue5 := (self) modelInitStream.
    (self) insertIntecrioDefine: (recoveredValue5).
    recoveredValue6 := (self) createAnsiCCodeStream.
    recoveredValue7 := recoveredValue6.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredValue6.
    (recoveredValue8) openCompoundStmnt.
    recoveredValue9 := recoveredValue6.
    (recoveredValue9) newlinePutAll: ('ASDObject *model;').
    recoveredValue10 := recoveredValue6.
    (recoveredValue10) newlinePutAll: ('initClass_').
    recoveredValue11 := recoveredValue6.
    recoveredValue12 := (self) moduleName.
    (recoveredValue11) nextPutAll: (recoveredValue12).
    recoveredValue13 := recoveredValue6.
    (recoveredValue13) nextPutAll: ('(&').
    recoveredValue14 := recoveredValue6.
    recoveredValue15 := (self) asMetaClassObject.
    (recoveredValue14) nextPutAll: (recoveredValue15).
    recoveredValue16 := recoveredValue6.
    (recoveredValue16) nextPutAll: (');').
    recoveredValue17 := recoveredValue6.
    (recoveredValue17) newlinePutAll: ('model = (ASDObject *) ').
    recoveredValue18 := recoveredValue6.
    recoveredValue19 := recoveredArg2.
    recoveredValue20 := (self) initModule: (recoveredValue19).
    (recoveredValue18) nextPutAll: (recoveredValue20).
    recoveredValue21 := recoveredValue6.
    (recoveredValue21) nextPutAll: (' ();').
    recoveredValue22 := recoveredValue6.
    recoveredValue23 := (self) ileSelfName.
    (recoveredValue22) newlinePutAll: (recoveredValue23).
    recoveredValue24 := recoveredValue6.
    (recoveredValue24) nextPutAll: (' = (').
    recoveredValue25 := recoveredValue6.
    recoveredValue26 := (self) ileComplexClassRefType.
    (recoveredValue25) nextPutAll: (recoveredValue26).
    recoveredValue27 := recoveredValue6.
    (recoveredValue27) nextPutAll: (') model;').
    recoveredValue28 := recoveredValue6.
    (recoveredValue28) newlinePutAll: ('return (model);').
    (recoveredValue6) closeCompoundStmnt.
    recoveredValue29 := (self) modelInitStream.
    recoveredValue30 := recoveredValue29.
    (recoveredValue30) newlinePutAll: ('ASDObject *initializeModel (void)').
    recoveredValue31 := recoveredValue29.
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := (recoveredValue32) contents.
    (recoveredValue31) nextPutAll: (recoveredValue33).
    recoveredValue34 := recoveredValue29.
    (recoveredValue34) cppElse.
    recoveredValue35 := recoveredValue29.
    (recoveredValue35) newlinePutAll: ('ASDObject *initModel_ASCETTop_').
    recoveredValue36 := recoveredValue29.
    recoveredValue37 := (self) moduleName.
    (recoveredValue36) nextPutAll: (recoveredValue37).
    recoveredValue38 := recoveredValue29.
    (recoveredValue38) nextPutAll: (' (void)').
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := (recoveredValue39) contents.
    (recoveredValue29) nextPutAll: (recoveredValue40).
    recoveredValue41 := (self) modelInitStream.
    (self) insertIntecrioDefineEnd: (recoveredValue41).
    recoveredValue42 := (self) modelInitStream.
    (recoveredValue42) newline.
    ^self
! !

"ASDBase.ic method 0x20552598; bytecode file offset 0xe4eee8"
!SGIlExpAnsiCSimuIntecrio methodsFor: 'recovered'!
ileProgramIdentifierTemplate
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 |
    recoveredValue0 := (self) createAnsiCCodeStream.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) intecrioDefine.
    (recoveredValue2) cppIfNotDefine: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) newlinePutAll: ('uint32 programIdentifier = $(PROJECT.PID)U;').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) incIndent.
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) cppEndIf.
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) newline.
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) newlinePutAll: ('uint32 ').
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := (self) ileProgrammIdentifier.
    (recoveredValue9) nextPutAll: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) nextPutAll: (' = $(PROJECT.PID)U;').
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) newline.
    recoveredValue13 := recoveredValue1.
    (recoveredValue13) newlinePutAll: ('uint32 ').
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) ileNVRAMIdentifier.
    (recoveredValue14) nextPutAll: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    (recoveredValue16) nextPutAll: (' = $(PROJECT.NVRAMID)U;').
    recoveredValue17 := recoveredValue1.
    (recoveredValue17) newline.
    recoveredValue18 := recoveredValue1.
    (recoveredValue18) newline.
    recoveredValue19 := recoveredValue1.
    recoveredValue20 := (self) intecrioDefine.
    (recoveredValue19) cppIfNotDefine: (recoveredValue20).
    recoveredValue21 := recoveredValue1.
    (recoveredValue21) newlinePutAll: ('uint32 maxLockedWays = $(PROJECT.OPTION.MAXLOCKWAYSINT)U; /* $(PROJECT.OPTION.MAXLOCKWAYSSTRING) */').
    recoveredValue22 := recoveredValue1.
    (recoveredValue22) newline.
    recoveredValue23 := recoveredValue1.
    (recoveredValue23) newlinePutAll: ('uint32 cacheLockKind = $(PROJECT.OPTION.CACHELOCKKINDINT)U; /* $(PROJECT.OPTION.CACHELOCKKINDSTRING) */').
    recoveredValue24 := recoveredValue1.
    (recoveredValue24) newline.
    recoveredValue25 := recoveredValue1.
    (recoveredValue25) cppDefine: ('MODEL_TYPE_ASCET') as: ('0').
    recoveredValue26 := recoveredValue1.
    (recoveredValue26) cppDefine: ('FF') as: ('0x00    /* reserved for future use */').
    recoveredValue27 := recoveredValue1.
    (recoveredValue27) cppDefine: ('VV') as: ('0x06    /* version */').
    recoveredValue28 := recoveredValue1.
    (recoveredValue28) cppDefine: ('UU') as: ('0x01    /* update */').
    recoveredValue29 := recoveredValue1.
    (recoveredValue29) cppDefine: ('RR') as: ('0x00    /* refresh */').
    recoveredValue30 := recoveredValue1.
    (recoveredValue30) cppDefine: ('SW_VERSION') as: ('((VV & 0xFF) << 16) | ((UU & 0xFF) << 8) | (RR & 0xFF)').
    recoveredValue31 := recoveredValue1.
    (recoveredValue31) newline.
    recoveredValue32 := recoveredValue1.
    (recoveredValue32) newlinePutAll: ('uint32 getBuildEnvironment () {').
    recoveredValue33 := recoveredValue1.
    (recoveredValue33) incIndent.
    recoveredValue34 := recoveredValue1.
    (recoveredValue34) newlinePutAll: ('return MODEL_TYPE_ASCET;').
    recoveredValue35 := recoveredValue1.
    (recoveredValue35) decIndent.
    recoveredValue36 := recoveredValue1.
    (recoveredValue36) newlinePutAll: ('}').
    recoveredValue37 := recoveredValue1.
    (recoveredValue37) newline.
    recoveredValue38 := recoveredValue1.
    (recoveredValue38) newlinePutAll: ('uint32 getBuildEnvironmentVersion () {').
    recoveredValue39 := recoveredValue1.
    (recoveredValue39) incIndent.
    recoveredValue40 := recoveredValue1.
    (recoveredValue40) newlinePutAll: ('return SW_VERSION;').
    recoveredValue41 := recoveredValue1.
    (recoveredValue41) decIndent.
    recoveredValue42 := recoveredValue1.
    (recoveredValue42) newlinePutAll: ('}').
    recoveredValue43 := recoveredValue1.
    (recoveredValue43) newline.
    recoveredValue44 := recoveredValue1.
    (recoveredValue44) newlinePutAll: ('char strId[200] = "$(COMPONENT.NAME) $(COMPONENT.VERSION)\0";').
    recoveredValue45 := recoveredValue1.
    (recoveredValue45) newline.
    recoveredValue46 := recoveredValue1.
    (recoveredValue46) newlinePutAll: ('char * getModelIdentificationString () {').
    recoveredValue47 := recoveredValue1.
    (recoveredValue47) incIndent.
    recoveredValue48 := recoveredValue1.
    (recoveredValue48) newlinePutAll: ('return strId;    /* Project name and SCM information */').
    recoveredValue49 := recoveredValue1.
    (recoveredValue49) decIndent.
    recoveredValue50 := recoveredValue1.
    (recoveredValue50) newlinePutAll: ('}').
    recoveredValue51 := recoveredValue1.
    (recoveredValue51) newline.
    recoveredValue52 := recoveredValue1.
    (recoveredValue52) incIndent.
    recoveredValue53 := recoveredValue1.
    (recoveredValue53) cppEndIf.
    (recoveredValue1) newline.
    recoveredValue54 := recoveredLocal1.
    recoveredValue55 := (recoveredValue54) contents.
    ^recoveredValue55
! !


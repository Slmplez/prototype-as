"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20090d08; bytecode file offset 0x98d690"
!SGScoopixEccoExpander methodsFor: 'recovered'!
putSixEndGenericModule
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := (recoveredValue0) asPerlCodeStream.
    (recoveredValue1) endPlainCode.
    ^self
! !

"ASDBase.ic method 0x20090dd0; bytecode file offset 0x98d690"
!SGScoopixEccoExpander methodsFor: 'recovered'!
putSixBeginGenericModule
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := (recoveredValue0) asPerlCodeStream.
    (recoveredValue1) beginPlainCode.
    ^self
! !

"ASDBase.ic method 0x2012e3e4; bytecode file offset 0xa2acb0"
!SGScoopixEccoExpander methodsFor: 'recovered'!
putSixTargetToolConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := (recoveredValue0) asPerlCodeStream.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) endPlainCode.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) newlinePutAll: ('_BE_genTargetCompilerMacroDefines_SCOOPIX ();').
    (recoveredValue1) beginPlainCode.
    ^self
! !

"ASDBase.ic method 0x201950a4; bytecode file offset 0xa91978"
!SGScoopixEccoExpander methodsFor: 'recovered'!
putSixCodeGeneratorOptions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super putSixCodeGeneratorOptions: (recoveredValue0).
    recoveredValue1 := (self) stream.
    recoveredValue2 := (recoveredValue1) asPerlCodeStream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) endPlainCode.
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) newlinePutAll: ('_BE_genECCOOptions_SCOOPIX ();').
    (recoveredValue2) beginPlainCode.
    ^self
! !

"ASDBase.ic method 0x202dc7d8; bytecode file offset 0xbd90bc"
!SGScoopixEccoExpander methodsFor: 'recovered'!
asEmbeddedString: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := SGIlExpander.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredValue2 := (recoveredValue1) asPerlCodeStream.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) nextPutAll: ('_PLAIN_CODE').
    recoveredValue6 := recoveredValue3.
    (recoveredValue6) cr.
    recoveredValue7 := recoveredValue3.
    (recoveredValue7) nextPutAll: ('$plain_code=~s/\n$//;').
    recoveredValue8 := recoveredValue3.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue3.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := ('textout::putRaw($plain_code . ') , (recoveredValue10).
    recoveredValue12 := (recoveredValue11) , (');').
    (recoveredValue9) nextPutAll: (recoveredValue12).
    (recoveredValue3) cr.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue13) beginPlainCode.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) contents.
    ^recoveredValue15
! !


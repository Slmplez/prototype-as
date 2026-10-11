"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200de2f4; bytecode file offset 0x9dabb8"
!SGCProcedureSource class methodsFor: 'recovered'!
for: recoveredArg1 in: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) for: (recoveredValue0) in: (recoveredValue1) context: (recoveredValue2) sourceObject: (nil) allSources: (nil).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20188dc0; bytecode file offset 0xa85688"
!SGCProcedureSource class methodsFor: 'recovered'!
for: recoveredArg1 in: recoveredArg2 context: recoveredArg3 sourceObject: recoveredArg4 allSources: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (self) in: (recoveredValue0) context: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) sgClass.
    recoveredValue6 := (recoveredValue5) defaultPublicSpec.
    (recoveredValue3) specification: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredArg4.
    recoveredValue10 := recoveredArg5.
    (recoveredValue7) absoluteLineNumber: (recoveredValue8) sourceObject: (recoveredValue9) allSources: (recoveredValue10).
    ^recoveredValue2
! !

"ASDBase.ic method 0x202045ac; bytecode file offset 0xb00e84"
!SGCProcedureSource class methodsFor: 'recovered'!
in: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) ignore: (false).
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) context: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) data.
    (recoveredValue4) valueConfig: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) implementation.
    (recoveredValue7) implConfig: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) codeContainer.
    (recoveredValue10) codeContainer: (recoveredValue12).
    ^recoveredValue0
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002399c; bytecode file offset 0x92209c"
!DBIdentityFormulaItem methodsFor: 'recovered'!
asap2CompuMethodType
    ^'RAT_FUNC'
! !

"ASDBase.ic method 0x2003927c; bytecode file offset 0x935c54"
!DBIdentityFormulaItem methodsFor: 'recovered'!
calculate: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asFloat.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2015bbb0; bytecode file offset 0xa58478"
!DBIdentityFormulaItem methodsFor: 'recovered'!
createASAP2Node: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createASAP2Node: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := ASAP2BytesIdentityCompuMethod.
    recoveredValue3 := (recoveredValue2) createDefault.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) compuMethod: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !


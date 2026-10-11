"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200edfe0; bytecode file offset 0x9ea89c"
!SGMdAllowedElementVisitor class methodsFor: 'recovered'!
withContext: recoveredArg1 for: recoveredArg2 check: recoveredArg3 inner: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) createWithContext: (recoveredValue1) check: (recoveredValue2) inner: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) mdlAcceptNodeVisitor: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201278d8; bytecode file offset 0xa24198"
!SGMdAllowedElementVisitor class methodsFor: 'recovered'!
createWithContext: recoveredArg1 check: recoveredArg2 inner: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createWithContext: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) checkBlock: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) innerCheckBlock: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !


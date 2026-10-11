"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002b654; bytecode file offset 0x934580"
!SGMdAREventInvokeOperation methodsFor: 'recovered'!
operationDecl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) operationRef.
    recoveredValue1 := (recoveredValue0) operationDecl.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055038; bytecode file offset 0x952a9c"
!SGMdAREventInvokeOperation methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlARInvokeOperationEvent: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006d1c0; bytecode file offset 0x969c04"
!SGMdAREventInvokeOperation methodsFor: 'recovered'!
operationRef
    | recoveredValue0 |
    recoveredValue0 := operationRef.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075a2c; bytecode file offset 0x9757c8"
!SGMdAREventInvokeOperation methodsFor: 'recovered'!
isMdlARInvokeOperationEvent
    ^true
! !

"ASDBase.ic method 0x200c39a0; bytecode file offset 0x9c058c"
!SGMdAREventInvokeOperation methodsFor: 'recovered'!
operationRef: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    operationRef := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2024d334; bytecode file offset 0xb49c00"
!SGMdAREventInvokeOperation methodsFor: 'recovered'!
mdlSemErrServerRunnableDecl: recoveredArg1 mismatchedOperationDecl: recoveredArg2 reason: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) errLabel.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) errLabel.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) source.
    recoveredValue8 := Array.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue9) source.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) source.
    recoveredValue13 := (recoveredValue8) with: (recoveredValue10) with: (recoveredValue12).
    recoveredValue14 := Array.
    recoveredValue15 := recoveredArg2.
    recoveredValue16 := (recoveredValue15) errLabel.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) errLabel.
    recoveredValue19 := (recoveredValue14) with: (recoveredValue16) with: (recoveredValue18).
    recoveredValue20 := (recoveredValue7) createMultiSource: (recoveredValue13) labels: (recoveredValue19).
    (recoveredValue0) mdlSemErrNo: (1282) with: (recoveredValue2) with: (recoveredValue4) with: (recoveredValue5) source: (recoveredValue20).
    ^self
! !

"ASDBase.ic method 0x202587f8; bytecode file offset 0xb550c4"
!SGMdAREventInvokeOperation methodsFor: 'recovered'!
mdlSemErrServerRunnableDecl: recoveredArg1 mismatchedOperationDecl: recoveredArg2 reason: recoveredArg3 argument: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg4.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) errLabel.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) errLabel.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) source.
    recoveredValue9 := Array.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue10) source.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) source.
    recoveredValue14 := (recoveredValue9) with: (recoveredValue11) with: (recoveredValue13).
    recoveredValue15 := Array.
    recoveredValue16 := recoveredArg2.
    recoveredValue17 := (recoveredValue16) errLabel.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) errLabel.
    recoveredValue20 := (recoveredValue15) with: (recoveredValue17) with: (recoveredValue19).
    recoveredValue21 := (recoveredValue8) createMultiSource: (recoveredValue14) labels: (recoveredValue20).
    (recoveredValue0) mdlSemErrNo: (1283) with: (recoveredValue1) with: (recoveredValue3) with: (recoveredValue5) with: (recoveredValue6) source: (recoveredValue21).
    ^self
! !


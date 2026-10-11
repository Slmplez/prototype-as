"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001dd5c; bytecode file offset 0x92209c"
!ASDInvokeOpGO class methodsFor: 'recovered'!
goTypeString
    ^'RTEInvoke'
! !

"ASDBase.ic method 0x20021a58; bytecode file offset 0x92209c"
!ASDInvokeOpGO class methodsFor: 'recovered'!
statusProcPosArray
    ^#(250)
! !

"ASDBase.ic method 0x200afd54; bytecode file offset 0x9ac63c"
!ASDInvokeOpGO class methodsFor: 'recovered'!
statusProc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGAliasMethod.
    recoveredValue1 := (recoveredValue0) createWithReturn: ('Status') template: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200eff00; bytecode file offset 0x9ec7e4"
!ASDInvokeOpGO class methodsFor: 'recovered'!
interfacePositions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('InvokeOp') put: (#(350)).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201bfc24; bytecode file offset 0xabc4f0"
!ASDInvokeOpGO class methodsFor: 'recovered'!
interfaceProcs
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := SGAliasMethod.
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) with: ('value').
    recoveredValue4 := Array.
    recoveredValue5 := (recoveredValue4) with: (nil).
    recoveredValue6 := (recoveredValue1) createWithName: ('InvokeOp') inputArguments: (recoveredValue3) inputTemplates: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) with: (recoveredValue6).
    ^recoveredValue7
! !


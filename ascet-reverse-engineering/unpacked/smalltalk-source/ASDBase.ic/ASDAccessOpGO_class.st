"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001aaec; bytecode file offset 0x92209c"
!ASDAccessOpGO class methodsFor: 'recovered'!
explicitTypeStatus
    ^'explicit_status'
! !

"ASDBase.ic method 0x2001b728; bytecode file offset 0x92209c"
!ASDAccessOpGO class methodsFor: 'recovered'!
statusProcPosArray
    ^#(250)
! !

"ASDBase.ic method 0x2001c700; bytecode file offset 0x92209c"
!ASDAccessOpGO class methodsFor: 'recovered'!
explicitType
    ^'explicit'
! !

"ASDBase.ic method 0x2001ed34; bytecode file offset 0x92209c"
!ASDAccessOpGO class methodsFor: 'recovered'!
goTypeString
    ^'RTEAccess'
! !

"ASDBase.ic method 0x20020264; bytecode file offset 0x92209c"
!ASDAccessOpGO class methodsFor: 'recovered'!
implicitType
    ^'implicit'
! !

"ASDBase.ic method 0x200afd7c; bytecode file offset 0x9ac63c"
!ASDAccessOpGO class methodsFor: 'recovered'!
statusProc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGAliasMethod.
    recoveredValue1 := (recoveredValue0) createWithReturn: ('Status') template: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200efe90; bytecode file offset 0x9ec7e4"
!ASDAccessOpGO class methodsFor: 'recovered'!
interfacePositions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('AccessOp') put: (#(150 350)).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20241c30; bytecode file offset 0xb3e554"
!ASDAccessOpGO class methodsFor: 'recovered'!
interfaceProcs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := SGAliasMethod.
    recoveredValue4 := Array.
    recoveredValue5 := (recoveredValue4) with: ('value').
    recoveredValue6 := Array.
    recoveredValue7 := (recoveredValue6) with: (nil).
    recoveredValue8 := (recoveredValue3) createWithReturn: ('AccessOp') returnTemplate: (nil) inputArguments: (recoveredValue5) inputTemplates: (recoveredValue7).
    (recoveredValue2) at: (1) put: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !


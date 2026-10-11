"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016d00; bytecode file offset 0x92209c"
!SGWhileGO class methodsFor: 'recovered'!
goTypeString
    ^'While'
! !

"ASDBase.ic method 0x200eff1c; bytecode file offset 0x9ec7e4"
!SGWhileGO class methodsFor: 'recovered'!
connectorNameDict
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('Do') put: ('1').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2016ea4c; bytecode file offset 0xa6b340"
!SGWhileGO class methodsFor: 'recovered'!
interfacePositions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('Cond') put: (#(350)).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('While') put: (#(150)).
    ^recoveredValue1
! !

"ASDBase.ic method 0x202d1728; bytecode file offset 0xbce008"
!SGWhileGO class methodsFor: 'recovered'!
interfaceProcs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := SGAliasMethod.
    recoveredValue4 := SGReservedNames.
    recoveredValue5 := (recoveredValue4) conditionMethod.
    recoveredValue6 := Array.
    recoveredValue7 := (recoveredValue6) with: ('Cond').
    recoveredValue8 := Array.
    recoveredValue9 := (recoveredValue8) with: (nil).
    recoveredValue10 := (recoveredValue3) createWithName: (recoveredValue5) inputArguments: (recoveredValue7) inputTemplates: (recoveredValue9).
    (recoveredValue2) at: (1) put: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := SGAliasMethod.
    recoveredValue13 := (recoveredValue12) createWithReturn: ('While') template: (nil).
    (recoveredValue11) at: (2) put: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    ^recoveredValue14
! !


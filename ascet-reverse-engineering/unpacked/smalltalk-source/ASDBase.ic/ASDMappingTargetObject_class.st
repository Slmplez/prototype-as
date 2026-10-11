"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20075d54; bytecode file offset 0x9757c8"
!ASDMappingTargetObject class methodsFor: 'recovered'!
isTargetObject
    ^true
! !

"ASDBase.ic method 0x200dfcd0; bytecode file offset 0x9dc58c"
!ASDMappingTargetObject class methodsFor: 'recovered'!
newForRecordItem: recoveredArg1 iconName: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) newForItem: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) visualCallBackImageElement: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202388a8; bytecode file offset 0xb35184"
!ASDMappingTargetObject class methodsFor: 'recovered'!
newForItem: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) item: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) sgClass.
    recoveredValue6 := (recoveredValue5) modelTypeForView.
    (recoveredValue3) modelType: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) sgClass.
    recoveredValue10 := (recoveredValue9) iconName.
    (recoveredValue7) visualCallBackImageType: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) visualCallBackImageElement.
    (recoveredValue11) visualCallBackImageElement: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    (recoveredValue14) missing: (false).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !


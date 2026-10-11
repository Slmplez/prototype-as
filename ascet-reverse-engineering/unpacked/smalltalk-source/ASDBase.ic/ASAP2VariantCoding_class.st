"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001832c; bytecode file offset 0x92209c"
!ASAP2VariantCoding class methodsFor: 'recovered'!
keyWord
    ^'VARIANT_CODING'
! !

"ASDBase.ic method 0x20023c24; bytecode file offset 0x92209c"
!ASAP2VariantCoding class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'dbObject:' 'characteristic:' 'criterion:' 'forbiddenCombination:' 'naming:' 'separator:')
! !

"ASDBase.ic method 0x2008079c; bytecode file offset 0x97d050"
!ASAP2VariantCoding class methodsFor: 'recovered'!
emBehaviorId
    ^69
! !

"ASDBase.ic method 0x200b65a8; bytecode file offset 0x9b39ac"
!ASAP2VariantCoding class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('characteristic' 'criterion' 'forbiddenCombination' 'naming' 'separator')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b75a0; bytecode file offset 0x9b3e8c"
!ASAP2VariantCoding class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20222898; bytecode file offset 0xb1f168"
!ASAP2VariantCoding class methodsFor: 'recovered'!
create: recoveredArg1 criterion: recoveredArg2 forbiddenCombination: recoveredArg3 naming: recoveredArg4 separator: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) characteristic: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) criterion: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) forbiddenCombination: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) naming: (recoveredValue9).
    recoveredValue10 := recoveredArg5.
    (recoveredValue1) separator: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    (recoveredValue11) commit.
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20264c18; bytecode file offset 0xb614f4"
!ASAP2VariantCoding class methodsFor: 'recovered'!
referenceAccessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := super referenceAccessors.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := ASAP2VarCharacteristic.
    recoveredValue3 := (recoveredValue2) withAllSubclasses.
    recoveredValue4 := (self) allowedCollectionClasses.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    (recoveredValue1) at: ('characteristic') put: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := ASAP2VarCriterion.
    recoveredValue8 := (recoveredValue7) withAllSubclasses.
    recoveredValue9 := (self) allowedCollectionClasses.
    recoveredValue10 := (recoveredValue8) , (recoveredValue9).
    (recoveredValue6) at: ('criterion') put: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x20421b60; bytecode file offset 0xd1e468"
!ASAP2VariantCoding class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('VAR_SEPARATOR') put: ('getVarSeparator:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('VAR_NAMING') put: ('getVarNaming:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('VAR_CRITERION') put: ('getVarCriterion:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('VAR_FORBIDDEN_COMB') put: ('getVarForbiddenComb:').
    (recoveredValue0) at: ('VAR_CHARACTERISTIC') put: ('getVarCharacteristic:').
    recoveredValue5 := options.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := Association.
    recoveredValue8 := (recoveredValue7) key: ('VAR_SEPARATOR') value: ('putIn:varSeparator:').
    (recoveredValue6) add: (recoveredValue8).
    recoveredValue9 := recoveredValue5.
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('VAR_NAMING') value: ('putIn:varNaming:').
    (recoveredValue9) add: (recoveredValue11).
    recoveredValue12 := recoveredValue5.
    recoveredValue13 := Association.
    recoveredValue14 := (recoveredValue13) key: ('VAR_CRITERION') value: ('putIn:varCriterion:').
    (recoveredValue12) add: (recoveredValue14).
    recoveredValue15 := recoveredValue5.
    recoveredValue16 := Association.
    recoveredValue17 := (recoveredValue16) key: ('VAR_FORBIDDEN_COMB') value: ('putIn:varForbiddenComb:').
    (recoveredValue15) add: (recoveredValue17).
    recoveredValue18 := Association.
    recoveredValue19 := (recoveredValue18) key: ('VAR_CHARACTERISTIC') value: ('putIn:varCharacteristic:').
    (recoveredValue5) add: (recoveredValue19).
    ^self
! !


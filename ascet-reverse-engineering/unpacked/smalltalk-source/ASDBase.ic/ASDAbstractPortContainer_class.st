"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200c7d1c; bytecode file offset 0x9c45dc"
!ASDAbstractPortContainer class methodsFor: 'recovered'!
createClassContainerFor: recoveredArg1 parentNode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASDPortClassContainer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) duplicate.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) createForVar: (recoveredValue2) parentNode: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201103c4; bytecode file offset 0xa0cca8"
!ASDAbstractPortContainer class methodsFor: 'recovered'!
createAdditionalMethodContainerFor: recoveredArg1 parentNode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ASDAdditionalPortMethodContainer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) duplicate.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := (recoveredValue0) createForMethod: (recoveredValue2) parentNode: (recoveredValue3) ownerList: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201103e0; bytecode file offset 0xa0cca8"
!ASDAbstractPortContainer class methodsFor: 'recovered'!
createGeneralMethodContainerFor: recoveredArg1 parentNode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ASDGeneralPortMethodContainer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) duplicate.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := (recoveredValue0) createForMethod: (recoveredValue2) parentNode: (recoveredValue3) ownerList: (recoveredValue5).
    ^recoveredValue6
! !


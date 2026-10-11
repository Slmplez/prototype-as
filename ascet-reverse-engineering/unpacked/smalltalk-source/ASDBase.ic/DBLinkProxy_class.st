"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20072f50; bytecode file offset 0x96f8bc"
!DBLinkProxy class methodsFor: 'recovered'!
proxyID
    ^6
! !

"ASDBase.ic method 0x201e01d4; bytecode file offset 0xadcad0"
!DBLinkProxy class methodsFor: 'recovered'!
createFor: recoveredArg1 withReferencedBy: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) globalId.
    (recoveredValue2) globalId: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) attributeName: ('DBReferencedByList').
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) dbInterface.
    (recoveredValue1) dbInterface: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredArg2.
    (recoveredValue8) isReferencedBys: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x201e01fc; bytecode file offset 0xadcad0"
!DBLinkProxy class methodsFor: 'recovered'!
createFor: recoveredArg1 withReferences: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) globalId.
    (recoveredValue2) globalId: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) attributeName: ('DBReferenceList').
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) dbInterface.
    (recoveredValue1) dbInterface: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredArg2.
    (recoveredValue8) references: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !


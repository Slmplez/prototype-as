"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200e7850; bytecode file offset 0x9e410c"
!ASDXMLImportProtoContainer methodsFor: 'recovered'!
addMember: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := members.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x20148c94; bytecode file offset 0xa45558"
!ASDXMLImportProtoContainer methodsFor: 'recovered'!
initOn: recoveredArg1 oid: recoveredArg2 namespace: recoveredArg3 baseName: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    super initOn: (recoveredValue0) oid: (recoveredValue1) namespace: (recoveredValue2) baseName: (recoveredValue3).
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    members := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x2016a364; bytecode file offset 0xa66c28"
!ASDXMLImportProtoContainer methodsFor: 'recovered'!
initOn: recoveredArg1 oid: recoveredArg2 namespace: recoveredArg3 baseName: recoveredArg4 importPath: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    super initOn: (recoveredValue0) oid: (recoveredValue1) namespace: (recoveredValue2) baseName: (recoveredValue3) importPath: (recoveredValue4).
    recoveredValue5 := OrderedCollection.
    recoveredValue6 := (recoveredValue5) new.
    members := recoveredValue6.
    ^self
! !

"ASDBase.ic method 0x201a8b08; bytecode file offset 0xaa53c4"
!ASDXMLImportProtoContainer methodsFor: 'recovered'!
resolveReferences: recoveredArg1 missing: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := members.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := recoveredArg2.
    recoveredBlock6Value3 := (recoveredBlock6Value0) resolveReferences: (recoveredBlock6Value1) missing: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !


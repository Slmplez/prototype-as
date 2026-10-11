"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20039818; bytecode file offset 0x938608"
!ASDXMLImportProtoMethod methodsFor: 'recovered'!
xmlArgumentsByName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) xmlElementByName: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20058bf8; bytecode file offset 0x956284"
!ASDXMLImportProtoMethod methodsFor: 'recovered'!
xmlElementByOID: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) parentClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) xmlElementByOID: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006d9ac; bytecode file offset 0x96a390"
!ASDXMLImportProtoMethod methodsFor: 'recovered'!
xmlElementReturn
    | recoveredValue0 |
    recoveredValue0 := return.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008ae38; bytecode file offset 0x9876ec"
!ASDXMLImportProtoMethod methodsFor: 'recovered'!
isDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := name.
    recoveredValue1 := oid.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d8604; bytecode file offset 0x9d4ebc"
!ASDXMLImportProtoMethod methodsFor: 'recovered'!
return: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    return := recoveredValue0.
    recoveredValue1 := return.
    (recoveredValue1) parent: (self).
    ^self
! !

"ASDBase.ic method 0x200dc308; bytecode file offset 0x9d8bc0"
!ASDXMLImportProtoMethod methodsFor: 'recovered'!
addElement: recoveredArg1 controller: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := elements.
    recoveredValue2 := recoveredArg2.
    (self) add: (recoveredValue0) into: (recoveredValue1) controller: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20121cec; bytecode file offset 0xa1e5ac"
!ASDXMLImportProtoMethod methodsFor: 'recovered'!
setCustomerData: recoveredArg1 forVariable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) thing.
    recoveredValue2 := (recoveredValue1) xmlCustomerDataBasic.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) thing.
    recoveredValue6 := thing.
    (recoveredValue2) xmlSetData: (recoveredValue3) forVariable: (recoveredValue5) inMethod: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20122870; bytecode file offset 0xa1f134"
!ASDXMLImportProtoMethod methodsFor: 'recovered'!
initOn: recoveredArg1 oid: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super initOn: (recoveredValue0) oid: (recoveredValue1).
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    elements := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20184c74; bytecode file offset 0xa81534"
!ASDXMLImportProtoMethod methodsFor: 'recovered'!
xmlElementByName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'return'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := return.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20197a94; bytecode file offset 0xa943a0"
!ASDXMLImportProtoMethod methodsFor: 'recovered'!
resolveReferences: recoveredArg1 missing: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := recoveredArg2.
    recoveredBlock4Value3 := (recoveredBlock4Value0) resolveReferences: (recoveredBlock4Value1) missing: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    (self) allChildsDo: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201db464; bytecode file offset 0xad7d60"
!ASDXMLImportProtoMethod methodsFor: 'recovered'!
remapOIDs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super remapOIDs: (recoveredValue0).
    recoveredValue1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) remapOIDs: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (self) allChildsDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201db4a0; bytecode file offset 0xad7d60"
!ASDXMLImportProtoMethod methodsFor: 'recovered'!
keepOIDs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super keepOIDs: (recoveredValue0).
    recoveredValue1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) keepOIDs: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (self) allChildsDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20228c50; bytecode file offset 0xb2550c"
!ASDXMLImportProtoMethod methodsFor: 'recovered'!
allChildsDo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) value: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := return.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := return.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20240ee8; bytecode file offset 0xb3d7a8"
!ASDXMLImportProtoMethod methodsFor: 'recovered'!
collectOIDs: recoveredArg1 class: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super collectOIDs: (recoveredValue0) class: (recoveredValue1).
    recoveredValue2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredArg1.
    recoveredBlock15Value2 := recoveredArg2.
    recoveredBlock15Value3 := (recoveredBlock15Value0) collectOIDs: (recoveredBlock15Value1) class: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    (self) allChildsDo: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2033458c; bytecode file offset 0xc30e58"
!ASDXMLImportProtoMethod methodsFor: 'recovered'!
replaces: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            super replaces: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := elements.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:recoveredBlock21Arg1 :recoveredBlock21Arg2 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg2.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) xmlOID.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            (recoveredBlock21Stack2 ~~ nil) ifTrue: [recoveredBlock21PC := 42] ifFalse: [recoveredBlock21PC := 34].
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg2.
            recoveredBlock21PC := 36.
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21Stack2 := recoveredArg1.
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Arg1.
            recoveredBlock21PC := 40.
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) xmlElementByName: (recoveredBlock21Stack3).
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) replaces: (recoveredBlock21Stack2).
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := return.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := return.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnValue.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) replaces: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


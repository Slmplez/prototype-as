"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200042d8; bytecode file offset 0x90206c"
!SGCodeArchive methodsFor: 'recovered'!
initXML: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000d464; bytecode file offset 0x909e08"
!SGCodeArchive methodsFor: 'recovered'!
equals: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x20065c04; bytecode file offset 0x963428"
!SGCodeArchive methodsFor: 'recovered'!
external
    | recoveredValue0 |
    recoveredValue0 := external.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006758c; bytecode file offset 0x9646f8"
!SGCodeArchive methodsFor: 'recovered'!
generated
    | recoveredValue0 |
    recoveredValue0 := generated.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008595c; bytecode file offset 0x982228"
!SGCodeArchive methodsFor: 'recovered'!
hasExternalCCEntry: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asExternalVariantKey.
    recoveredValue2 := (self) getExternalCCEntryOrNil: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) notNil.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200937d0; bytecode file offset 0x9904ac"
!SGCodeArchive methodsFor: 'recovered'!
getExternalCCEntryOrNil: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) external.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) searchForEntry: (recoveredValue0) variant: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bdd24; bytecode file offset 0x9bb178"
!SGCodeArchive methodsFor: 'recovered'!
external: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    external := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf1e8; bytecode file offset 0x9bc0b4"
!SGCodeArchive methodsFor: 'recovered'!
generated: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    generated := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011e634; bytecode file offset 0xa1aef8"
!SGCodeArchive methodsFor: 'recovered'!
checkForMultipleExternalCCEntries: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kk') == ('Call_64423').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) searchForMultipleExternalCCEntries: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue3) > (1).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20172d78; bytecode file offset 0xa6f644"
!SGCodeArchive methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    (self) external: (recoveredValue1).
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) new.
    (self) generated: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201a77a0; bytecode file offset 0xaa4060"
!SGCodeArchive methodsFor: 'recovered'!
xmlCollectDependent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := external.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (recoveredBlock6Value1) value.
    recoveredBlock6Value3 := (recoveredBlock6Value0) add: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201e282c; bytecode file offset 0xadf100"
!SGCodeArchive methodsFor: 'recovered'!
allAvailablePartKeys
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_71182'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) external.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block280d66d4Arg1 | 
    | block280d66d4Value0 block280d66d4Value1 |
    block280d66d4Value0 := block280d66d4Arg1.
    block280d66d4Value1 := (block280d66d4Value0) value.
    block280d66d4Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) withAll: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e34ec; bytecode file offset 0xadfde8"
!SGCodeArchive methodsFor: 'recovered'!
externalCCs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) external.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d6980Arg1 | 
    | block280d6980Value0 block280d6980Value1 block280d6980Value2 |
    block280d6980Value0 := block280d6980Arg1.
    block280d6980Value1 := (block280d6980Value0) value.
    block280d6980Value2 := (block280d6980Value1) getObjectOrUndefined.
    block280d6980Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block280d69a4Arg1 | 
    | block280d69a4Value0 block280d69a4Value1 |
    block280d69a4Value0 := block280d69a4Arg1.
    block280d69a4Value1 := (block280d69a4Value0) isRBDBUndefinedObject.
    block280d69a4Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e3514; bytecode file offset 0xadfde8"
!SGCodeArchive methodsFor: 'recovered'!
generatedCCs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generated.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d69c8Arg1 | 
    | block280d69c8Value0 block280d69c8Value1 block280d69c8Value2 |
    block280d69c8Value0 := block280d69c8Arg1.
    block280d69c8Value1 := (block280d69c8Value0) value.
    block280d69c8Value2 := (block280d69c8Value1) getObjectOrUndefined.
    block280d69c8Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block280d69ecArg1 | 
    | block280d69ecValue0 block280d69ecValue1 |
    block280d69ecValue0 := block280d69ecArg1.
    block280d69ecValue1 := (block280d69ecValue0) isRBDBUndefinedObject.
    block280d69ecValue1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20264eb0; bytecode file offset 0xb61784"
!SGCodeArchive methodsFor: 'recovered'!
dbXmlDesc
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EtasXmlSupportDOMElement.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initOn: ('codeArchive').
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := external.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) key.
    recoveredBlock15Value3 := (recoveredBlock15Value2) dbXmlDesc.
    recoveredBlock15Value4 := (recoveredBlock15Value0) addSubElement: (recoveredBlock15Value3).
    recoveredBlock15Value4
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2028aff8; bytecode file offset 0xb878d4"
!SGCodeArchive methodsFor: 'recovered'!
getExternalCCEntry: recoveredArg1 objectOf: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asExternalVariantKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExternalCCEntryOrNil: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SGCodeContainerExternal.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) duplicate.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithKey: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) asRBDBPartOfChild.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := Association.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) key: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) addExternalEntry: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b5bc0; bytecode file offset 0xbb2490"
!SGCodeArchive methodsFor: 'recovered'!
searchForEntry: recoveredArg1 variant: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) key.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) equalTo: (recoveredBlock7Stack3).
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 24] ifFalse: [recoveredBlock7PC := 42].
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) value.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) existsOrCached.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 32] ifFalse: [recoveredBlock7PC := 42].
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack1 := Association.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) key.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) value.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) key: (recoveredBlock7Stack2) value: (recoveredBlock7Stack3).
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x202f1a98; bytecode file offset 0xbee370"
!SGCodeArchive methodsFor: 'recovered'!
searchForMultipleExternalCCEntries: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('Kk') == ('Call_64423').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asExternalVariantKey.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := (self) external.
    recoveredValue4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := false.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) key.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack3 := recoveredArg1.
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) equalTo: (recoveredBlock18Stack3).
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 36] ifFalse: [recoveredBlock18PC := 42].
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) value.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) existsOrCached.
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    recoveredValue5 := (recoveredValue3) select: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2030087c; bytecode file offset 0xbfd158"
!SGCodeArchive methodsFor: 'recovered'!
getExternalCodeStrings: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := external.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12Stack5 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) value.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) getObjectOrUndefined.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack3.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isRBDBUndefinedObject.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 47] ifFalse: [recoveredBlock12PC := 30].
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) key.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) docuString.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Local1.
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Stack4 := recoveredArg1.
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) collectSources: (recoveredBlock12Stack4).
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) at: (recoveredBlock12Stack2) put: (recoveredBlock12Stack3).
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20317658; bytecode file offset 0xc13f40"
!SGCodeArchive methodsFor: 'recovered'!
duplicate
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) external.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11Stack5 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) value.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) getObjectOrUndefined.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isRBDBUndefinedObject.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 50] ifFalse: [recoveredBlock11PC := 30].
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack2 := Association.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) key.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) duplicate.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack4 := recoveredBlock11Local1.
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack4 := (recoveredBlock11Stack4) duplicate.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack4 := (recoveredBlock11Stack4) asRBDBPartOfChild.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) key: (recoveredBlock11Stack3) value: (recoveredBlock11Stack4).
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) addExternalEntry: (recoveredBlock11Stack2).
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20327464; bytecode file offset 0xc23d44"
!SGCodeArchive methodsFor: 'recovered'!
removeExternalEntry: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_84729'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) external.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) key.
    recoveredBlock11Value2 := recoveredArg1.
    recoveredBlock11Value3 := (recoveredBlock11Value1) equalTo: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) delete.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) external.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWithout: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) external: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032f494; bytecode file offset 0xc2bd6c"
!SGCodeArchive methodsFor: 'recovered'!
addExternalEntry: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) external.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) key.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value2) key.
    recoveredBlock5Value4 := (recoveredBlock5Value1) equalTo: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    recoveredValue2 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := (self) external.
    recoveredBlock20Value1 := recoveredArg1.
    recoveredBlock20Value2 := (recoveredBlock20Value0) copyWith: (recoveredBlock20Value1).
    (self) external: (recoveredBlock20Value2).
    ^self
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) key.
    (recoveredValue5) key: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) value.
    (recoveredValue4) value: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x20357724; bytecode file offset 0xc5400c"
!SGCodeArchive methodsFor: 'recovered'!
initXML: recoveredArg1 importDesc: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) database.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) subElements.
    recoveredValue6 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 recoveredBlock21Value9 |
    recoveredBlock21Value0 := recoveredLocal2.
    recoveredBlock21Value1 := Association.
    recoveredBlock21Value2 := SGCodeVariantKey.
    recoveredBlock21Value3 := recoveredBlock21Arg1.
    recoveredBlock21Value4 := (recoveredBlock21Value2) fromXML: (recoveredBlock21Value3).
    recoveredBlock21Value5 := recoveredLocal1.
    recoveredBlock21Value6 := recoveredArg2.
    recoveredBlock21Value7 := (recoveredBlock21Value5) makeNewProxy: (recoveredBlock21Value6).
    recoveredBlock21Value8 := (recoveredBlock21Value1) key: (recoveredBlock21Value4) value: (recoveredBlock21Value7).
    recoveredBlock21Value9 := (recoveredBlock21Value0) add: (recoveredBlock21Value8).
    recoveredBlock21Value9
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue7) asArray.
    external := recoveredValue8.
    generated := #().
    ^self
! !

"ASDBase.ic method 0x203ea0c4; bytecode file offset 0xce69a4"
!SGCodeArchive methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) external.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) value.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack3 := [:block280f8c88Arg1 | 
    nil
].
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) getObjectIfUndefined: (recoveredBlock5Stack3).
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 85] ifFalse: [recoveredBlock5PC := 32].
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) procSourceKeys.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack2 := [:recoveredBlock5Block38Arg1 | 
    | recoveredBlock5Block38Local1 recoveredBlock5Block38Stack0 recoveredBlock5Block38Stack1 recoveredBlock5Block38Stack2 recoveredBlock5Block38Stack3 recoveredBlock5Block38Stack4 recoveredBlock5Block38PC recoveredBlock5Block38Step recoveredBlock5Block38Done recoveredBlock5Block38Result |
    recoveredBlock5Block38Stack0 := nil.
    recoveredBlock5Block38PC := 44.
    recoveredBlock5Block38Done := false.
    [recoveredBlock5Block38Done not] whileTrue: [
        recoveredBlock5Block38Step := recoveredBlock5Block38PC.
        recoveredBlock5Block38Step = 44 ifTrue: [
            recoveredBlock5Block38Stack1 := nil.
            recoveredBlock5Block38PC := 45.
        ].
        recoveredBlock5Block38Step = 45 ifTrue: [
            recoveredBlock5Block38Stack2 := recoveredArg1.
            recoveredBlock5Block38PC := 48.
        ].
        recoveredBlock5Block38Step = 48 ifTrue: [
            recoveredBlock5Block38Stack3 := recoveredBlock5Block38Arg1.
            recoveredBlock5Block38PC := 49.
        ].
        recoveredBlock5Block38Step = 49 ifTrue: [
            recoveredBlock5Block38Stack2 := (recoveredBlock5Block38Stack2) includesKey: (recoveredBlock5Block38Stack3).
            recoveredBlock5Block38PC := 51.
        ].
        recoveredBlock5Block38Step = 51 ifTrue: [
            (recoveredBlock5Block38Stack2) ifTrue: [recoveredBlock5Block38PC := 54] ifFalse: [recoveredBlock5Block38PC := 82].
        ].
        recoveredBlock5Block38Step = 54 ifTrue: [
            recoveredBlock5Block38PC := 55.
        ].
        recoveredBlock5Block38Step = 55 ifTrue: [
            recoveredBlock5Block38Stack1 := recoveredBlock5Local1.
            recoveredBlock5Block38PC := 58.
        ].
        recoveredBlock5Block38Step = 58 ifTrue: [
            recoveredBlock5Block38Stack2 := recoveredBlock5Block38Arg1.
            recoveredBlock5Block38PC := 59.
        ].
        recoveredBlock5Block38Step = 59 ifTrue: [
            recoveredBlock5Block38Stack1 := (recoveredBlock5Block38Stack1) procSourceAt: (recoveredBlock5Block38Stack2).
            recoveredBlock5Block38PC := 61.
        ].
        recoveredBlock5Block38Step = 61 ifTrue: [
            recoveredBlock5Block38Local1 := recoveredBlock5Block38Stack1.
            recoveredBlock5Block38PC := 62.
        ].
        recoveredBlock5Block38Step = 62 ifTrue: [
            recoveredBlock5Block38Stack1 := recoveredBlock5Local1.
            recoveredBlock5Block38PC := 65.
        ].
        recoveredBlock5Block38Step = 65 ifTrue: [
            recoveredBlock5Block38Stack2 := recoveredBlock5Block38Arg1.
            recoveredBlock5Block38PC := 66.
        ].
        recoveredBlock5Block38Step = 66 ifTrue: [
            (recoveredBlock5Block38Stack1) removeProcSourceAt: (recoveredBlock5Block38Stack2).
            recoveredBlock5Block38PC := 68.
        ].
        recoveredBlock5Block38Step = 68 ifTrue: [
            recoveredBlock5Block38Stack1 := recoveredBlock5Local1.
            recoveredBlock5Block38PC := 71.
        ].
        recoveredBlock5Block38Step = 71 ifTrue: [
            recoveredBlock5Block38Stack2 := recoveredArg1.
            recoveredBlock5Block38PC := 74.
        ].
        recoveredBlock5Block38Step = 74 ifTrue: [
            recoveredBlock5Block38Stack3 := recoveredBlock5Block38Arg1.
            recoveredBlock5Block38PC := 75.
        ].
        recoveredBlock5Block38Step = 75 ifTrue: [
            recoveredBlock5Block38Stack2 := (recoveredBlock5Block38Stack2) at: (recoveredBlock5Block38Stack3).
            recoveredBlock5Block38PC := 77.
        ].
        recoveredBlock5Block38Step = 77 ifTrue: [
            recoveredBlock5Block38Stack3 := recoveredBlock5Block38Local1.
            recoveredBlock5Block38PC := 78.
        ].
        recoveredBlock5Block38Step = 78 ifTrue: [
            recoveredBlock5Block38Stack1 := (recoveredBlock5Block38Stack1) procSourceAt: (recoveredBlock5Block38Stack2) put: (recoveredBlock5Block38Stack3).
            recoveredBlock5Block38PC := 80.
        ].
        recoveredBlock5Block38Step = 80 ifTrue: [
            recoveredBlock5Block38Stack2 := nil.
            recoveredBlock5Block38PC := 81.
        ].
        recoveredBlock5Block38Step = 81 ifTrue: [
            recoveredBlock5Block38Local1 := recoveredBlock5Block38Stack2.
            recoveredBlock5Block38PC := 82.
        ].
        recoveredBlock5Block38Step = 82 ifTrue: [
            recoveredBlock5Block38Result := recoveredBlock5Block38Stack1.
            recoveredBlock5Block38Done := true.
        ].
    ].
    recoveredBlock5Block38Result
].
            recoveredBlock5PC := 83.
        ].
        recoveredBlock5Step = 83 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) do: (recoveredBlock5Stack2).
            recoveredBlock5PC := 85.
        ].
        recoveredBlock5Step = 85 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !


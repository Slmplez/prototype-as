"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x2000153c; bytecode file offset 0x3d664"
!EmApplicationEdition methodsFor: 'recovered'!
prerequisiteDictionary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) prereqsIndex.
    recoveredValue1 := (self) obtainDictionaryAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20002080; bytecode file offset 0x3e0a4"
!EmApplicationEdition methodsFor: 'recovered'!
prereqsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (24).
    ^recoveredValue1
! !

"lib.ic method 0x200020e0; bytecode file offset 0x3e11c"
!EmApplicationEdition methodsFor: 'recovered'!
compatibilityIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (32).
    ^recoveredValue1
! !

"lib.ic method 0x20002140; bytecode file offset 0x3e170"
!EmApplicationEdition methodsFor: 'recovered'!
inheritedFieldsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (40).
    ^recoveredValue1
! !

"lib.ic method 0x20002194; bytecode file offset 0x3e1b8"
!EmApplicationEdition methodsFor: 'recovered'!
localFieldsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (48).
    ^recoveredValue1
! !

"lib.ic method 0x200021c4; bytecode file offset 0x3e1e8"
!EmApplicationEdition methodsFor: 'recovered'!
managerIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (56).
    ^recoveredValue1
! !

"lib.ic method 0x200021dc; bytecode file offset 0x3e200"
!EmApplicationEdition methodsFor: 'recovered'!
versionIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (57).
    ^recoveredValue1
! !

"lib.ic method 0x20002704; bytecode file offset 0x3e754"
!EmApplicationEdition methodsFor: 'recovered'!
defaultPrivilegesLong
    ^0
! !

"lib.ic method 0x2000c0d0; bytecode file offset 0x48110"
!EmApplicationEdition methodsFor: 'recovered'!
isLineUpLoaded: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGateway.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := PrerequisiteNames.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterAt: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) application.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) prerequisiteNames.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000c7b8; bytecode file offset 0x48800"
!EmApplicationEdition methodsFor: 'recovered'!
prerequisiteNames
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 |
    recoveredBlock4Value0 := (self) application.
    recoveredBlock4Value1 := recoveredBlock4Arg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) name.
    (recoveredBlock4Value0) configurationExpression: (recoveredBlock4Value2).
    recoveredBlock4Value3 := EmDiskDictionary.
    recoveredBlock4Value4 := recoveredBlock4Arg1.
    recoveredBlock4Value5 := (recoveredBlock4Value4) value.
    recoveredBlock4Value6 := (self) library.
    recoveredBlock4Value7 := (recoveredBlock4Value3) using: (recoveredBlock4Value5) from: (recoveredBlock4Value6).
    recoveredBlock4Value8 := (recoveredBlock4Value7) keys.
    ^recoveredBlock4Value8
].
    (self) currentPrereqExpressionEntryDo: (recoveredValue0).
    ^#()
! !

"lib.ic method 0x2000ca60; bytecode file offset 0x48a94"
!EmApplicationEdition methodsFor: 'recovered'!
deleteExpression: recoveredArg1 ifUnable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super deleteExpression: (recoveredValue0) ifUnable: (recoveredValue1).
    recoveredValue2 := (self) prereqsIndex.
    recoveredValue3 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := recoveredArg1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) removeKey: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
    recoveredValue4 := (self) updateDictionaryAt: (recoveredValue2) using: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x2000f458; bytecode file offset 0x4b49c"
!EmApplicationEdition methodsFor: 'recovered'!
prerequisiteNamesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) prerequisiteDictionary.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) name.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 35].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := EmDiskDictionary.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) value.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) library.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) using: (recoveredBlock5Stack2) from: (recoveredBlock5Stack3).
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) keys.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) forAllEntriesDo: (recoveredValue1).
    ^#()
! !

"lib.ic method 0x20010df0; bytecode file offset 0x4ce30"
!EmApplicationEdition methodsFor: 'recovered'!
addExpression: recoveredArg1 ifUnable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super addExpression: (recoveredValue0) ifUnable: (recoveredValue1).
    recoveredValue2 := (self) prereqsIndex.
    recoveredValue3 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg1.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack3 := [:block280047c8Arg1 | 
    | block280047c8Value0 block280047c8Value1 |
    block280047c8Value0 := EmLibraryPointer.
    block280047c8Value1 := (block280047c8Value0) void.
    block280047c8Value1
].
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) putPointerFrom: (recoveredBlock17Stack3).
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    recoveredValue4 := (self) updateDictionaryAt: (recoveredValue2) using: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x200160a0; bytecode file offset 0x520e8"
!EmApplicationEdition methodsFor: 'recovered'!
copyExpression: recoveredArg1 toCreate: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super copyExpression: (recoveredValue0) toCreate: (recoveredValue1) ifUnable: (recoveredValue2).
    recoveredValue3 := (self) prereqsIndex.
    recoveredValue4 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := recoveredArg2.
    recoveredBlock20Value2 := [:recoveredBlock20Block32Arg1 | 
    | recoveredBlock20Block32Value0 recoveredBlock20Block32Value1 recoveredBlock20Block32Value2 recoveredBlock20Block32Value3 recoveredBlock20Block32Value4 recoveredBlock20Block32Value5 recoveredBlock20Block32Value6 |
    recoveredBlock20Block32Value0 := EmDiskDictionary.
    recoveredBlock20Block32Value1 := recoveredBlock20Arg1.
    recoveredBlock20Block32Value2 := recoveredArg1.
    recoveredBlock20Block32Value3 := (recoveredBlock20Block32Value1) at: (recoveredBlock20Block32Value2).
    recoveredBlock20Block32Value4 := (self) library.
    recoveredBlock20Block32Value5 := (recoveredBlock20Block32Value0) using: (recoveredBlock20Block32Value3) from: (recoveredBlock20Block32Value4).
    recoveredBlock20Block32Value6 := (recoveredBlock20Block32Value5) insert.
    recoveredBlock20Block32Value6
].
    recoveredBlock20Value3 := (recoveredBlock20Value0) at: (recoveredBlock20Value1) putPointerFrom: (recoveredBlock20Value2).
    recoveredBlock20Value3
].
    recoveredValue5 := (self) updateDictionaryAt: (recoveredValue3) using: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x200181f4; bytecode file offset 0x5423c"
!EmApplicationEdition methodsFor: 'recovered'!
deletePrerequisiteNamed: recoveredArg1 from: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    (self) userMustBeManagerTo: (215) noUserError: (214) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg3.
    (self) mustBeEditionTo: (279) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) prereqsIndex.
    recoveredValue3 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := recoveredArg2.
    recoveredBlock33Value2 := [:recoveredBlock33Block44Arg1 | 
    | recoveredBlock33Block44Value0 recoveredBlock33Block44Value1 recoveredBlock33Block44Value2 recoveredBlock33Block44Value3 recoveredBlock33Block44Value4 recoveredBlock33Block44Value5 |
    recoveredBlock33Block44Value0 := EmDiskDictionary.
    recoveredBlock33Block44Value1 := recoveredBlock33Block44Arg1.
    recoveredBlock33Block44Value2 := (self) library.
    recoveredBlock33Block44Value3 := (recoveredBlock33Block44Value0) updating: (recoveredBlock33Block44Value1) from: (recoveredBlock33Block44Value2).
    recoveredBlock33Block44Value4 := recoveredArg1.
    recoveredBlock33Block44Value5 := (recoveredBlock33Block44Value3) removeKey: (recoveredBlock33Block44Value4).
    recoveredBlock33Block44Value5
].
    recoveredBlock33Value3 := (recoveredBlock33Value0) replaceAt: (recoveredBlock33Value1) withPointerFrom: (recoveredBlock33Value2).
    recoveredBlock33Value3
].
    recoveredValue4 := (self) updateDictionaryAt: (recoveredValue2) using: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20019e1c; bytecode file offset 0x55e94"
!EmApplicationEdition methodsFor: 'recovered'!
currentPrereqExpressionEntryDo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) prerequisiteDictionary.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 |
    recoveredBlock17Value0 := recoveredLocal2.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value1) name.
    recoveredBlock17Value3 := (recoveredBlock17Value0) addFirst: (recoveredBlock17Value2).
    recoveredBlock17Value3
].
    (recoveredValue3) forAllEntriesDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37Stack4 recoveredBlock37Stack5 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack2 := self.
            recoveredBlock37PC := 46.
        ].
        recoveredBlock37Step = 46 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Arg1.
            recoveredBlock37PC := 47.
        ].
        recoveredBlock37Step = 47 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) isExpressionValid: (recoveredBlock37Stack3).
            recoveredBlock37PC := 49.
        ].
        recoveredBlock37Step = 49 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 52] ifFalse: [recoveredBlock37PC := 73].
        ].
        recoveredBlock37Step = 52 ifTrue: [
            recoveredBlock37PC := 53.
        ].
        recoveredBlock37Step = 53 ifTrue: [
            recoveredBlock37Stack1 := recoveredArg1.
            recoveredBlock37PC := 56.
        ].
        recoveredBlock37Step = 56 ifTrue: [
            recoveredBlock37Stack2 := recoveredLocal1.
            recoveredBlock37PC := 59.
        ].
        recoveredBlock37Step = 59 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Arg1.
            recoveredBlock37PC := 60.
        ].
        recoveredBlock37Step = 60 ifTrue: [
            recoveredBlock37Stack4 := [
    ^nil
].
            recoveredBlock37PC := 68.
        ].
        recoveredBlock37Step = 68 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) entryAt: (recoveredBlock37Stack3) ifAbsent: (recoveredBlock37Stack4).
            recoveredBlock37PC := 70.
        ].
        recoveredBlock37Step = 70 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) value: (recoveredBlock37Stack2).
            recoveredBlock37PC := 72.
        ].
        recoveredBlock37Step = 72 ifTrue: [
            ^recoveredBlock37Stack1
        ].
        recoveredBlock37Step = 73 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
    (recoveredValue5) do: (recoveredValue6).
    ^nil
! !

"lib.ic method 0x2001a8d4; bytecode file offset 0x56938"
!EmApplicationEdition methodsFor: 'recovered'!
prerequisiteConfigurations
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) prerequisiteDictionary.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 recoveredBlock11Value8 recoveredBlock11Value9 recoveredBlock11Value10 recoveredBlock11Value11 recoveredBlock11Value12 recoveredBlock11Value13 recoveredBlock11Value14 |
    recoveredBlock11Value0 := EmDiskDictionary.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) value.
    recoveredBlock11Value3 := (self) library.
    recoveredBlock11Value4 := (recoveredBlock11Value0) using: (recoveredBlock11Value2) from: (recoveredBlock11Value3).
    recoveredBlock11Value5 := (recoveredBlock11Value4) asDictionary.
    recoveredLocal1 := recoveredBlock11Value5.
    recoveredBlock11Value6 := recoveredLocal1.
    recoveredBlock11Value7 := [:recoveredBlock11Block36Arg1 | 
    | recoveredBlock11Block36Value0 recoveredBlock11Block36Value1 recoveredBlock11Block36Value2 recoveredBlock11Block36Value3 recoveredBlock11Block36Value4 recoveredBlock11Block36Value5 recoveredBlock11Block36Value6 recoveredBlock11Block36Value7 |
    recoveredBlock11Block36Value0 := recoveredBlock11Block36Arg1.
    recoveredBlock11Block36Value1 := EmArrayOfTimeStamps.
    recoveredBlock11Block36Value2 := recoveredBlock11Block36Arg1.
    recoveredBlock11Block36Value3 := (recoveredBlock11Block36Value2) value.
    recoveredBlock11Block36Value4 := (self) library.
    recoveredBlock11Block36Value5 := (recoveredBlock11Block36Value1) using: (recoveredBlock11Block36Value3) from: (recoveredBlock11Block36Value4).
    recoveredBlock11Block36Value6 := (recoveredBlock11Block36Value5) asArray.
    recoveredBlock11Block36Value7 := (recoveredBlock11Block36Value0) value: (recoveredBlock11Block36Value6).
    recoveredBlock11Block36Value7
].
    (recoveredBlock11Value6) associationsDo: (recoveredBlock11Value7).
    recoveredBlock11Value8 := recoveredLocal2.
    recoveredBlock11Value9 := Association.
    recoveredBlock11Value10 := recoveredBlock11Arg1.
    recoveredBlock11Value11 := (recoveredBlock11Value10) name.
    recoveredBlock11Value12 := recoveredLocal1.
    recoveredBlock11Value13 := (recoveredBlock11Value9) key: (recoveredBlock11Value11) value: (recoveredBlock11Value12).
    recoveredBlock11Value14 := (recoveredBlock11Value8) addFirst: (recoveredBlock11Value13).
    recoveredBlock11Value14
].
    (recoveredValue2) forAllEntriesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    ^recoveredValue4
! !

"lib.ic method 0x2001b3fc; bytecode file offset 0x57448"
!EmApplicationEdition methodsFor: 'recovered'!
addPrerequisiteNamed: recoveredArg1 to: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) prereqsIndex.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg2.
    recoveredBlock6Value2 := [:recoveredBlock6Block16Arg1 | 
    | recoveredBlock6Block16Value0 recoveredBlock6Block16Value1 recoveredBlock6Block16Value2 recoveredBlock6Block16Value3 recoveredBlock6Block16Value4 recoveredBlock6Block16Value5 recoveredBlock6Block16Value6 |
    recoveredBlock6Block16Value0 := EmDiskDictionary.
    recoveredBlock6Block16Value1 := recoveredBlock6Block16Arg1.
    recoveredBlock6Block16Value2 := (self) library.
    recoveredBlock6Block16Value3 := (recoveredBlock6Block16Value0) updating: (recoveredBlock6Block16Value1) from: (recoveredBlock6Block16Value2).
    recoveredBlock6Block16Value4 := recoveredArg1.
    recoveredBlock6Block16Value5 := [:recoveredBlock6Block16Block32Arg1 | 
    | recoveredBlock6Block16Block32Stack0 recoveredBlock6Block16Block32Stack1 recoveredBlock6Block16Block32Stack2 recoveredBlock6Block16Block32Stack3 recoveredBlock6Block16Block32Stack4 recoveredBlock6Block16Block32Stack5 recoveredBlock6Block16Block32PC recoveredBlock6Block16Block32Step recoveredBlock6Block16Block32Done recoveredBlock6Block16Block32Result |
    recoveredBlock6Block16Block32Stack0 := self.
    recoveredBlock6Block16Block32PC := 38.
    recoveredBlock6Block16Block32Done := false.
    [recoveredBlock6Block16Block32Done not] whileTrue: [
        recoveredBlock6Block16Block32Step := recoveredBlock6Block16Block32PC.
        recoveredBlock6Block16Block32Step = 38 ifTrue: [
            recoveredBlock6Block16Block32Stack1 := nil.
            recoveredBlock6Block16Block32PC := 39.
        ].
        recoveredBlock6Block16Block32Step = 39 ifTrue: [
            recoveredBlock6Block16Block32Stack2 := recoveredBlock6Block16Block32Arg1.
            recoveredBlock6Block16Block32PC := 40.
        ].
        recoveredBlock6Block16Block32Step = 40 ifTrue: [
            recoveredBlock6Block16Block32Stack2 := (recoveredBlock6Block16Block32Stack2) isVoid.
            recoveredBlock6Block16Block32PC := 42.
        ].
        recoveredBlock6Block16Block32Step = 42 ifTrue: [
            (recoveredBlock6Block16Block32Stack2) ifTrue: [recoveredBlock6Block16Block32PC := 46] ifFalse: [recoveredBlock6Block16Block32PC := 75].
        ].
        recoveredBlock6Block16Block32Step = 46 ifTrue: [
            recoveredBlock6Block16Block32PC := 47.
        ].
        recoveredBlock6Block16Block32Step = 47 ifTrue: [
            recoveredBlock6Block16Block32Stack1 := self.
            recoveredBlock6Block16Block32PC := 48.
        ].
        recoveredBlock6Block16Block32Step = 48 ifTrue: [
            recoveredBlock6Block16Block32Stack2 := 213.
            recoveredBlock6Block16Block32PC := 52.
        ].
        recoveredBlock6Block16Block32Step = 52 ifTrue: [
            recoveredBlock6Block16Block32Stack3 := 212.
            recoveredBlock6Block16Block32PC := 56.
        ].
        recoveredBlock6Block16Block32Step = 56 ifTrue: [
            recoveredBlock6Block16Block32Stack4 := recoveredArg3.
            recoveredBlock6Block16Block32PC := 59.
        ].
        recoveredBlock6Block16Block32Step = 59 ifTrue: [
            (recoveredBlock6Block16Block32Stack1) userMustBeManagerTo: (recoveredBlock6Block16Block32Stack2) noUserError: (recoveredBlock6Block16Block32Stack3) ifNot: (recoveredBlock6Block16Block32Stack4).
            recoveredBlock6Block16Block32PC := 62.
        ].
        recoveredBlock6Block16Block32Step = 62 ifTrue: [
            recoveredBlock6Block16Block32Stack1 := self.
            recoveredBlock6Block16Block32PC := 63.
        ].
        recoveredBlock6Block16Block32Step = 63 ifTrue: [
            recoveredBlock6Block16Block32Stack2 := 278.
            recoveredBlock6Block16Block32PC := 66.
        ].
        recoveredBlock6Block16Block32Step = 66 ifTrue: [
            recoveredBlock6Block16Block32Stack3 := #().
            recoveredBlock6Block16Block32PC := 68.
        ].
        recoveredBlock6Block16Block32Step = 68 ifTrue: [
            recoveredBlock6Block16Block32Stack4 := recoveredArg3.
            recoveredBlock6Block16Block32PC := 71.
        ].
        recoveredBlock6Block16Block32Step = 71 ifTrue: [
            (recoveredBlock6Block16Block32Stack1) mustBeEditionTo: (recoveredBlock6Block16Block32Stack2) withParms: (recoveredBlock6Block16Block32Stack3) ifNot: (recoveredBlock6Block16Block32Stack4).
            recoveredBlock6Block16Block32PC := 74.
        ].
        recoveredBlock6Block16Block32Step = 74 ifTrue: [
            recoveredBlock6Block16Block32Stack1 := recoveredBlock6Block16Block32Arg1.
            recoveredBlock6Block16Block32PC := 75.
        ].
        recoveredBlock6Block16Block32Step = 75 ifTrue: [
            recoveredBlock6Block16Block32Result := recoveredBlock6Block16Block32Stack1.
            recoveredBlock6Block16Block32Done := true.
        ].
    ].
    recoveredBlock6Block16Block32Result
].
    recoveredBlock6Block16Value6 := (recoveredBlock6Block16Value3) at: (recoveredBlock6Block16Value4) putPointerFrom: (recoveredBlock6Block16Value5).
    recoveredBlock6Block16Value6
].
    recoveredBlock6Value3 := (recoveredBlock6Value0) replaceAt: (recoveredBlock6Value1) withPointerFrom: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue2 := (self) updateDictionaryAt: (recoveredValue0) using: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x2001cd20; bytecode file offset 0x58d7c"
!EmApplicationEdition methodsFor: 'recovered'!
prerequisitesFor: recoveredArg1 areNamed: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    (self) userMustBeManagerTo: (217) noUserError: (216) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg3.
    (self) mustBeEditionTo: (280) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) prereqsIndex.
    recoveredValue3 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := recoveredArg1.
    recoveredBlock33Value2 := [:recoveredBlock33Block44Arg1 | 
    | recoveredBlock33Block44Local1 recoveredBlock33Block44Value0 recoveredBlock33Block44Value1 recoveredBlock33Block44Value2 recoveredBlock33Block44Value3 recoveredBlock33Block44Value4 recoveredBlock33Block44Value5 recoveredBlock33Block44Value6 recoveredBlock33Block44Value7 |
    recoveredBlock33Block44Value0 := Dictionary.
    recoveredBlock33Block44Value1 := (recoveredBlock33Block44Value0) new.
    recoveredBlock33Block44Local1 := recoveredBlock33Block44Value1.
    recoveredBlock33Block44Value2 := recoveredArg2.
    recoveredBlock33Block44Value3 := [:recoveredBlock33Block44Block60Arg1 | 
    | recoveredBlock33Block44Block60Value0 recoveredBlock33Block44Block60Value1 recoveredBlock33Block44Block60Value2 recoveredBlock33Block44Block60Value3 recoveredBlock33Block44Block60Value4 |
    recoveredBlock33Block44Block60Value0 := recoveredBlock33Block44Local1.
    recoveredBlock33Block44Block60Value1 := recoveredBlock33Block44Block60Arg1.
    recoveredBlock33Block44Block60Value2 := EmLibraryPointer.
    recoveredBlock33Block44Block60Value3 := (recoveredBlock33Block44Block60Value2) void.
    recoveredBlock33Block44Block60Value4 := (recoveredBlock33Block44Block60Value0) at: (recoveredBlock33Block44Block60Value1) put: (recoveredBlock33Block44Block60Value3).
    recoveredBlock33Block44Block60Value4
].
    (recoveredBlock33Block44Value2) do: (recoveredBlock33Block44Value3).
    recoveredBlock33Block44Value4 := EmDiskDictionary.
    recoveredBlock33Block44Value5 := recoveredBlock33Block44Local1.
    recoveredBlock33Block44Value6 := (self) library.
    recoveredBlock33Block44Value7 := (recoveredBlock33Block44Value4) createFor: (recoveredBlock33Block44Value5) in: (recoveredBlock33Block44Value6).
    recoveredBlock33Block44Value7
].
    recoveredBlock33Value3 := (recoveredBlock33Value0) replaceAt: (recoveredBlock33Value1) withPointerFrom: (recoveredBlock33Value2).
    recoveredBlock33Value3
].
    recoveredValue4 := (self) updateDictionaryAt: (recoveredValue2) using: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x2001cef8; bytecode file offset 0x58f58"
!EmApplicationEdition methodsFor: 'recovered'!
mergeWith: recoveredArg1 mapping: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsInLibrary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) prereqsIndex.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 |
    recoveredBlock17Value0 := recoveredArg1.
    recoveredBlock17Value1 := (recoveredBlock17Value0) prerequisiteDictionary.
    recoveredBlock17Value2 := [:recoveredBlock17Block28Arg1 | 
    | recoveredBlock17Block28Value0 recoveredBlock17Block28Value1 recoveredBlock17Block28Value2 recoveredBlock17Block28Value3 recoveredBlock17Block28Value4 |
    recoveredBlock17Block28Value0 := recoveredBlock17Arg1.
    recoveredBlock17Block28Value1 := recoveredBlock17Block28Arg1.
    recoveredBlock17Block28Value2 := (recoveredBlock17Block28Value1) name.
    recoveredBlock17Block28Value3 := [:recoveredBlock17Block28Block42Arg1 | 
    | recoveredBlock17Block28Block42Stack0 recoveredBlock17Block28Block42Stack1 recoveredBlock17Block28Block42Stack2 recoveredBlock17Block28Block42Stack3 recoveredBlock17Block28Block42Stack4 recoveredBlock17Block28Block42PC recoveredBlock17Block28Block42Step recoveredBlock17Block28Block42Done recoveredBlock17Block28Block42Result |
    recoveredBlock17Block28Block42Stack0 := self.
    recoveredBlock17Block28Block42PC := 48.
    recoveredBlock17Block28Block42Done := false.
    [recoveredBlock17Block28Block42Done not] whileTrue: [
        recoveredBlock17Block28Block42Step := recoveredBlock17Block28Block42PC.
        recoveredBlock17Block28Block42Step = 48 ifTrue: [
            recoveredBlock17Block28Block42Stack1 := nil.
            recoveredBlock17Block28Block42PC := 49.
        ].
        recoveredBlock17Block28Block42Step = 49 ifTrue: [
            recoveredBlock17Block28Block42Stack2 := recoveredBlock17Block28Block42Arg1.
            recoveredBlock17Block28Block42PC := 50.
        ].
        recoveredBlock17Block28Block42Step = 50 ifTrue: [
            recoveredBlock17Block28Block42Stack2 := (recoveredBlock17Block28Block42Stack2) isVoid.
            recoveredBlock17Block28Block42PC := 52.
        ].
        recoveredBlock17Block28Block42Step = 52 ifTrue: [
            (recoveredBlock17Block28Block42Stack2) ifTrue: [recoveredBlock17Block28Block42PC := 56] ifFalse: [recoveredBlock17Block28Block42PC := 76].
        ].
        recoveredBlock17Block28Block42Step = 56 ifTrue: [
            recoveredBlock17Block28Block42PC := 57.
        ].
        recoveredBlock17Block28Block42Step = 57 ifTrue: [
            recoveredBlock17Block28Block42Stack1 := EmDiskDictionary.
            recoveredBlock17Block28Block42PC := 59.
        ].
        recoveredBlock17Block28Block42Step = 59 ifTrue: [
            recoveredBlock17Block28Block42Stack2 := recoveredBlock17Block28Arg1.
            recoveredBlock17Block28Block42PC := 62.
        ].
        recoveredBlock17Block28Block42Step = 62 ifTrue: [
            recoveredBlock17Block28Block42Stack2 := (recoveredBlock17Block28Block42Stack2) value.
            recoveredBlock17Block28Block42PC := 64.
        ].
        recoveredBlock17Block28Block42Step = 64 ifTrue: [
            recoveredBlock17Block28Block42Stack3 := recoveredBlock17Block28Arg1.
            recoveredBlock17Block28Block42PC := 67.
        ].
        recoveredBlock17Block28Block42Step = 67 ifTrue: [
            recoveredBlock17Block28Block42Stack3 := (recoveredBlock17Block28Block42Stack3) library.
            recoveredBlock17Block28Block42PC := 69.
        ].
        recoveredBlock17Block28Block42Step = 69 ifTrue: [
            recoveredBlock17Block28Block42Stack1 := (recoveredBlock17Block28Block42Stack1) using: (recoveredBlock17Block28Block42Stack2) from: (recoveredBlock17Block28Block42Stack3).
            recoveredBlock17Block28Block42PC := 71.
        ].
        recoveredBlock17Block28Block42Step = 71 ifTrue: [
            recoveredBlock17Block28Block42Stack2 := self.
            recoveredBlock17Block28Block42PC := 72.
        ].
        recoveredBlock17Block28Block42Step = 72 ifTrue: [
            recoveredBlock17Block28Block42Stack2 := (recoveredBlock17Block28Block42Stack2) library.
            recoveredBlock17Block28Block42PC := 74.
        ].
        recoveredBlock17Block28Block42Step = 74 ifTrue: [
            recoveredBlock17Block28Block42Stack1 := (recoveredBlock17Block28Block42Stack1) moveTo: (recoveredBlock17Block28Block42Stack2).
            recoveredBlock17Block28Block42PC := 76.
        ].
        recoveredBlock17Block28Block42Step = 76 ifTrue: [
            recoveredBlock17Block28Block42Result := recoveredBlock17Block28Block42Stack1.
            recoveredBlock17Block28Block42Done := true.
        ].
    ].
    recoveredBlock17Block28Block42Result
].
    recoveredBlock17Block28Value4 := (recoveredBlock17Block28Value0) at: (recoveredBlock17Block28Value2) putPointerFrom: (recoveredBlock17Block28Value3).
    recoveredBlock17Block28Value4
].
    recoveredBlock17Value3 := (recoveredBlock17Value1) forAllEntriesDo: (recoveredBlock17Value2).
    recoveredBlock17Value3
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) updateDictionaryAt: (recoveredStack1) using: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := super mergeWith: (recoveredStack1) mapping: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20025040; bytecode file offset 0x610a8"
!EmApplicationEdition methodsFor: 'recovered'!
isALineUpLoaded
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGateway.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplicationDictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := Expression.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterAt: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) prerequisiteDictionary.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := Expression.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterAt: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := EmDiskDictionary.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) library.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) using: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLineUpLoaded: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := EmDictionaryOfTimeStamps.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) library.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) using: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := super isLineUpLoaded: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 168.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplicationDictionary.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) prerequisiteDictionary.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := [:recoveredBlock100Arg1 | 
    | recoveredBlock100Stack0 recoveredBlock100Stack1 recoveredBlock100Stack2 recoveredBlock100Stack3 recoveredBlock100Stack4 recoveredBlock100Stack5 recoveredBlock100Stack6 recoveredBlock100PC recoveredBlock100Step recoveredBlock100Done recoveredBlock100Result |
    recoveredBlock100Stack0 := self.
    recoveredBlock100PC := 106.
    recoveredBlock100Done := false.
    [recoveredBlock100Done not] whileTrue: [
        recoveredBlock100Step := recoveredBlock100PC.
        recoveredBlock100Step = 106 ifTrue: [
            recoveredBlock100Stack1 := nil.
            recoveredBlock100PC := 107.
        ].
        recoveredBlock100Step = 107 ifTrue: [
            recoveredBlock100Stack2 := self.
            recoveredBlock100PC := 108.
        ].
        recoveredBlock100Step = 108 ifTrue: [
            recoveredBlock100Stack3 := recoveredBlock100Arg1.
            recoveredBlock100PC := 109.
        ].
        recoveredBlock100Step = 109 ifTrue: [
            recoveredBlock100Stack3 := (recoveredBlock100Stack3) name.
            recoveredBlock100PC := 111.
        ].
        recoveredBlock100Step = 111 ifTrue: [
            recoveredBlock100Stack2 := (recoveredBlock100Stack2) isExpressionValid: (recoveredBlock100Stack3).
            recoveredBlock100PC := 113.
        ].
        recoveredBlock100Step = 113 ifTrue: [
            (recoveredBlock100Stack2) ifTrue: [recoveredBlock100PC := 116] ifFalse: [recoveredBlock100PC := 161].
        ].
        recoveredBlock100Step = 116 ifTrue: [
            recoveredBlock100PC := 117.
        ].
        recoveredBlock100Step = 117 ifTrue: [
            recoveredBlock100Stack1 := nil.
            recoveredBlock100PC := 118.
        ].
        recoveredBlock100Step = 118 ifTrue: [
            recoveredBlock100Stack2 := self.
            recoveredBlock100PC := 119.
        ].
        recoveredBlock100Step = 119 ifTrue: [
            recoveredBlock100Stack3 := EmDiskDictionary.
            recoveredBlock100PC := 121.
        ].
        recoveredBlock100Step = 121 ifTrue: [
            recoveredBlock100Stack4 := recoveredBlock100Arg1.
            recoveredBlock100PC := 122.
        ].
        recoveredBlock100Step = 122 ifTrue: [
            recoveredBlock100Stack4 := (recoveredBlock100Stack4) value.
            recoveredBlock100PC := 124.
        ].
        recoveredBlock100Step = 124 ifTrue: [
            recoveredBlock100Stack5 := self.
            recoveredBlock100PC := 125.
        ].
        recoveredBlock100Step = 125 ifTrue: [
            recoveredBlock100Stack5 := (recoveredBlock100Stack5) library.
            recoveredBlock100PC := 126.
        ].
        recoveredBlock100Step = 126 ifTrue: [
            recoveredBlock100Stack3 := (recoveredBlock100Stack3) using: (recoveredBlock100Stack4) from: (recoveredBlock100Stack5).
            recoveredBlock100PC := 128.
        ].
        recoveredBlock100Step = 128 ifTrue: [
            recoveredBlock100Stack2 := (recoveredBlock100Stack2) isLineUpLoaded: (recoveredBlock100Stack3).
            recoveredBlock100PC := 130.
        ].
        recoveredBlock100Step = 130 ifTrue: [
            (recoveredBlock100Stack2) ifTrue: [recoveredBlock100PC := 134] ifFalse: [recoveredBlock100PC := 161].
        ].
        recoveredBlock100Step = 134 ifTrue: [
            recoveredBlock100PC := 135.
        ].
        recoveredBlock100Step = 135 ifTrue: [
            recoveredBlock100Stack1 := nil.
            recoveredBlock100PC := 136.
        ].
        recoveredBlock100Step = 136 ifTrue: [
            recoveredBlock100Stack2 := self.
            recoveredBlock100PC := 137.
        ].
        recoveredBlock100Step = 137 ifTrue: [
            recoveredBlock100Stack3 := EmDictionaryOfTimeStamps.
            recoveredBlock100PC := 139.
        ].
        recoveredBlock100Step = 139 ifTrue: [
            recoveredBlock100Stack4 := recoveredLocal2.
            recoveredBlock100PC := 142.
        ].
        recoveredBlock100Step = 142 ifTrue: [
            recoveredBlock100Stack5 := recoveredBlock100Arg1.
            recoveredBlock100PC := 143.
        ].
        recoveredBlock100Step = 143 ifTrue: [
            recoveredBlock100Stack5 := (recoveredBlock100Stack5) name.
            recoveredBlock100PC := 145.
        ].
        recoveredBlock100Step = 145 ifTrue: [
            recoveredBlock100Stack4 := (recoveredBlock100Stack4) at: (recoveredBlock100Stack5).
            recoveredBlock100PC := 147.
        ].
        recoveredBlock100Step = 147 ifTrue: [
            recoveredBlock100Stack5 := self.
            recoveredBlock100PC := 148.
        ].
        recoveredBlock100Step = 148 ifTrue: [
            recoveredBlock100Stack5 := (recoveredBlock100Stack5) library.
            recoveredBlock100PC := 149.
        ].
        recoveredBlock100Step = 149 ifTrue: [
            recoveredBlock100Stack3 := (recoveredBlock100Stack3) using: (recoveredBlock100Stack4) from: (recoveredBlock100Stack5).
            recoveredBlock100PC := 151.
        ].
        recoveredBlock100Step = 151 ifTrue: [
            recoveredBlock100Stack2 := super isLineUpLoaded: (recoveredBlock100Stack3).
            recoveredBlock100PC := 155.
        ].
        recoveredBlock100Step = 155 ifTrue: [
            (recoveredBlock100Stack2) ifTrue: [recoveredBlock100PC := 158] ifFalse: [recoveredBlock100PC := 161].
        ].
        recoveredBlock100Step = 158 ifTrue: [
            recoveredBlock100PC := 159.
        ].
        recoveredBlock100Step = 159 ifTrue: [
            recoveredBlock100Stack1 := true.
            recoveredBlock100PC := 160.
        ].
        recoveredBlock100Step = 160 ifTrue: [
            ^recoveredBlock100Stack1
        ].
        recoveredBlock100Step = 161 ifTrue: [
            recoveredBlock100Result := recoveredBlock100Stack1.
            recoveredBlock100Done := true.
        ].
    ].
    recoveredBlock100Result
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) forAllEntriesDo: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20026d50; bytecode file offset 0x62de8"
!EmApplicationEdition methodsFor: 'recovered'!
insertLineUps
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super insertLineUps.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamp.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUndefined.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGateway.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := Prerequisites.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterAt: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 |
    recoveredBlock35Value0 := recoveredLocal2.
    recoveredBlock35Value1 := recoveredBlock35Arg1.
    recoveredBlock35Value2 := EmLibraryPointer.
    recoveredBlock35Value3 := (recoveredBlock35Value2) void.
    recoveredBlock35Value4 := (recoveredBlock35Value0) at: (recoveredBlock35Value1) put: (recoveredBlock35Value3).
    recoveredBlock35Value4
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) application.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) prerequisites.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 recoveredBlock63Value4 recoveredBlock63Value5 |
    recoveredBlock63Value0 := recoveredLocal2.
    recoveredBlock63Value1 := recoveredBlock63Arg1.
    recoveredBlock63Value2 := (recoveredBlock63Value1) symbol.
    recoveredBlock63Value3 := EmLibraryPointer.
    recoveredBlock63Value4 := (recoveredBlock63Value3) void.
    recoveredBlock63Value5 := (recoveredBlock63Value0) at: (recoveredBlock63Value2) put: (recoveredBlock63Value4).
    recoveredBlock63Value5
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultConfigurationExpression.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := EmDiskDictionary.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := (recoveredStack4) library.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) createFor: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) prereqsIndex.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := EmDiskDictionary.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack4 := (recoveredStack4) library.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) createFor: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) compatibilityIndex.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := EmLibraryPointer.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) void.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) prerequisiteDictionary.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := [:recoveredBlock149Arg1 | 
    | recoveredBlock149Value0 recoveredBlock149Value1 recoveredBlock149Value2 recoveredBlock149Value3 recoveredBlock149Value4 recoveredBlock149Value5 recoveredBlock149Value6 recoveredBlock149Value7 |
    recoveredBlock149Value0 := recoveredBlock149Arg1.
    recoveredBlock149Value1 := EmDiskDictionary.
    recoveredBlock149Value2 := recoveredBlock149Arg1.
    recoveredBlock149Value3 := (recoveredBlock149Value2) value.
    recoveredBlock149Value4 := (self) library.
    recoveredBlock149Value5 := (recoveredBlock149Value1) using: (recoveredBlock149Value3) from: (recoveredBlock149Value4).
    recoveredBlock149Value6 := (recoveredBlock149Value5) insert.
    recoveredBlock149Value7 := (recoveredBlock149Value0) value: (recoveredBlock149Value6).
    recoveredBlock149Value7
].
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) forAllEntriesDo: (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) forgetCachedSpace.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) prereqsIndex.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := (recoveredStack2) insert.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002da7c; bytecode file offset 0x69b08"
!EmApplicationEdition methodsFor: 'recovered'!
movePartsTo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super movePartsTo: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) compatibilityIndex.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) moveRecordAt: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) prerequisiteDictionary.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) forgetCachedSpace.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) prereqsIndex.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := EmLibraryPointer.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) void.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 312.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := [:recoveredBlock55Arg1 :recoveredBlock55Arg2 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 recoveredBlock55Value4 recoveredBlock55Value5 recoveredBlock55Value6 recoveredBlock55Value7 recoveredBlock55Value8 recoveredBlock55Value9 recoveredBlock55Value10 recoveredBlock55Value11 |
    recoveredBlock55Value0 := recoveredBlock55Arg1.
    recoveredLocal4 := recoveredBlock55Value0.
    recoveredBlock55Value1 := recoveredLocal5.
    recoveredBlock55Value2 := [:recoveredBlock55Block71Arg1 | 
    | recoveredBlock55Block71Stack0 recoveredBlock55Block71Stack1 recoveredBlock55Block71Stack2 recoveredBlock55Block71Stack3 recoveredBlock55Block71Stack4 recoveredBlock55Block71Stack5 recoveredBlock55Block71PC recoveredBlock55Block71Step recoveredBlock55Block71Done recoveredBlock55Block71Result |
    recoveredBlock55Block71Stack0 := self.
    recoveredBlock55Block71PC := 78.
    recoveredBlock55Block71Done := false.
    [recoveredBlock55Block71Done not] whileTrue: [
        recoveredBlock55Block71Step := recoveredBlock55Block71PC.
        recoveredBlock55Block71Step = 78 ifTrue: [
            recoveredBlock55Block71Stack1 := EmDiskDictionary.
            recoveredBlock55Block71PC := 80.
        ].
        recoveredBlock55Block71Step = 80 ifTrue: [
            recoveredBlock55Block71Stack2 := recoveredBlock55Block71Arg1.
            recoveredBlock55Block71PC := 81.
        ].
        recoveredBlock55Block71Step = 81 ifTrue: [
            recoveredBlock55Block71Stack2 := (recoveredBlock55Block71Stack2) value.
            recoveredBlock55Block71PC := 83.
        ].
        recoveredBlock55Block71Step = 83 ifTrue: [
            recoveredBlock55Block71Stack3 := self.
            recoveredBlock55Block71PC := 84.
        ].
        recoveredBlock55Block71Step = 84 ifTrue: [
            recoveredBlock55Block71Stack3 := (recoveredBlock55Block71Stack3) library.
            recoveredBlock55Block71PC := 86.
        ].
        recoveredBlock55Block71Step = 86 ifTrue: [
            recoveredBlock55Block71Stack1 := (recoveredBlock55Block71Stack1) using: (recoveredBlock55Block71Stack2) from: (recoveredBlock55Block71Stack3).
            recoveredBlock55Block71PC := 88.
        ].
        recoveredBlock55Block71Step = 88 ifTrue: [
            recoveredLocal3 := recoveredBlock55Block71Stack1.
            recoveredBlock55Block71PC := 91.
        ].
        recoveredBlock55Block71Step = 91 ifTrue: [
            recoveredBlock55Block71Stack1 := recoveredLocal3.
            recoveredBlock55Block71PC := 94.
        ].
        recoveredBlock55Block71Step = 94 ifTrue: [
            recoveredBlock55Block71Stack2 := [:recoveredBlock55Block71Block94Arg1 | 
    | recoveredBlock55Block71Block94Stack0 recoveredBlock55Block71Block94Stack1 recoveredBlock55Block71Block94Stack2 recoveredBlock55Block71Block94Stack3 recoveredBlock55Block71Block94Stack4 recoveredBlock55Block71Block94Stack5 recoveredBlock55Block71Block94PC recoveredBlock55Block71Block94Step recoveredBlock55Block71Block94Done recoveredBlock55Block71Block94Result |
    recoveredBlock55Block71Block94Stack0 := self.
    recoveredBlock55Block71Block94PC := 100.
    recoveredBlock55Block71Block94Done := false.
    [recoveredBlock55Block71Block94Done not] whileTrue: [
        recoveredBlock55Block71Block94Step := recoveredBlock55Block71Block94PC.
        recoveredBlock55Block71Block94Step = 100 ifTrue: [
            recoveredBlock55Block71Block94Stack1 := nil.
            recoveredBlock55Block71Block94PC := 101.
        ].
        recoveredBlock55Block71Block94Step = 101 ifTrue: [
            recoveredBlock55Block71Block94Stack2 := recoveredBlock55Block71Block94Arg1.
            recoveredBlock55Block71Block94PC := 102.
        ].
        recoveredBlock55Block71Block94Step = 102 ifTrue: [
            recoveredBlock55Block71Block94Stack2 := (recoveredBlock55Block71Block94Stack2) value.
            recoveredBlock55Block71Block94PC := 104.
        ].
        recoveredBlock55Block71Block94Step = 104 ifTrue: [
            recoveredBlock55Block71Block94Stack2 := (recoveredBlock55Block71Block94Stack2) notVoid.
            recoveredBlock55Block71Block94PC := 106.
        ].
        recoveredBlock55Block71Block94Step = 106 ifTrue: [
            (recoveredBlock55Block71Block94Stack2) ifTrue: [recoveredBlock55Block71Block94PC := 110] ifFalse: [recoveredBlock55Block71Block94PC := 199].
        ].
        recoveredBlock55Block71Block94Step = 110 ifTrue: [
            recoveredBlock55Block71Block94PC := 111.
        ].
        recoveredBlock55Block71Block94Step = 111 ifTrue: [
            recoveredBlock55Block71Block94Stack1 := recoveredBlock55Arg2.
            recoveredBlock55Block71Block94PC := 114.
        ].
        recoveredBlock55Block71Block94Step = 114 ifTrue: [
            recoveredBlock55Block71Block94Stack2 := EmRecord.
            recoveredBlock55Block71Block94PC := 116.
        ].
        recoveredBlock55Block71Block94Step = 116 ifTrue: [
            recoveredBlock55Block71Block94Stack3 := recoveredBlock55Block71Block94Arg1.
            recoveredBlock55Block71Block94PC := 117.
        ].
        recoveredBlock55Block71Block94Step = 117 ifTrue: [
            recoveredBlock55Block71Block94Stack3 := (recoveredBlock55Block71Block94Stack3) value.
            recoveredBlock55Block71Block94PC := 119.
        ].
        recoveredBlock55Block71Block94Step = 119 ifTrue: [
            recoveredBlock55Block71Block94Stack4 := self.
            recoveredBlock55Block71Block94PC := 120.
        ].
        recoveredBlock55Block71Block94Step = 120 ifTrue: [
            recoveredBlock55Block71Block94Stack4 := (recoveredBlock55Block71Block94Stack4) library.
            recoveredBlock55Block71Block94PC := 122.
        ].
        recoveredBlock55Block71Block94Step = 122 ifTrue: [
            recoveredBlock55Block71Block94Stack2 := (recoveredBlock55Block71Block94Stack2) using: (recoveredBlock55Block71Block94Stack3) from: (recoveredBlock55Block71Block94Stack4).
            recoveredBlock55Block71Block94PC := 124.
        ].
        recoveredBlock55Block71Block94Step = 124 ifTrue: [
            recoveredBlock55Block71Block94Stack2 := (recoveredBlock55Block71Block94Stack2) collection.
            recoveredBlock55Block71Block94PC := 126.
        ].
        recoveredBlock55Block71Block94Step = 126 ifTrue: [
            recoveredBlock55Block71Block94Stack3 := recoveredBlock55Block71Block94Stack2.
            recoveredBlock55Block71Block94PC := 127.
        ].
        recoveredBlock55Block71Block94Step = 127 ifTrue: [
            recoveredLocal2 := recoveredBlock55Block71Block94Stack3.
            recoveredBlock55Block71Block94PC := 130.
        ].
        recoveredBlock55Block71Block94Step = 130 ifTrue: [
            (recoveredBlock55Block71Block94Stack1) nextPutAll: (recoveredBlock55Block71Block94Stack2).
            recoveredBlock55Block71Block94PC := 132.
        ].
        recoveredBlock55Block71Block94Step = 132 ifTrue: [
            recoveredBlock55Block71Block94Stack1 := recoveredBlock55Block71Block94Arg1.
            recoveredBlock55Block71Block94PC := 133.
        ].
        recoveredBlock55Block71Block94Step = 133 ifTrue: [
            recoveredBlock55Block71Block94Stack2 := EmLibraryPointer.
            recoveredBlock55Block71Block94PC := 135.
        ].
        recoveredBlock55Block71Block94Step = 135 ifTrue: [
            recoveredBlock55Block71Block94Stack3 := recoveredLocal4.
            recoveredBlock55Block71Block94PC := 138.
        ].
        recoveredBlock55Block71Block94Step = 138 ifTrue: [
            recoveredBlock55Block71Block94Stack4 := recoveredArg1.
            recoveredBlock55Block71Block94PC := 141.
        ].
        recoveredBlock55Block71Block94Step = 141 ifTrue: [
            recoveredBlock55Block71Block94Stack2 := (recoveredBlock55Block71Block94Stack2) fromNumber: (recoveredBlock55Block71Block94Stack3) in: (recoveredBlock55Block71Block94Stack4).
            recoveredBlock55Block71Block94PC := 143.
        ].
        recoveredBlock55Block71Block94Step = 143 ifTrue: [
            (recoveredBlock55Block71Block94Stack1) value: (recoveredBlock55Block71Block94Stack2).
            recoveredBlock55Block71Block94PC := 145.
        ].
        recoveredBlock55Block71Block94Step = 145 ifTrue: [
            recoveredBlock55Block71Block94Stack1 := recoveredLocal4.
            recoveredBlock55Block71Block94PC := 148.
        ].
        recoveredBlock55Block71Block94Step = 148 ifTrue: [
            recoveredBlock55Block71Block94Stack2 := recoveredLocal2.
            recoveredBlock55Block71Block94PC := 151.
        ].
        recoveredBlock55Block71Block94Step = 151 ifTrue: [
            recoveredBlock55Block71Block94Stack2 := (recoveredBlock55Block71Block94Stack2) size.
            recoveredBlock55Block71Block94PC := 153.
        ].
        recoveredBlock55Block71Block94Step = 153 ifTrue: [
            recoveredBlock55Block71Block94Stack1 := (recoveredBlock55Block71Block94Stack1) + (recoveredBlock55Block71Block94Stack2).
            recoveredBlock55Block71Block94PC := 154.
        ].
        recoveredBlock55Block71Block94Step = 154 ifTrue: [
            recoveredLocal1 := recoveredBlock55Block71Block94Stack1.
            recoveredBlock55Block71Block94PC := 157.
        ].
        recoveredBlock55Block71Block94Step = 157 ifTrue: [
            recoveredBlock55Block71Block94Stack1 := recoveredArg1.
            recoveredBlock55Block71Block94PC := 160.
        ].
        recoveredBlock55Block71Block94Step = 160 ifTrue: [
            recoveredBlock55Block71Block94Stack2 := recoveredLocal1.
            recoveredBlock55Block71Block94PC := 163.
        ].
        recoveredBlock55Block71Block94Step = 163 ifTrue: [
            recoveredBlock55Block71Block94Stack1 := (recoveredBlock55Block71Block94Stack1) alignFilePosition: (recoveredBlock55Block71Block94Stack2).
            recoveredBlock55Block71Block94PC := 165.
        ].
        recoveredBlock55Block71Block94Step = 165 ifTrue: [
            recoveredLocal4 := recoveredBlock55Block71Block94Stack1.
            recoveredBlock55Block71Block94PC := 168.
        ].
        recoveredBlock55Block71Block94Step = 168 ifTrue: [
            recoveredBlock55Block71Block94Stack1 := nil.
            recoveredBlock55Block71Block94PC := 169.
        ].
        recoveredBlock55Block71Block94Step = 169 ifTrue: [
            recoveredBlock55Block71Block94Stack2 := recoveredLocal4.
            recoveredBlock55Block71Block94PC := 172.
        ].
        recoveredBlock55Block71Block94Step = 172 ifTrue: [
            recoveredBlock55Block71Block94Stack3 := recoveredLocal1.
            recoveredBlock55Block71Block94PC := 175.
        ].
        recoveredBlock55Block71Block94Step = 175 ifTrue: [
            recoveredBlock55Block71Block94Stack2 := (recoveredBlock55Block71Block94Stack2) - (recoveredBlock55Block71Block94Stack3).
            recoveredBlock55Block71Block94PC := 176.
        ].
        recoveredBlock55Block71Block94Step = 176 ifTrue: [
            recoveredBlock55Block71Block94Stack3 := 0.
            recoveredBlock55Block71Block94PC := 178.
        ].
        recoveredBlock55Block71Block94Step = 178 ifTrue: [
            recoveredBlock55Block71Block94Stack2 := (recoveredBlock55Block71Block94Stack2) > (recoveredBlock55Block71Block94Stack3).
            recoveredBlock55Block71Block94PC := 179.
        ].
        recoveredBlock55Block71Block94Step = 179 ifTrue: [
            (recoveredBlock55Block71Block94Stack2) ifTrue: [recoveredBlock55Block71Block94PC := 182] ifFalse: [recoveredBlock55Block71Block94PC := 199].
        ].
        recoveredBlock55Block71Block94Step = 182 ifTrue: [
            recoveredBlock55Block71Block94PC := 183.
        ].
        recoveredBlock55Block71Block94Step = 183 ifTrue: [
            recoveredBlock55Block71Block94Stack1 := recoveredBlock55Arg2.
            recoveredBlock55Block71Block94PC := 186.
        ].
        recoveredBlock55Block71Block94Step = 186 ifTrue: [
            recoveredBlock55Block71Block94Stack2 := ByteArray.
            recoveredBlock55Block71Block94PC := 188.
        ].
        recoveredBlock55Block71Block94Step = 188 ifTrue: [
            recoveredBlock55Block71Block94Stack3 := recoveredLocal4.
            recoveredBlock55Block71Block94PC := 191.
        ].
        recoveredBlock55Block71Block94Step = 191 ifTrue: [
            recoveredBlock55Block71Block94Stack4 := recoveredLocal1.
            recoveredBlock55Block71Block94PC := 194.
        ].
        recoveredBlock55Block71Block94Step = 194 ifTrue: [
            recoveredBlock55Block71Block94Stack3 := (recoveredBlock55Block71Block94Stack3) - (recoveredBlock55Block71Block94Stack4).
            recoveredBlock55Block71Block94PC := 195.
        ].
        recoveredBlock55Block71Block94Step = 195 ifTrue: [
            recoveredBlock55Block71Block94Stack2 := (recoveredBlock55Block71Block94Stack2) new: (recoveredBlock55Block71Block94Stack3).
            recoveredBlock55Block71Block94PC := 197.
        ].
        recoveredBlock55Block71Block94Step = 197 ifTrue: [
            recoveredBlock55Block71Block94Stack1 := (recoveredBlock55Block71Block94Stack1) nextPutAll: (recoveredBlock55Block71Block94Stack2).
            recoveredBlock55Block71Block94PC := 199.
        ].
        recoveredBlock55Block71Block94Step = 199 ifTrue: [
            recoveredBlock55Block71Block94Result := recoveredBlock55Block71Block94Stack1.
            recoveredBlock55Block71Block94Done := true.
        ].
    ].
    recoveredBlock55Block71Block94Result
].
            recoveredBlock55Block71PC := 200.
        ].
        recoveredBlock55Block71Step = 200 ifTrue: [
            (recoveredBlock55Block71Stack1) forAllEntriesDo: (recoveredBlock55Block71Stack2).
            recoveredBlock55Block71PC := 202.
        ].
        recoveredBlock55Block71Step = 202 ifTrue: [
            recoveredBlock55Block71Stack1 := recoveredBlock55Arg2.
            recoveredBlock55Block71PC := 205.
        ].
        recoveredBlock55Block71Step = 205 ifTrue: [
            recoveredBlock55Block71Stack2 := recoveredLocal3.
            recoveredBlock55Block71PC := 208.
        ].
        recoveredBlock55Block71Step = 208 ifTrue: [
            recoveredBlock55Block71Stack2 := (recoveredBlock55Block71Stack2) collection.
            recoveredBlock55Block71PC := 210.
        ].
        recoveredBlock55Block71Step = 210 ifTrue: [
            (recoveredBlock55Block71Stack1) nextPutAll: (recoveredBlock55Block71Stack2).
            recoveredBlock55Block71PC := 212.
        ].
        recoveredBlock55Block71Step = 212 ifTrue: [
            recoveredBlock55Block71Stack1 := recoveredBlock55Block71Arg1.
            recoveredBlock55Block71PC := 213.
        ].
        recoveredBlock55Block71Step = 213 ifTrue: [
            recoveredBlock55Block71Stack2 := EmLibraryPointer.
            recoveredBlock55Block71PC := 215.
        ].
        recoveredBlock55Block71Step = 215 ifTrue: [
            recoveredBlock55Block71Stack3 := recoveredLocal4.
            recoveredBlock55Block71PC := 218.
        ].
        recoveredBlock55Block71Step = 218 ifTrue: [
            recoveredBlock55Block71Stack4 := recoveredArg1.
            recoveredBlock55Block71PC := 221.
        ].
        recoveredBlock55Block71Step = 221 ifTrue: [
            recoveredBlock55Block71Stack2 := (recoveredBlock55Block71Stack2) fromNumber: (recoveredBlock55Block71Stack3) in: (recoveredBlock55Block71Stack4).
            recoveredBlock55Block71PC := 223.
        ].
        recoveredBlock55Block71Step = 223 ifTrue: [
            (recoveredBlock55Block71Stack1) value: (recoveredBlock55Block71Stack2).
            recoveredBlock55Block71PC := 225.
        ].
        recoveredBlock55Block71Step = 225 ifTrue: [
            recoveredBlock55Block71Stack1 := recoveredLocal4.
            recoveredBlock55Block71PC := 228.
        ].
        recoveredBlock55Block71Step = 228 ifTrue: [
            recoveredBlock55Block71Stack2 := recoveredLocal3.
            recoveredBlock55Block71PC := 231.
        ].
        recoveredBlock55Block71Step = 231 ifTrue: [
            recoveredBlock55Block71Stack2 := (recoveredBlock55Block71Stack2) collection.
            recoveredBlock55Block71PC := 233.
        ].
        recoveredBlock55Block71Step = 233 ifTrue: [
            recoveredBlock55Block71Stack2 := (recoveredBlock55Block71Stack2) size.
            recoveredBlock55Block71PC := 235.
        ].
        recoveredBlock55Block71Step = 235 ifTrue: [
            recoveredBlock55Block71Stack1 := (recoveredBlock55Block71Stack1) + (recoveredBlock55Block71Stack2).
            recoveredBlock55Block71PC := 236.
        ].
        recoveredBlock55Block71Step = 236 ifTrue: [
            recoveredLocal1 := recoveredBlock55Block71Stack1.
            recoveredBlock55Block71PC := 239.
        ].
        recoveredBlock55Block71Step = 239 ifTrue: [
            recoveredBlock55Block71Stack1 := recoveredArg1.
            recoveredBlock55Block71PC := 242.
        ].
        recoveredBlock55Block71Step = 242 ifTrue: [
            recoveredBlock55Block71Stack2 := recoveredLocal1.
            recoveredBlock55Block71PC := 245.
        ].
        recoveredBlock55Block71Step = 245 ifTrue: [
            recoveredBlock55Block71Stack1 := (recoveredBlock55Block71Stack1) alignFilePosition: (recoveredBlock55Block71Stack2).
            recoveredBlock55Block71PC := 247.
        ].
        recoveredBlock55Block71Step = 247 ifTrue: [
            recoveredLocal4 := recoveredBlock55Block71Stack1.
            recoveredBlock55Block71PC := 250.
        ].
        recoveredBlock55Block71Step = 250 ifTrue: [
            recoveredBlock55Block71Stack1 := nil.
            recoveredBlock55Block71PC := 251.
        ].
        recoveredBlock55Block71Step = 251 ifTrue: [
            recoveredBlock55Block71Stack2 := recoveredLocal4.
            recoveredBlock55Block71PC := 254.
        ].
        recoveredBlock55Block71Step = 254 ifTrue: [
            recoveredBlock55Block71Stack3 := recoveredLocal1.
            recoveredBlock55Block71PC := 257.
        ].
        recoveredBlock55Block71Step = 257 ifTrue: [
            recoveredBlock55Block71Stack2 := (recoveredBlock55Block71Stack2) - (recoveredBlock55Block71Stack3).
            recoveredBlock55Block71PC := 258.
        ].
        recoveredBlock55Block71Step = 258 ifTrue: [
            recoveredBlock55Block71Stack3 := 0.
            recoveredBlock55Block71PC := 260.
        ].
        recoveredBlock55Block71Step = 260 ifTrue: [
            recoveredBlock55Block71Stack2 := (recoveredBlock55Block71Stack2) > (recoveredBlock55Block71Stack3).
            recoveredBlock55Block71PC := 261.
        ].
        recoveredBlock55Block71Step = 261 ifTrue: [
            (recoveredBlock55Block71Stack2) ifTrue: [recoveredBlock55Block71PC := 264] ifFalse: [recoveredBlock55Block71PC := 281].
        ].
        recoveredBlock55Block71Step = 264 ifTrue: [
            recoveredBlock55Block71PC := 265.
        ].
        recoveredBlock55Block71Step = 265 ifTrue: [
            recoveredBlock55Block71Stack1 := recoveredBlock55Arg2.
            recoveredBlock55Block71PC := 268.
        ].
        recoveredBlock55Block71Step = 268 ifTrue: [
            recoveredBlock55Block71Stack2 := ByteArray.
            recoveredBlock55Block71PC := 270.
        ].
        recoveredBlock55Block71Step = 270 ifTrue: [
            recoveredBlock55Block71Stack3 := recoveredLocal4.
            recoveredBlock55Block71PC := 273.
        ].
        recoveredBlock55Block71Step = 273 ifTrue: [
            recoveredBlock55Block71Stack4 := recoveredLocal1.
            recoveredBlock55Block71PC := 276.
        ].
        recoveredBlock55Block71Step = 276 ifTrue: [
            recoveredBlock55Block71Stack3 := (recoveredBlock55Block71Stack3) - (recoveredBlock55Block71Stack4).
            recoveredBlock55Block71PC := 277.
        ].
        recoveredBlock55Block71Step = 277 ifTrue: [
            recoveredBlock55Block71Stack2 := (recoveredBlock55Block71Stack2) new: (recoveredBlock55Block71Stack3).
            recoveredBlock55Block71PC := 279.
        ].
        recoveredBlock55Block71Step = 279 ifTrue: [
            recoveredBlock55Block71Stack1 := (recoveredBlock55Block71Stack1) nextPutAll: (recoveredBlock55Block71Stack2).
            recoveredBlock55Block71PC := 281.
        ].
        recoveredBlock55Block71Step = 281 ifTrue: [
            recoveredBlock55Block71Result := recoveredBlock55Block71Stack1.
            recoveredBlock55Block71Done := true.
        ].
    ].
    recoveredBlock55Block71Result
].
    (recoveredBlock55Value1) forAllEntriesDo: (recoveredBlock55Value2).
    recoveredBlock55Value3 := recoveredBlock55Arg2.
    recoveredBlock55Value4 := recoveredLocal5.
    recoveredBlock55Value5 := (recoveredBlock55Value4) collection.
    (recoveredBlock55Value3) nextPutAll: (recoveredBlock55Value5).
    recoveredBlock55Value6 := (self) prereqsIndex.
    recoveredBlock55Value7 := EmLibraryPointer.
    recoveredBlock55Value8 := recoveredLocal4.
    recoveredBlock55Value9 := recoveredArg1.
    recoveredBlock55Value10 := (recoveredBlock55Value7) fromNumber: (recoveredBlock55Value8) in: (recoveredBlock55Value9).
    recoveredBlock55Value11 := (self) at: (recoveredBlock55Value6) putFilePointer: (recoveredBlock55Value10).
    recoveredBlock55Value11
].
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack0) multipleInsertUsing: (recoveredStack1).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


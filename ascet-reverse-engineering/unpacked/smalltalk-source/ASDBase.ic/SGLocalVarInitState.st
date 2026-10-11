"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003f498; bytecode file offset 0x93bf94"
!SGLocalVarInitState methodsFor: 'recovered'!
mdlBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdBuilder.
    recoveredValue1 := (recoveredValue0) currentMdlBuilder.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20052e54; bytecode file offset 0x9505d0"
!SGLocalVarInitState methodsFor: 'recovered'!
initialize: recoveredArg1
    (self) initialize.
    ^self
! !

"ASDBase.ic method 0x200699c0; bytecode file offset 0x966bdc"
!SGLocalVarInitState methodsFor: 'recovered'!
varDeclStates
    | recoveredValue0 |
    recoveredValue0 := varDeclStates.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006abf4; bytecode file offset 0x967a18"
!SGLocalVarInitState methodsFor: 'recovered'!
readVars
    | recoveredValue0 |
    recoveredValue0 := readVars.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b960; bytecode file offset 0x96873c"
!SGLocalVarInitState methodsFor: 'recovered'!
assignedVars
    | recoveredValue0 |
    recoveredValue0 := assignedVars.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bef4; bytecode file offset 0x9692b0"
!SGLocalVarInitState methodsFor: 'recovered'!
initValues
    | recoveredValue0 |
    recoveredValue0 := initValues.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20087124; bytecode file offset 0x9839e0"
!SGLocalVarInitState methodsFor: 'recovered'!
withVarDeclStateFor: recoveredArg1 do: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) varDeclStateFor: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) ifNotNil: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009235c; bytecode file offset 0x98ec18"
!SGLocalVarInitState methodsFor: 'recovered'!
mergeInitValues: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    initValues := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200ab490; bytecode file offset 0x9a8250"
!SGLocalVarInitState methodsFor: 'recovered'!
lookupInitValueFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) initValues.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ae11c; bytecode file offset 0x9aaa48"
!SGLocalVarInitState methodsFor: 'recovered'!
setInitValue: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) initValues.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bac50; bytecode file offset 0x9b7560"
!SGLocalVarInitState methodsFor: 'recovered'!
readAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    (self) readAccess: (recoveredValue0) fieldAccessChain: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200baca0; bytecode file offset 0x9b7560"
!SGLocalVarInitState methodsFor: 'recovered'!
readAccessFromReferencedObject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    (self) readAccessFromReferencedObject: (recoveredValue0) fieldAccessChain: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c0c08; bytecode file offset 0x9bdf14"
!SGLocalVarInitState methodsFor: 'recovered'!
varDeclStates: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    varDeclStates := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1e1c; bytecode file offset 0x9beac8"
!SGLocalVarInitState methodsFor: 'recovered'!
readVars: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    readVars := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c25c8; bytecode file offset 0x9bf474"
!SGLocalVarInitState methodsFor: 'recovered'!
assignedVars: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    assignedVars := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dc214; bytecode file offset 0x9d8ad0"
!SGLocalVarInitState methodsFor: 'recovered'!
writeAccessToReferencedObject: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := recoveredArg2.
    (self) writeAccessToReferencedObject: (recoveredValue0) fieldAccessChain: (recoveredValue1) source: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e7e4c; bytecode file offset 0x9e4738"
!SGLocalVarInitState methodsFor: 'recovered'!
isMdlUninitializedReference: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlVarDeclWithInit.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlUninitializedReference.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e84a8; bytecode file offset 0x9e4d64"
!SGLocalVarInitState methodsFor: 'recovered'!
isINorOUTpossibleForType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlComplexClassNoEnumType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRecordType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200eb924; bytecode file offset 0x9e81e4"
!SGLocalVarInitState methodsFor: 'recovered'!
writeAccess: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredArg2.
    (self) writeAccess: (recoveredValue0) fieldAccessChain: (recoveredValue2) source: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201a7bac; bytecode file offset 0xaa4470"
!SGLocalVarInitState methodsFor: 'recovered'!
varDeclStateFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) varDeclStates.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) varDecl.
    recoveredValue3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) varDecl.
    recoveredBlock9Value2 := (self) createVarDeclStateFor: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201cc700; bytecode file offset 0xac8fc8"
!SGLocalVarInitState methodsFor: 'recovered'!
assignVar: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArgumentUsageInOut.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlANSIC.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := assignedVars.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f2ad0; bytecode file offset 0xaef398"
!SGLocalVarInitState methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    varDeclStates := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    readVars := recoveredValue3.
    recoveredValue4 := Set.
    recoveredValue5 := (recoveredValue4) new.
    assignedVars := recoveredValue5.
    recoveredValue6 := LookupTable.
    recoveredValue7 := (recoveredValue6) new.
    initValues := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x202547a8; bytecode file offset 0xb51084"
!SGLocalVarInitState methodsFor: 'recovered'!
copy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super copy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDeclStates.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := [:block280df230Arg1 | 
    | block280df230Value0 block280df230Value1 |
    block280df230Value0 := block280df230Arg1.
    block280df230Value1 := (block280df230Value0) copy.
    block280df230Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) varDeclStates: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) assignedVars.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) assignedVars: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) readVars.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) readVars: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20255618; bytecode file offset 0xb51f0c"
!SGLocalVarInitState methodsFor: 'recovered'!
merge: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280df3e0Arg1 :block280df3e0Arg2 | 
    | block280df3e0Value0 block280df3e0Value1 block280df3e0Value2 |
    block280df3e0Value0 := block280df3e0Arg1.
    block280df3e0Value1 := block280df3e0Arg2.
    block280df3e0Value2 := (block280df3e0Value0) intersectWith: (block280df3e0Value1).
    block280df3e0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) mergeVarDeclStates: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) mergeInitValues: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) readVars.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) readVars.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) assignedVars.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) assignedVars.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025563c; bytecode file offset 0xb51f0c"
!SGLocalVarInitState methodsFor: 'recovered'!
mergeUnion: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280df404Arg1 :block280df404Arg2 | 
    | block280df404Value0 block280df404Value1 block280df404Value2 |
    block280df404Value0 := block280df404Arg1.
    block280df404Value1 := block280df404Arg2.
    block280df404Value2 := (block280df404Value0) unionWith: (block280df404Value1).
    block280df404Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) mergeVarDeclStates: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) mergeInitValues: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) readVars.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) readVars.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) assignedVars.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) assignedVars.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20257af8; bytecode file offset 0xb543c8"
!SGLocalVarInitState methodsFor: 'recovered'!
merge: recoveredArg1 condition: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280df548Arg1 :block280df548Arg2 | 
    | block280df548Value0 block280df548Value1 block280df548Value2 |
    block280df548Value0 := block280df548Arg1.
    block280df548Value1 := block280df548Arg2.
    block280df548Value2 := (block280df548Value0) unionWith: (block280df548Value1).
    block280df548Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) mergeVarDeclStates: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) mergeInitValues: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) readVars.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) readVars.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) assignedVars.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) assignedVars.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20297e50; bytecode file offset 0xb94724"
!SGLocalVarInitState methodsFor: 'recovered'!
addReadAccess: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBlockVarDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTempVar.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlParmDecl.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArgumentUsageIn.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlANSIC.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := readVars.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f593c; bytecode file offset 0xbf2210"
!SGLocalVarInitState methodsFor: 'recovered'!
checkOutArgOverwrites: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlReferencedIdentifier.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) maxCondition.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Stack3 := self.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) currentCondition.
            recoveredBlock16PC := 27.
        ].
        recoveredBlock16Step = 27 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) andExpr: (recoveredBlock16Stack3).
            recoveredBlock16PC := 28.
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) isIleConstantValueTrue.
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 34] ifFalse: [recoveredBlock16PC := 49].
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredBlock16PC := 35.
        ].
        recoveredBlock16Step = 35 ifTrue: [
            recoveredBlock16Stack1 := recoveredArg1.
            recoveredBlock16PC := 38.
        ].
        recoveredBlock16Step = 38 ifTrue: [
            recoveredBlock16Stack2 := 99.
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16Stack3 := recoveredArg1.
            recoveredBlock16PC := 45.
        ].
        recoveredBlock16Step = 45 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) errLabelWithoutRefDeref.
            recoveredBlock16PC := 47.
        ].
        recoveredBlock16Step = 47 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) mdlWarningNo: (recoveredBlock16Stack2) with: (recoveredBlock16Stack3).
            recoveredBlock16PC := 49.
        ].
        recoveredBlock16Step = 49 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) withVarDeclStateFor: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032cdd4; bytecode file offset 0xc296b4"
!SGLocalVarInitState methodsFor: 'recovered'!
addWriteAccess: recoveredArg1 source: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isMdlBlockVarDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTempVar.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlParmDecl.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlUninitializedReference: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlANSIC.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlParmDecl.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArgumentUsageInOut.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := assignedVars.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := '_RETURN_ASSIGN_MARKER'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20383b98; bytecode file offset 0xc80470"
!SGLocalVarInitState methodsFor: 'recovered'!
readAccessFromReferencedObject: recoveredArg1 fieldAccessChain: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArgumentUsageOut.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) mdlSemErrReadOfWriteOnlyReference.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredArg1.
    recoveredBlock24Value2 := (recoveredBlock24Value1) varDecl.
    recoveredBlock24Value3 := recoveredArg2.
    recoveredBlock24Value4 := (self) currentCondition.
    recoveredBlock24Value5 := [
    | recoveredBlock24Block40Value0 recoveredBlock24Block40Value1 |
    recoveredBlock24Block40Value0 := recoveredArg1.
    recoveredBlock24Block40Value1 := (recoveredBlock24Block40Value0) errLabel.
    recoveredBlock24Block40Value1
].
    recoveredBlock24Value6 := recoveredArg1.
    recoveredBlock24Value7 := (recoveredBlock24Value6) source.
    recoveredBlock24Value8 := (recoveredBlock24Value0) checkReadOfReferencedElementAccessVarDecl: (recoveredBlock24Value2) accessChain: (recoveredBlock24Value3) currentCondition: (recoveredBlock24Value4) errLabelBlock: (recoveredBlock24Value5) onlyWarning: (false) source: (recoveredBlock24Value7).
    recoveredBlock24Value8
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) withVarDeclStateFor: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) addReadAccess: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038c138; bytecode file offset 0xc88a10"
!SGLocalVarInitState methodsFor: 'recovered'!
writeAccessToReferencedObject: recoveredArg1 fieldAccessChain: recoveredArg2 source: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (self) currentCondition.
    recoveredBlock7Value3 := recoveredArg3.
    recoveredBlock7Value4 := (recoveredBlock7Value0) addWriteAccessToReferencedElementOf: (recoveredBlock7Value1) condition: (recoveredBlock7Value2) source: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) withVarDeclStateFor: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) varDecl.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgReferenceType.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) varDecl.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlParmDecl.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) addWriteAccess: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) assignVar: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042e250; bytecode file offset 0xd2ab38"
!SGLocalVarInitState methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) cr.
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) nextPutAll: ('assigned variables:').
    (recoveredValue1) cr.
    recoveredValue5 := (self) assignedVars.
    recoveredValue6 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 |
    recoveredBlock30Value0 := recoveredArg1.
    recoveredBlock30Value1 := recoveredBlock30Arg1.
    recoveredBlock30Value2 := (recoveredBlock30Value1) errLabel.
    recoveredBlock30Value3 := (recoveredBlock30Value0) nextPutAll: (recoveredBlock30Value2).
    recoveredBlock30Value3
].
    recoveredValue7 := [
    | recoveredBlock45Value0 recoveredBlock45Value1 |
    recoveredBlock45Value0 := recoveredArg1.
    recoveredBlock45Value1 := (recoveredBlock45Value0) nextPutAll: (', ').
    recoveredBlock45Value1
].
    (recoveredValue5) do: (recoveredValue6) separatedBy: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) cr.
    recoveredValue10 := recoveredValue8.
    (recoveredValue10) nextPutAll: ('variable declaration states:').
    (recoveredValue8) cr.
    recoveredValue11 := (self) varDeclStates.
    recoveredValue12 := [:recoveredBlock78Arg1 :recoveredBlock78Arg2 | 
    | recoveredBlock78Stack0 recoveredBlock78Stack1 recoveredBlock78Stack2 recoveredBlock78Stack3 recoveredBlock78Stack4 recoveredBlock78PC recoveredBlock78Step recoveredBlock78Done recoveredBlock78Result |
    recoveredBlock78Stack0 := self.
    recoveredBlock78PC := 84.
    recoveredBlock78Done := false.
    [recoveredBlock78Done not] whileTrue: [
        recoveredBlock78Step := recoveredBlock78PC.
        recoveredBlock78Step = 84 ifTrue: [
            recoveredBlock78Stack1 := nil.
            recoveredBlock78PC := 85.
        ].
        recoveredBlock78Step = 85 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Arg2.
            recoveredBlock78PC := 86.
        ].
        recoveredBlock78Step = 86 ifTrue: [
            (recoveredBlock78Stack2 == nil) ifTrue: [recoveredBlock78PC := 100] ifFalse: [recoveredBlock78PC := 90].
        ].
        recoveredBlock78Step = 90 ifTrue: [
            recoveredBlock78PC := 91.
        ].
        recoveredBlock78Step = 91 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg2.
            recoveredBlock78PC := 92.
        ].
        recoveredBlock78Step = 92 ifTrue: [
            recoveredBlock78Stack2 := recoveredArg1.
            recoveredBlock78PC := 95.
        ].
        recoveredBlock78Step = 95 ifTrue: [
            recoveredBlock78Stack3 := recoveredBlock78Arg1.
            recoveredBlock78PC := 96.
        ].
        recoveredBlock78Step = 96 ifTrue: [
            recoveredBlock78Stack3 := (recoveredBlock78Stack3) errLabel.
            recoveredBlock78PC := 98.
        ].
        recoveredBlock78Step = 98 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) printStateOn: (recoveredBlock78Stack2) keyErrLabel: (recoveredBlock78Stack3).
            recoveredBlock78PC := 100.
        ].
        recoveredBlock78Step = 100 ifTrue: [
            recoveredBlock78Result := recoveredBlock78Stack1.
            recoveredBlock78Done := true.
        ].
    ].
    recoveredBlock78Result
].
    (recoveredValue11) keysAndValuesDo: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x20469ec4; bytecode file offset 0xd66798"
!SGLocalVarInitState methodsFor: 'recovered'!
mergeVarDeclStates: recoveredArg1 do: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) varDeclStates.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
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
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 38] ifFalse: [recoveredBlock5PC := 18].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) varDeclStateFor: (recoveredBlock5Stack2).
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 38] ifFalse: [recoveredBlock5PC := 30].
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg2.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Local1.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) value: (recoveredBlock5Stack2) value: (recoveredBlock5Stack3).
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) varDeclStates.
    recoveredValue4 := [:recoveredBlock45Arg1 :recoveredBlock45Arg2 | 
    | recoveredBlock45Local1 recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45Stack4 recoveredBlock45Stack5 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := nil.
            recoveredBlock45PC := 53.
        ].
        recoveredBlock45Step = 53 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Arg2.
            recoveredBlock45PC := 56.
        ].
        recoveredBlock45Step = 56 ifTrue: [
            (recoveredBlock45Stack2 == nil) ifTrue: [recoveredBlock45PC := 116] ifFalse: [recoveredBlock45PC := 60].
        ].
        recoveredBlock45Step = 60 ifTrue: [
            recoveredBlock45PC := 61.
        ].
        recoveredBlock45Step = 61 ifTrue: [
            recoveredBlock45Stack1 := self.
            recoveredBlock45PC := 62.
        ].
        recoveredBlock45Step = 62 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) varDeclStates.
            recoveredBlock45PC := 63.
        ].
        recoveredBlock45Step = 63 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Arg1.
            recoveredBlock45PC := 66.
        ].
        recoveredBlock45Step = 66 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) varDecl.
            recoveredBlock45PC := 68.
        ].
        recoveredBlock45Step = 68 ifTrue: [
            recoveredBlock45Stack3 := [
    | recoveredBlock45Block68Value0 recoveredBlock45Block68Value1 recoveredBlock45Block68Value2 |
    recoveredBlock45Block68Value0 := recoveredBlock45Arg1.
    recoveredBlock45Block68Value1 := (recoveredBlock45Block68Value0) varDecl.
    recoveredBlock45Block68Value2 := (self) createVarDeclStateFor: (recoveredBlock45Block68Value1).
    recoveredBlock45Block68Value2
].
            recoveredBlock45PC := 82.
        ].
        recoveredBlock45Step = 82 ifTrue: [
            recoveredBlock45Stack4 := [:block28100f84Arg1 | 
    nil
].
            recoveredBlock45PC := 84.
        ].
        recoveredBlock45Step = 84 ifTrue: [
            recoveredBlock45PC := 90.
        ].
        recoveredBlock45Step = 90 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) at: (recoveredBlock45Stack2) ifAbsentPut: (recoveredBlock45Stack3) ifPresent: (recoveredBlock45Stack4).
            recoveredBlock45PC := 93.
        ].
        recoveredBlock45Step = 93 ifTrue: [
            recoveredBlock45Local1 := recoveredBlock45Stack1.
            recoveredBlock45PC := 96.
        ].
        recoveredBlock45Step = 96 ifTrue: [
            recoveredBlock45Stack1 := nil.
            recoveredBlock45PC := 97.
        ].
        recoveredBlock45Step = 97 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Local1.
            recoveredBlock45PC := 100.
        ].
        recoveredBlock45Step = 100 ifTrue: [
            (recoveredBlock45Stack2 == nil) ifTrue: [recoveredBlock45PC := 116] ifFalse: [recoveredBlock45PC := 104].
        ].
        recoveredBlock45Step = 104 ifTrue: [
            recoveredBlock45PC := 105.
        ].
        recoveredBlock45Step = 105 ifTrue: [
            recoveredBlock45Stack1 := recoveredArg2.
            recoveredBlock45PC := 108.
        ].
        recoveredBlock45Step = 108 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Local1.
            recoveredBlock45PC := 111.
        ].
        recoveredBlock45Step = 111 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Arg2.
            recoveredBlock45PC := 114.
        ].
        recoveredBlock45Step = 114 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) value: (recoveredBlock45Stack2) value: (recoveredBlock45Stack3).
            recoveredBlock45PC := 116.
        ].
        recoveredBlock45Step = 116 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack1.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
    (recoveredValue3) keysAndValuesDo: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2047f2e0; bytecode file offset 0xd7bbd4"
!SGLocalVarInitState methodsFor: 'recovered'!
checkMethodEnd: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) declaration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlVoid.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgStapledSource.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) endSource.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) checkMethodExit: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) declaration.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) parmChildren.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37Stack4 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
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
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 46.
        ].
        recoveredBlock37Step = 46 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) isMdlArgumentUsageInOut.
            recoveredBlock37PC := 48.
        ].
        recoveredBlock37Step = 48 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 52] ifFalse: [recoveredBlock37PC := 123].
        ].
        recoveredBlock37Step = 52 ifTrue: [
            recoveredBlock37PC := 53.
        ].
        recoveredBlock37Step = 53 ifTrue: [
            recoveredBlock37Stack1 := assignedVars.
            recoveredBlock37PC := 55.
        ].
        recoveredBlock37Step = 55 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 56.
        ].
        recoveredBlock37Step = 56 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) varDecl.
            recoveredBlock37PC := 58.
        ].
        recoveredBlock37Step = 58 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) errLabel.
            recoveredBlock37PC := 60.
        ].
        recoveredBlock37Step = 60 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) includes: (recoveredBlock37Stack2).
            recoveredBlock37PC := 62.
        ].
        recoveredBlock37Step = 62 ifTrue: [
            (recoveredBlock37Stack1) ifTrue: [recoveredBlock37PC := 87] ifFalse: [recoveredBlock37PC := 66].
        ].
        recoveredBlock37Step = 66 ifTrue: [
            recoveredBlock37Stack1 := self.
            recoveredBlock37PC := 67.
        ].
        recoveredBlock37Step = 67 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 68.
        ].
        recoveredBlock37Step = 68 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) mdlClass.
            recoveredBlock37PC := 69.
        ].
        recoveredBlock37Step = 69 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) isINorOUTpossibleForType: (recoveredBlock37Stack2).
            recoveredBlock37PC := 71.
        ].
        recoveredBlock37Step = 71 ifTrue: [
            (recoveredBlock37Stack1) ifTrue: [recoveredBlock37PC := 74] ifFalse: [recoveredBlock37PC := 87].
        ].
        recoveredBlock37Step = 74 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 75.
        ].
        recoveredBlock37Step = 75 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) varDecl.
            recoveredBlock37PC := 77.
        ].
        recoveredBlock37Step = 77 ifTrue: [
            recoveredBlock37Stack2 := 96.
            recoveredBlock37PC := 80.
        ].
        recoveredBlock37Step = 80 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Arg1.
            recoveredBlock37PC := 81.
        ].
        recoveredBlock37Step = 81 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) varDecl.
            recoveredBlock37PC := 83.
        ].
        recoveredBlock37Step = 83 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) errLabel.
            recoveredBlock37PC := 85.
        ].
        recoveredBlock37Step = 85 ifTrue: [
            (recoveredBlock37Stack1) mdlWarningNo: (recoveredBlock37Stack2) with: (recoveredBlock37Stack3).
            recoveredBlock37PC := 87.
        ].
        recoveredBlock37Step = 87 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 88.
        ].
        recoveredBlock37Step = 88 ifTrue: [
            recoveredBlock37Stack2 := readVars.
            recoveredBlock37PC := 90.
        ].
        recoveredBlock37Step = 90 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Arg1.
            recoveredBlock37PC := 91.
        ].
        recoveredBlock37Step = 91 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) varDecl.
            recoveredBlock37PC := 93.
        ].
        recoveredBlock37Step = 93 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) errLabel.
            recoveredBlock37PC := 95.
        ].
        recoveredBlock37Step = 95 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) includes: (recoveredBlock37Stack3).
            recoveredBlock37PC := 97.
        ].
        recoveredBlock37Step = 97 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 123] ifFalse: [recoveredBlock37PC := 100].
        ].
        recoveredBlock37Step = 100 ifTrue: [
            recoveredBlock37Stack2 := self.
            recoveredBlock37PC := 101.
        ].
        recoveredBlock37Step = 101 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Arg1.
            recoveredBlock37PC := 102.
        ].
        recoveredBlock37Step = 102 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) mdlClass.
            recoveredBlock37PC := 103.
        ].
        recoveredBlock37Step = 103 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) isINorOUTpossibleForType: (recoveredBlock37Stack3).
            recoveredBlock37PC := 105.
        ].
        recoveredBlock37Step = 105 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 108] ifFalse: [recoveredBlock37PC := 123].
        ].
        recoveredBlock37Step = 108 ifTrue: [
            recoveredBlock37PC := 109.
        ].
        recoveredBlock37Step = 109 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 110.
        ].
        recoveredBlock37Step = 110 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) varDecl.
            recoveredBlock37PC := 112.
        ].
        recoveredBlock37Step = 112 ifTrue: [
            recoveredBlock37Stack2 := 97.
            recoveredBlock37PC := 116.
        ].
        recoveredBlock37Step = 116 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Arg1.
            recoveredBlock37PC := 117.
        ].
        recoveredBlock37Step = 117 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) varDecl.
            recoveredBlock37PC := 119.
        ].
        recoveredBlock37Step = 119 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) errLabel.
            recoveredBlock37PC := 121.
        ].
        recoveredBlock37Step = 121 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) mdlWarningNo: (recoveredBlock37Stack2) with: (recoveredBlock37Stack3).
            recoveredBlock37PC := 123.
        ].
        recoveredBlock37Step = 123 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048b454; bytecode file offset 0xd87d4c"
!SGLocalVarInitState methodsFor: 'recovered'!
readAccess: recoveredArg1 fieldAccessChain: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIdentifier.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgReferenceType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlReadableItem.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) mdlSemErrReadOfWriteOnlyElement.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 |
    recoveredBlock38Value0 := recoveredBlock38Arg1.
    recoveredBlock38Value1 := [:recoveredBlock38Block47Arg1 | 
    | recoveredBlock38Block47Stack0 recoveredBlock38Block47Stack1 recoveredBlock38Block47Stack2 recoveredBlock38Block47Stack3 recoveredBlock38Block47Stack4 recoveredBlock38Block47Stack5 recoveredBlock38Block47Stack6 recoveredBlock38Block47Stack7 recoveredBlock38Block47Stack8 recoveredBlock38Block47PC recoveredBlock38Block47Step recoveredBlock38Block47Done recoveredBlock38Block47Result |
    recoveredBlock38Block47Stack0 := self.
    recoveredBlock38Block47PC := 54.
    recoveredBlock38Block47Done := false.
    [recoveredBlock38Block47Done not] whileTrue: [
        recoveredBlock38Block47Step := recoveredBlock38Block47PC.
        recoveredBlock38Block47Step = 54 ifTrue: [
            recoveredBlock38Block47Stack1 := recoveredBlock38Block47Arg1.
            recoveredBlock38Block47PC := 55.
        ].
        recoveredBlock38Block47Step = 55 ifTrue: [
            recoveredBlock38Block47Stack2 := recoveredBlock38Arg1.
            recoveredBlock38Block47PC := 58.
        ].
        recoveredBlock38Block47Step = 58 ifTrue: [
            recoveredBlock38Block47Stack3 := recoveredBlock38Arg1.
            recoveredBlock38Block47PC := 61.
        ].
        recoveredBlock38Block47Step = 61 ifTrue: [
            recoveredBlock38Block47Stack4 := recoveredArg1.
            recoveredBlock38Block47PC := 64.
        ].
        recoveredBlock38Block47Step = 64 ifTrue: [
            recoveredBlock38Block47Stack4 := (recoveredBlock38Block47Stack4) varDecl.
            recoveredBlock38Block47PC := 66.
        ].
        recoveredBlock38Block47Step = 66 ifTrue: [
            recoveredBlock38Block47Stack3 := (recoveredBlock38Block47Stack3) = (recoveredBlock38Block47Stack4).
            recoveredBlock38Block47PC := 67.
        ].
        recoveredBlock38Block47Step = 67 ifTrue: [
            (recoveredBlock38Block47Stack3) ifTrue: [recoveredBlock38Block47PC := 70] ifFalse: [recoveredBlock38Block47PC := 76].
        ].
        recoveredBlock38Block47Step = 70 ifTrue: [
            recoveredBlock38Block47Stack3 := recoveredArg2.
            recoveredBlock38Block47PC := 73.
        ].
        recoveredBlock38Block47Step = 73 ifTrue: [
            recoveredBlock38Block47PC := 80.
        ].
        recoveredBlock38Block47Step = 76 ifTrue: [
            recoveredBlock38Block47Stack3 := OrderedCollection.
            recoveredBlock38Block47PC := 78.
        ].
        recoveredBlock38Block47Step = 78 ifTrue: [
            recoveredBlock38Block47Stack3 := (recoveredBlock38Block47Stack3) new.
            recoveredBlock38Block47PC := 80.
        ].
        recoveredBlock38Block47Step = 80 ifTrue: [
            recoveredBlock38Block47Stack4 := self.
            recoveredBlock38Block47PC := 81.
        ].
        recoveredBlock38Block47Step = 81 ifTrue: [
            recoveredBlock38Block47Stack4 := (recoveredBlock38Block47Stack4) currentCondition.
            recoveredBlock38Block47PC := 83.
        ].
        recoveredBlock38Block47Step = 83 ifTrue: [
            recoveredBlock38Block47Stack5 := [
    | recoveredBlock38Block47Block83Value0 recoveredBlock38Block47Block83Value1 |
    recoveredBlock38Block47Block83Value0 := recoveredBlock38Arg1.
    recoveredBlock38Block47Block83Value1 := (recoveredBlock38Block47Block83Value0) errLabel.
    recoveredBlock38Block47Block83Value1
].
            recoveredBlock38Block47PC := 96.
        ].
        recoveredBlock38Block47Step = 96 ifTrue: [
            recoveredBlock38Block47Stack6 := false.
            recoveredBlock38Block47PC := 97.
        ].
        recoveredBlock38Block47Step = 97 ifTrue: [
            recoveredBlock38Block47Stack7 := recoveredArg1.
            recoveredBlock38Block47PC := 100.
        ].
        recoveredBlock38Block47Step = 100 ifTrue: [
            recoveredBlock38Block47Stack7 := (recoveredBlock38Block47Stack7) source.
            recoveredBlock38Block47PC := 102.
        ].
        recoveredBlock38Block47Step = 102 ifTrue: [
            recoveredBlock38Block47Stack1 := (recoveredBlock38Block47Stack1) checkReadAccessVarDecl: (recoveredBlock38Block47Stack2) accessChain: (recoveredBlock38Block47Stack3) currentCondition: (recoveredBlock38Block47Stack4) errLabelBlock: (recoveredBlock38Block47Stack5) onlyWarning: (recoveredBlock38Block47Stack6) source: (recoveredBlock38Block47Stack7).
            recoveredBlock38Block47PC := 105.
        ].
        recoveredBlock38Block47Step = 105 ifTrue: [
            recoveredBlock38Block47Result := recoveredBlock38Block47Stack1.
            recoveredBlock38Block47Done := true.
        ].
    ].
    recoveredBlock38Block47Result
].
    recoveredBlock38Value2 := (self) withVarDeclStateFor: (recoveredBlock38Value0) do: (recoveredBlock38Value1).
    recoveredBlock38Value2
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlParmDecl.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) addReadAccess: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d0180; bytecode file offset 0xdcca6c"
!SGLocalVarInitState methodsFor: 'recovered'!
writeAccess: recoveredArg1 fieldAccessChain: recoveredArg2 source: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) accessChain.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 recoveredBlock32Value5 recoveredBlock32Value6 recoveredBlock32Value7 recoveredBlock32Value8 |
    recoveredBlock32Value0 := recoveredBlock32Arg1.
    recoveredBlock32Value1 := recoveredLocal2.
    recoveredBlock32Value2 := OrderedCollection.
    recoveredBlock32Value3 := (recoveredBlock32Value2) new.
    recoveredBlock32Value4 := (self) currentCondition.
    recoveredBlock32Value5 := [
    | recoveredBlock32Block49Value0 recoveredBlock32Block49Value1 |
    recoveredBlock32Block49Value0 := recoveredLocal2.
    recoveredBlock32Block49Value1 := (recoveredBlock32Block49Value0) errLabel.
    recoveredBlock32Block49Value1
].
    recoveredBlock32Value6 := recoveredArg1.
    recoveredBlock32Value7 := (recoveredBlock32Value6) source.
    recoveredBlock32Value8 := (recoveredBlock32Value0) checkReadAccessVarDecl: (recoveredBlock32Value1) accessChain: (recoveredBlock32Value3) currentCondition: (recoveredBlock32Value4) errLabelBlock: (recoveredBlock32Value5) onlyWarning: (false) source: (recoveredBlock32Value7).
    recoveredBlock32Value8
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack3) withVarDeclStateFor: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 14] ifFalse: [recoveredPC := 103]] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := [:recoveredBlock107Arg1 | 
    | recoveredBlock107Value0 recoveredBlock107Value1 recoveredBlock107Value2 recoveredBlock107Value3 recoveredBlock107Value4 |
    recoveredBlock107Value0 := recoveredBlock107Arg1.
    recoveredBlock107Value1 := recoveredArg2.
    recoveredBlock107Value2 := (self) currentCondition.
    recoveredBlock107Value3 := recoveredArg3.
    recoveredBlock107Value4 := (recoveredBlock107Value0) addWriteAccessFor: (recoveredBlock107Value1) condition: (recoveredBlock107Value2) source: (recoveredBlock107Value3).
    recoveredBlock107Value4
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) withVarDeclStateFor: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) varDecl.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) addWriteAccess: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) assignVar: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20529ae4; bytecode file offset 0xe263f4"
!SGLocalVarInitState methodsFor: 'recovered'!
checkMethodExit: recoveredArg1 source: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) declaration.
    recoveredValue2 := (recoveredValue1) parmChildren.
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9Stack5 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) source.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg2.
            recoveredBlock9PC := 26.
        ].
        recoveredBlock9Step = 26 ifTrue: [
            recoveredBlock9Stack2 := [
    | recoveredBlock9Block26Value0 recoveredBlock9Block26Value1 recoveredBlock9Block26Value2 recoveredBlock9Block26Value3 |
    recoveredBlock9Block26Value0 := recoveredBlock9Local1.
    recoveredBlock9Block26Value1 := recoveredArg2.
    recoveredBlock9Block26Value2 := (recoveredBlock9Block26Value0) createMultiSource: (recoveredBlock9Block26Value1) labels: ('last method statement').
    recoveredBlock9Block26Value3 := recoveredBlock9Block26Value2.
    recoveredBlock9Local1 := recoveredBlock9Block26Value3.
    recoveredBlock9Block26Value2
].
            recoveredBlock9PC := 47.
        ].
        recoveredBlock9Step = 47 ifTrue: [
            (recoveredBlock9Stack1) notNil: (recoveredBlock9Stack2).
            recoveredBlock9PC := 49.
        ].
        recoveredBlock9Step = 49 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 52.
        ].
        recoveredBlock9Step = 52 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isMdlArgumentUsageOut.
            recoveredBlock9PC := 54.
        ].
        recoveredBlock9Step = 54 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 58] ifFalse: [recoveredBlock9PC := 102].
        ].
        recoveredBlock9Step = 58 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 59.
        ].
        recoveredBlock9Step = 59 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 62.
        ].
        recoveredBlock9Step = 62 ifTrue: [
            recoveredBlock9Stack3 := [:recoveredBlock9Block62Arg1 | 
    | recoveredBlock9Block62Value0 recoveredBlock9Block62Value1 recoveredBlock9Block62Value2 recoveredBlock9Block62Value3 recoveredBlock9Block62Value4 recoveredBlock9Block62Value5 recoveredBlock9Block62Value6 recoveredBlock9Block62Value7 |
    recoveredBlock9Block62Value0 := recoveredBlock9Block62Arg1.
    recoveredBlock9Block62Value1 := recoveredBlock9Arg1.
    recoveredBlock9Block62Value2 := OrderedCollection.
    recoveredBlock9Block62Value3 := (recoveredBlock9Block62Value2) new.
    recoveredBlock9Block62Value4 := (self) currentCondition.
    recoveredBlock9Block62Value5 := [
    | recoveredBlock9Block62Block79Value0 recoveredBlock9Block62Block79Value1 |
    recoveredBlock9Block62Block79Value0 := recoveredBlock9Arg1.
    recoveredBlock9Block62Block79Value1 := (recoveredBlock9Block62Block79Value0) errLabel.
    recoveredBlock9Block62Block79Value1
].
    recoveredBlock9Block62Value6 := recoveredBlock9Local1.
    recoveredBlock9Block62Value7 := (recoveredBlock9Block62Value0) checkReadOfReferencedElementAccessVarDecl: (recoveredBlock9Block62Value1) accessChain: (recoveredBlock9Block62Value3) currentCondition: (recoveredBlock9Block62Value4) errLabelBlock: (recoveredBlock9Block62Value5) onlyWarning: (false) source: (recoveredBlock9Block62Value6).
    recoveredBlock9Block62Value7
].
            recoveredBlock9PC := 100.
        ].
        recoveredBlock9Step = 100 ifTrue: [
            (recoveredBlock9Stack1) withVarDeclStateFor: (recoveredBlock9Stack2) do: (recoveredBlock9Stack3).
            recoveredBlock9PC := 102.
        ].
        recoveredBlock9Step = 102 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 103.
        ].
        recoveredBlock9Step = 103 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 106.
        ].
        recoveredBlock9Step = 106 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) isMdlArgumentUsageInOut.
            recoveredBlock9PC := 108.
        ].
        recoveredBlock9Step = 108 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 112] ifFalse: [recoveredBlock9PC := 195].
        ].
        recoveredBlock9Step = 112 ifTrue: [
            recoveredBlock9PC := 113.
        ].
        recoveredBlock9Step = 113 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 116.
        ].
        recoveredBlock9Step = 116 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) varDecl.
            recoveredBlock9PC := 118.
        ].
        recoveredBlock9Step = 118 ifTrue: [
            recoveredLocal1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 121.
        ].
        recoveredBlock9Step = 121 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 122.
        ].
        recoveredBlock9Step = 122 ifTrue: [
            recoveredBlock9Stack2 := recoveredLocal1.
            recoveredBlock9PC := 125.
        ].
        recoveredBlock9Step = 125 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) mdlClass.
            recoveredBlock9PC := 127.
        ].
        recoveredBlock9Step = 127 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) isMdlANSIC.
            recoveredBlock9PC := 129.
        ].
        recoveredBlock9Step = 129 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 195] ifFalse: [recoveredBlock9PC := 132].
        ].
        recoveredBlock9Step = 132 ifTrue: [
            recoveredBlock9PC := 133.
        ].
        recoveredBlock9Step = 133 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 134.
        ].
        recoveredBlock9Step = 134 ifTrue: [
            recoveredBlock9Stack2 := assignedVars.
            recoveredBlock9PC := 136.
        ].
        recoveredBlock9Step = 136 ifTrue: [
            recoveredBlock9Stack3 := recoveredLocal1.
            recoveredBlock9PC := 139.
        ].
        recoveredBlock9Step = 139 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) errLabel.
            recoveredBlock9PC := 141.
        ].
        recoveredBlock9Step = 141 ifTrue: [
            recoveredBlock9Stack4 := '_RETURN_ASSIGN_MARKER'.
            recoveredBlock9PC := 143.
        ].
        recoveredBlock9Step = 143 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) , (recoveredBlock9Stack4).
            recoveredBlock9PC := 145.
        ].
        recoveredBlock9Step = 145 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) includes: (recoveredBlock9Stack3).
            recoveredBlock9PC := 147.
        ].
        recoveredBlock9Step = 147 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 195] ifFalse: [recoveredBlock9PC := 150].
        ].
        recoveredBlock9Step = 150 ifTrue: [
            recoveredBlock9PC := 151.
        ].
        recoveredBlock9Step = 151 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 152.
        ].
        recoveredBlock9Step = 152 ifTrue: [
            recoveredBlock9Stack2 := self.
            recoveredBlock9PC := 153.
        ].
        recoveredBlock9Step = 153 ifTrue: [
            recoveredBlock9Stack3 := recoveredLocal1.
            recoveredBlock9PC := 156.
        ].
        recoveredBlock9Step = 156 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) mdlClass.
            recoveredBlock9PC := 158.
        ].
        recoveredBlock9Step = 158 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) isINorOUTpossibleForType: (recoveredBlock9Stack3).
            recoveredBlock9PC := 160.
        ].
        recoveredBlock9Step = 160 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 164] ifFalse: [recoveredBlock9PC := 195].
        ].
        recoveredBlock9Step = 164 ifTrue: [
            recoveredBlock9Stack2 := assignedVars.
            recoveredBlock9PC := 166.
        ].
        recoveredBlock9Step = 166 ifTrue: [
            recoveredBlock9Stack3 := recoveredLocal1.
            recoveredBlock9PC := 169.
        ].
        recoveredBlock9Step = 169 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) errLabel.
            recoveredBlock9PC := 171.
        ].
        recoveredBlock9Step = 171 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) includes: (recoveredBlock9Stack3).
            recoveredBlock9PC := 173.
        ].
        recoveredBlock9Step = 173 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 195] ifFalse: [recoveredBlock9PC := 176].
        ].
        recoveredBlock9Step = 176 ifTrue: [
            recoveredBlock9PC := 177.
        ].
        recoveredBlock9Step = 177 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 180.
        ].
        recoveredBlock9Step = 180 ifTrue: [
            recoveredBlock9Stack2 := 97.
            recoveredBlock9PC := 184.
        ].
        recoveredBlock9Step = 184 ifTrue: [
            recoveredBlock9Stack3 := recoveredLocal1.
            recoveredBlock9PC := 187.
        ].
        recoveredBlock9Step = 187 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) errLabel.
            recoveredBlock9PC := 189.
        ].
        recoveredBlock9Step = 189 ifTrue: [
            recoveredBlock9Stack4 := recoveredBlock9Local1.
            recoveredBlock9PC := 192.
        ].
        recoveredBlock9Step = 192 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) mdlInfoNo: (recoveredBlock9Stack2) with: (recoveredBlock9Stack3) source: (recoveredBlock9Stack4).
            recoveredBlock9PC := 195.
        ].
        recoveredBlock9Step = 195 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20535d08; bytecode file offset 0xe32608"
!SGLocalVarInitState methodsFor: 'recovered'!
createVarDeclStateFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlANSIC.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
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
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlParmDecl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArgumentUsageOut.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgRecordType.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := SGMdRecordVarDeclInitState.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 95.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) literalFalse.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) createErrorNo: (recoveredStack2) condition: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArrayType.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := SGMdArrayVarDeclInitState.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 95.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) literalFalse.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) createErrorNo: (recoveredStack2) condition: (recoveredStack3) varDecl: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := SGMdScalarVarDeclInitState.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 95.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) literalFalse.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) createErrorNo: (recoveredStack2) condition: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := SGMdReferenceVarDeclInitState.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 821.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) literalTrue.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) createErrorNo: (recoveredStack2) condition: (recoveredStack3) subState: (recoveredStack4).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBlockVarDecl.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlReference.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := SGMdReferenceVarDeclInitState.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := 821.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := (recoveredStack3) literalFalse.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) createErrorNo: (recoveredStack2) condition: (recoveredStack3) subState: (recoveredStack4).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgRecordType.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 151].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := SGMdRecordVarDeclInitState.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := 82.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := (recoveredStack3) literalFalse.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) createErrorNo: (recoveredStack2) condition: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArrayType.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := SGMdArrayVarDeclInitState.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := 82.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := (recoveredStack3) literalFalse.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) createErrorNo: (recoveredStack2) condition: (recoveredStack3) varDecl: (recoveredStack4).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := SGMdScalarVarDeclInitState.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := 82.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := (recoveredStack3) literalFalse.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) createErrorNo: (recoveredStack2) condition: (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlUninitializedReference: (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := SGMdReferenceVarDeclInitState.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := 822.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalFalse.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := (recoveredStack0) createErrorNo: (recoveredStack1) condition: (recoveredStack2) subState: (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200718ec; bytecode file offset 0x96e578"
!SGContTimeCodeGO methodsFor: 'recovered'!
storagePositionOffset
    ^0
! !

"ASDBase.ic method 0x20405630; bytecode file offset 0xd01f10"
!SGContTimeCodeGO methodsFor: 'recovered'!
buildLogic: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodsForElement: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodParameter.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTOutput.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifier.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) sgClass.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) inputOutputVariablesForAccess.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockId: (recoveredStack1) return: (recoveredStack2) methods: (recoveredStack3) inouts: (recoveredStack4) hierarchy: (recoveredStack5).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifier.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := (recoveredStack4) sgClass.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := (recoveredStack4) inputOutputVariablesForAccess.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockId: (recoveredStack1) argument: (recoveredStack2) methods: (recoveredStack3) inouts: (recoveredStack4) hierarchy: (recoveredStack5).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifier.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := (recoveredStack4) sgClass.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := (recoveredStack4) inputOutputVariablesForAccess.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockId: (recoveredStack1) variable: (recoveredStack2) methods: (recoveredStack3) inouts: (recoveredStack4) hierarchy: (recoveredStack5).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildInterfaceLogic: (recoveredStack1) block: (recoveredStack2) methods: (recoveredStack3) for: (recoveredStack4).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205968b0; bytecode file offset 0xe931c8"
!SGContTimeCodeGO methodsFor: 'recovered'!
buildInterfaceLogic: recoveredArg1 block: recoveredArg2 methods: recoveredArg3 for: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalInputOutputMethodsSetEnabled: (recoveredStack1) getEnabled: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequenceIsOn.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21Stack5 recoveredBlock21Stack6 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
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
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) hasReturnValue.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 90] ifFalse: [recoveredBlock21PC := 36].
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 38.
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) aliasName.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) interfaceSelectorAlias: (recoveredBlock21Stack2).
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 44.
        ].
        recoveredBlock21Step = 44 ifTrue: [
            recoveredLocal6 := recoveredBlock21Stack2.
            recoveredBlock21PC := 47.
        ].
        recoveredBlock21Step = 47 ifTrue: [
            (recoveredBlock21Stack1 == nil) ifTrue: [recoveredBlock21PC := 62] ifFalse: [recoveredBlock21PC := 50].
        ].
        recoveredBlock21Step = 50 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal6.
            recoveredBlock21PC := 53.
        ].
        recoveredBlock21Step = 53 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) logicSequenceDescription.
            recoveredBlock21PC := 55.
        ].
        recoveredBlock21Step = 55 ifTrue: [
            recoveredLocal4 := recoveredBlock21Stack1.
            recoveredBlock21PC := 58.
        ].
        recoveredBlock21Step = 58 ifTrue: [
            recoveredBlock21PC := 72.
        ].
        recoveredBlock21Step = 62 ifTrue: [
            recoveredBlock21Stack1 := SGCallGO.
            recoveredBlock21PC := 64.
        ].
        recoveredBlock21Step = 64 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 65.
        ].
        recoveredBlock21Step = 65 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) aliasName.
            recoveredBlock21PC := 67.
        ].
        recoveredBlock21Step = 67 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) defaultSequenceDescriptionForAlias: (recoveredBlock21Stack2).
            recoveredBlock21PC := 69.
        ].
        recoveredBlock21Step = 69 ifTrue: [
            recoveredLocal4 := recoveredBlock21Stack1.
            recoveredBlock21PC := 72.
        ].
        recoveredBlock21Step = 72 ifTrue: [
            recoveredBlock21Stack1 := recoveredArg1.
            recoveredBlock21PC := 75.
        ].
        recoveredBlock21Step = 75 ifTrue: [
            recoveredBlock21Stack2 := recoveredLocal4.
            recoveredBlock21PC := 78.
        ].
        recoveredBlock21Step = 78 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Arg1.
            recoveredBlock21PC := 79.
        ].
        recoveredBlock21Step = 79 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) aliasName.
            recoveredBlock21PC := 81.
        ].
        recoveredBlock21Step = 81 ifTrue: [
            recoveredBlock21Stack4 := recoveredArg2.
            recoveredBlock21PC := 84.
        ].
        recoveredBlock21Step = 84 ifTrue: [
            recoveredBlock21Stack5 := recoveredArg4.
            recoveredBlock21PC := 87.
        ].
        recoveredBlock21Step = 87 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) sequence: (recoveredBlock21Stack2) forAlias: (recoveredBlock21Stack3) ofBlock: (recoveredBlock21Stack4) hierarchy: (recoveredBlock21Stack5).
            recoveredBlock21PC := 90.
        ].
        recoveredBlock21Step = 90 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := [:recoveredBlock110Arg1 | 
    | recoveredBlock110Stack0 recoveredBlock110Stack1 recoveredBlock110Stack2 recoveredBlock110Stack3 recoveredBlock110Stack4 recoveredBlock110Stack5 recoveredBlock110Stack6 recoveredBlock110PC recoveredBlock110Step recoveredBlock110Done recoveredBlock110Result |
    recoveredBlock110Stack0 := self.
    recoveredBlock110PC := 116.
    recoveredBlock110Done := false.
    [recoveredBlock110Done not] whileTrue: [
        recoveredBlock110Step := recoveredBlock110PC.
        recoveredBlock110Step = 116 ifTrue: [
            recoveredBlock110Stack1 := recoveredBlock110Arg1.
            recoveredBlock110PC := 117.
        ].
        recoveredBlock110Step = 117 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) isSelectorPort.
            recoveredBlock110PC := 119.
        ].
        recoveredBlock110Step = 119 ifTrue: [
            (recoveredBlock110Stack1) ifTrue: [recoveredBlock110PC := 122] ifFalse: [recoveredBlock110PC := 134].
        ].
        recoveredBlock110Step = 122 ifTrue: [
            recoveredBlock110Stack1 := self.
            recoveredBlock110PC := 123.
        ].
        recoveredBlock110Step = 123 ifTrue: [
            recoveredBlock110Stack2 := recoveredBlock110Arg1.
            recoveredBlock110PC := 124.
        ].
        recoveredBlock110Step = 124 ifTrue: [
            recoveredBlock110Stack2 := (recoveredBlock110Stack2) aliasName.
            recoveredBlock110PC := 126.
        ].
        recoveredBlock110Step = 126 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) interfaceSelectorAlias: (recoveredBlock110Stack2).
            recoveredBlock110PC := 128.
        ].
        recoveredBlock110Step = 128 ifTrue: [
            recoveredLocal6 := recoveredBlock110Stack1.
            recoveredBlock110PC := 131.
        ].
        recoveredBlock110Step = 131 ifTrue: [
            recoveredBlock110PC := 143.
        ].
        recoveredBlock110Step = 134 ifTrue: [
            recoveredBlock110Stack1 := self.
            recoveredBlock110PC := 135.
        ].
        recoveredBlock110Step = 135 ifTrue: [
            recoveredBlock110Stack2 := recoveredBlock110Arg1.
            recoveredBlock110PC := 136.
        ].
        recoveredBlock110Step = 136 ifTrue: [
            recoveredBlock110Stack2 := (recoveredBlock110Stack2) aliasName.
            recoveredBlock110PC := 138.
        ].
        recoveredBlock110Step = 138 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) interfaceReturnAlias: (recoveredBlock110Stack2).
            recoveredBlock110PC := 140.
        ].
        recoveredBlock110Step = 140 ifTrue: [
            recoveredLocal6 := recoveredBlock110Stack1.
            recoveredBlock110PC := 143.
        ].
        recoveredBlock110Step = 143 ifTrue: [
            recoveredBlock110Stack1 := nil.
            recoveredBlock110PC := 144.
        ].
        recoveredBlock110Step = 144 ifTrue: [
            recoveredBlock110Stack2 := recoveredLocal6.
            recoveredBlock110PC := 147.
        ].
        recoveredBlock110Step = 147 ifTrue: [
            (recoveredBlock110Stack2 == nil) ifTrue: [recoveredBlock110PC := 231] ifFalse: [recoveredBlock110PC := 150].
        ].
        recoveredBlock110Step = 150 ifTrue: [
            recoveredBlock110PC := 151.
        ].
        recoveredBlock110Step = 151 ifTrue: [
            recoveredBlock110Stack1 := recoveredLocal6.
            recoveredBlock110PC := 154.
        ].
        recoveredBlock110Step = 154 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) logicSequenceDescription.
            recoveredBlock110PC := 156.
        ].
        recoveredBlock110Step = 156 ifTrue: [
            recoveredLocal4 := recoveredBlock110Stack1.
            recoveredBlock110PC := 159.
        ].
        recoveredBlock110Step = 159 ifTrue: [
            recoveredBlock110Stack1 := nil.
            recoveredBlock110PC := 160.
        ].
        recoveredBlock110Step = 160 ifTrue: [
            recoveredBlock110Stack2 := recoveredLocal6.
            recoveredBlock110PC := 163.
        ].
        recoveredBlock110Step = 163 ifTrue: [
            recoveredBlock110Stack2 := (recoveredBlock110Stack2) modelVisibility.
            recoveredBlock110PC := 165.
        ].
        recoveredBlock110Step = 165 ifTrue: [
            (recoveredBlock110Stack2) ifTrue: [recoveredBlock110PC := 168] ifFalse: [recoveredBlock110PC := 231].
        ].
        recoveredBlock110Step = 168 ifTrue: [
            recoveredBlock110PC := 169.
        ].
        recoveredBlock110Step = 169 ifTrue: [
            recoveredBlock110Stack1 := recoveredLocal2.
            recoveredBlock110PC := 172.
        ].
        recoveredBlock110Step = 172 ifTrue: [
            recoveredBlock110Stack2 := recoveredLocal6.
            recoveredBlock110PC := 175.
        ].
        recoveredBlock110Step = 175 ifTrue: [
            recoveredBlock110Stack2 := (recoveredBlock110Stack2) inputs.
            recoveredBlock110PC := 177.
        ].
        recoveredBlock110Step = 177 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) , (recoveredBlock110Stack2).
            recoveredBlock110PC := 179.
        ].
        recoveredBlock110Step = 179 ifTrue: [
            recoveredLocal2 := recoveredBlock110Stack1.
            recoveredBlock110PC := 182.
        ].
        recoveredBlock110Step = 182 ifTrue: [
            recoveredBlock110Stack1 := recoveredBlock110Arg1.
            recoveredBlock110PC := 183.
        ].
        recoveredBlock110Step = 183 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) hasReturnValue.
            recoveredBlock110PC := 185.
        ].
        recoveredBlock110Step = 185 ifTrue: [
            (recoveredBlock110Stack1) ifTrue: [recoveredBlock110PC := 188] ifFalse: [recoveredBlock110PC := 199].
        ].
        recoveredBlock110Step = 188 ifTrue: [
            recoveredBlock110Stack1 := recoveredLocal1.
            recoveredBlock110PC := 191.
        ].
        recoveredBlock110Step = 191 ifTrue: [
            recoveredBlock110Stack2 := recoveredLocal6.
            recoveredBlock110PC := 194.
        ].
        recoveredBlock110Step = 194 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) copyWith: (recoveredBlock110Stack2).
            recoveredBlock110PC := 196.
        ].
        recoveredBlock110Step = 196 ifTrue: [
            recoveredLocal1 := recoveredBlock110Stack1.
            recoveredBlock110PC := 199.
        ].
        recoveredBlock110Step = 199 ifTrue: [
            recoveredBlock110Stack1 := nil.
            recoveredBlock110PC := 200.
        ].
        recoveredBlock110Step = 200 ifTrue: [
            recoveredBlock110Stack2 := recoveredBlock110Arg1.
            recoveredBlock110PC := 201.
        ].
        recoveredBlock110Step = 201 ifTrue: [
            recoveredBlock110Stack2 := (recoveredBlock110Stack2) arguments.
            recoveredBlock110PC := 203.
        ].
        recoveredBlock110Step = 203 ifTrue: [
            recoveredBlock110Stack2 := (recoveredBlock110Stack2) notEmpty.
            recoveredBlock110PC := 205.
        ].
        recoveredBlock110Step = 205 ifTrue: [
            (recoveredBlock110Stack2) ifTrue: [recoveredBlock110PC := 208] ifFalse: [recoveredBlock110PC := 231].
        ].
        recoveredBlock110Step = 208 ifTrue: [
            recoveredBlock110PC := 209.
        ].
        recoveredBlock110Step = 209 ifTrue: [
            recoveredBlock110Stack1 := recoveredArg1.
            recoveredBlock110PC := 212.
        ].
        recoveredBlock110Step = 212 ifTrue: [
            recoveredBlock110Stack2 := recoveredLocal4.
            recoveredBlock110PC := 215.
        ].
        recoveredBlock110Step = 215 ifTrue: [
            recoveredBlock110Stack3 := recoveredBlock110Arg1.
            recoveredBlock110PC := 216.
        ].
        recoveredBlock110Step = 216 ifTrue: [
            recoveredBlock110Stack3 := (recoveredBlock110Stack3) arguments.
            recoveredBlock110PC := 218.
        ].
        recoveredBlock110Step = 218 ifTrue: [
            recoveredBlock110Stack3 := (recoveredBlock110Stack3) first.
            recoveredBlock110PC := 220.
        ].
        recoveredBlock110Step = 220 ifTrue: [
            recoveredBlock110Stack3 := (recoveredBlock110Stack3) aliasName.
            recoveredBlock110PC := 222.
        ].
        recoveredBlock110Step = 222 ifTrue: [
            recoveredBlock110Stack4 := recoveredArg2.
            recoveredBlock110PC := 225.
        ].
        recoveredBlock110Step = 225 ifTrue: [
            recoveredBlock110Stack5 := recoveredArg4.
            recoveredBlock110PC := 228.
        ].
        recoveredBlock110Step = 228 ifTrue: [
            recoveredBlock110Stack1 := (recoveredBlock110Stack1) sequence: (recoveredBlock110Stack2) forAlias: (recoveredBlock110Stack3) ofBlock: (recoveredBlock110Stack4) hierarchy: (recoveredBlock110Stack5).
            recoveredBlock110PC := 231.
        ].
        recoveredBlock110Step = 231 ifTrue: [
            recoveredBlock110Result := recoveredBlock110Stack1.
            recoveredBlock110Done := true.
        ].
    ].
    recoveredBlock110Result
].
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 257].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack0) inputIds: (recoveredStack1) block: (recoveredStack2) hierarchy: (recoveredStack3).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 266] ifFalse: [recoveredPC := 281].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack0) outputIds: (recoveredStack1) block: (recoveredStack2) hierarchy: (recoveredStack3).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


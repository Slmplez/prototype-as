"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005d268; bytecode file offset 0x959d74"
!ASAP2VariantModuleLabel methodsFor: 'recovered'!
forbiddenCombinations
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) variantCoding.
    recoveredValue2 := (recoveredValue1) forbiddenCombinations.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d378; bytecode file offset 0x959d74"
!ASAP2VariantModuleLabel methodsFor: 'recovered'!
forbiddenCombination
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) variantCoding.
    recoveredValue2 := (recoveredValue1) forbiddenCombination.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d3e8; bytecode file offset 0x959d74"
!ASAP2VariantModuleLabel methodsFor: 'recovered'!
allForbiddenCombinations
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) variantCoding.
    recoveredValue2 := (recoveredValue1) allForbiddenCombinations.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20092820; bytecode file offset 0x98f0ec"
!ASAP2VariantModuleLabel methodsFor: 'recovered'!
allForbiddenCombinations: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) variantCoding.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) allForbiddenCombinations: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c2044; bytecode file offset 0x9beac8"
!ASAP2VariantModuleLabel methodsFor: 'recovered'!
selectedVariant: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedVariant := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20119c44; bytecode file offset 0xa16880"
!ASAP2VariantModuleLabel methodsFor: 'recovered'!
clearVarAddressTables
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allCalibrationLabels.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c8058Arg1 | 
    | block280c8058Value0 block280c8058Value1 |
    block280c8058Value0 := block280c8058Arg1.
    block280c8058Value1 := (block280c8058Value0) clearVarAddressTable.
    block280c8058Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013afcc; bytecode file offset 0xa37888"
!ASAP2VariantModuleLabel methodsFor: 'recovered'!
selectedVariant
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedVariant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) variantCoding.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultVariant.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            selectedVariant := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := selectedVariant.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20144b04; bytecode file offset 0xa413c8"
!ASAP2VariantModuleLabel methodsFor: 'recovered'!
selectedVariantFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := (self) selectedVariant.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) includesCombination: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) firstOrNil.
    ^recoveredValue3
! !

"ASDBase.ic method 0x202ec944; bytecode file offset 0xbe9218"
!ASAP2VariantModuleLabel methodsFor: 'recovered'!
selectedVariant: recoveredArg1 order: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 :recoveredBlock7Arg2 | 
    | recoveredBlock7Local1 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := asap2.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) variantCoding.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) combinationOrder.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) indexOf: (recoveredBlock7Stack2).
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack2.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack2 := 0.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) = (recoveredBlock7Stack2).
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 28] ifFalse: [recoveredBlock7PC := 34].
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) etasDevHalt.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack1 := selectedVariant.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local1.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg1.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack4 := recoveredBlock7Arg2.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) at: (recoveredBlock7Stack4).
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) at: (recoveredBlock7Stack2) put: (recoveredBlock7Stack3).
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) doWithIndex: (recoveredValue1).
    (self) clearVarAddressTables.
    ^self
! !


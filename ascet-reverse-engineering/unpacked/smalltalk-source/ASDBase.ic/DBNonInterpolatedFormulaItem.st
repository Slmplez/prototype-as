"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001398; bytecode file offset 0x8ffcfc"
!DBNonInterpolatedFormulaItem methodsFor: 'recovered'!
noInvertibleFormulaAccessor
    ^self
! !

"ASDBase.ic method 0x200213ec; bytecode file offset 0x92209c"
!DBNonInterpolatedFormulaItem methodsFor: 'recovered'!
asap2CompuMethodType
    ^'TAB_NOINTP'
! !

"ASDBase.ic method 0x20072890; bytecode file offset 0x96f1c4"
!DBNonInterpolatedFormulaItem methodsFor: 'recovered'!
mdfFormulaId
    ^2
! !

"ASDBase.ic method 0x20293614; bytecode file offset 0xb8fed0"
!DBNonInterpolatedFormulaItem methodsFor: 'recovered'!
calculate: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := valArray.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) <= (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    recoveredValue2 := [
    recoveredLocal1 := 1.
    1
].
    recoveredValue3 := (recoveredValue0) findLast: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := phyArray.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue4) at: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202e9630; bytecode file offset 0xbe5f4c"
!DBNonInterpolatedFormulaItem methodsFor: 'recovered'!
createASAP2Node: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createASAP2Node: (recoveredValue0).
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := ASAP2BytesTabNoIntPCompuMethod.
    recoveredValue3 := (recoveredValue2) createDefault.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := dbItem.
    recoveredValue6 := (recoveredValue5) name.
    (recoveredValue4) name: (recoveredValue6).
    recoveredValue7 := ASAP2CompuTab.
    recoveredValue8 := (recoveredValue7) createDefault.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := (self) valArray.
    recoveredValue12 := (self) phyArray.
    (recoveredValue10) hexTab: (recoveredValue11) physTab: (recoveredValue12).
    recoveredValue13 := dbItem.
    recoveredValue14 := (recoveredValue13) name.
    (recoveredValue9) name: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := recoveredLocal1.
    (recoveredValue15) compuTabRef: (recoveredValue16).
    recoveredValue17 := recoveredLocal3.
    recoveredValue18 := recoveredLocal2.
    (recoveredValue17) compuMethod: (recoveredValue18).
    recoveredValue19 := recoveredLocal3.
    ^recoveredValue19
! !

"ASDBase.ic method 0x2036c3c0; bytecode file offset 0xc68c8c"
!DBNonInterpolatedFormulaItem methodsFor: 'recovered'!
calculateInvers: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNegative.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := valArray.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := valArray.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := phyArray.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 |
    recoveredBlock30Value0 := recoveredBlock30Arg1.
    recoveredBlock30Value1 := recoveredArg1.
    recoveredBlock30Value2 := (recoveredBlock30Value0) <= (recoveredBlock30Value1).
    recoveredBlock30Value2
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := [
    recoveredLocal1 := 1.
    1
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) findLast: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := valArray.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


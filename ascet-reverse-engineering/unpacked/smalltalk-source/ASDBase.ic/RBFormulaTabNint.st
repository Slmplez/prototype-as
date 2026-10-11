"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001fe68; bytecode file offset 0x92209c"
!RBFormulaTabNint methodsFor: 'recovered'!
asap2ConversionType
    ^'TAB_NOINTP'
! !

"ASDBase.ic method 0x20087e50; bytecode file offset 0x984bc0"
!RBFormulaTabNint methodsFor: 'recovered'!
onlineDLLFormulaType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBOnlineDLLConstants.
    recoveredValue1 := (recoveredValue0) at: ('FTabNInt').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20293650; bytecode file offset 0xb8ff0c"
!RBFormulaTabNint methodsFor: 'recovered'!
appliedInverseToNumber: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := hexTab.
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
    recoveredValue4 := physTab.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue4) at: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x204b0cc8; bytecode file offset 0xdad5a8"
!RBFormulaTabNint methodsFor: 'recovered'!
appliedToNumber: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := hexTab.
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
            recoveredStack1 := hexTab.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := physTab.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 |
    recoveredBlock38Value0 := recoveredBlock38Arg1.
    recoveredBlock38Value1 := recoveredArg1.
    recoveredBlock38Value2 := (recoveredBlock38Value0) <= (recoveredBlock38Value1).
    recoveredBlock38Value2
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := [
    recoveredLocal1 := 1.
    1
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) findLast: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := hexTab.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := [:recoveredBlock86Arg1 | 
    | recoveredBlock86Value0 recoveredBlock86Value1 recoveredBlock86Value2 recoveredBlock86Value3 recoveredBlock86Value4 recoveredBlock86Value5 recoveredBlock86Value6 recoveredBlock86Value7 recoveredBlock86Value8 |
    recoveredBlock86Value0 := physTab.
    recoveredBlock86Value1 := [:recoveredBlock86Block94Arg1 | 
    | recoveredBlock86Block94Value0 recoveredBlock86Block94Value1 recoveredBlock86Block94Value2 |
    recoveredBlock86Block94Value0 := recoveredBlock86Block94Arg1.
    recoveredBlock86Block94Value1 := recoveredBlock86Arg1.
    recoveredBlock86Block94Value2 := (recoveredBlock86Block94Value0) <= (recoveredBlock86Block94Value1).
    recoveredBlock86Block94Value2
].
    recoveredBlock86Value2 := [
    recoveredLocal1 := 1.
    1
].
    recoveredBlock86Value3 := (recoveredBlock86Value0) findLast: (recoveredBlock86Value1) ifAbsent: (recoveredBlock86Value2).
    recoveredLocal1 := recoveredBlock86Value3.
    recoveredBlock86Value4 := recoveredLocal2.
    recoveredBlock86Value5 := hexTab.
    recoveredBlock86Value6 := recoveredLocal1.
    recoveredBlock86Value7 := (recoveredBlock86Value5) at: (recoveredBlock86Value6).
    recoveredBlock86Value8 := (recoveredBlock86Value4) add: (recoveredBlock86Value7).
    recoveredBlock86Value8
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


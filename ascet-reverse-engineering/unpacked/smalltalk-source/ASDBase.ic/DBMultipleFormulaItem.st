"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005d308; bytecode file offset 0x959d74"
!DBMultipleFormulaItem methodsFor: 'recovered'!
bytes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := formulas.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) bytes.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d428; bytecode file offset 0x959d74"
!DBMultipleFormulaItem methodsFor: 'recovered'!
dbItem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := formulas.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) dbItem.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d4b8; bytecode file offset 0x959d74"
!DBMultipleFormulaItem methodsFor: 'recovered'!
dbFormatString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := formulas.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) dbFormatString.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20084f00; bytecode file offset 0x981ca4"
!DBMultipleFormulaItem methodsFor: 'recovered'!
mergeLinearWith: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) addMergeFormula: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200853bc; bytecode file offset 0x981ca4"
!DBMultipleFormulaItem methodsFor: 'recovered'!
mergeWith: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) addMergeFormula: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200895fc; bytecode file offset 0x985ef8"
!DBMultipleFormulaItem methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    formulas := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200925e0; bytecode file offset 0x98ef64"
!DBMultipleFormulaItem methodsFor: 'recovered'!
addFormula: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := formulas.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092830; bytecode file offset 0x98f0ec"
!DBMultipleFormulaItem methodsFor: 'recovered'!
bytes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := formulas.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) bytes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201024b0; bytecode file offset 0x9fed7c"
!DBMultipleFormulaItem methodsFor: 'recovered'!
compressArray: recoveredArg1 y: recoveredArg2 dim: recoveredArg3 compress: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := formulas.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue1) compressArray: (recoveredValue2) y: (recoveredValue3) dim: (recoveredValue4) compress: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201024c0; bytecode file offset 0x9fed7c"
!DBMultipleFormulaItem methodsFor: 'recovered'!
expandArray: recoveredArg1 y: recoveredArg2 dim: recoveredArg3 expand: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := formulas.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue1) expandArray: (recoveredValue2) y: (recoveredValue3) dim: (recoveredValue4) expand: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20153b3c; bytecode file offset 0xa50408"
!DBMultipleFormulaItem methodsFor: 'recovered'!
addMergeFormula: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := DBF8Item.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) offset.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) name.
    recoveredValue6 := (recoveredValue1) create: (recoveredValue3) name: (recoveredValue5).
    (recoveredValue0) dbItem: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) addFormula: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2021251c; bytecode file offset 0xb0ede0"
!DBMultipleFormulaItem methodsFor: 'recovered'!
getDimFromBytes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := formulas.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) getDimFromBytes.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := formulas.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredLocal1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) dim: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2022d250; bytecode file offset 0xb29b4c"
!DBMultipleFormulaItem methodsFor: 'recovered'!
calculateInverseInt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := formulas.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredLocal1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) calculateInverseInt: (recoveredBlock12Value1).
    recoveredBlock12Value3 := recoveredBlock12Value2.
    recoveredLocal1 := recoveredBlock12Value3.
    recoveredBlock12Value2
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2022d260; bytecode file offset 0xb29b4c"
!DBMultipleFormulaItem methodsFor: 'recovered'!
calculateInvers: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := formulas.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredLocal1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) calculateInvers: (recoveredBlock12Value1).
    recoveredBlock12Value3 := recoveredBlock12Value2.
    recoveredLocal1 := recoveredBlock12Value3.
    recoveredBlock12Value2
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2022d270; bytecode file offset 0xb29b4c"
!DBMultipleFormulaItem methodsFor: 'recovered'!
calculateInt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := formulas.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredLocal1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) calculateInt: (recoveredBlock12Value1).
    recoveredBlock12Value3 := recoveredBlock12Value2.
    recoveredLocal1 := recoveredBlock12Value3.
    recoveredBlock12Value2
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2022d280; bytecode file offset 0xb29b4c"
!DBMultipleFormulaItem methodsFor: 'recovered'!
calculateInverse: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := formulas.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredLocal1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) calculateInverse: (recoveredBlock12Value1).
    recoveredBlock12Value3 := recoveredBlock12Value2.
    recoveredLocal1 := recoveredBlock12Value3.
    recoveredBlock12Value2
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2022d290; bytecode file offset 0xb29b4c"
!DBMultipleFormulaItem methodsFor: 'recovered'!
calculate: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := formulas.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredLocal1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) calculate: (recoveredBlock12Value1).
    recoveredBlock12Value3 := recoveredBlock12Value2.
    recoveredLocal1 := recoveredBlock12Value3.
    recoveredBlock12Value2
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2025c1c0; bytecode file offset 0xb58a9c"
!DBMultipleFormulaItem methodsFor: 'recovered'!
calculateInverseInt: recoveredArg1 yArr: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := formulas.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredLocal1.
    recoveredBlock12Value2 := recoveredArg2.
    recoveredBlock12Value3 := (recoveredBlock12Value0) calculateInverseInt: (recoveredBlock12Value1) yArr: (recoveredBlock12Value2).
    recoveredBlock12Value4 := recoveredBlock12Value3.
    recoveredLocal1 := recoveredBlock12Value4.
    recoveredBlock12Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2025c1d0; bytecode file offset 0xb58a9c"
!DBMultipleFormulaItem methodsFor: 'recovered'!
calculateInverse: recoveredArg1 yArr: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := formulas.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredLocal1.
    recoveredBlock12Value2 := recoveredArg2.
    recoveredBlock12Value3 := (recoveredBlock12Value0) calculateInverse: (recoveredBlock12Value1) yArr: (recoveredBlock12Value2).
    recoveredBlock12Value4 := recoveredBlock12Value3.
    recoveredLocal1 := recoveredBlock12Value4.
    recoveredBlock12Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2025c1e0; bytecode file offset 0xb58a9c"
!DBMultipleFormulaItem methodsFor: 'recovered'!
calculateInt: recoveredArg1 yArr: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := formulas.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredLocal1.
    recoveredBlock12Value2 := recoveredArg2.
    recoveredBlock12Value3 := (recoveredBlock12Value0) calculateInt: (recoveredBlock12Value1) yArr: (recoveredBlock12Value2).
    recoveredBlock12Value4 := recoveredBlock12Value3.
    recoveredLocal1 := recoveredBlock12Value4.
    recoveredBlock12Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2048cc0c; bytecode file offset 0xd894fc"
!DBMultipleFormulaItem methodsFor: 'recovered'!
getItemsFromMMF
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := formulas.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getItemsFromMMF.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := formulas.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) dim.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := formulas.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := recoveredLocal2.
    recoveredBlock20Value2 := (recoveredBlock20Value0) dim: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) asDoubleArray.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) minMax.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) show: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := formulas.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := formulas.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) calculate: (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 60] ifFalse: [recoveredPC := 107]] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := ' second:    '.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) show: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) asDoubleArray.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) minMax.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) show: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20069a98; bytecode file offset 0x966bdc"
!SGMdDistributionStateAnalysisState methodsFor: 'recovered'!
notSearchedCharTableMax
    | recoveredValue0 |
    recoveredValue0 := notSearchedCharTableMax.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a9dc; bytecode file offset 0x967a18"
!SGMdDistributionStateAnalysisState methodsFor: 'recovered'!
notSearchedCharTableMin
    | recoveredValue0 |
    recoveredValue0 := notSearchedCharTableMin.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c1370; bytecode file offset 0x9bdf14"
!SGMdDistributionStateAnalysisState methodsFor: 'recovered'!
notSearchedCharTableMax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    notSearchedCharTableMax := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1964; bytecode file offset 0x9beac8"
!SGMdDistributionStateAnalysisState methodsFor: 'recovered'!
notSearchedCharTableMin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    notSearchedCharTableMin := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20151998; bytecode file offset 0xa4e274"
!SGMdDistributionStateAnalysisState methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    notSearchedCharTableMax := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    notSearchedCharTableMin := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x201729b4; bytecode file offset 0xa6f2a0"
!SGMdDistributionStateAnalysisState methodsFor: 'recovered'!
copy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := super copy.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) notSearchedCharTableMax.
    recoveredValue3 := (recoveredValue2) copy.
    (recoveredValue1) notSearchedCharTableMax: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := (self) notSearchedCharTableMin.
    recoveredValue6 := (recoveredValue5) copy.
    (recoveredValue4) notSearchedCharTableMin: (recoveredValue6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201a47e0; bytecode file offset 0xaa10a8"
!SGMdDistributionStateAnalysisState methodsFor: 'recovered'!
mergeUnion: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) notSearchedCharTableMin.
    recoveredValue2 := (self) notSearchedCharTableMin.
    recoveredValue3 := (self) unionConditions: (recoveredValue1) and: (recoveredValue2).
    (self) notSearchedCharTableMin: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) notSearchedCharTableMax.
    recoveredValue6 := (self) notSearchedCharTableMax.
    recoveredValue7 := (self) unionConditions: (recoveredValue5) and: (recoveredValue6).
    (self) notSearchedCharTableMax: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201a4818; bytecode file offset 0xaa10e4"
!SGMdDistributionStateAnalysisState methodsFor: 'recovered'!
merge: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) notSearchedCharTableMax.
    recoveredValue2 := (self) notSearchedCharTableMax.
    recoveredValue3 := (self) intersectConditions: (recoveredValue1) and: (recoveredValue2).
    (self) notSearchedCharTableMax: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) notSearchedCharTableMin.
    recoveredValue6 := (self) notSearchedCharTableMin.
    recoveredValue7 := (self) unionConditions: (recoveredValue5) and: (recoveredValue6).
    (self) notSearchedCharTableMin: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201e90e4; bytecode file offset 0xae59ac"
!SGMdDistributionStateAnalysisState methodsFor: 'recovered'!
withState: recoveredArg1 do: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) notSearchedCharTableMin.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) notSearchedCharTableMin.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) map: (recoveredValue0) map: (recoveredValue2) do: (recoveredValue3).
    (self) notSearchedCharTableMin: (recoveredValue4).
    recoveredValue5 := (self) notSearchedCharTableMax.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) notSearchedCharTableMax.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (self) map: (recoveredValue5) map: (recoveredValue7) do: (recoveredValue8).
    (self) notSearchedCharTableMax: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x2021b07c; bytecode file offset 0xb17950"
!SGMdDistributionStateAnalysisState methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) initialize.
    recoveredValue0 := SGDistributionVisitor.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) child.
    recoveredValue4 := (recoveredValue1) findDistributions: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := notSearchedCharTableMin.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (self) literalTrue.
    recoveredBlock13Value3 := (recoveredBlock13Value0) at: (recoveredBlock13Value1) put: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20285c78; bytecode file offset 0xb8253c"
!SGMdDistributionStateAnalysisState methodsFor: 'recovered'!
merge: recoveredArg1 condition: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) merge: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 :recoveredBlock19Arg2 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := recoveredArg2.
    recoveredBlock19Value2 := (recoveredBlock19Value0) andExpr: (recoveredBlock19Value1).
    recoveredBlock19Value3 := recoveredBlock19Arg2.
    recoveredBlock19Value4 := recoveredArg2.
    recoveredBlock19Value5 := (recoveredBlock19Value4) not.
    recoveredBlock19Value6 := (recoveredBlock19Value3) andExpr: (recoveredBlock19Value5).
    recoveredBlock19Value7 := (recoveredBlock19Value2) orExpr: (recoveredBlock19Value6).
    recoveredBlock19Value7
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) withState: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ebd58; bytecode file offset 0xbe8628"
!SGMdDistributionStateAnalysisState methodsFor: 'recovered'!
searchDistribution: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) notSearchedCharTableMin.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) notSearchedCharTableMin.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    | recoveredBlock9Value0 |
    recoveredBlock9Value0 := (self) literalFalse.
    recoveredBlock9Value0
].
    recoveredValue5 := (recoveredValue2) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredValue6 := (self) currentCondition.
    recoveredValue7 := (recoveredValue5) orExpr: (recoveredValue6).
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue7).
    recoveredValue8 := (self) notSearchedCharTableMax.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (self) notSearchedCharTableMax.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := [
    | recoveredBlock34Value0 |
    recoveredBlock34Value0 := (self) literalFalse.
    recoveredBlock34Value0
].
    recoveredValue13 := (recoveredValue10) at: (recoveredValue11) ifAbsent: (recoveredValue12).
    recoveredValue14 := (self) currentCondition.
    recoveredValue15 := (recoveredValue13) orExpr: (recoveredValue14).
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x2034b38c; bytecode file offset 0xc47c64"
!SGMdDistributionStateAnalysisState methodsFor: 'recovered'!
adaptiveSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := (self) notSearchedCharTableMin.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) varDecl.
    recoveredValue3 := (recoveredValue2) errLabel.
    recoveredValue4 := (self) notSearchedCharTableMin.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) varDecl.
    recoveredValue7 := (recoveredValue6) errLabel.
    recoveredValue8 := [
    | recoveredBlock13Value0 |
    recoveredBlock13Value0 := (self) literalFalse.
    recoveredBlock13Value0
].
    recoveredValue9 := (recoveredValue4) at: (recoveredValue7) ifAbsent: (recoveredValue8).
    recoveredValue10 := (self) currentCondition.
    recoveredValue11 := (recoveredValue10) not.
    recoveredValue12 := (recoveredValue9) andExpr: (recoveredValue11).
    (recoveredValue0) at: (recoveredValue3) put: (recoveredValue12).
    recoveredValue13 := (self) notSearchedCharTableMax.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) varDecl.
    recoveredValue16 := (recoveredValue15) errLabel.
    recoveredValue17 := (self) notSearchedCharTableMax.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) varDecl.
    recoveredValue20 := (recoveredValue19) errLabel.
    recoveredValue21 := [
    | recoveredBlock44Value0 |
    recoveredBlock44Value0 := (self) literalFalse.
    recoveredBlock44Value0
].
    recoveredValue22 := (recoveredValue17) at: (recoveredValue20) ifAbsent: (recoveredValue21).
    recoveredValue23 := (self) currentCondition.
    recoveredValue24 := (recoveredValue23) not.
    recoveredValue25 := (recoveredValue22) andExpr: (recoveredValue24).
    (recoveredValue13) at: (recoveredValue16) put: (recoveredValue25).
    ^self
! !

"ASDBase.ic method 0x203cb3fc; bytecode file offset 0xcc7cd8"
!SGMdDistributionStateAnalysisState methodsFor: 'recovered'!
checkDistribution: recoveredArg1 source: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) notSearchedCharTableMax.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) errLabel.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := (self) literalFalse.
    recoveredBlock7Value0
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentCondition.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) orExpr: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstantValueTrue.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) notSearchedCharTableMin.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) errLabel.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock35Value0 |
    recoveredBlock35Value0 := (self) literalFalse.
    recoveredBlock35Value0
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentCondition.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) orExpr: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstantValueTrue.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 671.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 721.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1) with: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e6d18; bytecode file offset 0xce35f4"
!SGMdDistributionStateAnalysisState methodsFor: 'recovered'!
map: recoveredArg1 map: recoveredArg2 do: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) keys.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) keys.
    recoveredValue6 := (recoveredValue3) union: (recoveredValue5).
    recoveredValue7 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Local2 recoveredBlock19Local3 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg1.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack3 := [
    | recoveredBlock19Block30Value0 |
    recoveredBlock19Block30Value0 := (self) literalFalse.
    recoveredBlock19Block30Value0
].
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2) ifAbsent: (recoveredBlock19Stack3).
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Local3 := recoveredBlock19Stack1.
            recoveredBlock19PC := 42.
        ].
        recoveredBlock19Step = 42 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg2.
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack3 := [
    | recoveredBlock19Block46Value0 |
    recoveredBlock19Block46Value0 := (self) literalFalse.
    recoveredBlock19Block46Value0
].
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2) ifAbsent: (recoveredBlock19Stack3).
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 58.
        ].
        recoveredBlock19Step = 58 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg3.
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local3.
            recoveredBlock19PC := 62.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Local2.
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) value: (recoveredBlock19Stack2) value: (recoveredBlock19Stack3).
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 66.
        ].
        recoveredBlock19Step = 66 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 67.
        ].
        recoveredBlock19Step = 67 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local1.
            recoveredBlock19PC := 68.
        ].
        recoveredBlock19Step = 68 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isIleConstantValueFalse.
            recoveredBlock19PC := 70.
        ].
        recoveredBlock19Step = 70 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 82] ifFalse: [recoveredBlock19PC := 74].
        ].
        recoveredBlock19Step = 74 ifTrue: [
            recoveredBlock19PC := 75.
        ].
        recoveredBlock19Step = 75 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 78.
        ].
        recoveredBlock19Step = 78 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 79.
        ].
        recoveredBlock19Step = 79 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Local1.
            recoveredBlock19PC := 80.
        ].
        recoveredBlock19Step = 80 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2) put: (recoveredBlock19Stack3).
            recoveredBlock19PC := 82.
        ].
        recoveredBlock19Step = 82 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20449fe8; bytecode file offset 0xd468cc"
!SGMdDistributionStateAnalysisState methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) cr.
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) nextPutAll: ('init max:').
    (recoveredValue1) cr.
    recoveredValue5 := (self) notSearchedCharTableMax.
    recoveredValue6 := [:recoveredBlock30Arg1 :recoveredBlock30Arg2 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 recoveredBlock30Value4 recoveredBlock30Value5 recoveredBlock30Value6 recoveredBlock30Value7 |
    recoveredBlock30Value0 := recoveredArg1.
    recoveredBlock30Value1 := recoveredBlock30Value0.
    recoveredBlock30Value2 := recoveredBlock30Arg1.
    recoveredBlock30Value3 := (recoveredBlock30Value2) errLabel.
    (recoveredBlock30Value1) nextPutAll: (recoveredBlock30Value3).
    (recoveredBlock30Value0) nextPutAll: (' -> ').
    recoveredBlock30Value4 := recoveredBlock30Arg2.
    recoveredBlock30Value5 := recoveredArg1.
    (recoveredBlock30Value4) printCCodeOn: (recoveredBlock30Value5).
    recoveredBlock30Value6 := recoveredArg1.
    recoveredBlock30Value7 := (recoveredBlock30Value6) cr.
    recoveredBlock30Value7
].
    (recoveredValue5) keysAndValuesDo: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue7.
    (recoveredValue9) nextPutAll: ('init min:').
    (recoveredValue7) cr.
    recoveredValue10 := (self) notSearchedCharTableMin.
    recoveredValue11 := [:recoveredBlock78Arg1 :recoveredBlock78Arg2 | 
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 recoveredBlock78Value3 recoveredBlock78Value4 recoveredBlock78Value5 recoveredBlock78Value6 recoveredBlock78Value7 |
    recoveredBlock78Value0 := recoveredArg1.
    recoveredBlock78Value1 := recoveredBlock78Value0.
    recoveredBlock78Value2 := recoveredBlock78Arg1.
    recoveredBlock78Value3 := (recoveredBlock78Value2) errLabel.
    (recoveredBlock78Value1) nextPutAll: (recoveredBlock78Value3).
    (recoveredBlock78Value0) nextPutAll: (' -> ').
    recoveredBlock78Value4 := recoveredBlock78Arg2.
    recoveredBlock78Value5 := recoveredArg1.
    (recoveredBlock78Value4) printCCodeOn: (recoveredBlock78Value5).
    recoveredBlock78Value6 := recoveredArg1.
    recoveredBlock78Value7 := (recoveredBlock78Value6) cr.
    recoveredBlock78Value7
].
    (recoveredValue10) keysAndValuesDo: (recoveredValue11).
    ^self
! !


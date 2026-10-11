"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002edb4; bytecode file offset 0x934580"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
values
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) values.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200699f0; bytecode file offset 0x966bdc"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
lValue
    | recoveredValue0 |
    recoveredValue0 := lValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a8d4; bytecode file offset 0x967a18"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
expr
    | recoveredValue0 |
    recoveredValue0 := expr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c0f28; bytecode file offset 0x9bdf14"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
lValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lValue := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1a94; bytecode file offset 0x9beac8"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
expr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    expr := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ca604; bytecode file offset 0x9c7020"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
analyseReadMatches: recoveredArg1 dereference: recoveredArg2 do: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) lValue.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) analyseReadMatches: (recoveredValue1) dereference: (recoveredValue2) do: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f9884; bytecode file offset 0x9f6148"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) hash.
    recoveredValue2 := (self) lValue.
    recoveredValue3 := (recoveredValue2) hash.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := (self) expr.
    recoveredValue6 := (recoveredValue5) hash.
    recoveredValue7 := (recoveredValue4) + (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x200ff984; bytecode file offset 0x9fc26c"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
updateMethodDecls: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) lValue.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) updateMethodDecls: (recoveredValue1).
    recoveredValue2 := (self) expr.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) updateMethodDecls: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ff998; bytecode file offset 0x9fc26c"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
memorySegmentedDeclsDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) lValue.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) memorySegmentedDeclsDo: (recoveredValue1).
    recoveredValue2 := (self) expr.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) memorySegmentedDeclsDo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20167704; bytecode file offset 0xa63fcc"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) lValue.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) nextPutAll: (' = ').
    recoveredValue3 := (self) expr.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201909a0; bytecode file offset 0xa8d274"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
asConditionalInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) lValue.
    recoveredValue4 := (recoveredValue3) asConditionalInfo.
    (recoveredValue2) lValue: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := (self) expr.
    recoveredValue7 := (recoveredValue6) asConditionalInfo.
    (recoveredValue5) expr: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) conditional: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201a4908; bytecode file offset 0xaa11d8"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
inlinePrivateAdditionalMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) lValue.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) inlinePrivateAdditionalMethods: (recoveredValue1).
    (self) lValue: (recoveredValue2).
    recoveredValue3 := (self) expr.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) inlinePrivateAdditionalMethods: (recoveredValue4).
    (self) expr: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) methodDecl.
    recoveredValue9 := (self) localSideEffects: (recoveredValue6) inMethod: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201a8058; bytecode file offset 0xaa491c"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
analyseReadMatches: recoveredArg1 source: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    'Do not know how to match assignments to a write access'
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20202e74; bytecode file offset 0xaff734"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) lValue.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202159fc; bytecode file offset 0xb122c4"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
asDOM: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super asDOM: (recoveredValue0) context: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) lValue.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue4) asDOM: (recoveredValue5) context: (recoveredValue6).
    (recoveredValue3) appendChild: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) expr.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue9) asDOM: (recoveredValue10) context: (recoveredValue11).
    (recoveredValue8) appendChild: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20240d6c; bytecode file offset 0xb3d63c"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
localSideEffects: recoveredArg1 inMethod: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lValue.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isResolvedInfo: (recoveredStack1) inMethod: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isResolvedInfo: (recoveredStack1) inMethod: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) selfAccess.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := LookupTable.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) analyseSideEffects: (recoveredStack1) arguments: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202995dc; bytecode file offset 0xb95ec4"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
resolvedAccess: recoveredArg1 arguments: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) lValue.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue3) resolvedAccess: (recoveredValue4) arguments: (recoveredValue5).
    (recoveredValue2) lValue: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := (self) expr.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue8) resolvedAccess: (recoveredValue9) arguments: (recoveredValue10).
    (recoveredValue7) expr: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) conditional.
    (recoveredValue12) conditional: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) hasValues.
    (recoveredValue14) hasValues: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) source.
    (recoveredValue16) source: (recoveredValue17).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2038623c; bytecode file offset 0xc82b1c"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
fromDOM: recoveredArg1 in: recoveredArg2 context: recoveredArg3
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super fromDOM: (recoveredStack1) in: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) failedToLoadAnalysisInfo.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := SGMdAbstractSideEffectAccess.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromDOM: (recoveredStack2) in: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) lValue: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := SGMdAbstractSideEffectAccess.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromDOM: (recoveredStack2) in: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) expr: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) lValue.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e6b10; bytecode file offset 0xde3410"
!SGMdAssignmentSideEffectAnalysisInfo methodsFor: 'recovered'!
analyseSideEffects: recoveredArg1 arguments: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 |
    recoveredValue0 := (self) lValue.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) analyseWriteSideEffects: (recoveredValue1) arguments: (recoveredValue2).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := (self) expr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue4) analyseSideEffects: (recoveredValue5) arguments: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue8) pendingWrite.
    recoveredValue10 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 recoveredBlock34Value4 |
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := recoveredLocal3.
    recoveredBlock34Value2 := (recoveredBlock34Value1) lValue.
    recoveredBlock34Value3 := (self) source.
    recoveredBlock34Value4 := (recoveredBlock34Value0) analyseWriteMatches: (recoveredBlock34Value2) source: (recoveredBlock34Value3).
    recoveredBlock34Value4
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal3.
    recoveredValue12 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 recoveredBlock56Value3 |
    recoveredBlock56Value0 := recoveredLocal2.
    recoveredBlock56Value1 := recoveredBlock56Arg1.
    recoveredBlock56Value2 := (self) source.
    recoveredBlock56Value3 := (recoveredBlock56Value0) analyseReadMatches: (recoveredBlock56Value1) source: (recoveredBlock56Value2).
    recoveredBlock56Value3
].
    (recoveredValue11) allWriteDo: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := [:recoveredBlock77Arg1 | 
    | recoveredBlock77Value0 recoveredBlock77Value1 recoveredBlock77Value2 recoveredBlock77Value3 |
    recoveredBlock77Value0 := recoveredLocal3.
    recoveredBlock77Value1 := recoveredBlock77Arg1.
    recoveredBlock77Value2 := (self) source.
    recoveredBlock77Value3 := (recoveredBlock77Value0) analyseReadMatches: (recoveredBlock77Value1) source: (recoveredBlock77Value2).
    recoveredBlock77Value3
].
    (recoveredValue13) allWriteDo: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := (recoveredValue15) pendingWrite.
    recoveredValue17 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Value0 recoveredBlock101Value1 recoveredBlock101Value2 recoveredBlock101Value3 |
    recoveredBlock101Value0 := recoveredLocal3.
    recoveredBlock101Value1 := recoveredBlock101Arg1.
    recoveredBlock101Value2 := (self) source.
    recoveredBlock101Value3 := (recoveredBlock101Value0) analysePendingWriteMatches: (recoveredBlock101Value1) source: (recoveredBlock101Value2).
    recoveredBlock101Value3
].
    (recoveredValue16) do: (recoveredValue17).
    recoveredValue18 := SGMdSideEffectAnalysisInfo.
    recoveredValue19 := (recoveredValue18) create.
    recoveredValue20 := recoveredValue19.
    recoveredValue21 := recoveredLocal2.
    (recoveredValue20) mergeInfo: (recoveredValue21).
    recoveredValue22 := recoveredValue19.
    recoveredValue23 := recoveredLocal3.
    recoveredValue24 := (recoveredValue23) lValue.
    (recoveredValue22) addPendingWriteAccess: (recoveredValue24).
    recoveredValue25 := recoveredValue19.
    recoveredValue26 := recoveredLocal3.
    (recoveredValue25) mergeInfo: (recoveredValue26).
    recoveredValue27 := recoveredValue19.
    recoveredValue28 := recoveredLocal2.
    recoveredValue29 := (recoveredValue28) values.
    (recoveredValue27) addAllValues: (recoveredValue29).
    recoveredValue30 := recoveredValue19.
    recoveredValue31 := (self) hasValues.
    (recoveredValue30) hasValues: (recoveredValue31).
    recoveredLocal1 := recoveredValue19.
    recoveredValue32 := recoveredLocal1.
    ^recoveredValue32
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005a90; bytecode file offset 0x902744"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
localSideEffects: recoveredArg1 inMethod: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2001f1cc; bytecode file offset 0x92209c"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
values
    ^#()
! !

"ASDBase.ic method 0x20029564; bytecode file offset 0x934580"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
isMdlTypeNeedsReference
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlClass.
    recoveredValue1 := (recoveredValue0) isMdlTypeNeedsReference.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069610; bytecode file offset 0x966bdc"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
expr
    | recoveredValue0 |
    recoveredValue0 := expr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200783b4; bytecode file offset 0x9757c8"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
isMdlSideEffectRecordAllFieldsAccess
    ^true
! !

"ASDBase.ic method 0x20098924; bytecode file offset 0x995850"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
updateMethodDecls: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) updateMethodDecls: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200989c4; bytecode file offset 0x995850"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
memorySegmentedDeclsDo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) memorySegmentedDeclsDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009a5d8; bytecode file offset 0x997194"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
isResolvedInfo: recoveredArg1 inMethod: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) isResolvedInfo: (recoveredValue1) inMethod: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a1dc8; bytecode file offset 0x99e6ec"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) hash.
    recoveredValue2 := (self) expr.
    recoveredValue3 := (recoveredValue2) hash.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200b99e4; bytecode file offset 0x9b63d0"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
inlinePrivateAdditionalMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) inlinePrivateAdditionalMethods: (recoveredValue1).
    (self) expr: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c0ea0; bytecode file offset 0x9bdf14"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
expr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    expr := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ffa24; bytecode file offset 0x9fc2e8"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) nextPutAll: ('.*').
    ^self
! !

"ASDBase.ic method 0x2011bcc0; bytecode file offset 0xa1858c"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
asConditionalInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) expr.
    recoveredValue4 := (recoveredValue3) asConditionalInfo.
    (recoveredValue2) expr: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) conditional: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20155e7c; bytecode file offset 0xa52738"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017d600; bytecode file offset 0xa79ec4"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
asDOM: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super asDOM: (recoveredValue0) context: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) expr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue4) asDOM: (recoveredValue5) context: (recoveredValue6).
    (recoveredValue3) appendChild: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201acac0; bytecode file offset 0xaa93ac"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
analyseWriteSideEffects: recoveredArg1 arguments: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) lValueAnalysisInfo.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) resolvedAccess: (recoveredValue2) arguments: (recoveredValue3).
    (recoveredValue1) lValue: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) expr.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue6) analyseSideEffects: (recoveredValue7) arguments: (recoveredValue8).
    (recoveredValue5) mergeInfo: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x201dd050; bytecode file offset 0xad9928"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
description
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) expr.
    recoveredValue6 := (recoveredValue5) description.
    (recoveredValue4) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) nextPutAll: ('.*').
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) contents.
    ^recoveredValue9
! !

"ASDBase.ic method 0x201dfa90; bytecode file offset 0xadc360"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
analyseSideEffects: recoveredArg1 arguments: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SGMdSideEffectAnalysisInfo.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) resolvedAccess: (recoveredValue3) arguments: (recoveredValue4).
    (recoveredValue2) addReadAccess: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) expr.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue7) analyseSideEffects: (recoveredValue8) arguments: (recoveredValue9).
    (recoveredValue6) mergeInfo: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x20220ba4; bytecode file offset 0xb1d468"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
< recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectVarAccess.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAccess.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAllFieldsAccess.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20220be0; bytecode file offset 0xb1d4a4"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
<= recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectVarAccess.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAccess.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAllFieldsAccess.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20229fa8; bytecode file offset 0xb26888"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
resolvedAccess: recoveredArg1 arguments: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) expr.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue3) resolvedAccess: (recoveredValue4) arguments: (recoveredValue5).
    (recoveredValue2) expr: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := (self) conditional.
    (recoveredValue7) conditional: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := (self) hasValues.
    (recoveredValue9) hasValues: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := (self) source.
    (recoveredValue11) source: (recoveredValue12).
    ^recoveredValue1
! !

"ASDBase.ic method 0x202639d0; bytecode file offset 0xb602a4"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
fromDOM: recoveredArg1 in: recoveredArg2 context: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) failedToLoadAnalysisInfo.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := SGMdAbstractSideEffectAccess.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromDOM: (recoveredStack2) in: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) expr: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := super fromDOM: (recoveredStack1) in: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20506318; bytecode file offset 0xe02c04"
!SGMdSideEffectRecordAllFieldAccess methodsFor: 'recovered'!
analyseReadMatches: recoveredArg1 dereference: recoveredArg2 do: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAllFieldsAccess.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredArg1.
    recoveredBlock15Value2 := [:recoveredBlock15Block27Arg1 :recoveredBlock15Block27Arg2 :recoveredBlock15Block27Arg3 | 
    | recoveredBlock15Block27Value0 recoveredBlock15Block27Value1 recoveredBlock15Block27Value2 recoveredBlock15Block27Value3 |
    recoveredBlock15Block27Value0 := recoveredArg3.
    recoveredBlock15Block27Value1 := recoveredArg1.
    recoveredBlock15Block27Value2 := (self) potentialConflictWarningNo.
    recoveredBlock15Block27Value3 := (recoveredBlock15Block27Value0) value: (self) value: (recoveredBlock15Block27Value1) value: (recoveredBlock15Block27Value2).
    recoveredBlock15Block27Value3
].
    recoveredBlock15Value3 := (recoveredBlock15Value0) analyzeAllFieldReadMatches: (recoveredBlock15Value1) writeObject: (false) do: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 |
    recoveredBlock58Value0 := recoveredBlock58Arg1.
    recoveredBlock58Value1 := [:recoveredBlock58Block67Arg1 :recoveredBlock58Block67Arg2 :recoveredBlock58Block67Arg3 | 
    | recoveredBlock58Block67Value0 recoveredBlock58Block67Value1 recoveredBlock58Block67Value2 recoveredBlock58Block67Value3 |
    recoveredBlock58Block67Value0 := recoveredArg3.
    recoveredBlock58Block67Value1 := recoveredArg1.
    recoveredBlock58Block67Value2 := (self) potentialConflictWarningNo.
    recoveredBlock58Block67Value3 := (recoveredBlock58Block67Value0) value: (recoveredBlock58Block67Value1) value: (self) value: (recoveredBlock58Block67Value2).
    recoveredBlock58Block67Value3
].
    recoveredBlock58Value2 := (recoveredBlock58Value0) analyzeAllFieldReadMatches: (self) writeObject: (false) do: (recoveredBlock58Value1).
    recoveredBlock58Value2
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 179.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAccess.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := [
    'To be implemented'
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 179.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectVarAccess.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := [:recoveredBlock139Arg1 :recoveredBlock139Arg2 :recoveredBlock139Arg3 | 
    | recoveredBlock139Value0 recoveredBlock139Value1 recoveredBlock139Value2 recoveredBlock139Value3 |
    recoveredBlock139Value0 := recoveredArg3.
    recoveredBlock139Value1 := recoveredArg1.
    recoveredBlock139Value2 := (self) potentialConflictWarningNo.
    recoveredBlock139Value3 := (recoveredBlock139Value0) value: (self) value: (recoveredBlock139Value1) value: (recoveredBlock139Value2).
    recoveredBlock139Value3
].
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) analyzeAllFieldReadMatches: (recoveredStack2) writeObject: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredPC := 179.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) noMatchingWriteAccess: (recoveredStack2) dereference: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


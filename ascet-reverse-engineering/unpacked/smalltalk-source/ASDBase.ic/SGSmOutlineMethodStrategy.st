"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006e5c4; bytecode file offset 0x96af48"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
allCode
    | recoveredValue0 |
    recoveredValue0 := allCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006eba4; bytecode file offset 0x96b8a0"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
isGeneratingOutlinedMethod
    | recoveredValue0 |
    recoveredValue0 := generatingOutlineMethods.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f6a0; bytecode file offset 0x96bf7c"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
outlining
    | recoveredValue0 |
    recoveredValue0 := outlining.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f7f0; bytecode file offset 0x96c1f4"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
autoInlining
    | recoveredValue0 |
    recoveredValue0 := autoInlining.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200abee4; bytecode file offset 0x9a87a4"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
addPrivateMethodCallTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) privateMethods.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    (recoveredValue2) addCallRecursive.
    ^self
! !

"ASDBase.ic method 0x200c5c98; bytecode file offset 0x9c25bc"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
outlining: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    outlining := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5ed8; bytecode file offset 0x9c2804"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
autoInlining: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    autoInlining := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200de0bc; bytecode file offset 0x9da998"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
reductionInCodeSize: recoveredArg1 calls: recoveredArg2 for: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) reductionInCodeSize: (recoveredValue0) calls: (recoveredValue1) factor: (#[0 0 0 0 0 0 228 63]) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200de15c; bytecode file offset 0x9daa14"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
modelReductionInCodeSize: recoveredArg1 calls: recoveredArg2 for: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) reductionInCodeSize: (recoveredValue0) calls: (recoveredValue1) factor: (1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2014083c; bytecode file offset 0xa3d0f8"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
dispose
    super dispose.
    allCode := nil.
    additionalMethods := nil.
    calibrateMethods := nil.
    ^self
! !

"ASDBase.ic method 0x20191308; bytecode file offset 0xa8dbcc"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    allCode := recoveredValue1.
    generatingOutlineMethods := false.
    autoInlining := true.
    outlining := true.
    ^self
! !

"ASDBase.ic method 0x201e273c; bytecode file offset 0xadf008"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
onChangeBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280d66b0Arg1 :block280d66b0Arg2 | 
    | block280d66b0Value0 block280d66b0Value1 block280d66b0Value2 block280d66b0Value3 block280d66b0Value4 block280d66b0Value5 block280d66b0Value6 block280d66b0Value7 block280d66b0Value8 block280d66b0Value9 block280d66b0Value10 |
    block280d66b0Value0 := block280d66b0Arg1.
    block280d66b0Value1 := (block280d66b0Value0) duplicate.
    block280d66b0Value2 := block280d66b0Arg1.
    block280d66b0Value3 := (block280d66b0Value2) method.
    (block280d66b0Value1) removeChildren: (block280d66b0Value3).
    block280d66b0Value4 := block280d66b0Arg1.
    block280d66b0Value5 := block280d66b0Arg2.
    (block280d66b0Value4) list: (block280d66b0Value5).
    block280d66b0Value6 := block280d66b0Arg1.
    block280d66b0Value7 := (block280d66b0Value6) duplicate.
    block280d66b0Value8 := block280d66b0Arg1.
    block280d66b0Value9 := (block280d66b0Value8) method.
    (block280d66b0Value7) addChildren: (block280d66b0Value9).
    block280d66b0Value10 := block280d66b0Arg1.
    block280d66b0Value10
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e796c; bytecode file offset 0xae4234"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
addPrivateMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super addPrivateMethods: (recoveredValue0).
    recoveredValue1 := (self) privateMethods.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := allCode.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := recoveredBlock11Arg1.
    recoveredBlock11Value3 := (recoveredBlock11Value0) at: (recoveredBlock11Value1) put: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201eaf54; bytecode file offset 0xae781c"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
reductionInCodeSize: recoveredArg1 calls: recoveredArg2 factor: recoveredArg3 for: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue3) * (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) value.
    recoveredValue8 := (self) sizeEstimatorClass.
    recoveredValue9 := (recoveredValue8) cost: ('method').
    recoveredValue10 := (recoveredValue7) + (recoveredValue9).
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (self) sizeEstimatorClass.
    recoveredValue13 := recoveredArg4.
    recoveredValue14 := (recoveredValue12) methodCall: (recoveredValue13).
    recoveredValue15 := (recoveredValue14) value.
    recoveredValue16 := (recoveredValue11) * (recoveredValue15).
    recoveredValue17 := (recoveredValue10) + (recoveredValue16).
    recoveredValue18 := (recoveredValue5) - (recoveredValue17).
    ^recoveredValue18
! !

"ASDBase.ic method 0x2020809c; bytecode file offset 0xb04964"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
optimizeIf: recoveredArg1 condition: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) duplicate.
    recoveredValue2 := currentMethod.
    (recoveredValue1) removeChildren: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) duplicate.
    recoveredValue5 := currentMethod.
    (recoveredValue4) removeChildren: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := super optimizeIf: (recoveredValue6) condition: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) duplicate.
    recoveredValue11 := currentMethod.
    (recoveredValue10) addChildren: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20245908; bytecode file offset 0xb421d8"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
classImplName
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) classType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) className.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) asModuleIdentifier.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) implName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) implName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) asModuleIdentifier.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029985c; bytecode file offset 0xb96124"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
addCode: recoveredArg1 method: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isOutlinableCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'Internal fatal error: Mixture of inlined and outlinable code - Please disable outlining and report this error to ETAS'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) internalError: (recoveredStack2) fatal: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := allCode.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock23Value0 |
    recoveredBlock23Value0 := recoveredArg1.
    recoveredBlock23Value0
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) addCall: (recoveredStack2) method: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202da4b8; bytecode file offset 0xbd6d84"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
countCalls: recoveredArg1 on: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := [
    0
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 |
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := recoveredArg2.
    recoveredBlock34Value2 := (self) countCalls: (recoveredBlock34Value0) on: (recoveredBlock34Value1).
    recoveredBlock34Value2
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030dc48; bytecode file offset 0xc0a514"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
replaceCode: recoveredArg1 with: recoveredArg2 in: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := SGSmMethodCall.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack3 := self.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack4 := recoveredBlock7Arg1.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) create: (recoveredBlock7Stack2) outlineStrategy: (recoveredBlock7Stack3) method: (recoveredBlock7Stack4).
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Local2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack1 := methods.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) includesKey: (recoveredBlock7Stack2).
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 32] ifFalse: [recoveredBlock7PC := 40].
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack1 := methods.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) at: (recoveredBlock7Stack2).
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack1 := additionalMethods.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) at: (recoveredBlock7Stack2).
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local1.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Local2.
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) replaceCode: (recoveredBlock7Stack2) with: (recoveredBlock7Stack3).
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20313990; bytecode file offset 0xc1025c"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
outliningCandidates
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := outlining.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := autoInlining.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := allCode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := outlining.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := allCode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:block280eaf9cArg1 | 
    | block280eaf9cValue0 block280eaf9cValue1 block280eaf9cValue2 |
    block280eaf9cValue0 := block280eaf9cArg1.
    block280eaf9cValue1 := (block280eaf9cValue0) isPrivateMethod.
    block280eaf9cValue2 := (block280eaf9cValue1) not.
    block280eaf9cValue2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := autoInlining.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := allCode.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [:block280eafc0Arg1 | 
    | block280eafc0Value0 block280eafc0Value1 |
    block280eafc0Value0 := block280eafc0Arg1.
    block280eafc0Value1 := (block280eafc0Value0) isPrivateMethod.
    block280eafc0Value1
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20373274; bytecode file offset 0xc6fb48"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
removeCode: recoveredArg1 method: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isOutlinableCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'Internal error: Invalid usage of outlinable code - Please disable outlining and report this error to ETAS'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) internalError: (recoveredStack2) fatal: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := allCode.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [
    ^false
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) addCall: (recoveredStack2) method: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) calls.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := allCode.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203b6628; bytecode file offset 0xcb2eec"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
totalCodeSize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredLocal1 := 0.
    recoveredValue0 := methods.
    recoveredValue1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) codeSize.
    recoveredBlock11Value3 := (recoveredBlock11Value2) value.
    recoveredBlock11Value4 := (recoveredBlock11Value0) + (recoveredBlock11Value3).
    recoveredBlock11Value5 := recoveredBlock11Value4.
    recoveredLocal1 := recoveredBlock11Value5.
    recoveredBlock11Value4
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := additionalMethods.
    recoveredValue3 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 recoveredBlock34Value4 recoveredBlock34Value5 |
    recoveredBlock34Value0 := recoveredLocal1.
    recoveredBlock34Value1 := recoveredBlock34Arg1.
    recoveredBlock34Value2 := (recoveredBlock34Value1) codeSize.
    recoveredBlock34Value3 := (recoveredBlock34Value2) value.
    recoveredBlock34Value4 := (recoveredBlock34Value0) + (recoveredBlock34Value3).
    recoveredBlock34Value5 := recoveredBlock34Value4.
    recoveredLocal1 := recoveredBlock34Value5.
    recoveredBlock34Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) privateMethods.
    recoveredValue5 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 recoveredBlock55Value4 recoveredBlock55Value5 |
    recoveredBlock55Value0 := recoveredLocal1.
    recoveredBlock55Value1 := recoveredBlock55Arg1.
    recoveredBlock55Value2 := (recoveredBlock55Value1) codeSize.
    recoveredBlock55Value3 := (recoveredBlock55Value2) value.
    recoveredBlock55Value4 := (recoveredBlock55Value0) + (recoveredBlock55Value3).
    recoveredBlock55Value5 := recoveredBlock55Value4.
    recoveredLocal1 := recoveredBlock55Value5.
    recoveredBlock55Value4
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x203f1524; bytecode file offset 0xceddfc"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
code: recoveredArg1 isCalledBy: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) methods.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack2 := recoveredArg2.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) = (recoveredBlock23Stack2).
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 38] ifFalse: [recoveredBlock23PC := 40].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23Stack1 := true.
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            ^recoveredBlock23Stack1
        ].
        recoveredBlock23Step = 40 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            recoveredBlock23Stack2 := methods.
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23Stack3 := recoveredBlock23Arg1.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) includesKey: (recoveredBlock23Stack3).
            recoveredBlock23PC := 45.
        ].
        recoveredBlock23Step = 45 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 69] ifFalse: [recoveredBlock23PC := 48].
        ].
        recoveredBlock23Step = 48 ifTrue: [
            recoveredBlock23PC := 49.
        ].
        recoveredBlock23Step = 49 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 50.
        ].
        recoveredBlock23Step = 50 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) callers.
            recoveredBlock23PC := 52.
        ].
        recoveredBlock23Step = 52 ifTrue: [
            recoveredBlock23Stack2 := [:recoveredBlock23Block52Arg1 | 
    | recoveredBlock23Block52Value0 recoveredBlock23Block52Value1 recoveredBlock23Block52Value2 recoveredBlock23Block52Value3 |
    recoveredBlock23Block52Value0 := recoveredLocal1.
    recoveredBlock23Block52Value1 := recoveredBlock23Block52Arg1.
    recoveredBlock23Block52Value2 := (recoveredBlock23Block52Value1) method.
    recoveredBlock23Block52Value3 := (recoveredBlock23Block52Value0) add: (recoveredBlock23Block52Value2).
    recoveredBlock23Block52Value3
].
            recoveredBlock23PC := 67.
        ].
        recoveredBlock23Step = 67 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) do: (recoveredBlock23Stack2).
            recoveredBlock23PC := 69.
        ].
        recoveredBlock23Step = 69 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20448bf4; bytecode file offset 0xd454b4"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
overlapping: recoveredArg1 sublist: recoveredArg2 ExistsBefore: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
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
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack5 := (recoveredStack5) - (recoveredStack6).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := recoveredArg3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack2) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 50] ifFalse: [recoveredLocal1 := nil. recoveredPC := 84]] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 36] ifFalse: [recoveredLocal3 := nil. recoveredPC := 108]] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2049fc9c; bytecode file offset 0xd9c584"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
additionalMethodsTopologicalOrder
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := additionalMethods.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredLocal3.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := recoveredBlock12Arg1.
    recoveredBlock12Value3 := (recoveredBlock12Value2) calledMethods.
    recoveredBlock12Value4 := (recoveredBlock12Value0) at: (recoveredBlock12Value1) put: (recoveredBlock12Value3).
    recoveredBlock12Value4
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [:recoveredBlock47Arg1 :recoveredBlock47Arg2 | 
    | recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack1 := nil.
            recoveredBlock47PC := 55.
        ].
        recoveredBlock47Step = 55 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Arg2.
            recoveredBlock47PC := 56.
        ].
        recoveredBlock47Step = 56 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) isEmpty.
            recoveredBlock47PC := 58.
        ].
        recoveredBlock47Step = 58 ifTrue: [
            (recoveredBlock47Stack2) ifTrue: [recoveredBlock47PC := 62] ifFalse: [recoveredBlock47PC := 75].
        ].
        recoveredBlock47Step = 62 ifTrue: [
            recoveredBlock47PC := 63.
        ].
        recoveredBlock47Step = 63 ifTrue: [
            recoveredBlock47Stack1 := recoveredLocal2.
            recoveredBlock47PC := 66.
        ].
        recoveredBlock47Step = 66 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Arg1.
            recoveredBlock47PC := 67.
        ].
        recoveredBlock47Step = 67 ifTrue: [
            (recoveredBlock47Stack1) add: (recoveredBlock47Stack2).
            recoveredBlock47PC := 69.
        ].
        recoveredBlock47Step = 69 ifTrue: [
            recoveredBlock47Stack1 := recoveredLocal1.
            recoveredBlock47PC := 72.
        ].
        recoveredBlock47Step = 72 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Arg1.
            recoveredBlock47PC := 73.
        ].
        recoveredBlock47Step = 73 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) add: (recoveredBlock47Stack2).
            recoveredBlock47PC := 75.
        ].
        recoveredBlock47Step = 75 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack1.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 recoveredBlock81Value3 recoveredBlock81Value4 recoveredBlock81Value5 |
    recoveredBlock81Value0 := recoveredLocal3.
    recoveredBlock81Value1 := recoveredBlock81Arg1.
    recoveredBlock81Value2 := [].
    (recoveredBlock81Value0) removeKey: (recoveredBlock81Value1) ifAbsent: (recoveredBlock81Value2).
    recoveredBlock81Value3 := recoveredLocal3.
    recoveredBlock81Value4 := [:recoveredBlock81Block101Arg1 | 
    | recoveredBlock81Block101Value0 recoveredBlock81Block101Value1 recoveredBlock81Block101Value2 recoveredBlock81Block101Value3 |
    recoveredBlock81Block101Value0 := recoveredBlock81Block101Arg1.
    recoveredBlock81Block101Value1 := recoveredBlock81Arg1.
    recoveredBlock81Block101Value2 := [].
    recoveredBlock81Block101Value3 := (recoveredBlock81Block101Value0) remove: (recoveredBlock81Block101Value1) ifAbsent: (recoveredBlock81Block101Value2).
    recoveredBlock81Block101Value3
].
    recoveredBlock81Value5 := (recoveredBlock81Value3) do: (recoveredBlock81Value4).
    recoveredBlock81Value5
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 133].
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204d5a00; bytecode file offset 0xdd22f0"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
finishCurrentList
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super finishCurrentList.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block281076e0Arg1 | 
    | block281076e0Value0 block281076e0Value1 |
    block281076e0Value0 := block281076e0Arg1.
    block281076e0Value1 := (block281076e0Value0) isNonOutlinableCode.
    block281076e0Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := (recoveredStack4) duplicate.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack2) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 66] ifFalse: [recoveredLocal1 := nil. recoveredPC := 90]] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack5.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) overlapping: (recoveredStack3) sublist: (recoveredStack4) ExistsBefore: (recoveredStack5).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := SGSmOutlinableCodeList.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) create: (recoveredStack3) outlineStrategy: (recoveredStack4).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := currentMethod.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack2) addCode: (recoveredStack3) method: (recoveredStack4).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal4 isInteger]) ifTrue: [(recoveredLocal4 + 1 <= recoveredStack1) ifTrue: [recoveredLocal4 := recoveredLocal4 + 1. recoveredPC := 52] ifFalse: [recoveredLocal4 := nil. recoveredPC := 135]] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal4 := recoveredStack4.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 133] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal5 isInteger]) ifTrue: [(recoveredLocal5 + 1 <= recoveredStack0) ifTrue: [recoveredLocal5 := recoveredLocal5 + 1. recoveredPC := 40] ifFalse: [recoveredLocal5 := nil. recoveredPC := 153]] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal5 := recoveredStack3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ef2a8; bytecode file offset 0xdebba4"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
method: recoveredArg1 code: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            currentMethod := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := generate.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := methods.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := calibrateMethods.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) buildMdl.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 149.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := calibrateMethods.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Local1 recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47Stack4 recoveredBlock47Stack5 recoveredBlock47Stack6 recoveredBlock47Stack7 recoveredBlock47Stack8 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack1 := nil.
            recoveredBlock47PC := 55.
        ].
        recoveredBlock47Step = 55 ifTrue: [
            recoveredBlock47Stack2 := self.
            recoveredBlock47PC := 56.
        ].
        recoveredBlock47Step = 56 ifTrue: [
            recoveredBlock47Stack3 := allCode.
            recoveredBlock47PC := 58.
        ].
        recoveredBlock47Step = 58 ifTrue: [
            recoveredBlock47Stack4 := recoveredBlock47Arg1.
            recoveredBlock47PC := 59.
        ].
        recoveredBlock47Step = 59 ifTrue: [
            recoveredBlock47Stack4 := (recoveredBlock47Stack4) code.
            recoveredBlock47PC := 61.
        ].
        recoveredBlock47Step = 61 ifTrue: [
            recoveredBlock47Stack3 := (recoveredBlock47Stack3) at: (recoveredBlock47Stack4).
            recoveredBlock47PC := 62.
        ].
        recoveredBlock47Step = 62 ifTrue: [
            recoveredBlock47Stack4 := recoveredArg1.
            recoveredBlock47PC := 65.
        ].
        recoveredBlock47Step = 65 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) code: (recoveredBlock47Stack3) isCalledBy: (recoveredBlock47Stack4).
            recoveredBlock47PC := 67.
        ].
        recoveredBlock47Step = 67 ifTrue: [
            (recoveredBlock47Stack2) ifTrue: [recoveredBlock47PC := 70] ifFalse: [recoveredBlock47PC := 128].
        ].
        recoveredBlock47Step = 70 ifTrue: [
            recoveredBlock47PC := 71.
        ].
        recoveredBlock47Step = 71 ifTrue: [
            recoveredBlock47Stack1 := SGSmMethodCall.
            recoveredBlock47PC := 73.
        ].
        recoveredBlock47Step = 73 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Arg1.
            recoveredBlock47PC := 74.
        ].
        recoveredBlock47Step = 74 ifTrue: [
            recoveredBlock47Stack3 := self.
            recoveredBlock47PC := 75.
        ].
        recoveredBlock47Step = 75 ifTrue: [
            recoveredBlock47Stack4 := recoveredArg1.
            recoveredBlock47PC := 78.
        ].
        recoveredBlock47Step = 78 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) create: (recoveredBlock47Stack2) outlineStrategy: (recoveredBlock47Stack3) method: (recoveredBlock47Stack4).
            recoveredBlock47PC := 81.
        ].
        recoveredBlock47Step = 81 ifTrue: [
            recoveredBlock47Local1 := recoveredBlock47Stack1.
            recoveredBlock47PC := 82.
        ].
        recoveredBlock47Step = 82 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Local1.
            recoveredBlock47PC := 83.
        ].
        recoveredBlock47Step = 83 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) calledMethod.
            recoveredBlock47PC := 85.
        ].
        recoveredBlock47Step = 85 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) isExpressionMethod.
            recoveredBlock47PC := 87.
        ].
        recoveredBlock47Step = 87 ifTrue: [
            (recoveredBlock47Stack1) ifTrue: [recoveredBlock47PC := 90] ifFalse: [recoveredBlock47PC := 120].
        ].
        recoveredBlock47Step = 90 ifTrue: [
            recoveredBlock47Stack1 := recoveredLocal1.
            recoveredBlock47PC := 93.
        ].
        recoveredBlock47Step = 93 ifTrue: [
            recoveredBlock47Stack2 := SGSmInlinedIfCode.
            recoveredBlock47PC := 95.
        ].
        recoveredBlock47Step = 95 ifTrue: [
            recoveredBlock47Stack3 := recoveredBlock47Local1.
            recoveredBlock47PC := 96.
        ].
        recoveredBlock47Step = 96 ifTrue: [
            recoveredBlock47Stack4 := OrderedCollection.
            recoveredBlock47PC := 98.
        ].
        recoveredBlock47Step = 98 ifTrue: [
            recoveredBlock47Stack5 := SGSmReturnCode.
            recoveredBlock47PC := 100.
        ].
        recoveredBlock47Step = 100 ifTrue: [
            recoveredBlock47Stack6 := self.
            recoveredBlock47PC := 101.
        ].
        recoveredBlock47Step = 101 ifTrue: [
            recoveredBlock47Stack7 := recoveredArg1.
            recoveredBlock47PC := 104.
        ].
        recoveredBlock47Step = 104 ifTrue: [
            recoveredBlock47Stack5 := (recoveredBlock47Stack5) create: (recoveredBlock47Stack6) method: (recoveredBlock47Stack7).
            recoveredBlock47PC := 106.
        ].
        recoveredBlock47Step = 106 ifTrue: [
            recoveredBlock47Stack4 := (recoveredBlock47Stack4) with: (recoveredBlock47Stack5).
            recoveredBlock47PC := 107.
        ].
        recoveredBlock47Step = 107 ifTrue: [
            recoveredBlock47Stack5 := self.
            recoveredBlock47PC := 108.
        ].
        recoveredBlock47Step = 108 ifTrue: [
            recoveredBlock47Stack6 := recoveredArg1.
            recoveredBlock47PC := 111.
        ].
        recoveredBlock47Step = 111 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) create: (recoveredBlock47Stack3) body: (recoveredBlock47Stack4) outlineStrategy: (recoveredBlock47Stack5) method: (recoveredBlock47Stack6).
            recoveredBlock47PC := 114.
        ].
        recoveredBlock47Step = 114 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) add: (recoveredBlock47Stack2).
            recoveredBlock47PC := 116.
        ].
        recoveredBlock47Step = 116 ifTrue: [
            recoveredBlock47PC := 126.
        ].
        recoveredBlock47Step = 120 ifTrue: [
            recoveredBlock47Stack1 := recoveredLocal1.
            recoveredBlock47PC := 123.
        ].
        recoveredBlock47Step = 123 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Local1.
            recoveredBlock47PC := 124.
        ].
        recoveredBlock47Step = 124 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) add: (recoveredBlock47Stack2).
            recoveredBlock47PC := 126.
        ].
        recoveredBlock47Step = 126 ifTrue: [
            recoveredBlock47Stack2 := nil.
            recoveredBlock47PC := 127.
        ].
        recoveredBlock47Step = 127 ifTrue: [
            recoveredBlock47Local1 := recoveredBlock47Stack2.
            recoveredBlock47PC := 128.
        ].
        recoveredBlock47Step = 128 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack1.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := SGSmInlinedCodeList.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) outlineStrategy: (recoveredStack3) method: (recoveredStack4).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) buildMdl.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) recordMethod: (recoveredStack2) code: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2059241c; bytecode file offset 0xe8ed84"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
calibrate: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentMethod.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            generatingOutlineMethods := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := additionalMethods.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 recoveredBlock22Value6 recoveredBlock22Value7 recoveredBlock22Value8 recoveredBlock22Value9 recoveredBlock22Value10 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := (recoveredBlock22Value0) code.
    recoveredBlock22Value2 := (recoveredBlock22Value1) codeSize.
    recoveredBlock22Value3 := (recoveredBlock22Value2) counter.
    (recoveredBlock22Value3) at: ('method') put: (1).
    recoveredBlock22Value4 := recoveredLocal4.
    recoveredBlock22Value5 := recoveredBlock22Arg1.
    recoveredBlock22Value6 := (recoveredBlock22Value5) name.
    recoveredBlock22Value7 := recoveredBlock22Arg1.
    recoveredBlock22Value8 := (recoveredBlock22Value7) code.
    recoveredBlock22Value9 := (recoveredBlock22Value8) codeSize.
    recoveredBlock22Value10 := (recoveredBlock22Value4) at: (recoveredBlock22Value6) put: (recoveredBlock22Value9).
    recoveredBlock22Value10
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            calibrateMethods := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := allCode.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Local1 recoveredBlock62Local2 recoveredBlock62Stack0 recoveredBlock62Stack1 recoveredBlock62Stack2 recoveredBlock62Stack3 recoveredBlock62Stack4 recoveredBlock62Stack5 recoveredBlock62PC recoveredBlock62Step recoveredBlock62Done recoveredBlock62Result |
    recoveredBlock62Stack0 := self.
    recoveredBlock62PC := 68.
    recoveredBlock62Done := false.
    [recoveredBlock62Done not] whileTrue: [
        recoveredBlock62Step := recoveredBlock62PC.
        recoveredBlock62Step = 68 ifTrue: [
            recoveredBlock62Stack1 := nil.
            recoveredBlock62PC := 69.
        ].
        recoveredBlock62Step = 69 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Arg1.
            recoveredBlock62PC := 70.
        ].
        recoveredBlock62Step = 70 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) list.
            recoveredBlock62PC := 72.
        ].
        recoveredBlock62Step = 72 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) size.
            recoveredBlock62PC := 74.
        ].
        recoveredBlock62Step = 74 ifTrue: [
            recoveredBlock62Stack3 := 1.
            recoveredBlock62PC := 76.
        ].
        recoveredBlock62Step = 76 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) = (recoveredBlock62Stack3).
            recoveredBlock62PC := 77.
        ].
        recoveredBlock62Step = 77 ifTrue: [
            (recoveredBlock62Stack2) ifTrue: [recoveredBlock62PC := 80] ifFalse: [recoveredBlock62PC := 153].
        ].
        recoveredBlock62Step = 80 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Arg1.
            recoveredBlock62PC := 81.
        ].
        recoveredBlock62Step = 81 ifTrue: [
            recoveredBlock62Stack3 := 4.
            recoveredBlock62PC := 83.
        ].
        recoveredBlock62Step = 83 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) reductionInCodeSize: (recoveredBlock62Stack3).
            recoveredBlock62PC := 85.
        ].
        recoveredBlock62Step = 85 ifTrue: [
            recoveredBlock62Stack3 := 0.
            recoveredBlock62PC := 87.
        ].
        recoveredBlock62Step = 87 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) > (recoveredBlock62Stack3).
            recoveredBlock62PC := 88.
        ].
        recoveredBlock62Step = 88 ifTrue: [
            (recoveredBlock62Stack2) ifTrue: [recoveredBlock62PC := 92] ifFalse: [recoveredBlock62PC := 153].
        ].
        recoveredBlock62Step = 92 ifTrue: [
            recoveredBlock62PC := 93.
        ].
        recoveredBlock62Step = 93 ifTrue: [
            recoveredBlock62Stack1 := self.
            recoveredBlock62PC := 94.
        ].
        recoveredBlock62Step = 94 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) mdlBuilder.
            recoveredBlock62PC := 96.
        ].
        recoveredBlock62Step = 96 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) createAdditionalMethodName.
            recoveredBlock62PC := 98.
        ].
        recoveredBlock62Step = 98 ifTrue: [
            recoveredBlock62Local2 := recoveredBlock62Stack1.
            recoveredBlock62PC := 99.
        ].
        recoveredBlock62Step = 99 ifTrue: [
            recoveredBlock62Stack1 := SGSmOutlinedMethod.
            recoveredBlock62PC := 101.
        ].
        recoveredBlock62Step = 101 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Local2.
            recoveredBlock62PC := 102.
        ].
        recoveredBlock62Step = 102 ifTrue: [
            recoveredBlock62Stack3 := recoveredBlock62Arg1.
            recoveredBlock62PC := 103.
        ].
        recoveredBlock62Step = 103 ifTrue: [
            recoveredBlock62Stack4 := self.
            recoveredBlock62PC := 104.
        ].
        recoveredBlock62Step = 104 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) create: (recoveredBlock62Stack2) code: (recoveredBlock62Stack3) outlineStrategy: (recoveredBlock62Stack4).
            recoveredBlock62PC := 107.
        ].
        recoveredBlock62Step = 107 ifTrue: [
            recoveredBlock62Local1 := recoveredBlock62Stack1.
            recoveredBlock62PC := 108.
        ].
        recoveredBlock62Step = 108 ifTrue: [
            recoveredBlock62Stack1 := recoveredBlock62Arg1.
            recoveredBlock62PC := 109.
        ].
        recoveredBlock62Step = 109 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Local1.
            recoveredBlock62PC := 110.
        ].
        recoveredBlock62Step = 110 ifTrue: [
            (recoveredBlock62Stack1) addChildren: (recoveredBlock62Stack2).
            recoveredBlock62PC := 112.
        ].
        recoveredBlock62Step = 112 ifTrue: [
            recoveredBlock62Stack1 := recoveredArg1.
            recoveredBlock62PC := 115.
        ].
        recoveredBlock62Step = 115 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Local1.
            recoveredBlock62PC := 116.
        ].
        recoveredBlock62Step = 116 ifTrue: [
            (recoveredBlock62Stack1) currentMethod: (recoveredBlock62Stack2).
            recoveredBlock62PC := 118.
        ].
        recoveredBlock62Step = 118 ifTrue: [
            recoveredBlock62Stack1 := recoveredBlock62Local1.
            recoveredBlock62PC := 119.
        ].
        recoveredBlock62Step = 119 ifTrue: [
            (recoveredBlock62Stack1) buildDeclaration.
            recoveredBlock62PC := 121.
        ].
        recoveredBlock62Step = 121 ifTrue: [
            recoveredBlock62Stack1 := recoveredBlock62Local1.
            recoveredBlock62PC := 122.
        ].
        recoveredBlock62Step = 122 ifTrue: [
            (recoveredBlock62Stack1) buildMdl.
            recoveredBlock62PC := 124.
        ].
        recoveredBlock62Step = 124 ifTrue: [
            recoveredBlock62Stack1 := recoveredBlock62Arg1.
            recoveredBlock62PC := 125.
        ].
        recoveredBlock62Step = 125 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) codeSize.
            recoveredBlock62PC := 127.
        ].
        recoveredBlock62Step = 127 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) counter.
            recoveredBlock62PC := 129.
        ].
        recoveredBlock62Step = 129 ifTrue: [
            recoveredBlock62Stack2 := 'method'.
            recoveredBlock62PC := 131.
        ].
        recoveredBlock62Step = 131 ifTrue: [
            recoveredBlock62Stack3 := 1.
            recoveredBlock62PC := 133.
        ].
        recoveredBlock62Step = 133 ifTrue: [
            (recoveredBlock62Stack1) at: (recoveredBlock62Stack2) put: (recoveredBlock62Stack3).
            recoveredBlock62PC := 135.
        ].
        recoveredBlock62Step = 135 ifTrue: [
            recoveredBlock62Stack1 := recoveredLocal4.
            recoveredBlock62PC := 138.
        ].
        recoveredBlock62Step = 138 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Local2.
            recoveredBlock62PC := 139.
        ].
        recoveredBlock62Step = 139 ifTrue: [
            recoveredBlock62Stack3 := recoveredBlock62Arg1.
            recoveredBlock62PC := 140.
        ].
        recoveredBlock62Step = 140 ifTrue: [
            recoveredBlock62Stack3 := (recoveredBlock62Stack3) codeSize.
            recoveredBlock62PC := 142.
        ].
        recoveredBlock62Step = 142 ifTrue: [
            (recoveredBlock62Stack1) at: (recoveredBlock62Stack2) put: (recoveredBlock62Stack3).
            recoveredBlock62PC := 144.
        ].
        recoveredBlock62Step = 144 ifTrue: [
            recoveredBlock62Stack1 := calibrateMethods.
            recoveredBlock62PC := 146.
        ].
        recoveredBlock62Step = 146 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Local1.
            recoveredBlock62PC := 147.
        ].
        recoveredBlock62Step = 147 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) add: (recoveredBlock62Stack2).
            recoveredBlock62PC := 149.
        ].
        recoveredBlock62Step = 149 ifTrue: [
            recoveredBlock62Stack2 := nil.
            recoveredBlock62PC := 150.
        ].
        recoveredBlock62Step = 150 ifTrue: [
            recoveredBlock62Stack3 := recoveredBlock62Stack2.
            recoveredBlock62PC := 151.
        ].
        recoveredBlock62Step = 151 ifTrue: [
            recoveredBlock62Local2 := recoveredBlock62Stack3.
            recoveredBlock62PC := 152.
        ].
        recoveredBlock62Step = 152 ifTrue: [
            recoveredBlock62Local1 := recoveredBlock62Stack2.
            recoveredBlock62PC := 153.
        ].
        recoveredBlock62Step = 153 ifTrue: [
            recoveredBlock62Result := recoveredBlock62Stack1.
            recoveredBlock62Done := true.
        ].
    ].
    recoveredBlock62Result
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) currentMethod: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            generatingOutlineMethods := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := SGTargetOptions.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) getWorkingPath.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := 'SM.sizeInfo'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := CfsFileStream.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := OWRONLY.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack4 := OAPPEND.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitOr: (recoveredStack4).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := OCREAT.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitOr: (recoveredStack4).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2) oflag: (recoveredStack3).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 227].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := (recoveredStack2) message.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := ': <'.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := '>'.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack1) fatalMessage: (recoveredStack2).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) classImplName.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := [:recoveredBlock235Arg1 :recoveredBlock235Arg2 | 
    | recoveredBlock235Value0 recoveredBlock235Value1 recoveredBlock235Value2 recoveredBlock235Value3 recoveredBlock235Value4 recoveredBlock235Value5 recoveredBlock235Value6 recoveredBlock235Value7 |
    recoveredBlock235Value0 := recoveredLocal2.
    recoveredBlock235Value1 := recoveredLocal1.
    (recoveredBlock235Value0) nextPutAll: (recoveredBlock235Value1).
    recoveredBlock235Value2 := recoveredLocal2.
    recoveredBlock235Value3 := recoveredBlock235Arg1.
    (recoveredBlock235Value2) nextPutAll: (recoveredBlock235Value3).
    recoveredBlock235Value4 := recoveredLocal2.
    (recoveredBlock235Value4) nextPutAll: (' = ').
    recoveredBlock235Value5 := recoveredBlock235Arg2.
    recoveredBlock235Value6 := recoveredLocal2.
    recoveredBlock235Value7 := (recoveredBlock235Value5) writeToStream: (recoveredBlock235Value6).
    recoveredBlock235Value7
].
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e4fe4; bytecode file offset 0xee192c"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
outlineMethods: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            additionalMethods := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) totalCodeSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Local3 recoveredBlock13Local4 recoveredBlock13Local5 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) outliningCandidates.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := [:block2811aafcArg1 :block2811aafcArg2 | 
    | block2811aafcStack0 block2811aafcStack1 block2811aafcStack2 block2811aafcStack3 block2811aafcPC block2811aafcStep block2811aafcDone block2811aafcResult |
    block2811aafcStack0 := self.
    block2811aafcPC := 4.
    block2811aafcDone := false.
    [block2811aafcDone not] whileTrue: [
        block2811aafcStep := block2811aafcPC.
        block2811aafcStep = 4 ifTrue: [
            block2811aafcStack1 := block2811aafcArg1.
            block2811aafcPC := 5.
        ].
        block2811aafcStep = 5 ifTrue: [
            (block2811aafcStack1 == nil) ifTrue: [block2811aafcPC := 38] ifFalse: [block2811aafcPC := 8].
        ].
        block2811aafcStep = 8 ifTrue: [
            block2811aafcStack1 := block2811aafcArg2.
            block2811aafcPC := 9.
        ].
        block2811aafcStep = 9 ifTrue: [
            block2811aafcStack1 := (block2811aafcStack1) reductionInCodeSize.
            block2811aafcPC := 11.
        ].
        block2811aafcStep = 11 ifTrue: [
            block2811aafcStack2 := block2811aafcArg1.
            block2811aafcPC := 12.
        ].
        block2811aafcStep = 12 ifTrue: [
            block2811aafcStack2 := (block2811aafcStack2) reductionInCodeSize.
            block2811aafcPC := 14.
        ].
        block2811aafcStep = 14 ifTrue: [
            block2811aafcStack1 := (block2811aafcStack1) > (block2811aafcStack2).
            block2811aafcPC := 15.
        ].
        block2811aafcStep = 15 ifTrue: [
            (block2811aafcStack1) ifTrue: [block2811aafcPC := 38] ifFalse: [block2811aafcPC := 18].
        ].
        block2811aafcStep = 18 ifTrue: [
            block2811aafcStack1 := block2811aafcArg2.
            block2811aafcPC := 19.
        ].
        block2811aafcStep = 19 ifTrue: [
            block2811aafcStack1 := (block2811aafcStack1) reductionInCodeSize.
            block2811aafcPC := 21.
        ].
        block2811aafcStep = 21 ifTrue: [
            block2811aafcStack2 := block2811aafcArg1.
            block2811aafcPC := 22.
        ].
        block2811aafcStep = 22 ifTrue: [
            block2811aafcStack2 := (block2811aafcStack2) reductionInCodeSize.
            block2811aafcPC := 24.
        ].
        block2811aafcStep = 24 ifTrue: [
            block2811aafcStack1 := (block2811aafcStack1) = (block2811aafcStack2).
            block2811aafcPC := 25.
        ].
        block2811aafcStep = 25 ifTrue: [
            (block2811aafcStack1) ifTrue: [block2811aafcPC := 28] ifFalse: [block2811aafcPC := 42].
        ].
        block2811aafcStep = 28 ifTrue: [
            block2811aafcStack1 := block2811aafcArg2.
            block2811aafcPC := 29.
        ].
        block2811aafcStep = 29 ifTrue: [
            block2811aafcStack1 := (block2811aafcStack1) tag.
            block2811aafcPC := 31.
        ].
        block2811aafcStep = 31 ifTrue: [
            block2811aafcStack2 := block2811aafcArg1.
            block2811aafcPC := 32.
        ].
        block2811aafcStep = 32 ifTrue: [
            block2811aafcStack2 := (block2811aafcStack2) tag.
            block2811aafcPC := 34.
        ].
        block2811aafcStep = 34 ifTrue: [
            block2811aafcStack1 := (block2811aafcStack1) > (block2811aafcStack2).
            block2811aafcPC := 35.
        ].
        block2811aafcStep = 35 ifTrue: [
            (block2811aafcStack1) ifTrue: [block2811aafcPC := 38] ifFalse: [block2811aafcPC := 42].
        ].
        block2811aafcStep = 38 ifTrue: [
            block2811aafcStack1 := block2811aafcArg2.
            block2811aafcPC := 39.
        ].
        block2811aafcStep = 39 ifTrue: [
            block2811aafcPC := 43.
        ].
        block2811aafcStep = 42 ifTrue: [
            block2811aafcStack1 := block2811aafcArg1.
            block2811aafcPC := 43.
        ].
        block2811aafcStep = 43 ifTrue: [
            block2811aafcResult := block2811aafcStack1.
            block2811aafcDone := true.
        ].
    ].
    block2811aafcResult
].
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) inject: (recoveredBlock13Stack1) into: (recoveredBlock13Stack2).
            recoveredBlock13PC := 70.
        ].
        recoveredBlock13Step = 70 ifTrue: [
            recoveredBlock13Local5 := recoveredBlock13Stack0.
            recoveredBlock13PC := 73.
        ].
        recoveredBlock13Step = 73 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local5.
            recoveredBlock13PC := 76.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            (recoveredBlock13Stack0 == nil) ifTrue: [recoveredBlock13PC := 292] ifFalse: [recoveredBlock13PC := 80].
        ].
        recoveredBlock13Step = 80 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local5.
            recoveredBlock13PC := 83.
        ].
        recoveredBlock13Step = 83 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) reductionInCodeSize.
            recoveredBlock13PC := 85.
        ].
        recoveredBlock13Step = 85 ifTrue: [
            recoveredBlock13Stack1 := 0.
            recoveredBlock13PC := 87.
        ].
        recoveredBlock13Step = 87 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) > (recoveredBlock13Stack1).
            recoveredBlock13PC := 88.
        ].
        recoveredBlock13Step = 88 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 92] ifFalse: [recoveredBlock13PC := 292].
        ].
        recoveredBlock13Step = 92 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local5.
            recoveredBlock13PC := 95.
        ].
        recoveredBlock13Step = 95 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) modelReductionInCodeSize.
            recoveredBlock13PC := 97.
        ].
        recoveredBlock13Step = 97 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 100.
        ].
        recoveredBlock13Step = 100 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local5.
            recoveredBlock13PC := 103.
        ].
        recoveredBlock13Step = 103 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isPrivateMethod.
            recoveredBlock13PC := 105.
        ].
        recoveredBlock13Step = 105 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 108] ifFalse: [recoveredBlock13PC := 170].
        ].
        recoveredBlock13Step = 108 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local5.
            recoveredBlock13PC := 111.
        ].
        recoveredBlock13Step = 111 ifTrue: [
            recoveredBlock13Stack1 := false.
            recoveredBlock13PC := 112.
        ].
        recoveredBlock13Step = 112 ifTrue: [
            (recoveredBlock13Stack0) inline: (recoveredBlock13Stack1).
            recoveredBlock13PC := 114.
        ].
        recoveredBlock13Step = 114 ifTrue: [
            recoveredBlock13Stack0 := methods.
            recoveredBlock13PC := 116.
        ].
        recoveredBlock13Step = 116 ifTrue: [
            recoveredBlock13Stack1 := [:recoveredBlock13Block116Arg1 | 
    | recoveredBlock13Block116Value0 recoveredBlock13Block116Value1 recoveredBlock13Block116Value2 |
    recoveredBlock13Block116Value0 := recoveredBlock13Block116Arg1.
    recoveredBlock13Block116Value1 := recoveredBlock13Local5.
    recoveredBlock13Block116Value2 := (recoveredBlock13Block116Value0) replacePrivateMethod: (recoveredBlock13Block116Value1).
    recoveredBlock13Block116Value2
].
            recoveredBlock13PC := 129.
        ].
        recoveredBlock13Step = 129 ifTrue: [
            (recoveredBlock13Stack0) do: (recoveredBlock13Stack1).
            recoveredBlock13PC := 131.
        ].
        recoveredBlock13Step = 131 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 132.
        ].
        recoveredBlock13Step = 132 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) privateMethods.
            recoveredBlock13PC := 134.
        ].
        recoveredBlock13Step = 134 ifTrue: [
            recoveredBlock13Stack1 := [:recoveredBlock13Block134Arg1 | 
    | recoveredBlock13Block134Value0 recoveredBlock13Block134Value1 recoveredBlock13Block134Value2 |
    recoveredBlock13Block134Value0 := recoveredBlock13Block134Arg1.
    recoveredBlock13Block134Value1 := recoveredBlock13Local5.
    recoveredBlock13Block134Value2 := (recoveredBlock13Block134Value0) replacePrivateMethodRoot: (recoveredBlock13Block134Value1).
    recoveredBlock13Block134Value2
].
            recoveredBlock13PC := 147.
        ].
        recoveredBlock13Step = 147 ifTrue: [
            (recoveredBlock13Stack0) do: (recoveredBlock13Stack1).
            recoveredBlock13PC := 149.
        ].
        recoveredBlock13Step = 149 ifTrue: [
            recoveredBlock13Stack0 := additionalMethods.
            recoveredBlock13PC := 151.
        ].
        recoveredBlock13Step = 151 ifTrue: [
            recoveredBlock13Stack1 := [:recoveredBlock13Block151Arg1 | 
    | recoveredBlock13Block151Value0 recoveredBlock13Block151Value1 recoveredBlock13Block151Value2 |
    recoveredBlock13Block151Value0 := recoveredBlock13Block151Arg1.
    recoveredBlock13Block151Value1 := recoveredBlock13Local5.
    recoveredBlock13Block151Value2 := (recoveredBlock13Block151Value0) replacePrivateMethod: (recoveredBlock13Block151Value1).
    recoveredBlock13Block151Value2
].
            recoveredBlock13PC := 165.
        ].
        recoveredBlock13Step = 165 ifTrue: [
            (recoveredBlock13Stack0) do: (recoveredBlock13Stack1).
            recoveredBlock13PC := 167.
        ].
        recoveredBlock13Step = 167 ifTrue: [
            recoveredBlock13PC := 236.
        ].
        recoveredBlock13Step = 170 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 171.
        ].
        recoveredBlock13Step = 171 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) mdlBuilder.
            recoveredBlock13PC := 173.
        ].
        recoveredBlock13Step = 173 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) createAdditionalMethodName.
            recoveredBlock13PC := 175.
        ].
        recoveredBlock13Step = 175 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack0.
            recoveredBlock13PC := 178.
        ].
        recoveredBlock13Step = 178 ifTrue: [
            recoveredBlock13Stack0 := SGSmOutlinedMethod.
            recoveredBlock13PC := 180.
        ].
        recoveredBlock13Step = 180 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local3.
            recoveredBlock13PC := 183.
        ].
        recoveredBlock13Step = 183 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local5.
            recoveredBlock13PC := 186.
        ].
        recoveredBlock13Step = 186 ifTrue: [
            recoveredBlock13Stack3 := self.
            recoveredBlock13PC := 187.
        ].
        recoveredBlock13Step = 187 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) create: (recoveredBlock13Stack1) code: (recoveredBlock13Stack2) outlineStrategy: (recoveredBlock13Stack3).
            recoveredBlock13PC := 190.
        ].
        recoveredBlock13Step = 190 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack0.
            recoveredBlock13PC := 193.
        ].
        recoveredBlock13Step = 193 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local2.
            recoveredBlock13PC := 196.
        ].
        recoveredBlock13Step = 196 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local5.
            recoveredBlock13PC := 199.
        ].
        recoveredBlock13Step = 199 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) methods.
            recoveredBlock13PC := 201.
        ].
        recoveredBlock13Step = 201 ifTrue: [
            (recoveredBlock13Stack0) trigger: (recoveredBlock13Stack1).
            recoveredBlock13PC := 203.
        ].
        recoveredBlock13Step = 203 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 204.
        ].
        recoveredBlock13Step = 204 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local5.
            recoveredBlock13PC := 207.
        ].
        recoveredBlock13Step = 207 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local2.
            recoveredBlock13PC := 210.
        ].
        recoveredBlock13Step = 210 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local5.
            recoveredBlock13PC := 213.
        ].
        recoveredBlock13Step = 213 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) methods.
            recoveredBlock13PC := 215.
        ].
        recoveredBlock13Step = 215 ifTrue: [
            (recoveredBlock13Stack0) replaceCode: (recoveredBlock13Stack1) with: (recoveredBlock13Stack2) in: (recoveredBlock13Stack3).
            recoveredBlock13PC := 218.
        ].
        recoveredBlock13Step = 218 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local5.
            recoveredBlock13PC := 221.
        ].
        recoveredBlock13Step = 221 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local2.
            recoveredBlock13PC := 224.
        ].
        recoveredBlock13Step = 224 ifTrue: [
            (recoveredBlock13Stack0) addChildren: (recoveredBlock13Stack1).
            recoveredBlock13PC := 226.
        ].
        recoveredBlock13Step = 226 ifTrue: [
            recoveredBlock13Stack0 := additionalMethods.
            recoveredBlock13PC := 228.
        ].
        recoveredBlock13Step = 228 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local2.
            recoveredBlock13PC := 231.
        ].
        recoveredBlock13Step = 231 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local2.
            recoveredBlock13PC := 234.
        ].
        recoveredBlock13Step = 234 ifTrue: [
            (recoveredBlock13Stack0) at: (recoveredBlock13Stack1) put: (recoveredBlock13Stack2).
            recoveredBlock13PC := 236.
        ].
        recoveredBlock13Step = 236 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 237.
        ].
        recoveredBlock13Step = 237 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) totalCodeSize.
            recoveredBlock13PC := 238.
        ].
        recoveredBlock13Step = 238 ifTrue: [
            recoveredBlock13Local4 := recoveredBlock13Stack0.
            recoveredBlock13PC := 241.
        ].
        recoveredBlock13Step = 241 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local4.
            recoveredBlock13PC := 244.
        ].
        recoveredBlock13Step = 244 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 247.
        ].
        recoveredBlock13Step = 247 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 250.
        ].
        recoveredBlock13Step = 250 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) - (recoveredBlock13Stack2).
            recoveredBlock13PC := 251.
        ].
        recoveredBlock13Step = 251 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) - (recoveredBlock13Stack1).
            recoveredBlock13PC := 252.
        ].
        recoveredBlock13Step = 252 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) abs.
            recoveredBlock13PC := 254.
        ].
        recoveredBlock13Step = 254 ifTrue: [
            recoveredBlock13Stack1 := #[252 169 241 210 77 98 80 63].
            recoveredBlock13PC := 256.
        ].
        recoveredBlock13Step = 256 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) > (recoveredBlock13Stack1).
            recoveredBlock13PC := 257.
        ].
        recoveredBlock13Step = 257 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 260] ifFalse: [recoveredBlock13PC := 270].
        ].
        recoveredBlock13Step = 260 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 261.
        ].
        recoveredBlock13Step = 261 ifTrue: [
            recoveredBlock13Stack1 := 'Internal fatal error: Code size increased during outlining - Please disable outlining and report this error to ETAS'.
            recoveredBlock13PC := 263.
        ].
        recoveredBlock13Step = 263 ifTrue: [
            recoveredBlock13Stack2 := false.
            recoveredBlock13PC := 264.
        ].
        recoveredBlock13Step = 264 ifTrue: [
            (recoveredBlock13Stack0) internalError: (recoveredBlock13Stack1) fatal: (recoveredBlock13Stack2).
            recoveredBlock13PC := 266.
        ].
        recoveredBlock13Step = 266 ifTrue: [
            recoveredBlock13Stack0 := false.
            recoveredBlock13PC := 267.
        ].
        recoveredBlock13Step = 267 ifTrue: [
            recoveredBlock13PC := 277.
        ].
        recoveredBlock13Step = 270 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local4.
            recoveredBlock13PC := 273.
        ].
        recoveredBlock13Step = 273 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 276.
        ].
        recoveredBlock13Step = 276 ifTrue: [
            recoveredBlock13Stack0 := true.
            recoveredBlock13PC := 277.
        ].
        recoveredBlock13Step = 277 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 278.
        ].
        recoveredBlock13Step = 278 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 279.
        ].
        recoveredBlock13Step = 279 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 282.
        ].
        recoveredBlock13Step = 282 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 283.
        ].
        recoveredBlock13Step = 283 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack2.
            recoveredBlock13PC := 286.
        ].
        recoveredBlock13Step = 286 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 289.
        ].
        recoveredBlock13Step = 289 ifTrue: [
            recoveredBlock13PC := 293.
        ].
        recoveredBlock13Step = 292 ifTrue: [
            recoveredBlock13Stack0 := false.
            recoveredBlock13PC := 293.
        ].
        recoveredBlock13Step = 293 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack0) whileTrue.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            generate := recoveredStack0.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            generatingOutlineMethods := recoveredStack0.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMethod.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateMethods.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := [:recoveredBlock313Arg1 | 
    | recoveredBlock313Value0 recoveredBlock313Value1 recoveredBlock313Value2 recoveredBlock313Value3 |
    recoveredBlock313Value0 := recoveredArg1.
    recoveredBlock313Value1 := recoveredBlock313Arg1.
    (recoveredBlock313Value0) currentMethod: (recoveredBlock313Value1).
    recoveredBlock313Value2 := recoveredBlock313Arg1.
    recoveredBlock313Value3 := (recoveredBlock313Value2) buildMdl.
    recoveredBlock313Value3
].
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalMethodsTopologicalOrder.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := [:recoveredBlock335Arg1 | 
    | recoveredBlock335Value0 recoveredBlock335Value1 recoveredBlock335Value2 recoveredBlock335Value3 recoveredBlock335Value4 |
    recoveredBlock335Value0 := recoveredBlock335Arg1.
    (recoveredBlock335Value0) buildDeclaration.
    recoveredBlock335Value1 := recoveredArg1.
    recoveredBlock335Value2 := recoveredBlock335Arg1.
    (recoveredBlock335Value1) currentMethod: (recoveredBlock335Value2).
    recoveredBlock335Value3 := recoveredBlock335Arg1.
    recoveredBlock335Value4 := (recoveredBlock335Value3) buildMdl.
    recoveredBlock335Value4
].
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack0) currentMethod: (recoveredStack1).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := (recoveredStack0) sizeEstimatorClass.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCalibrating.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 374] ifFalse: [recoveredPC := 380].
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            (recoveredStack0) calibrate: (recoveredStack1).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            generatingOutlineMethods := recoveredStack0.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2062b2cc; bytecode file offset 0xf27c3c"
!SGSmOutlineMethodStrategy methodsFor: 'recovered'!
dataStructureDump
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) allCode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Arg1.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) class.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) name.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            (recoveredBlock17Stack2) nextPutAll: (recoveredBlock17Stack3).
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack3 := ' '.
            recoveredBlock17PC := 38.
        ].
        recoveredBlock17Step = 38 ifTrue: [
            (recoveredBlock17Stack2) nextPutAll: (recoveredBlock17Stack3).
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Arg1.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) tag.
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            (recoveredBlock17Stack2) nextPutAll: (recoveredBlock17Stack3).
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Stack3 := ' : '.
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            (recoveredBlock17Stack2) nextPutAll: (recoveredBlock17Stack3).
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Arg1.
            recoveredBlock17PC := 53.
        ].
        recoveredBlock17Step = 53 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) codeSize.
            recoveredBlock17PC := 55.
        ].
        recoveredBlock17Step = 55 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) asString.
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            (recoveredBlock17Stack2) nextPutAll: (recoveredBlock17Stack3).
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 60.
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack3 := ' codesize'.
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            (recoveredBlock17Stack2) nextPutAll: (recoveredBlock17Stack3).
            recoveredBlock17PC := 64.
        ].
        recoveredBlock17Step = 64 ifTrue: [
            (recoveredBlock17Stack1) cr.
            recoveredBlock17PC := 66.
        ].
        recoveredBlock17Step = 66 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 68.
        ].
        recoveredBlock17Step = 68 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) method.
            recoveredBlock17PC := 70.
        ].
        recoveredBlock17Step = 70 ifTrue: [
            (recoveredBlock17Stack2 == nil) ifTrue: [recoveredBlock17PC := 114] ifFalse: [recoveredBlock17PC := 74].
        ].
        recoveredBlock17Step = 74 ifTrue: [
            recoveredBlock17PC := 75.
        ].
        recoveredBlock17Step = 75 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 76.
        ].
        recoveredBlock17Step = 76 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) method.
            recoveredBlock17PC := 78.
        ].
        recoveredBlock17Step = 78 ifTrue: [
            recoveredBlock17Stack2 := [:recoveredBlock17Block78Arg1 :recoveredBlock17Block78Arg2 | 
    | recoveredBlock17Block78Value0 recoveredBlock17Block78Value1 recoveredBlock17Block78Value2 recoveredBlock17Block78Value3 recoveredBlock17Block78Value4 recoveredBlock17Block78Value5 recoveredBlock17Block78Value6 recoveredBlock17Block78Value7 recoveredBlock17Block78Value8 recoveredBlock17Block78Value9 |
    recoveredBlock17Block78Value0 := recoveredLocal2.
    recoveredBlock17Block78Value1 := recoveredBlock17Block78Value0.
    (recoveredBlock17Block78Value1) nextPutAll: ('    ').
    recoveredBlock17Block78Value2 := recoveredBlock17Block78Value0.
    recoveredBlock17Block78Value3 := recoveredBlock17Block78Arg1.
    recoveredBlock17Block78Value4 := (recoveredBlock17Block78Value3) errLabel.
    (recoveredBlock17Block78Value2) nextPutAll: (recoveredBlock17Block78Value4).
    recoveredBlock17Block78Value5 := recoveredBlock17Block78Value0.
    (recoveredBlock17Block78Value5) nextPutAll: (' : ').
    recoveredBlock17Block78Value6 := recoveredBlock17Block78Value0.
    recoveredBlock17Block78Value7 := recoveredBlock17Block78Arg2.
    recoveredBlock17Block78Value8 := (recoveredBlock17Block78Value7) asString.
    (recoveredBlock17Block78Value6) nextPutAll: (recoveredBlock17Block78Value8).
    recoveredBlock17Block78Value9 := (recoveredBlock17Block78Value0) cr.
    recoveredBlock17Block78Value9
].
            recoveredBlock17PC := 112.
        ].
        recoveredBlock17Step = 112 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) keysAndValuesDo: (recoveredBlock17Stack2).
            recoveredBlock17PC := 114.
        ].
        recoveredBlock17Step = 114 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := SortedCollection.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := [:block2811fcf8Arg1 :block2811fcf8Arg2 | 
    | block2811fcf8Value0 block2811fcf8Value1 block2811fcf8Value2 block2811fcf8Value3 block2811fcf8Value4 block2811fcf8Value5 block2811fcf8Value6 |
    block2811fcf8Value0 := block2811fcf8Arg1.
    block2811fcf8Value1 := (block2811fcf8Value0) mdlName.
    block2811fcf8Value2 := (block2811fcf8Value1) mdlLabel.
    block2811fcf8Value3 := block2811fcf8Arg2.
    block2811fcf8Value4 := (block2811fcf8Value3) mdlName.
    block2811fcf8Value5 := (block2811fcf8Value4) mdlLabel.
    block2811fcf8Value6 := (block2811fcf8Value2) <= (block2811fcf8Value5).
    block2811fcf8Value6
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := methods.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) keys.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := [:recoveredBlock157Arg1 | 
    | recoveredBlock157Local1 recoveredBlock157Value0 recoveredBlock157Value1 recoveredBlock157Value2 recoveredBlock157Value3 recoveredBlock157Value4 recoveredBlock157Value5 recoveredBlock157Value6 recoveredBlock157Value7 recoveredBlock157Value8 recoveredBlock157Value9 recoveredBlock157Value10 recoveredBlock157Value11 recoveredBlock157Value12 recoveredBlock157Value13 recoveredBlock157Value14 recoveredBlock157Value15 recoveredBlock157Value16 recoveredBlock157Value17 recoveredBlock157Value18 |
    recoveredBlock157Value0 := methods.
    recoveredBlock157Value1 := recoveredBlock157Arg1.
    recoveredBlock157Value2 := (recoveredBlock157Value0) at: (recoveredBlock157Value1).
    recoveredBlock157Local1 := recoveredBlock157Value2.
    recoveredBlock157Value3 := recoveredLocal2.
    recoveredBlock157Value4 := recoveredBlock157Value3.
    recoveredBlock157Value5 := recoveredBlock157Arg1.
    recoveredBlock157Value6 := (recoveredBlock157Value5) errLabel.
    (recoveredBlock157Value4) nextPutAll: (recoveredBlock157Value6).
    (recoveredBlock157Value3) cr.
    recoveredBlock157Value7 := recoveredLocal2.
    recoveredBlock157Value8 := recoveredBlock157Value7.
    (recoveredBlock157Value8) nextPutAll: ('    ').
    recoveredBlock157Value9 := recoveredBlock157Value7.
    recoveredBlock157Value10 := recoveredBlock157Local1.
    recoveredBlock157Value11 := (recoveredBlock157Value10) codeSize.
    recoveredBlock157Value12 := (recoveredBlock157Value11) asString.
    (recoveredBlock157Value9) nextPutAll: (recoveredBlock157Value12).
    recoveredBlock157Value13 := recoveredBlock157Value7.
    (recoveredBlock157Value13) nextPutAll: (' code size').
    (recoveredBlock157Value7) cr.
    recoveredBlock157Value14 := recoveredBlock157Local1.
    recoveredBlock157Value15 := recoveredLocal2.
    (recoveredBlock157Value14) printFormatted: (1) on: (recoveredBlock157Value15).
    recoveredBlock157Value16 := recoveredBlock157Local1.
    recoveredBlock157Value17 := recoveredLocal1.
    recoveredBlock157Value18 := (self) countCalls: (recoveredBlock157Value16) on: (recoveredBlock157Value17).
    recoveredBlock157Value18
].
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateMethods.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := [:recoveredBlock226Arg1 | 
    | recoveredBlock226Stack0 recoveredBlock226Stack1 recoveredBlock226Stack2 recoveredBlock226Stack3 recoveredBlock226Stack4 recoveredBlock226PC recoveredBlock226Step recoveredBlock226Done recoveredBlock226Result |
    recoveredBlock226Stack0 := self.
    recoveredBlock226PC := 232.
    recoveredBlock226Done := false.
    [recoveredBlock226Done not] whileTrue: [
        recoveredBlock226Step := recoveredBlock226PC.
        recoveredBlock226Step = 232 ifTrue: [
            recoveredBlock226Stack1 := recoveredLocal2.
            recoveredBlock226PC := 235.
        ].
        recoveredBlock226Step = 235 ifTrue: [
            recoveredBlock226Stack2 := recoveredBlock226Stack1.
            recoveredBlock226PC := 236.
        ].
        recoveredBlock226Step = 236 ifTrue: [
            recoveredBlock226Stack3 := recoveredBlock226Arg1.
            recoveredBlock226PC := 237.
        ].
        recoveredBlock226Step = 237 ifTrue: [
            recoveredBlock226Stack3 := (recoveredBlock226Stack3) tag.
            recoveredBlock226PC := 239.
        ].
        recoveredBlock226Step = 239 ifTrue: [
            (recoveredBlock226Stack2) nextPutAll: (recoveredBlock226Stack3).
            recoveredBlock226Stack2 := recoveredBlock226Stack1.
            recoveredBlock226PC := 242.
        ].
        recoveredBlock226Step = 242 ifTrue: [
            (recoveredBlock226Stack2) cr.
            recoveredBlock226Stack2 := recoveredBlock226Stack1.
            recoveredBlock226PC := 245.
        ].
        recoveredBlock226Step = 245 ifTrue: [
            recoveredBlock226Stack3 := '    inlined: '.
            recoveredBlock226PC := 247.
        ].
        recoveredBlock226Step = 247 ifTrue: [
            (recoveredBlock226Stack2) nextPutAll: (recoveredBlock226Stack3).
            recoveredBlock226Stack2 := recoveredBlock226Stack1.
            recoveredBlock226PC := 250.
        ].
        recoveredBlock226Step = 250 ifTrue: [
            recoveredBlock226Stack3 := recoveredBlock226Arg1.
            recoveredBlock226PC := 251.
        ].
        recoveredBlock226Step = 251 ifTrue: [
            recoveredBlock226Stack3 := (recoveredBlock226Stack3) isInlined.
            recoveredBlock226PC := 253.
        ].
        recoveredBlock226Step = 253 ifTrue: [
            recoveredBlock226Stack3 := (recoveredBlock226Stack3) asString.
            recoveredBlock226PC := 255.
        ].
        recoveredBlock226Step = 255 ifTrue: [
            (recoveredBlock226Stack2) nextPutAll: (recoveredBlock226Stack3).
            recoveredBlock226Stack2 := recoveredBlock226Stack1.
            recoveredBlock226PC := 258.
        ].
        recoveredBlock226Step = 258 ifTrue: [
            (recoveredBlock226Stack2) cr.
            recoveredBlock226Stack2 := recoveredBlock226Stack1.
            recoveredBlock226PC := 261.
        ].
        recoveredBlock226Step = 261 ifTrue: [
            recoveredBlock226Stack3 := '    '.
            recoveredBlock226PC := 263.
        ].
        recoveredBlock226Step = 263 ifTrue: [
            (recoveredBlock226Stack2) nextPutAll: (recoveredBlock226Stack3).
            recoveredBlock226Stack2 := recoveredBlock226Stack1.
            recoveredBlock226PC := 266.
        ].
        recoveredBlock226Step = 266 ifTrue: [
            recoveredBlock226Stack3 := recoveredBlock226Arg1.
            recoveredBlock226PC := 267.
        ].
        recoveredBlock226Step = 267 ifTrue: [
            recoveredBlock226Stack3 := (recoveredBlock226Stack3) codeSize.
            recoveredBlock226PC := 269.
        ].
        recoveredBlock226Step = 269 ifTrue: [
            recoveredBlock226Stack3 := (recoveredBlock226Stack3) asString.
            recoveredBlock226PC := 271.
        ].
        recoveredBlock226Step = 271 ifTrue: [
            (recoveredBlock226Stack2) nextPutAll: (recoveredBlock226Stack3).
            recoveredBlock226Stack2 := recoveredBlock226Stack1.
            recoveredBlock226PC := 274.
        ].
        recoveredBlock226Step = 274 ifTrue: [
            recoveredBlock226Stack3 := ' code size'.
            recoveredBlock226PC := 276.
        ].
        recoveredBlock226Step = 276 ifTrue: [
            (recoveredBlock226Stack2) nextPutAll: (recoveredBlock226Stack3).
            recoveredBlock226PC := 278.
        ].
        recoveredBlock226Step = 278 ifTrue: [
            (recoveredBlock226Stack1) cr.
            recoveredBlock226PC := 280.
        ].
        recoveredBlock226Step = 280 ifTrue: [
            recoveredBlock226Stack1 := nil.
            recoveredBlock226PC := 281.
        ].
        recoveredBlock226Step = 281 ifTrue: [
            recoveredBlock226Stack2 := recoveredBlock226Arg1.
            recoveredBlock226PC := 282.
        ].
        recoveredBlock226Step = 282 ifTrue: [
            recoveredBlock226Stack2 := (recoveredBlock226Stack2) isInlined.
            recoveredBlock226PC := 284.
        ].
        recoveredBlock226Step = 284 ifTrue: [
            (recoveredBlock226Stack2) ifTrue: [recoveredBlock226PC := 296] ifFalse: [recoveredBlock226PC := 288].
        ].
        recoveredBlock226Step = 288 ifTrue: [
            recoveredBlock226PC := 289.
        ].
        recoveredBlock226Step = 289 ifTrue: [
            recoveredBlock226Stack1 := self.
            recoveredBlock226PC := 290.
        ].
        recoveredBlock226Step = 290 ifTrue: [
            recoveredBlock226Stack2 := recoveredBlock226Arg1.
            recoveredBlock226PC := 291.
        ].
        recoveredBlock226Step = 291 ifTrue: [
            recoveredBlock226Stack3 := recoveredLocal1.
            recoveredBlock226PC := 294.
        ].
        recoveredBlock226Step = 294 ifTrue: [
            recoveredBlock226Stack1 := (recoveredBlock226Stack1) countCalls: (recoveredBlock226Stack2) on: (recoveredBlock226Stack3).
            recoveredBlock226PC := 296.
        ].
        recoveredBlock226Step = 296 ifTrue: [
            recoveredBlock226Result := recoveredBlock226Stack1.
            recoveredBlock226Done := true.
        ].
    ].
    recoveredBlock226Result
].
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := additionalMethods.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := [:recoveredBlock305Arg1 | 
    | recoveredBlock305Local1 recoveredBlock305Value0 recoveredBlock305Value1 recoveredBlock305Value2 recoveredBlock305Value3 recoveredBlock305Value4 recoveredBlock305Value5 recoveredBlock305Value6 recoveredBlock305Value7 recoveredBlock305Value8 recoveredBlock305Value9 recoveredBlock305Value10 recoveredBlock305Value11 recoveredBlock305Value12 recoveredBlock305Value13 recoveredBlock305Value14 recoveredBlock305Value15 recoveredBlock305Value16 recoveredBlock305Value17 recoveredBlock305Value18 |
    recoveredBlock305Value0 := additionalMethods.
    recoveredBlock305Value1 := recoveredBlock305Arg1.
    recoveredBlock305Value2 := (recoveredBlock305Value0) at: (recoveredBlock305Value1).
    recoveredBlock305Local1 := recoveredBlock305Value2.
    recoveredBlock305Value3 := recoveredLocal2.
    recoveredBlock305Value4 := recoveredBlock305Value3.
    recoveredBlock305Value5 := recoveredBlock305Arg1.
    (recoveredBlock305Value4) nextPutAll: (recoveredBlock305Value5).
    (recoveredBlock305Value3) cr.
    recoveredBlock305Value6 := recoveredLocal2.
    recoveredBlock305Value7 := recoveredBlock305Value6.
    (recoveredBlock305Value7) nextPutAll: ('    ').
    recoveredBlock305Value8 := recoveredBlock305Value6.
    recoveredBlock305Value9 := recoveredBlock305Local1.
    recoveredBlock305Value10 := (recoveredBlock305Value9) codeSize.
    recoveredBlock305Value11 := (recoveredBlock305Value10) asString.
    (recoveredBlock305Value8) nextPutAll: (recoveredBlock305Value11).
    recoveredBlock305Value12 := recoveredBlock305Value6.
    (recoveredBlock305Value12) nextPutAll: (' code size').
    (recoveredBlock305Value6) cr.
    recoveredBlock305Value13 := recoveredBlock305Local1.
    recoveredBlock305Value14 := (recoveredBlock305Value13) code.
    recoveredBlock305Value15 := recoveredLocal2.
    (recoveredBlock305Value14) printFormatted: (1) on: (recoveredBlock305Value15).
    recoveredBlock305Value16 := recoveredBlock305Local1.
    recoveredBlock305Value17 := recoveredLocal1.
    recoveredBlock305Value18 := (self) countCalls: (recoveredBlock305Value16) on: (recoveredBlock305Value17).
    recoveredBlock305Value18
].
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := [:recoveredBlock381Arg1 | 
    | recoveredBlock381Stack0 recoveredBlock381Stack1 recoveredBlock381Stack2 recoveredBlock381Stack3 recoveredBlock381Stack4 recoveredBlock381PC recoveredBlock381Step recoveredBlock381Done recoveredBlock381Result |
    recoveredBlock381Stack0 := self.
    recoveredBlock381PC := 388.
    recoveredBlock381Done := false.
    [recoveredBlock381Done not] whileTrue: [
        recoveredBlock381Step := recoveredBlock381PC.
        recoveredBlock381Step = 388 ifTrue: [
            recoveredBlock381Stack1 := nil.
            recoveredBlock381PC := 389.
        ].
        recoveredBlock381Step = 389 ifTrue: [
            recoveredBlock381Stack2 := recoveredBlock381Arg1.
            recoveredBlock381PC := 390.
        ].
        recoveredBlock381Step = 390 ifTrue: [
            recoveredBlock381Stack2 := (recoveredBlock381Stack2) isAbstractMethodCaller.
            recoveredBlock381PC := 392.
        ].
        recoveredBlock381Step = 392 ifTrue: [
            (recoveredBlock381Stack2) ifTrue: [recoveredBlock381PC := 396] ifFalse: [recoveredBlock381PC := 437].
        ].
        recoveredBlock381Step = 396 ifTrue: [
            recoveredBlock381PC := 397.
        ].
        recoveredBlock381Step = 397 ifTrue: [
            recoveredBlock381Stack1 := recoveredLocal2.
            recoveredBlock381PC := 400.
        ].
        recoveredBlock381Step = 400 ifTrue: [
            recoveredBlock381Stack2 := recoveredBlock381Stack1.
            recoveredBlock381PC := 401.
        ].
        recoveredBlock381Step = 401 ifTrue: [
            recoveredBlock381Stack3 := recoveredBlock381Arg1.
            recoveredBlock381PC := 402.
        ].
        recoveredBlock381Step = 402 ifTrue: [
            recoveredBlock381Stack3 := (recoveredBlock381Stack3) tag.
            recoveredBlock381PC := 404.
        ].
        recoveredBlock381Step = 404 ifTrue: [
            (recoveredBlock381Stack2) nextPutAll: (recoveredBlock381Stack3).
            recoveredBlock381PC := 406.
        ].
        recoveredBlock381Step = 406 ifTrue: [
            (recoveredBlock381Stack1) cr.
            recoveredBlock381PC := 408.
        ].
        recoveredBlock381Step = 408 ifTrue: [
            recoveredBlock381Stack1 := recoveredBlock381Arg1.
            recoveredBlock381PC := 409.
        ].
        recoveredBlock381Step = 409 ifTrue: [
            recoveredBlock381Stack1 := (recoveredBlock381Stack1) calledMethods.
            recoveredBlock381PC := 411.
        ].
        recoveredBlock381Step = 411 ifTrue: [
            recoveredBlock381Stack2 := [:recoveredBlock381Block411Arg1 | 
    | recoveredBlock381Block411Value0 recoveredBlock381Block411Value1 recoveredBlock381Block411Value2 recoveredBlock381Block411Value3 recoveredBlock381Block411Value4 recoveredBlock381Block411Value5 |
    recoveredBlock381Block411Value0 := recoveredLocal2.
    recoveredBlock381Block411Value1 := recoveredBlock381Block411Value0.
    (recoveredBlock381Block411Value1) nextPutAll: ('    ').
    recoveredBlock381Block411Value2 := recoveredBlock381Block411Value0.
    recoveredBlock381Block411Value3 := recoveredBlock381Block411Arg1.
    recoveredBlock381Block411Value4 := (recoveredBlock381Block411Value3) tag.
    (recoveredBlock381Block411Value2) nextPutAll: (recoveredBlock381Block411Value4).
    recoveredBlock381Block411Value5 := (recoveredBlock381Block411Value0) cr.
    recoveredBlock381Block411Value5
].
            recoveredBlock381PC := 435.
        ].
        recoveredBlock381Step = 435 ifTrue: [
            recoveredBlock381Stack1 := (recoveredBlock381Stack1) do: (recoveredBlock381Stack2).
            recoveredBlock381PC := 437.
        ].
        recoveredBlock381Step = 437 ifTrue: [
            recoveredBlock381Result := recoveredBlock381Stack1.
            recoveredBlock381Done := true.
        ].
    ].
    recoveredBlock381Result
].
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := [:recoveredBlock447Arg1 | 
    | recoveredBlock447Stack0 recoveredBlock447Stack1 recoveredBlock447Stack2 recoveredBlock447Stack3 recoveredBlock447Stack4 recoveredBlock447Stack5 recoveredBlock447PC recoveredBlock447Step recoveredBlock447Done recoveredBlock447Result |
    recoveredBlock447Stack0 := self.
    recoveredBlock447PC := 454.
    recoveredBlock447Done := false.
    [recoveredBlock447Done not] whileTrue: [
        recoveredBlock447Step := recoveredBlock447PC.
        recoveredBlock447Step = 454 ifTrue: [
            recoveredBlock447Stack1 := recoveredLocal2.
            recoveredBlock447PC := 457.
        ].
        recoveredBlock447Step = 457 ifTrue: [
            recoveredBlock447Stack2 := recoveredBlock447Stack1.
            recoveredBlock447PC := 458.
        ].
        recoveredBlock447Step = 458 ifTrue: [
            recoveredBlock447Stack3 := recoveredBlock447Arg1.
            recoveredBlock447PC := 459.
        ].
        recoveredBlock447Step = 459 ifTrue: [
            recoveredBlock447Stack3 := (recoveredBlock447Stack3) tag.
            recoveredBlock447PC := 461.
        ].
        recoveredBlock447Step = 461 ifTrue: [
            (recoveredBlock447Stack2) nextPutAll: (recoveredBlock447Stack3).
            recoveredBlock447Stack2 := recoveredBlock447Stack1.
            recoveredBlock447PC := 464.
        ].
        recoveredBlock447Step = 464 ifTrue: [
            recoveredBlock447Stack3 := ' : '.
            recoveredBlock447PC := 466.
        ].
        recoveredBlock447Step = 466 ifTrue: [
            (recoveredBlock447Stack2) nextPutAll: (recoveredBlock447Stack3).
            recoveredBlock447Stack2 := recoveredBlock447Stack1.
            recoveredBlock447PC := 469.
        ].
        recoveredBlock447Step = 469 ifTrue: [
            recoveredBlock447Stack3 := recoveredLocal1.
            recoveredBlock447PC := 472.
        ].
        recoveredBlock447Step = 472 ifTrue: [
            recoveredBlock447Stack4 := recoveredBlock447Arg1.
            recoveredBlock447PC := 473.
        ].
        recoveredBlock447Step = 473 ifTrue: [
            recoveredBlock447Stack3 := (recoveredBlock447Stack3) at: (recoveredBlock447Stack4).
            recoveredBlock447PC := 475.
        ].
        recoveredBlock447Step = 475 ifTrue: [
            recoveredBlock447Stack3 := (recoveredBlock447Stack3) asString.
            recoveredBlock447PC := 477.
        ].
        recoveredBlock447Step = 477 ifTrue: [
            (recoveredBlock447Stack2) nextPutAll: (recoveredBlock447Stack3).
            recoveredBlock447Stack2 := recoveredBlock447Stack1.
            recoveredBlock447PC := 480.
        ].
        recoveredBlock447Step = 480 ifTrue: [
            recoveredBlock447Stack3 := ' '.
            recoveredBlock447PC := 482.
        ].
        recoveredBlock447Step = 482 ifTrue: [
            (recoveredBlock447Stack2) nextPutAll: (recoveredBlock447Stack3).
            recoveredBlock447Stack2 := recoveredBlock447Stack1.
            recoveredBlock447PC := 485.
        ].
        recoveredBlock447Step = 485 ifTrue: [
            recoveredBlock447Stack3 := recoveredBlock447Arg1.
            recoveredBlock447PC := 486.
        ].
        recoveredBlock447Step = 486 ifTrue: [
            recoveredBlock447Stack3 := (recoveredBlock447Stack3) codeSize.
            recoveredBlock447PC := 488.
        ].
        recoveredBlock447Step = 488 ifTrue: [
            recoveredBlock447Stack3 := (recoveredBlock447Stack3) asString.
            recoveredBlock447PC := 490.
        ].
        recoveredBlock447Step = 490 ifTrue: [
            (recoveredBlock447Stack2) nextPutAll: (recoveredBlock447Stack3).
            recoveredBlock447PC := 492.
        ].
        recoveredBlock447Step = 492 ifTrue: [
            recoveredBlock447Stack2 := ' bytes'.
            recoveredBlock447PC := 494.
        ].
        recoveredBlock447Step = 494 ifTrue: [
            (recoveredBlock447Stack1) nextPutAll: (recoveredBlock447Stack2).
            recoveredBlock447PC := 496.
        ].
        recoveredBlock447Step = 496 ifTrue: [
            recoveredBlock447Stack1 := allCode.
            recoveredBlock447PC := 498.
        ].
        recoveredBlock447Step = 498 ifTrue: [
            recoveredBlock447Stack2 := recoveredBlock447Arg1.
            recoveredBlock447PC := 499.
        ].
        recoveredBlock447Step = 499 ifTrue: [
            recoveredBlock447Stack1 := (recoveredBlock447Stack1) includes: (recoveredBlock447Stack2).
            recoveredBlock447PC := 501.
        ].
        recoveredBlock447Step = 501 ifTrue: [
            (recoveredBlock447Stack1) ifTrue: [recoveredBlock447PC := 504] ifFalse: [recoveredBlock447PC := 580].
        ].
        recoveredBlock447Step = 504 ifTrue: [
            recoveredBlock447Stack1 := recoveredLocal1.
            recoveredBlock447PC := 507.
        ].
        recoveredBlock447Step = 507 ifTrue: [
            recoveredBlock447Stack2 := recoveredBlock447Arg1.
            recoveredBlock447PC := 508.
        ].
        recoveredBlock447Step = 508 ifTrue: [
            recoveredBlock447Stack1 := (recoveredBlock447Stack1) at: (recoveredBlock447Stack2).
            recoveredBlock447PC := 510.
        ].
        recoveredBlock447Step = 510 ifTrue: [
            recoveredBlock447Stack2 := allCode.
            recoveredBlock447PC := 512.
        ].
        recoveredBlock447Step = 512 ifTrue: [
            recoveredBlock447Stack3 := recoveredBlock447Arg1.
            recoveredBlock447PC := 513.
        ].
        recoveredBlock447Step = 513 ifTrue: [
            recoveredBlock447Stack2 := (recoveredBlock447Stack2) at: (recoveredBlock447Stack3).
            recoveredBlock447PC := 515.
        ].
        recoveredBlock447Step = 515 ifTrue: [
            recoveredBlock447Stack2 := (recoveredBlock447Stack2) calls.
            recoveredBlock447PC := 517.
        ].
        recoveredBlock447Step = 517 ifTrue: [
            recoveredBlock447Stack1 := (recoveredBlock447Stack1) = (recoveredBlock447Stack2).
            recoveredBlock447PC := 518.
        ].
        recoveredBlock447Step = 518 ifTrue: [
            (recoveredBlock447Stack1) ifTrue: [recoveredBlock447PC := 544] ifFalse: [recoveredBlock447PC := 522].
        ].
        recoveredBlock447Step = 522 ifTrue: [
            recoveredBlock447Stack1 := recoveredLocal2.
            recoveredBlock447PC := 525.
        ].
        recoveredBlock447Step = 525 ifTrue: [
            recoveredBlock447Stack2 := ' (Error: allCode calls = '.
            recoveredBlock447PC := 527.
        ].
        recoveredBlock447Step = 527 ifTrue: [
            recoveredBlock447Stack3 := allCode.
            recoveredBlock447PC := 529.
        ].
        recoveredBlock447Step = 529 ifTrue: [
            recoveredBlock447Stack4 := recoveredBlock447Arg1.
            recoveredBlock447PC := 530.
        ].
        recoveredBlock447Step = 530 ifTrue: [
            recoveredBlock447Stack3 := (recoveredBlock447Stack3) at: (recoveredBlock447Stack4).
            recoveredBlock447PC := 532.
        ].
        recoveredBlock447Step = 532 ifTrue: [
            recoveredBlock447Stack3 := (recoveredBlock447Stack3) calls.
            recoveredBlock447PC := 534.
        ].
        recoveredBlock447Step = 534 ifTrue: [
            recoveredBlock447Stack3 := (recoveredBlock447Stack3) asString.
            recoveredBlock447PC := 536.
        ].
        recoveredBlock447Step = 536 ifTrue: [
            recoveredBlock447Stack2 := (recoveredBlock447Stack2) , (recoveredBlock447Stack3).
            recoveredBlock447PC := 538.
        ].
        recoveredBlock447Step = 538 ifTrue: [
            recoveredBlock447Stack3 := ')'.
            recoveredBlock447PC := 540.
        ].
        recoveredBlock447Step = 540 ifTrue: [
            recoveredBlock447Stack2 := (recoveredBlock447Stack2) , (recoveredBlock447Stack3).
            recoveredBlock447PC := 542.
        ].
        recoveredBlock447Step = 542 ifTrue: [
            (recoveredBlock447Stack1) nextPutAll: (recoveredBlock447Stack2).
            recoveredBlock447PC := 544.
        ].
        recoveredBlock447Step = 544 ifTrue: [
            recoveredBlock447Stack1 := recoveredBlock447Arg1.
            recoveredBlock447PC := 545.
        ].
        recoveredBlock447Step = 545 ifTrue: [
            recoveredBlock447Stack1 := (recoveredBlock447Stack1) codeSize.
            recoveredBlock447PC := 547.
        ].
        recoveredBlock447Step = 547 ifTrue: [
            recoveredBlock447Stack2 := allCode.
            recoveredBlock447PC := 549.
        ].
        recoveredBlock447Step = 549 ifTrue: [
            recoveredBlock447Stack3 := recoveredBlock447Arg1.
            recoveredBlock447PC := 550.
        ].
        recoveredBlock447Step = 550 ifTrue: [
            recoveredBlock447Stack2 := (recoveredBlock447Stack2) at: (recoveredBlock447Stack3).
            recoveredBlock447PC := 552.
        ].
        recoveredBlock447Step = 552 ifTrue: [
            recoveredBlock447Stack2 := (recoveredBlock447Stack2) codeSize.
            recoveredBlock447PC := 554.
        ].
        recoveredBlock447Step = 554 ifTrue: [
            recoveredBlock447Stack1 := (recoveredBlock447Stack1) = (recoveredBlock447Stack2).
            recoveredBlock447PC := 555.
        ].
        recoveredBlock447Step = 555 ifTrue: [
            (recoveredBlock447Stack1) ifTrue: [recoveredBlock447PC := 580] ifFalse: [recoveredBlock447PC := 558].
        ].
        recoveredBlock447Step = 558 ifTrue: [
            recoveredBlock447Stack1 := recoveredLocal2.
            recoveredBlock447PC := 561.
        ].
        recoveredBlock447Step = 561 ifTrue: [
            recoveredBlock447Stack2 := ' (Error: allCode codeSize = '.
            recoveredBlock447PC := 563.
        ].
        recoveredBlock447Step = 563 ifTrue: [
            recoveredBlock447Stack3 := allCode.
            recoveredBlock447PC := 565.
        ].
        recoveredBlock447Step = 565 ifTrue: [
            recoveredBlock447Stack4 := recoveredBlock447Arg1.
            recoveredBlock447PC := 566.
        ].
        recoveredBlock447Step = 566 ifTrue: [
            recoveredBlock447Stack3 := (recoveredBlock447Stack3) at: (recoveredBlock447Stack4).
            recoveredBlock447PC := 568.
        ].
        recoveredBlock447Step = 568 ifTrue: [
            recoveredBlock447Stack3 := (recoveredBlock447Stack3) codeSize.
            recoveredBlock447PC := 570.
        ].
        recoveredBlock447Step = 570 ifTrue: [
            recoveredBlock447Stack3 := (recoveredBlock447Stack3) asString.
            recoveredBlock447PC := 572.
        ].
        recoveredBlock447Step = 572 ifTrue: [
            recoveredBlock447Stack2 := (recoveredBlock447Stack2) , (recoveredBlock447Stack3).
            recoveredBlock447PC := 574.
        ].
        recoveredBlock447Step = 574 ifTrue: [
            recoveredBlock447Stack3 := ')'.
            recoveredBlock447PC := 576.
        ].
        recoveredBlock447Step = 576 ifTrue: [
            recoveredBlock447Stack2 := (recoveredBlock447Stack2) , (recoveredBlock447Stack3).
            recoveredBlock447PC := 578.
        ].
        recoveredBlock447Step = 578 ifTrue: [
            (recoveredBlock447Stack1) nextPutAll: (recoveredBlock447Stack2).
            recoveredBlock447PC := 580.
        ].
        recoveredBlock447Step = 580 ifTrue: [
            recoveredBlock447Stack1 := recoveredLocal2.
            recoveredBlock447PC := 583.
        ].
        recoveredBlock447Step = 583 ifTrue: [
            recoveredBlock447Stack1 := (recoveredBlock447Stack1) cr.
            recoveredBlock447PC := 585.
        ].
        recoveredBlock447Step = 585 ifTrue: [
            recoveredBlock447Result := recoveredBlock447Stack1.
            recoveredBlock447Done := true.
        ].
    ].
    recoveredBlock447Result
].
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


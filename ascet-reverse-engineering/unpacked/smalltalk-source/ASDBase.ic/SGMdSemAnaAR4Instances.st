"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2044a550; bytecode file offset 0xd46e50"
!SGMdSemAnaAR4Instances methodsFor: 'recovered'!
mdlInterrunnableVarDecl: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isMdlRecordType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) genContext.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlAllowedElementForIRVContext: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 651.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := (recoveredStack5) source.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack6 := Array.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack7 := (recoveredStack7) source.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack8 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack8 := (recoveredStack8) source.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack6 := (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack7 := Array.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack8 := 'Interrunnable Variable'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack9 := 'Illegal element "'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack10 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack10 := (recoveredStack10) errLabel.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack9 := (recoveredStack9) , (recoveredStack10).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack10 := '" of type '.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack9 := (recoveredStack9) , (recoveredStack10).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack10 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack10 := (recoveredStack10) mdlClass.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack10 := (recoveredStack10) errLabel.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack9 := (recoveredStack9) , (recoveredStack10).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack7 := (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := (recoveredStack5) createMultiSource: (recoveredStack6) labels: (recoveredStack7).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArrayType.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArray.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgFixedArrayType.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := super mdlInterrunnableVarDecl: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206338e4; bytecode file offset 0xf30280"
!SGMdSemAnaAR4Instances methodsFor: 'recovered'!
semAnaVarDecl: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super semAnaVarDecl: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := 'variable'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlSystemConstant.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 'system constant'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlConstant.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := 'constant'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSwPolicyStandard.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlInstVarDecl.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlParameter.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) scope.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgParameterInterfaceType.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := 'parameter'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSwPolicyParameterCompliant.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 226.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlARInterrunnableVarDecl.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := 'interrunnable variable'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlARIRVExplicit.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgRecordType.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := 'Record'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlArray.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 157].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := 'Array'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock160Value0 recoveredBlock160Value1 recoveredBlock160Value2 recoveredBlock160Value3 recoveredBlock160Value4 |
    recoveredBlock160Value0 := recoveredArg1.
    recoveredBlock160Value1 := recoveredArg1.
    recoveredBlock160Value2 := (recoveredBlock160Value1) errLabel.
    recoveredBlock160Value3 := recoveredLocal3.
    recoveredBlock160Value4 := (recoveredBlock160Value0) mdlSemErrNo: (283) with: (recoveredBlock160Value2) with: ('Internal Access') with: ('Explicit') with: ('type') with: (recoveredBlock160Value3).
    recoveredBlock160Value4
].
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredPC := 226.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := 'variable'.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := (recoveredStack0) scope.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlSRInterfaceType.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSwPolicySRInterfaceDataElementCompliant.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 367] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := [:block2812058cArg1 | 
    | block2812058cStack0 block2812058cStack1 block2812058cStack2 block2812058cStack3 block2812058cPC block2812058cStep block2812058cDone block2812058cResult |
    block2812058cStack0 := self.
    block2812058cPC := 4.
    block2812058cDone := false.
    [block2812058cDone not] whileTrue: [
        block2812058cStep := block2812058cPC.
        block2812058cStep = 4 ifTrue: [
            block2812058cStack1 := false.
            block2812058cPC := 5.
        ].
        block2812058cStep = 5 ifTrue: [
            block2812058cStack2 := block2812058cArg1.
            block2812058cPC := 6.
        ].
        block2812058cStep = 6 ifTrue: [
            block2812058cStack2 := (block2812058cStack2) isMdlParmDecl.
            block2812058cPC := 8.
        ].
        block2812058cStep = 8 ifTrue: [
            (block2812058cStack2) ifTrue: [block2812058cPC := 18] ifFalse: [block2812058cPC := 12].
        ].
        block2812058cStep = 12 ifTrue: [
            block2812058cPC := 13.
        ].
        block2812058cStep = 13 ifTrue: [
            block2812058cStack1 := block2812058cArg1.
            block2812058cPC := 14.
        ].
        block2812058cStep = 14 ifTrue: [
            block2812058cStack1 := (block2812058cStack1) scope.
            block2812058cPC := 16.
        ].
        block2812058cStep = 16 ifTrue: [
            block2812058cStack1 := (block2812058cStack1) isCgComplexClassType.
            block2812058cPC := 18.
        ].
        block2812058cStep = 18 ifTrue: [
            block2812058cResult := block2812058cStack1.
            block2812058cDone := true.
        ].
    ].
    block2812058cResult
].
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := (recoveredStack0) source.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabel.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 284] ifFalse: [recoveredPC := 325].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathInfoNodes.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := [:recoveredBlock287Arg1 | 
    | recoveredBlock287Value0 recoveredBlock287Value1 recoveredBlock287Value2 recoveredBlock287Value3 recoveredBlock287Value4 recoveredBlock287Value5 recoveredBlock287Value6 recoveredBlock287Value7 recoveredBlock287Value8 recoveredBlock287Value9 recoveredBlock287Value10 |
    recoveredBlock287Value0 := recoveredBlock287Arg1.
    recoveredBlock287Value1 := (recoveredBlock287Value0) source.
    recoveredLocal3 := recoveredBlock287Value1.
    recoveredBlock287Value2 := recoveredBlock287Arg1.
    recoveredBlock287Value3 := (recoveredBlock287Value2) errLabel.
    recoveredBlock287Value4 := (recoveredBlock287Value3) , ('.').
    recoveredBlock287Value5 := recoveredLocal2.
    recoveredBlock287Value6 := (recoveredBlock287Value4) , (recoveredBlock287Value5).
    recoveredLocal2 := recoveredBlock287Value6.
    recoveredBlock287Value7 := recoveredLocal1.
    recoveredBlock287Value8 := recoveredBlock287Arg1.
    recoveredBlock287Value9 := (recoveredBlock287Value7) value: (recoveredBlock287Value8).
    recoveredBlock287Value10 := (recoveredBlock287Value9) not.
    recoveredBlock287Value10
].
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack0) findLast: (recoveredStack1).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := 282.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := 'swPolicy'.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := (recoveredStack3) swPolicyLabel.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack6 := (recoveredStack6) asImplDeclSource.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) source: (recoveredStack6).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSwPolicyConst.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 378] ifFalse: [recoveredPC := 422].
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSwCalibrationReadWrite.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 388] ifFalse: [recoveredPC := 422].
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := 283.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack3 := 'swPolicy'.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack4 := (recoveredStack4) attributes.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack4 := (recoveredStack4) swPolicyLabel.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack5 := 'swCalibration'.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack6 := (recoveredStack6) attributes.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack6 := (recoveredStack6) swCalibration.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack6 := (recoveredStack6) asString.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSwPolicyMeasurementPoint.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 432] ifFalse: [recoveredPC := 459].
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSwCalibrationReadOnly.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 459] ifFalse: [recoveredPC := 442].
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack0 := (recoveredStack0) swCalibration.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            (recoveredStack0) swCalibrationSetReadOnly.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSwPolicyQueued.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 470] ifFalse: [recoveredPC := 497].
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSwCalibrationNotAccessible.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 497] ifFalse: [recoveredPC := 480].
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack0 := (recoveredStack0) swCalibration.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            (recoveredStack0) swCalibrationSetNotAccessible.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSwPolicyFixed.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 508] ifFalse: [recoveredPC := 583].
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlRecordType.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 518] ifFalse: [recoveredPC := 556].
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack1 := 283.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack3 := 'swPolicy'.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack4 := (recoveredStack4) attributes.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack4 := (recoveredStack4) swPolicyLabel.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack5 := 'type'.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack6 := (recoveredStack6) mdlClass.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack6 := (recoveredStack6) errLabel.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack6 := (recoveredStack6) asString.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredPC := 583.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSwCalibrationNotAccessible.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 583] ifFalse: [recoveredPC := 566].
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack0 := (recoveredStack0) swCalibration.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            (recoveredStack0) swCalibrationSetNotAccessible.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 633] ifFalse: [recoveredPC := 590].
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack1 := 283.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack3 := 'swPolicy'.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack4 := (recoveredStack4) attributes.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack4 := (recoveredStack4) swPolicyLabel.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack5 := 'swCalibration'.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack6 := recoveredLocal5.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack6 := (recoveredStack6) asString.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack7 := 'swCalibration'.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack8 := recoveredArg1.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack8 := (recoveredStack8) attributes.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack8 := (recoveredStack8) swCalibration.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack8 := (recoveredStack8) asString.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8).
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


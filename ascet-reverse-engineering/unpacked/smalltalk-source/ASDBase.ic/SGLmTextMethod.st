"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200295e4; bytecode file offset 0x934580"
!SGLmTextMethod methodsFor: 'recovered'!
ascetLinkCreateConfigForCGenMessage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logicManager.
    recoveredValue1 := (recoveredValue0) ascetLinkCreateConfigForCGenMessage.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004b034; bytecode file offset 0x947a60"
!SGLmTextMethod methodsFor: 'recovered'!
source
    | recoveredValue0 |
    recoveredValue0 := (self) sourceWithLine: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20050634; bytecode file offset 0x94d048"
!SGLmTextMethod methodsFor: 'recovered'!
buildMdlBodyForComponent
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006e314; bytecode file offset 0x96af48"
!SGLmTextMethod methodsFor: 'recovered'!
code
    | recoveredValue0 |
    recoveredValue0 := code.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200779c4; bytecode file offset 0x9757c8"
!SGLmTextMethod methodsFor: 'recovered'!
isTextMethod
    ^true
! !

"ASDBase.ic method 0x200c4dc4; bytecode file offset 0x9c16b0"
!SGLmTextMethod methodsFor: 'recovered'!
code: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    code := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d3fe0; bytecode file offset 0x9d090c"
!SGLmTextMethod methodsFor: 'recovered'!
analyzeForComponent
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasBody.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) bdlMissingSpecification.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20108a08; bytecode file offset 0xa0532c"
!SGLmTextMethod methodsFor: 'recovered'!
hasBody
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) code.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c6558Arg1 | 
    | block280c6558Value0 block280c6558Value1 block280c6558Value2 |
    block280c6558Value0 := block280c6558Arg1.
    block280c6558Value1 := (block280c6558Value0) isSeparator.
    block280c6558Value2 := (block280c6558Value1) not.
    block280c6558Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011a4bc; bytecode file offset 0xa16d7c"
!SGLmTextMethod methodsFor: 'recovered'!
collectPreprocessedCMethods
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTSpecialMethod.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) addToBePreprocessedCode: (recoveredStack1).
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

"ASDBase.ic method 0x20160064; bytecode file offset 0xa5c940"
!SGLmTextMethod methodsFor: 'recovered'!
buildMdlBodyForCT
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTSpecialMethod.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            super buildMdlBodyForCT.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) buildMdlBodyForComponent.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20161904; bytecode file offset 0xa5e1cc"
!SGLmTextMethod methodsFor: 'recovered'!
preprocessedCode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isASDLUnit.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) code.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPreprocessedCode: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20161b70; bytecode file offset 0xa5e464"
!SGLmTextMethod methodsFor: 'recovered'!
buildMdlBody
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) buildMdlBodyForCT.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) buildMdlBodyForComponent.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20180d08; bytecode file offset 0xa7d5d0"
!SGLmTextMethod methodsFor: 'recovered'!
isCTSpecialMethod
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlLabel.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) sgClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) integrateMethodName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) setCTSolverMethodName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20196cd0; bytecode file offset 0xa93594"
!SGLmTextMethod methodsFor: 'recovered'!
pmiDefineMacrosOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) arguments.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := (self) logicManager.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value0) pmiDefineAccess: (recoveredBlock5Value1) on: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201a1794; bytecode file offset 0xa9e060"
!SGLmTextMethod methodsFor: 'recovered'!
parseCode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) esdlController.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) source.
    (recoveredValue1) masterSource: (recoveredValue2).
    recoveredValue3 := (self) code.
    recoveredValue4 := [
    | recoveredBlock12Value0 |
    recoveredBlock12Value0 := (self) signalLmError.
    recoveredBlock12Value0
].
    (recoveredValue0) parseStmnt: (recoveredValue3) ifFail: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201db170; bytecode file offset 0xad7a38"
!SGLmTextMethod methodsFor: 'recovered'!
pmiUndefineMacrosOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) newline.
    recoveredValue1 := (self) arguments.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := (self) logicManager.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := recoveredArg1.
    recoveredBlock10Value3 := (recoveredBlock10Value0) pmiUndefineAccess: (recoveredBlock10Value1) on: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2028c448; bytecode file offset 0xb88d28"
!SGLmTextMethod methodsFor: 'recovered'!
buildMdlBodyESDL
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) mdlBuilder.
    recoveredValue1 := (self) source.
    (recoveredValue0) source: (recoveredValue1).
    recoveredValue2 := (self) mdlBuilder.
    (recoveredValue2) block.
    recoveredValue3 := (self) mdlBuilder.
    (recoveredValue3) prepareMethodLocals.
    (self) parseCode.
    recoveredValue4 := (self) mdlBuilder.
    recoveredValue5 := (self) code.
    recoveredValue6 := (10) asCharacter.
    recoveredValue7 := (recoveredValue5) occurrencesOf: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) + (1).
    recoveredValue9 := (self) sourceWithLine: (recoveredValue8).
    (recoveredValue4) source: (recoveredValue9).
    recoveredValue10 := (self) mdlBuilder.
    (recoveredValue10) endBlock.
    ^self
! !

"ASDBase.ic method 0x202f45dc; bytecode file offset 0xbf0ec8"
!SGLmTextMethod methodsFor: 'recovered'!
buildMdlBodyANSIC
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) usePMI.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGPmiParser.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) preprocessedCode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock15Value0 |
    recoveredBlock15Value0 := (self) signalLmError.
    recoveredBlock15Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) createOn: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'Call_50234'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) code.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) asReducedString.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) externBlock: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203acc6c; bytecode file offset 0xca9554"
!SGLmTextMethod methodsFor: 'recovered'!
sourceWithLine: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := (self) dataModelRef.
    recoveredValue1 := recoveredValue0.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := [
    ^nil
].
    (recoveredValue0) ifNil: (recoveredValue2).
    recoveredValue3 := SGLmASCETLinkSource.
    recoveredValue4 := (recoveredValue3) create.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := (self) context.
    (recoveredValue5) context: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (1) @ (recoveredValue9).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (1) @ (recoveredValue11).
    recoveredValue13 := (self) ascetLinkCreateConfigForCGenMessage.
    recoveredValue14 := (recoveredValue8) ascetLinkInTextFrom: (recoveredValue10) to: (recoveredValue12) parameters: (recoveredValue13).
    (recoveredValue7) ascetLink: (recoveredValue14).
    recoveredLocal1 := recoveredValue4.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (self) lineMarkerForMethod.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue16) commentMarkerText: (recoveredValue17) lineNumber: (recoveredValue18).
    (recoveredValue15) commentMarker: (recoveredValue19).
    recoveredValue20 := recoveredLocal1.
    ^recoveredValue20
! !

"ASDBase.ic method 0x20583784; bytecode file offset 0xe800b4"
!SGLmTextMethod methodsFor: 'recovered'!
collectMessagesDo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := [
    | recoveredBlock4Block13Local1 recoveredBlock4Block13Local2 recoveredBlock4Block13Stack0 recoveredBlock4Block13Stack1 recoveredBlock4Block13Stack2 recoveredBlock4Block13Stack3 recoveredBlock4Block13Stack4 recoveredBlock4Block13PC recoveredBlock4Block13Step recoveredBlock4Block13Done recoveredBlock4Block13Result |
    recoveredBlock4Block13Stack0 := self.
    recoveredBlock4Block13PC := 20.
    recoveredBlock4Block13Done := false.
    [recoveredBlock4Block13Done not] whileTrue: [
        recoveredBlock4Block13Step := recoveredBlock4Block13PC.
        recoveredBlock4Block13Step = 20 ifTrue: [
            recoveredBlock4Block13Stack1 := nil.
            recoveredBlock4Block13PC := 21.
        ].
        recoveredBlock4Block13Step = 21 ifTrue: [
            recoveredBlock4Block13Stack2 := self.
            recoveredBlock4Block13PC := 22.
        ].
        recoveredBlock4Block13Step = 22 ifTrue: [
            recoveredBlock4Block13Stack2 := (recoveredBlock4Block13Stack2) logicManager.
            recoveredBlock4Block13PC := 23.
        ].
        recoveredBlock4Block13Step = 23 ifTrue: [
            recoveredBlock4Block13Stack2 := (recoveredBlock4Block13Stack2) sgClass.
            recoveredBlock4Block13PC := 24.
        ].
        recoveredBlock4Block13Step = 24 ifTrue: [
            recoveredBlock4Block13Stack2 := (recoveredBlock4Block13Stack2) isGenericComponent.
            recoveredBlock4Block13PC := 25.
        ].
        recoveredBlock4Block13Step = 25 ifTrue: [
            (recoveredBlock4Block13Stack2) ifTrue: [recoveredBlock4Block13PC := 28] ifFalse: [recoveredBlock4Block13PC := 80].
        ].
        recoveredBlock4Block13Step = 28 ifTrue: [
            recoveredBlock4Block13PC := 29.
        ].
        recoveredBlock4Block13Step = 29 ifTrue: [
            recoveredBlock4Block13Stack1 := self.
            recoveredBlock4Block13PC := 30.
        ].
        recoveredBlock4Block13Step = 30 ifTrue: [
            recoveredBlock4Block13Stack1 := (recoveredBlock4Block13Stack1) logicManager.
            recoveredBlock4Block13PC := 31.
        ].
        recoveredBlock4Block13Step = 31 ifTrue: [
            recoveredBlock4Block13Stack1 := (recoveredBlock4Block13Stack1) componentSource.
            recoveredBlock4Block13PC := 32.
        ].
        recoveredBlock4Block13Step = 32 ifTrue: [
            recoveredBlock4Block13Local2 := recoveredBlock4Block13Stack1.
            recoveredBlock4Block13PC := 35.
        ].
        recoveredBlock4Block13Step = 35 ifTrue: [
            recoveredBlock4Block13Stack1 := self.
            recoveredBlock4Block13PC := 36.
        ].
        recoveredBlock4Block13Step = 36 ifTrue: [
            recoveredBlock4Block13Stack1 := (recoveredBlock4Block13Stack1) errorHandler.
            recoveredBlock4Block13PC := 38.
        ].
        recoveredBlock4Block13Step = 38 ifTrue: [
            recoveredBlock4Block13Stack1 := (recoveredBlock4Block13Stack1) currentUnit.
            recoveredBlock4Block13PC := 40.
        ].
        recoveredBlock4Block13Step = 40 ifTrue: [
            recoveredBlock4Block13Local1 := recoveredBlock4Block13Stack1.
            recoveredBlock4Block13PC := 43.
        ].
        recoveredBlock4Block13Step = 43 ifTrue: [
            recoveredBlock4Block13Stack1 := recoveredBlock4Block13Local1.
            recoveredBlock4Block13PC := 46.
        ].
        recoveredBlock4Block13Step = 46 ifTrue: [
            recoveredBlock4Block13Stack2 := [:recoveredBlock4Block13Block46Arg1 | 
    | recoveredBlock4Block13Block46Value0 recoveredBlock4Block13Block46Value1 recoveredBlock4Block13Block46Value2 recoveredBlock4Block13Block46Value3 recoveredBlock4Block13Block46Value4 recoveredBlock4Block13Block46Value5 recoveredBlock4Block13Block46Value6 recoveredBlock4Block13Block46Value7 |
    recoveredBlock4Block13Block46Value0 := recoveredBlock4Block13Block46Arg1.
    recoveredBlock4Block13Block46Value1 := recoveredBlock4Block13Local2.
    recoveredBlock4Block13Block46Value2 := Array.
    recoveredBlock4Block13Block46Value3 := recoveredBlock4Block13Block46Arg1.
    recoveredBlock4Block13Block46Value4 := (recoveredBlock4Block13Block46Value3) source.
    recoveredBlock4Block13Block46Value5 := (recoveredBlock4Block13Block46Value2) with: (recoveredBlock4Block13Block46Value4).
    recoveredBlock4Block13Block46Value6 := (recoveredBlock4Block13Block46Value1) createMultiSource: (recoveredBlock4Block13Block46Value5) labels: (#('Location in generated component')).
    recoveredBlock4Block13Block46Value7 := (recoveredBlock4Block13Block46Value0) source: (recoveredBlock4Block13Block46Value6).
    recoveredBlock4Block13Block46Value7
].
            recoveredBlock4Block13PC := 70.
        ].
        recoveredBlock4Block13Step = 70 ifTrue: [
            recoveredBlock4Block13Stack1 := (recoveredBlock4Block13Stack1) messagesDo: (recoveredBlock4Block13Stack2).
            recoveredBlock4Block13PC := 72.
        ].
        recoveredBlock4Block13Step = 72 ifTrue: [
            recoveredBlock4Block13Stack2 := nil.
            recoveredBlock4Block13PC := 73.
        ].
        recoveredBlock4Block13Step = 73 ifTrue: [
            recoveredBlock4Block13Stack3 := recoveredBlock4Block13Stack2.
            recoveredBlock4Block13PC := 74.
        ].
        recoveredBlock4Block13Step = 74 ifTrue: [
            recoveredBlock4Block13Local2 := recoveredBlock4Block13Stack3.
            recoveredBlock4Block13PC := 77.
        ].
        recoveredBlock4Block13Step = 77 ifTrue: [
            recoveredBlock4Block13Local1 := recoveredBlock4Block13Stack2.
            recoveredBlock4Block13PC := 80.
        ].
        recoveredBlock4Block13Step = 80 ifTrue: [
            recoveredBlock4Block13Result := recoveredBlock4Block13Stack1.
            recoveredBlock4Block13Done := true.
        ].
    ].
    recoveredBlock4Block13Result
].
    recoveredBlock4Value2 := (recoveredBlock4Value0) ensure: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGenericComponent.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) code.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 'This process is based on '.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfSubCollection: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) code.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := $'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) startingAt: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) code.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := $'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) startingAt: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) code.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := (recoveredStack3) logicManager.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := (recoveredStack3) componentSource.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock183Stack0 recoveredBlock183Stack1 recoveredBlock183Stack2 recoveredBlock183Stack3 recoveredBlock183PC recoveredBlock183Step recoveredBlock183Done recoveredBlock183Result |
    recoveredBlock183Stack0 := self.
    recoveredBlock183PC := 190.
    recoveredBlock183Done := false.
    [recoveredBlock183Done not] whileTrue: [
        recoveredBlock183Step := recoveredBlock183PC.
        recoveredBlock183Step = 190 ifTrue: [
            recoveredBlock183Stack0 := (recoveredBlock183Stack0) mdlBuilder.
            recoveredBlock183PC := 192.
        ].
        recoveredBlock183Step = 192 ifTrue: [
            recoveredBlock183Stack0 := (recoveredBlock183Stack0) classInterface.
            recoveredBlock183PC := 194.
        ].
        recoveredBlock183Step = 194 ifTrue: [
            recoveredBlock183Stack1 := recoveredBlock183Stack0.
            recoveredBlock183PC := 195.
        ].
        recoveredBlock183Step = 195 ifTrue: [
            recoveredLocal2 := recoveredBlock183Stack1.
            recoveredBlock183PC := 198.
        ].
        recoveredBlock183Step = 198 ifTrue: [
            (recoveredBlock183Stack0 == nil) ifTrue: [recoveredBlock183PC := 232] ifFalse: [recoveredBlock183PC := 202].
        ].
        recoveredBlock183Step = 202 ifTrue: [
            recoveredBlock183Stack0 := recoveredLocal2.
            recoveredBlock183PC := 205.
        ].
        recoveredBlock183Step = 205 ifTrue: [
            recoveredBlock183Stack1 := self.
            recoveredBlock183PC := 206.
        ].
        recoveredBlock183Step = 206 ifTrue: [
            recoveredBlock183Stack1 := (recoveredBlock183Stack1) mdlName.
            recoveredBlock183PC := 208.
        ].
        recoveredBlock183Step = 208 ifTrue: [
            recoveredBlock183Stack1 := (recoveredBlock183Stack1) mdlKey.
            recoveredBlock183PC := 210.
        ].
        recoveredBlock183Step = 210 ifTrue: [
            recoveredBlock183Stack2 := [].
            recoveredBlock183PC := 212.
        ].
        recoveredBlock183Step = 212 ifTrue: [
            recoveredBlock183Stack0 := (recoveredBlock183Stack0) lookup: (recoveredBlock183Stack1) ifFail: (recoveredBlock183Stack2).
            recoveredBlock183PC := 214.
        ].
        recoveredBlock183Step = 214 ifTrue: [
            recoveredBlock183Stack1 := recoveredBlock183Stack0.
            recoveredBlock183PC := 215.
        ].
        recoveredBlock183Step = 215 ifTrue: [
            recoveredLocal1 := recoveredBlock183Stack1.
            recoveredBlock183PC := 218.
        ].
        recoveredBlock183Step = 218 ifTrue: [
            (recoveredBlock183Stack0 == nil) ifTrue: [recoveredBlock183PC := 232] ifFalse: [recoveredBlock183PC := 222].
        ].
        recoveredBlock183Step = 222 ifTrue: [
            recoveredBlock183Stack0 := recoveredLocal1.
            recoveredBlock183PC := 225.
        ].
        recoveredBlock183Step = 225 ifTrue: [
            recoveredBlock183Stack0 := (recoveredBlock183Stack0) attributes.
            recoveredBlock183PC := 227.
        ].
        recoveredBlock183Step = 227 ifTrue: [
            recoveredBlock183Stack1 := recoveredLocal3.
            recoveredBlock183PC := 230.
        ].
        recoveredBlock183Step = 230 ifTrue: [
            (recoveredBlock183Stack0) errorUnitName: (recoveredBlock183Stack1).
            recoveredBlock183PC := 232.
        ].
        recoveredBlock183Step = 232 ifTrue: [
            recoveredBlock183Stack0 := recoveredLocal6.
            recoveredBlock183PC := 235.
        ].
        recoveredBlock183Step = 235 ifTrue: [
            recoveredBlock183Stack0 := (recoveredBlock183Stack0) value.
            recoveredBlock183PC := 237.
        ].
        recoveredBlock183Step = 237 ifTrue: [
            recoveredBlock183Result := recoveredBlock183Stack0.
            recoveredBlock183Done := true.
        ].
    ].
    recoveredBlock183Result
].
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectMessagesInSubUnit: (recoveredStack1) id: (recoveredStack2) source: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := super collectMessagesDo: (recoveredStack1).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


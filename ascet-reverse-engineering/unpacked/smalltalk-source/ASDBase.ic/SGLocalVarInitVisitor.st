"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006cc58; bytecode file offset 0x969c04"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
fieldAccessChain
    | recoveredValue0 |
    recoveredValue0 := fieldAccessChain.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200da63c; bytecode file offset 0x9d6f18"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
readAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) state.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) fieldAccessChain.
    recoveredValue3 := (recoveredValue2) copy.
    (recoveredValue0) readAccess: (recoveredValue1) fieldAccessChain: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200da654; bytecode file offset 0x9d6f18"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
readAccessFromReferencedObject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) state.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) fieldAccessChain.
    recoveredValue3 := (recoveredValue2) copy.
    (recoveredValue0) readAccessFromReferencedObject: (recoveredValue1) fieldAccessChain: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20101704; bytecode file offset 0x9fdfe0"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
writeAccessToReferencedObject: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) state.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) fieldAccessChain.
    recoveredValue3 := (recoveredValue2) copy.
    recoveredValue4 := recoveredArg2.
    (recoveredValue0) writeAccessToReferencedObject: (recoveredValue1) fieldAccessChain: (recoveredValue3) source: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2010171c; bytecode file offset 0x9fdfe0"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
writeAccess: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) state.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) fieldAccessChain.
    recoveredValue3 := (recoveredValue2) copy.
    recoveredValue4 := recoveredArg2.
    (recoveredValue0) writeAccess: (recoveredValue1) fieldAccessChain: (recoveredValue3) source: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20145d64; bytecode file offset 0xa42688"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := (self) state.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20151bb0; bytecode file offset 0xa4e478"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    loopVars := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    fieldAccessChain := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20178bb8; bytecode file offset 0xa75480"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
withIndicesFrom: recoveredArg1 do: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) indexChild.
    recoveredValue2 := (recoveredValue1) reverse.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) analyzeIndex: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (self) addFieldAccessChain: (recoveredValue4) do: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201b5434; bytecode file offset 0xab1cf4"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
indexedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super indexedExpr: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    (self) withIndicesFrom: (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201b557c; bytecode file offset 0xab1e40"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
fieldAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) accessChain.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := super fieldAccess: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    (self) addFieldAccessChain: (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201d8778; bytecode file offset 0xad504c"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
createNewState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGLocalVarInitState.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) literalTrue.
    (recoveredValue2) literalTrue: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) literalFalse.
    (recoveredValue4) literalFalse: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) currentCondition: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := method.
    (recoveredValue8) initialize: (recoveredValue9).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2022842c; bytecode file offset 0xb24cfc"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
specialCall: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) handleSideEffects.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlSpecialCallWithoutReadAccess.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) accessKeyNothing.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) visitMdlNode: (recoveredStack1) withAccessKey: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 32.
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
            super specialCall: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20235388; bytecode file offset 0xb31c50"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
localVarInit: recoveredArg1 method: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    (self) prepareAnalysis: (recoveredValue0).
    recoveredValue1 := (self) generator.
    recoveredValue2 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock11Value1
].
    (recoveredValue1) disableMemClassReadCostsDo: (recoveredValue2).
    recoveredValue3 := state.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) checkMethodEnd: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20266c4c; bytecode file offset 0xb6350c"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
addFieldAccessChain: recoveredArg1 do: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := fieldAccessChain.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := fieldAccessChain.
    recoveredValue2 := (recoveredValue1) copy.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) addAll: (recoveredValue4).
    fieldAccessChain := recoveredValue2.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 |
    recoveredBlock23Value0 := recoveredLocal1.
    recoveredBlock23Value1 := recoveredBlock23Value0.
    fieldAccessChain := recoveredBlock23Value1.
    recoveredBlock23Value0
].
    recoveredValue7 := (recoveredValue5) ensure: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x202b4d28; bytecode file offset 0xbb1614"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) exprChild.
    (recoveredBlock7Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock7Value2 := recoveredArg1.
    recoveredBlock7Value3 := (recoveredBlock7Value2) stmntChild.
    recoveredBlock7Value4 := (recoveredBlock7Value3) mdlAcceptNodeVisitor: (self).
    recoveredBlock7Value4
].
    recoveredValue2 := [
    | recoveredBlock28Value0 recoveredBlock28Value1 |
    recoveredBlock28Value0 := recoveredArg1.
    recoveredBlock28Value1 := super whileStmnt: (recoveredBlock28Value0).
    recoveredBlock28Value1
].
    (self) analyzeLoop: (recoveredValue0) do: (recoveredValue1) elseDo: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202b4d48; bytecode file offset 0xbb1614"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
repeatStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) stmntChild.
    (recoveredBlock7Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock7Value2 := recoveredArg1.
    recoveredBlock7Value3 := (recoveredBlock7Value2) exprChild.
    recoveredBlock7Value4 := (recoveredBlock7Value3) mdlAcceptNodeVisitor: (self).
    recoveredBlock7Value4
].
    recoveredValue2 := [
    | recoveredBlock28Value0 recoveredBlock28Value1 |
    recoveredBlock28Value0 := recoveredArg1.
    recoveredBlock28Value1 := super repeatStmnt: (recoveredBlock28Value0).
    recoveredBlock28Value1
].
    (self) analyzeLoop: (recoveredValue0) do: (recoveredValue1) elseDo: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x203153fc; bytecode file offset 0xc11cd0"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) exprChild.
    recoveredBlock7Value2 := (recoveredBlock7Value1) first.
    (recoveredBlock7Value2) mdlAcceptNodeVisitor: (self).
    recoveredBlock7Value3 := recoveredArg1.
    recoveredBlock7Value4 := (recoveredBlock7Value3) stmntChild.
    (recoveredBlock7Value4) mdlAcceptNodeVisitor: (self).
    recoveredBlock7Value5 := recoveredArg1.
    recoveredBlock7Value6 := (recoveredBlock7Value5) exprChild.
    recoveredBlock7Value7 := (recoveredBlock7Value6) last.
    recoveredBlock7Value8 := (recoveredBlock7Value7) mdlAcceptNodeVisitor: (self).
    recoveredBlock7Value8
].
    recoveredValue2 := [
    | recoveredBlock38Value0 recoveredBlock38Value1 |
    recoveredBlock38Value0 := recoveredArg1.
    recoveredBlock38Value1 := super forStmnt: (recoveredBlock38Value0).
    recoveredBlock38Value1
].
    (self) analyzeLoop: (recoveredValue0) do: (recoveredValue1) elseDo: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x203d7b74; bytecode file offset 0xcd4458"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
analyzeLoop: recoveredArg1 do: recoveredArg2 elseDo: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMdDetectInitializationLoopVisitor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := (self) state.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (recoveredBlock16Value0) lookupInitValueFor: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := (self) asIleExprForIndices: (recoveredBlock26Value0).
    recoveredBlock26Value1
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) analyzeLoop: (recoveredStack2) lookupInitValue: (recoveredStack3) asIleExpr: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := loopVars.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) loopVarDecl.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) loopVarIndexRange.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 |
    recoveredBlock59Value0 := loopVars.
    recoveredBlock59Value1 := recoveredLocal1.
    recoveredBlock59Value2 := (recoveredBlock59Value1) loopVarDecl.
    recoveredBlock59Value3 := (recoveredBlock59Value0) removeKey: (recoveredBlock59Value2).
    recoveredBlock59Value3
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2042ea5c; bytecode file offset 0xd2b344"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
asIleExprForIndices: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlConvertSpecialCall.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIdentifier.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlLiteral.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlAddExpr.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSubExpr.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSpecialCallLength.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleExpr: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := [:recoveredBlock68Arg1 | 
    | recoveredBlock68Stack0 recoveredBlock68Stack1 recoveredBlock68Stack2 recoveredBlock68Stack3 recoveredBlock68PC recoveredBlock68Step recoveredBlock68Done recoveredBlock68Result |
    recoveredBlock68Stack0 := self.
    recoveredBlock68PC := 74.
    recoveredBlock68Done := false.
    [recoveredBlock68Done not] whileTrue: [
        recoveredBlock68Step := recoveredBlock68PC.
        recoveredBlock68Step = 74 ifTrue: [
            recoveredBlock68Stack1 := nil.
            recoveredBlock68PC := 75.
        ].
        recoveredBlock68Step = 75 ifTrue: [
            recoveredBlock68Stack2 := recoveredBlock68Arg1.
            recoveredBlock68PC := 76.
        ].
        recoveredBlock68Step = 76 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) isIleArithmeticExpr.
            recoveredBlock68PC := 78.
        ].
        recoveredBlock68Step = 78 ifTrue: [
            (recoveredBlock68Stack2) ifTrue: [recoveredBlock68PC := 82] ifFalse: [recoveredBlock68PC := 100].
        ].
        recoveredBlock68Step = 82 ifTrue: [
            recoveredBlock68PC := 83.
        ].
        recoveredBlock68Step = 83 ifTrue: [
            recoveredBlock68Stack1 := recoveredBlock68Arg1.
            recoveredBlock68PC := 84.
        ].
        recoveredBlock68Step = 84 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) isIleImplCastAssignWithSelectableType.
            recoveredBlock68PC := 86.
        ].
        recoveredBlock68Step = 86 ifTrue: [
            (recoveredBlock68Stack1) ifTrue: [recoveredBlock68PC := 90] ifFalse: [recoveredBlock68PC := 96].
        ].
        recoveredBlock68Step = 90 ifTrue: [
            recoveredBlock68Stack1 := recoveredBlock68Arg1.
            recoveredBlock68PC := 91.
        ].
        recoveredBlock68Step = 91 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) expr.
            recoveredBlock68PC := 93.
        ].
        recoveredBlock68Step = 93 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) asIleReplacedLengthSpecialCalls.
            recoveredBlock68PC := 95.
        ].
        recoveredBlock68Step = 95 ifTrue: [
            ^recoveredBlock68Stack1
        ].
        recoveredBlock68Step = 96 ifTrue: [
            recoveredBlock68Stack1 := recoveredBlock68Arg1.
            recoveredBlock68PC := 97.
        ].
        recoveredBlock68Step = 97 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) asIleReplacedLengthSpecialCalls.
            recoveredBlock68PC := 99.
        ].
        recoveredBlock68Step = 99 ifTrue: [
            ^recoveredBlock68Stack1
        ].
        recoveredBlock68Step = 100 ifTrue: [
            recoveredBlock68Result := recoveredBlock68Stack1.
            recoveredBlock68Done := true.
        ].
    ].
    recoveredBlock68Result
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2047b074; bytecode file offset 0xd77974"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
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
            super assignExpr: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgReferenceType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 recoveredBlock23Value6 |
    recoveredBlock23Value0 := recoveredArg1.
    recoveredBlock23Value1 := (recoveredBlock23Value0) rightChild.
    recoveredBlock23Value2 := recoveredArg1.
    recoveredBlock23Value3 := (recoveredBlock23Value2) variable.
    recoveredBlock23Value4 := (recoveredBlock23Value3) mdlClass.
    recoveredBlock23Value5 := (self) accessKeyFromRefType: (recoveredBlock23Value4).
    recoveredBlock23Value6 := (self) visitMdlNode: (recoveredBlock23Value1) withAccessKey: (recoveredBlock23Value5).
    recoveredBlock23Value6
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) withoutSideEffectsDo: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlIdentifier.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlFieldAccess.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) variable.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock86Value0 recoveredBlock86Value1 recoveredBlock86Value2 recoveredBlock86Value3 recoveredBlock86Value4 |
    recoveredBlock86Value0 := recoveredArg1.
    recoveredBlock86Value1 := (recoveredBlock86Value0) rightChild.
    recoveredBlock86Value2 := (self) asIleExprForIndices: (recoveredBlock86Value1).
    recoveredBlock86Value3 := [:recoveredBlock86Block99Arg1 | 
    | recoveredBlock86Block99Value0 recoveredBlock86Block99Value1 recoveredBlock86Block99Value2 recoveredBlock86Block99Value3 recoveredBlock86Block99Value4 recoveredBlock86Block99Value5 |
    recoveredBlock86Block99Value0 := (self) state.
    recoveredBlock86Block99Value1 := recoveredBlock86Block99Arg1.
    recoveredBlock86Block99Value2 := recoveredArg1.
    recoveredBlock86Block99Value3 := (recoveredBlock86Block99Value2) variable.
    recoveredBlock86Block99Value4 := (recoveredBlock86Block99Value3) varDecl.
    recoveredBlock86Block99Value5 := (recoveredBlock86Block99Value0) setInitValue: (recoveredBlock86Block99Value1) for: (recoveredBlock86Block99Value4).
    recoveredBlock86Block99Value5
].
    recoveredBlock86Value4 := (recoveredBlock86Value2) ifNotNil: (recoveredBlock86Value3).
    recoveredBlock86Value4
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) withExpressionContextFrom: (recoveredStack1) lValueType: (recoveredStack2) source: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205178cc; bytecode file offset 0xe141d4"
!SGLocalVarInitVisitor methodsFor: 'recovered'!
analyzeIndex: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlIdentifier.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := loopVars.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlConvertSpecialCall.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIdentifier.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := loopVars.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlLiteral.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) evaluateMdlConstantValue.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) createIntConstant: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSubExpr.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlAddExpr.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) analyzeIndex: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) analyzeIndex: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := SGCgExpressionContext.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) uintContext.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock136Stack0 recoveredBlock136Stack1 recoveredBlock136Stack2 recoveredBlock136Stack3 recoveredBlock136Stack4 recoveredBlock136PC recoveredBlock136Step recoveredBlock136Done recoveredBlock136Result |
    recoveredBlock136Stack0 := self.
    recoveredBlock136PC := 142.
    recoveredBlock136Done := false.
    [recoveredBlock136Done not] whileTrue: [
        recoveredBlock136Step := recoveredBlock136PC.
        recoveredBlock136Step = 142 ifTrue: [
            recoveredBlock136Stack1 := recoveredArg1.
            recoveredBlock136PC := 145.
        ].
        recoveredBlock136Step = 145 ifTrue: [
            recoveredBlock136Stack1 := (recoveredBlock136Stack1) isMdlAddExpr.
            recoveredBlock136PC := 147.
        ].
        recoveredBlock136Step = 147 ifTrue: [
            (recoveredBlock136Stack1) ifTrue: [recoveredBlock136PC := 150] ifFalse: [recoveredBlock136PC := 161].
        ].
        recoveredBlock136Step = 150 ifTrue: [
            recoveredBlock136Stack1 := SGIlIndexRange.
            recoveredBlock136PC := 152.
        ].
        recoveredBlock136Step = 152 ifTrue: [
            recoveredBlock136Stack2 := recoveredLocal2.
            recoveredBlock136PC := 155.
        ].
        recoveredBlock136Step = 155 ifTrue: [
            recoveredBlock136Stack3 := recoveredLocal1.
            recoveredBlock136PC := 158.
        ].
        recoveredBlock136Step = 158 ifTrue: [
            recoveredBlock136Stack1 := (recoveredBlock136Stack1) addLhs: (recoveredBlock136Stack2) rhs: (recoveredBlock136Stack3).
            recoveredBlock136PC := 160.
        ].
        recoveredBlock136Step = 160 ifTrue: [
            ^recoveredBlock136Stack1
        ].
        recoveredBlock136Step = 161 ifTrue: [
            recoveredBlock136Stack1 := SGIlIndexRange.
            recoveredBlock136PC := 163.
        ].
        recoveredBlock136Step = 163 ifTrue: [
            recoveredBlock136Stack2 := recoveredLocal2.
            recoveredBlock136PC := 166.
        ].
        recoveredBlock136Step = 166 ifTrue: [
            recoveredBlock136Stack3 := recoveredLocal1.
            recoveredBlock136PC := 169.
        ].
        recoveredBlock136Step = 169 ifTrue: [
            recoveredBlock136Stack1 := (recoveredBlock136Stack1) subLhs: (recoveredBlock136Stack2) rhs: (recoveredBlock136Stack3).
            recoveredBlock136PC := 171.
        ].
        recoveredBlock136Step = 171 ifTrue: [
            ^recoveredBlock136Stack1
        ].
    ].
    recoveredBlock136Result
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 188 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


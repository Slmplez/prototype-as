"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200cb090; bytecode file offset 0x9c7954"
!SGIlNonOptCopyFunctionMessageTransformation methodsFor: 'recovered'!
exitStmnt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) expander.
    recoveredValue2 := (recoveredValue1) endBlockRTOAccessLabelName.
    recoveredValue3 := (recoveredValue0) goto: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20171190; bytecode file offset 0xa6da64"
!SGIlNonOptCopyFunctionMessageTransformation methodsFor: 'recovered'!
endBlockRTOAccessLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) expander.
    recoveredValue2 := (recoveredValue1) endBlockRTOAccessLabelName.
    recoveredValue3 := (recoveredValue2) , (':').
    recoveredValue4 := (self) expander.
    recoveredValue5 := (recoveredValue4) ileVoid.
    recoveredValue6 := (recoveredValue0) createANSICExpr: (#()) template: (recoveredValue3) type: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2031f548; bytecode file offset 0xc1be2c"
!SGIlNonOptCopyFunctionMessageTransformation methodsFor: 'recovered'!
createMessageCopy: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGCgExpressionContext.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) type.
    recoveredValue3 := (recoveredValue0) forContextType: (recoveredValue2).
    recoveredValue4 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 |
    recoveredBlock11Value0 := (self) ileBuilder.
    recoveredBlock11Value1 := (self) ileBuilder.
    recoveredBlock11Value2 := recoveredArg1.
    recoveredBlock11Value3 := (recoveredBlock11Value2) type.
    recoveredBlock11Value4 := (recoveredBlock11Value3) asNonQuantType.
    recoveredBlock11Value5 := (recoveredBlock11Value1) createDummyExprType: (recoveredBlock11Value4).
    recoveredBlock11Value6 := (recoveredBlock11Value0) tempAssign: (recoveredBlock11Value5).
    recoveredBlock11Value7 := recoveredBlock11Value6.
    recoveredLocal1 := recoveredBlock11Value7.
    recoveredBlock11Value6
].
    (recoveredValue3) executeInContext: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) source: (nil).
    recoveredValue6 := (self) msgCopy.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) ileMsgCopyKey.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue6) at: (recoveredValue8) put: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x2043958c; bytecode file offset 0xd35e90"
!SGIlNonOptCopyFunctionMessageTransformation methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super returnStmnt: (recoveredValue0).
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := recoveredLocal4.
    recoveredValue3 := (recoveredValue2) expr.
    recoveredValue4 := (recoveredValue3) expressionContext.
    recoveredValue5 := [
    | recoveredBlock19Local1 recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 recoveredBlock19Value8 recoveredBlock19Value9 recoveredBlock19Value10 recoveredBlock19Value11 |
    recoveredBlock19Value0 := (self) ileBuilder.
    recoveredBlock19Value1 := (self) expander.
    recoveredBlock19Value2 := (recoveredBlock19Value1) returnType.
    recoveredBlock19Value3 := (self) expander.
    recoveredBlock19Value4 := (recoveredBlock19Value3) returnVarRTOAccessLabelName.
    recoveredBlock19Value5 := (recoveredBlock19Value0) tempVar: (recoveredBlock19Value2) tempName: (recoveredBlock19Value4).
    recoveredBlock19Local1 := recoveredBlock19Value5.
    recoveredBlock19Value6 := recoveredBlock19Local1.
    recoveredBlock19Value7 := (recoveredBlock19Value6) asIleLValue.
    recoveredBlock19Value8 := recoveredLocal4.
    recoveredBlock19Value9 := (recoveredBlock19Value8) expr.
    recoveredBlock19Value10 := (recoveredBlock19Value9) expr.
    recoveredBlock19Value11 := (recoveredBlock19Value7) assign: (recoveredBlock19Value10).
    recoveredBlock19Value11
].
    recoveredValue6 := (recoveredValue4) executeInContext: (recoveredValue5).
    recoveredLocal3 := recoveredValue6.
    recoveredValue7 := recoveredLocal3.
    recoveredValue8 := (recoveredValue7) asIleExprStmnt.
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredLocal4.
    recoveredValue11 := (recoveredValue10) comments.
    recoveredValue12 := (recoveredValue9) createNoOpComments: (recoveredValue11).
    recoveredLocal2 := recoveredValue12.
    recoveredValue13 := (self) ileBuilder.
    recoveredValue14 := (self) expander.
    recoveredValue15 := (recoveredValue14) endBlockRTOAccessLabelName.
    recoveredValue16 := (recoveredValue13) goto: (recoveredValue15).
    recoveredLocal1 := recoveredValue16.
    recoveredValue17 := (self) ileBuilder.
    recoveredValue18 := Array.
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := (recoveredValue18) with: (recoveredValue19) with: (recoveredValue20).
    recoveredValue22 := (recoveredValue17) stmntList: (recoveredValue21).
    ^recoveredValue22
! !

"ASDBase.ic method 0x205644b4; bytecode file offset 0xe60dd0"
!SGIlNonOptCopyFunctionMessageTransformation methodsFor: 'recovered'!
createMessageCopies: recoveredArg1 getMessages: recoveredArg2 setMessages: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) hasIleExitStmnt.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super createMessageCopies: (recoveredStack1) getMessages: (recoveredStack2) setMessages: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 |
    recoveredBlock34Value0 := recoveredArg2.
    recoveredBlock34Value1 := [:recoveredBlock34Block43Arg1 | 
    | recoveredBlock34Block43Value0 recoveredBlock34Block43Value1 recoveredBlock34Block43Value2 recoveredBlock34Block43Value3 |
    recoveredBlock34Block43Value0 := recoveredBlock34Block43Arg1.
    recoveredBlock34Block43Value1 := recoveredBlock34Arg1.
    recoveredBlock34Block43Value2 := (recoveredBlock34Block43Value0) isIleIdentical: (recoveredBlock34Block43Value1).
    recoveredBlock34Block43Value3 := (recoveredBlock34Block43Value2) not.
    recoveredBlock34Block43Value3
].
    recoveredBlock34Value2 := (recoveredBlock34Value0) allSatisfy: (recoveredBlock34Value1).
    recoveredBlock34Value2
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) receiveMsgCopies: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) sendMsgCopies: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteMsgCopiesRcvMsgs: (recoveredStack1) sndMsgs: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntList.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntList: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 157].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock128Value0 recoveredBlock128Value1 recoveredBlock128Value2 recoveredBlock128Value3 recoveredBlock128Value4 recoveredBlock128Value5 recoveredBlock128Value6 recoveredBlock128Value7 |
    recoveredBlock128Value0 := (self) ileBuilder.
    recoveredBlock128Value1 := Array.
    recoveredBlock128Value2 := (self) endBlockRTOAccessLabel.
    recoveredBlock128Value3 := (recoveredBlock128Value2) asIleExprStmnt.
    recoveredBlock128Value4 := recoveredLocal2.
    recoveredBlock128Value5 := (recoveredBlock128Value1) with: (recoveredBlock128Value3) with: (recoveredBlock128Value4).
    recoveredBlock128Value6 := (recoveredBlock128Value0) stmntList: (recoveredBlock128Value5).
    recoveredBlock128Value7 := recoveredBlock128Value6.
    recoveredLocal2 := recoveredBlock128Value7.
    recoveredBlock128Value6
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) useSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIlePMICodeBlock.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntList.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntList.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) pmiCodeBlockWithMessageCopies: (recoveredStack1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack2) addFirst: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack2) addLast: (recoveredStack3).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithChildren: (recoveredStack1).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b47c; bytecode file offset 0x92209c"
!SGIlNonOptCopyTaskMessageTransformation methodsFor: 'recovered'!
msgCopyInstancePrefix
    ^'msgCopy_'
! !

"ASDBase.ic method 0x2001e098; bytecode file offset 0x92209c"
!SGIlNonOptCopyTaskMessageTransformation methodsFor: 'recovered'!
msgCopyStructPrefix
    ^'msgCopyStruct_'
! !

"ASDBase.ic method 0x20204198; bytecode file offset 0xb00a6c"
!SGIlNonOptCopyTaskMessageTransformation methodsFor: 'recovered'!
createMessageCopiesReceiveProcess: recoveredArg1 messages: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) createMessageCopy: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) ileBuilder.
    recoveredValue3 := Array.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) receiveMsgCopies: (recoveredValue4).
    recoveredValue6 := (recoveredValue3) with: (recoveredValue5).
    recoveredValue7 := (recoveredValue2) methodBody: (recoveredValue6) variables: (#()).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20287f00; bytecode file offset 0xb847ec"
!SGIlNonOptCopyTaskMessageTransformation methodsFor: 'recovered'!
createMessageCopy: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := (self) msgCopyInstancePrefix.
    recoveredValue1 := (self) scopeLabel.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , ('.').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) mdlNode.
    recoveredValue6 := (recoveredValue5) varDecl.
    recoveredValue7 := (self) completeMessageName: (recoveredValue6).
    recoveredValue8 := (recoveredValue3) , (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := (self) msgCopy.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) ileMsgCopyKey.
    recoveredValue12 := (self) ileBuilder.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) type.
    recoveredValue16 := (recoveredValue15) asNonQuantType.
    recoveredValue17 := (recoveredValue12) createNamedIdentifier: (recoveredValue13) type: (recoveredValue16).
    (recoveredValue9) at: (recoveredValue11) put: (recoveredValue17).
    ^self
! !

"ASDBase.ic method 0x202a9fa0; bytecode file offset 0xba6878"
!SGIlNonOptCopyTaskMessageTransformation methodsFor: 'recovered'!
completeMessageName: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlInstVarDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) scope.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := [:block280e454cArg1 :block280e454cArg2 | 
    | block280e454cValue0 block280e454cValue1 block280e454cValue2 block280e454cValue3 |
    block280e454cValue0 := block280e454cArg1.
    block280e454cValue1 := block280e454cArg2.
    block280e454cValue2 := (block280e454cValue0) , (block280e454cValue1).
    block280e454cValue3 := (block280e454cValue2) , ('_').
    block280e454cValue3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) inject: (recoveredStack3) into: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlLabel.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202d3a48; bytecode file offset 0xbd034c"
!SGIlNonOptCopyTaskMessageTransformation methodsFor: 'recovered'!
receiveTaskMsgCopies: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 recoveredBlock6Value9 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := [:recoveredBlock6Block15Arg1 | 
    | recoveredBlock6Block15Value0 recoveredBlock6Block15Value1 |
    recoveredBlock6Block15Value0 := recoveredBlock6Block15Arg1.
    recoveredBlock6Block15Value1 := (self) createReceiveMessageImplicitStatement: (recoveredBlock6Block15Value0).
    recoveredBlock6Block15Value1
].
    recoveredBlock6Value2 := (recoveredBlock6Value0) collect: (recoveredBlock6Value1).
    recoveredLocal1 := recoveredBlock6Value2.
    recoveredBlock6Value3 := (self) ileBuilder.
    recoveredBlock6Value4 := recoveredLocal1.
    recoveredBlock6Value5 := (self) scopeLabel.
    recoveredBlock6Value6 := SGCgMsgFlowDirection.
    recoveredBlock6Value7 := (recoveredBlock6Value6) create.
    recoveredBlock6Value8 := (recoveredBlock6Value7) setReceiveDirection.
    recoveredBlock6Value9 := (recoveredBlock6Value3) messageCopyStatementList: (recoveredBlock6Value4) scopeLabel: (recoveredBlock6Value5) direction: (recoveredBlock6Value8).
    ^recoveredBlock6Value9
].
    (recoveredValue0) useSource: (nil) for: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202d3a74; bytecode file offset 0xbd034c"
!SGIlNonOptCopyTaskMessageTransformation methodsFor: 'recovered'!
sendTaksMsgCopies: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 recoveredBlock6Value9 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := [:recoveredBlock6Block15Arg1 | 
    | recoveredBlock6Block15Value0 recoveredBlock6Block15Value1 |
    recoveredBlock6Block15Value0 := recoveredBlock6Block15Arg1.
    recoveredBlock6Block15Value1 := (self) createSendMessageImplicitStatement: (recoveredBlock6Block15Value0).
    recoveredBlock6Block15Value1
].
    recoveredBlock6Value2 := (recoveredBlock6Value0) collect: (recoveredBlock6Value1).
    recoveredLocal1 := recoveredBlock6Value2.
    recoveredBlock6Value3 := (self) ileBuilder.
    recoveredBlock6Value4 := recoveredLocal1.
    recoveredBlock6Value5 := (self) scopeLabel.
    recoveredBlock6Value6 := SGCgMsgFlowDirection.
    recoveredBlock6Value7 := (recoveredBlock6Value6) create.
    recoveredBlock6Value8 := (recoveredBlock6Value7) setSendDirection.
    recoveredBlock6Value9 := (recoveredBlock6Value3) messageCopyStatementList: (recoveredBlock6Value4) scopeLabel: (recoveredBlock6Value5) direction: (recoveredBlock6Value8).
    ^recoveredBlock6Value9
].
    (recoveredValue0) useSource: (nil) for: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20381df8; bytecode file offset 0xc7e6e8"
!SGIlNonOptCopyTaskMessageTransformation methodsFor: 'recovered'!
createMessageCopiesStruct: recoveredArg1 messages: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) msgCopyStructPrefix.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) scopeLabel.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) msgCopyInstancePrefix.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) scopeLabel.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) beginMessageCopyStruct: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 recoveredBlock31Value5 recoveredBlock31Value6 recoveredBlock31Value7 |
    recoveredBlock31Value0 := (self) expander.
    recoveredBlock31Value1 := recoveredBlock31Arg1.
    recoveredBlock31Value2 := (recoveredBlock31Value1) varDecl.
    recoveredBlock31Value3 := (self) completeMessageName: (recoveredBlock31Value2).
    recoveredBlock31Value4 := recoveredBlock31Arg1.
    recoveredBlock31Value5 := (recoveredBlock31Value4) mdlClass.
    recoveredBlock31Value6 := (recoveredBlock31Value5) asNonQuantType.
    recoveredBlock31Value7 := (recoveredBlock31Value0) declare: (recoveredBlock31Value3) type: (recoveredBlock31Value6).
    recoveredBlock31Value7
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) endMessageCopyStruct: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) defineMsgCopyStruct: (recoveredStack1) msgCopyInstance: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039bfc0; bytecode file offset 0xc988a4"
!SGIlNonOptCopyTaskMessageTransformation methodsFor: 'recovered'!
createMessageCopiesSendProcess: recoveredArg1 rcvMsgs: recoveredArg2 sndMsgs: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) createMessageCopy: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 |
    recoveredBlock22Value0 := (self) msgCopy.
    recoveredBlock22Value1 := recoveredBlock22Arg1.
    recoveredBlock22Value2 := (recoveredBlock22Value1) ileMsgCopyKey.
    recoveredBlock22Value3 := [
    | recoveredBlock22Block33Value0 recoveredBlock22Block33Value1 |
    recoveredBlock22Block33Value0 := recoveredBlock22Arg1.
    recoveredBlock22Block33Value1 := (self) createMessageCopy: (recoveredBlock22Block33Value0).
    recoveredBlock22Block33Value1
].
    recoveredBlock22Value4 := (recoveredBlock22Value0) at: (recoveredBlock22Value2) ifAbsent: (recoveredBlock22Value3).
    recoveredBlock22Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) ileBuilder.
    recoveredValue5 := Array.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (self) sendMsgCopies: (recoveredValue6).
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := recoveredArg3.
    recoveredValue10 := (self) deleteMsgCopiesRcvMsgs: (recoveredValue8) sndMsgs: (recoveredValue9).
    recoveredValue11 := (recoveredValue5) with: (recoveredValue7) with: (recoveredValue10).
    recoveredValue12 := (recoveredValue4) methodBody: (recoveredValue11) variables: (#()).
    ^recoveredValue12
! !


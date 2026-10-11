"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005337c; bytecode file offset 0x9505d0"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
createMessageCopy: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200696d0; bytecode file offset 0x966bdc"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
msgCopy
    | recoveredValue0 |
    recoveredValue0 := msgCopy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008edc8; bytecode file offset 0x98b6b4"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
declareMessageMacroDecls
    | recoveredValue0 |
    recoveredValue0 := (self) elementList.
    (recoveredValue0) allowMacrosForMessageDecls: (false).
    ^self
! !

"ASDBase.ic method 0x200c1c0c; bytecode file offset 0x9beac8"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
scopeLabel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scopeLabel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200edd78; bytecode file offset 0x9ea638"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
createCopyMessageStatement: recoveredArg1 lhs: recoveredArg2 rhs: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) dataStructureGenerator.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) createCopyStatement: (recoveredValue2) lhs: (recoveredValue3) rhs: (recoveredValue4) messageCopy: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200fa0e4; bytecode file offset 0x9f6a08"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    msgCopy := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20115d2c; bytecode file offset 0xa125f0"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
scopeLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := scopeLabel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'unkown scope'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            scopeLabel := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := scopeLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20131b38; bytecode file offset 0xa2e3f8"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
sortedList: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280cafbcArg1 :block280cafbcArg2 | 
    | block280cafbcValue0 block280cafbcValue1 block280cafbcValue2 block280cafbcValue3 block280cafbcValue4 |
    block280cafbcValue0 := block280cafbcArg1.
    block280cafbcValue1 := (block280cafbcValue0) errLabel.
    block280cafbcValue2 := block280cafbcArg2.
    block280cafbcValue3 := (block280cafbcValue2) errLabel.
    block280cafbcValue4 := (block280cafbcValue1) < (block280cafbcValue3).
    block280cafbcValue4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013821c; bytecode file offset 0xa34ae8"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
sendMessageSpecialCall: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) receiver.
    recoveredValue2 := (self) createSendMessageExplicitStatement: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) ileBuilder.
    recoveredValue4 := Array.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (recoveredValue3) atomicStmntList: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20138bc8; bytecode file offset 0xa354b4"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
createDeleteMessageStatement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) msgCopy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) ileMsgCopyKey.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) generator.
    recoveredValue5 := (recoveredValue4) dataStructureGenerator.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue5) createDeleteMessageStatement: (recoveredValue6) tempIdentifier: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20138be8; bytecode file offset 0xa354b4"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
createReceiveMessageImplicitStatement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) msgCopy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) ileMsgCopyKey.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) generator.
    recoveredValue5 := (recoveredValue4) dataStructureGenerator.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue5) createReceiveMessageImplicitStatement: (recoveredValue6) tempIdentifier: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2015443c; bytecode file offset 0xa50d00"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
pmiCodeBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) code.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) visitNode: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) createNoOpCode: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201572b0; bytecode file offset 0xa53b7c"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
sendAndDeleteMsgCopiesRcvMsgs: recoveredArg1 sndMsgs: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) sendMsgCopies: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (self) deleteMsgCopiesRcvMsgs: (recoveredValue4) sndMsgs: (recoveredValue5).
    recoveredValue7 := (recoveredValue1) with: (recoveredValue3) with: (recoveredValue6).
    recoveredValue8 := (recoveredValue0) stmntList: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2015aacc; bytecode file offset 0xa57398"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
createReceiveMessageExplicitStatement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) msgCopy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) ileMsgCopyKey.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) type.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) createCopyMessageStatement: (recoveredValue5) lhs: (recoveredValue6) rhs: (recoveredValue7).
    recoveredValue9 := (recoveredValue8) asIleExprStmnt.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2015ab00; bytecode file offset 0xa573cc"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
createSendMessageExplicitStatement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) msgCopy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) ileMsgCopyKey.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) type.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) createCopyMessageStatement: (recoveredValue5) lhs: (recoveredValue6) rhs: (recoveredValue7).
    recoveredValue9 := (recoveredValue8) asIleExprStmnt.
    ^recoveredValue9
! !

"ASDBase.ic method 0x201a78e8; bytecode file offset 0xaa4270"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
modelIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super modelIdentifier: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) handleMessage: (recoveredValue0) elseDo: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a794c; bytecode file offset 0xaa4270"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
directAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super directAccess: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) handleMessage: (recoveredValue0) elseDo: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20210b8c; bytecode file offset 0xb0d44c"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
createMessageCopies: recoveredArg1 getMessages: recoveredArg2 setMessages: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) createMessageCopy: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := (self) createMessageCopy: (recoveredBlock18Value0).
    recoveredBlock18Value1
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) visitNode: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20227e94; bytecode file offset 0xb24764"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleReceiveMessageSpecialCall.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiveMessageSpecialCall: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSendMessageSpecialCall.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) sendMessageSpecialCall: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := super exprStmnt: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022d3b0; bytecode file offset 0xb29c84"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
receiveMessageSpecialCall: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) receiver.
    recoveredValue2 := (self) createReceiveMessageExplicitStatement: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) optimizationFactory.
    recoveredValue4 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := (self) ileBuilder.
    recoveredBlock14Value1 := Array.
    recoveredBlock14Value2 := recoveredLocal1.
    recoveredBlock14Value3 := (recoveredBlock14Value1) with: (recoveredBlock14Value2).
    recoveredBlock14Value4 := (recoveredBlock14Value0) atomicStmntList: (recoveredBlock14Value3).
    recoveredBlock14Value4
].
    recoveredValue5 := (recoveredValue3) disableAllOptimizationsDo: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20240f20; bytecode file offset 0xb3d7e4"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
deleteMsgCopiesRcvMsgs: recoveredArg1 sndMsgs: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredArg2.
    recoveredBlock7Value1 := [:recoveredBlock7Block17Arg1 | 
    | recoveredBlock7Block17Value0 recoveredBlock7Block17Value1 recoveredBlock7Block17Value2 recoveredBlock7Block17Value3 |
    recoveredBlock7Block17Value0 := recoveredBlock7Block17Arg1.
    recoveredBlock7Block17Value1 := recoveredBlock7Arg1.
    recoveredBlock7Block17Value2 := (recoveredBlock7Block17Value0) isIleIdentical: (recoveredBlock7Block17Value1).
    recoveredBlock7Block17Value3 := (recoveredBlock7Block17Value2) not.
    recoveredBlock7Block17Value3
].
    recoveredBlock7Value2 := (recoveredBlock7Value0) allSatisfy: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    recoveredValue3 := (self) deleteMsgCopies: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202e6cf0; bytecode file offset 0xbe35fc"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
sendMsgCopies: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 recoveredBlock6Value9 recoveredBlock6Value10 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := (self) sortedList: (recoveredBlock6Value0).
    recoveredBlock6Value2 := [:recoveredBlock6Block16Arg1 | 
    | recoveredBlock6Block16Value0 recoveredBlock6Block16Value1 |
    recoveredBlock6Block16Value0 := recoveredBlock6Block16Arg1.
    recoveredBlock6Block16Value1 := (self) createSendMessageImplicitStatement: (recoveredBlock6Block16Value0).
    recoveredBlock6Block16Value1
].
    recoveredBlock6Value3 := (recoveredBlock6Value1) collect: (recoveredBlock6Value2).
    recoveredLocal1 := recoveredBlock6Value3.
    recoveredBlock6Value4 := (self) ileBuilder.
    recoveredBlock6Value5 := recoveredLocal1.
    recoveredBlock6Value6 := (self) scopeLabel.
    recoveredBlock6Value7 := SGCgMsgFlowDirection.
    recoveredBlock6Value8 := (recoveredBlock6Value7) create.
    recoveredBlock6Value9 := (recoveredBlock6Value8) setSendDirection.
    recoveredBlock6Value10 := (recoveredBlock6Value4) messageCopyStatementList: (recoveredBlock6Value5) scopeLabel: (recoveredBlock6Value6) direction: (recoveredBlock6Value9).
    ^recoveredBlock6Value10
].
    (recoveredValue0) useSource: (nil) for: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202e6d20; bytecode file offset 0xbe35fc"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
receiveMsgCopies: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 recoveredBlock6Value9 recoveredBlock6Value10 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := (self) sortedList: (recoveredBlock6Value0).
    recoveredBlock6Value2 := [:recoveredBlock6Block16Arg1 | 
    | recoveredBlock6Block16Value0 recoveredBlock6Block16Value1 |
    recoveredBlock6Block16Value0 := recoveredBlock6Block16Arg1.
    recoveredBlock6Block16Value1 := (self) createReceiveMessageImplicitStatement: (recoveredBlock6Block16Value0).
    recoveredBlock6Block16Value1
].
    recoveredBlock6Value3 := (recoveredBlock6Value1) collect: (recoveredBlock6Value2).
    recoveredLocal1 := recoveredBlock6Value3.
    recoveredBlock6Value4 := (self) ileBuilder.
    recoveredBlock6Value5 := recoveredLocal1.
    recoveredBlock6Value6 := (self) scopeLabel.
    recoveredBlock6Value7 := SGCgMsgFlowDirection.
    recoveredBlock6Value8 := (recoveredBlock6Value7) create.
    recoveredBlock6Value9 := (recoveredBlock6Value8) setReceiveDirection.
    recoveredBlock6Value10 := (recoveredBlock6Value4) messageCopyStatementList: (recoveredBlock6Value5) scopeLabel: (recoveredBlock6Value6) direction: (recoveredBlock6Value9).
    ^recoveredBlock6Value10
].
    (recoveredValue0) useSource: (nil) for: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202fdd04; bytecode file offset 0xbfa5e0"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
deleteMsgCopies: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) ileBuilder.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) sortedList: (recoveredBlock6Stack2).
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack2 := [:recoveredBlock6Block18Arg1 | 
    | recoveredBlock6Block18Value0 recoveredBlock6Block18Value1 |
    recoveredBlock6Block18Value0 := recoveredBlock6Block18Arg1.
    recoveredBlock6Block18Value1 := (self) createDeleteMessageStatement: (recoveredBlock6Block18Value0).
    recoveredBlock6Block18Value1
].
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack3 := [:block280e937cArg1 | 
    | block280e937cValue0 block280e937cValue1 |
    block280e937cValue0 := block280e937cArg1.
    block280e937cValue1 := (block280e937cValue0) notNil.
    block280e937cValue1
].
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) collect: (recoveredBlock6Stack2) select: (recoveredBlock6Stack3).
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack2 := [:block280e93a0Arg1 | 
    | block280e93a0Value0 block280e93a0Value1 |
    block280e93a0Value0 := block280e93a0Arg1.
    block280e93a0Value1 := (block280e93a0Value0) asIleExprStmnt.
    block280e93a0Value1
].
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) collect: (recoveredBlock6Stack2).
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) stmntList: (recoveredBlock6Stack1).
            recoveredBlock6PC := 50.
        ].
        recoveredBlock6Step = 50 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    recoveredValue2 := (recoveredValue0) useSource: (nil) for: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20366b30; bytecode file offset 0xc63414"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
createSendMessageImplicitStatement: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) msgCopy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) ileMsgCopyKey.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) type.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (self) createCopyMessageStatement: (recoveredValue5) lhs: (recoveredValue6) rhs: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (self) createDeleteMessageStatement: (recoveredValue9).
    recoveredValue11 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 recoveredBlock36Value5 recoveredBlock36Value6 |
    recoveredBlock36Value0 := (self) ileBuilder.
    recoveredBlock36Value1 := OrderedCollection.
    recoveredBlock36Value2 := recoveredLocal1.
    recoveredBlock36Value3 := recoveredBlock36Arg1.
    recoveredBlock36Value4 := (recoveredBlock36Value1) with: (recoveredBlock36Value2) with: (recoveredBlock36Value3).
    recoveredBlock36Value5 := (recoveredBlock36Value0) createCommaExpr: (recoveredBlock36Value4).
    recoveredBlock36Value6 := recoveredBlock36Value5.
    recoveredLocal1 := recoveredBlock36Value6.
    recoveredBlock36Value5
].
    (recoveredValue10) ifNotNil: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) asIleExprStmnt.
    ^recoveredValue13
! !

"ASDBase.ic method 0x204c1284; bytecode file offset 0xdbdb88"
!SGIlAbstractMessageCopyTransformation methodsFor: 'recovered'!
handleMessage: recoveredArg1 elseDo: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMessage.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) msgCopy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileMsgCopyKey.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := recoveredArg1.
    recoveredBlock18Value0
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) decorateGoalInterval: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArrayType.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNamedIdentifier.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlNode.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) ansiCArrayAccess.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) createNoOpAnsiCArrayAccess: (recoveredStack2).
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
            recoveredStack2 := [
    | recoveredBlock105Stack0 recoveredBlock105Stack1 recoveredBlock105Stack2 recoveredBlock105Stack3 recoveredBlock105PC recoveredBlock105Step recoveredBlock105Done recoveredBlock105Result |
    recoveredBlock105Stack0 := self.
    recoveredBlock105PC := 112.
    recoveredBlock105Done := false.
    [recoveredBlock105Done not] whileTrue: [
        recoveredBlock105Step := recoveredBlock105PC.
        recoveredBlock105Step = 112 ifTrue: [
            recoveredBlock105Stack1 := true.
            recoveredBlock105PC := 113.
        ].
        recoveredBlock105Step = 113 ifTrue: [
            recoveredBlock105Stack2 := recoveredLocal1.
            recoveredBlock105PC := 116.
        ].
        recoveredBlock105Step = 116 ifTrue: [
            recoveredBlock105Stack2 := (recoveredBlock105Stack2) isIleModelIdentifier.
            recoveredBlock105PC := 118.
        ].
        recoveredBlock105Step = 118 ifTrue: [
            (recoveredBlock105Stack2) ifTrue: [recoveredBlock105PC := 128] ifFalse: [recoveredBlock105PC := 122].
        ].
        recoveredBlock105Step = 122 ifTrue: [
            recoveredBlock105PC := 123.
        ].
        recoveredBlock105Step = 123 ifTrue: [
            recoveredBlock105Stack1 := recoveredLocal1.
            recoveredBlock105PC := 126.
        ].
        recoveredBlock105Step = 126 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) isIleDirectAccessExpr.
            recoveredBlock105PC := 128.
        ].
        recoveredBlock105Step = 128 ifTrue: [
            recoveredBlock105Result := recoveredBlock105Stack1.
            recoveredBlock105Done := true.
        ].
    ].
    recoveredBlock105Result
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := [
    'Expect TempAssignIdentifier, ModelIdentifier or DirectAccess!!'
].
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


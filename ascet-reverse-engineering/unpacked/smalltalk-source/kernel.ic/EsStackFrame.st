"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20000378; bytecode file offset 0x4b474"
!EsStackFrame methodsFor: 'recovered'!
bp
    | recoveredValue0 |
    recoveredValue0 := (self) frameBP.
    ^recoveredValue0
! !

"kernel.ic method 0x20000c9c; bytecode file offset 0x4bbd0"
!EsStackFrame methodsFor: 'recovered'!
"VM primitive/special entry 0x17; native fast path not reconstructed; fallback bytecodes follow."
atOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"kernel.ic method 0x200010f0; bytecode file offset 0x4c084"
!EsStackFrame methodsFor: 'recovered'!
"VM primitive/special entry 0x17; native fast path not reconstructed; fallback bytecodes follow."
atOffset: recoveredArg1 put: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"kernel.ic method 0x20001aac; bytecode file offset 0x4c9c8"
!EsStackFrame methodsFor: 'recovered'!
allPreviousFrames
    | recoveredValue0 |
    recoveredValue0 := (self) previousFrames: (nil).
    ^recoveredValue0
! !

"kernel.ic method 0x20001af4; bytecode file offset 0x4ca1c"
!EsStackFrame methodsFor: 'recovered'!
isExecutingOptimizedBlock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isReceiverVisible.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"kernel.ic method 0x20001d10; bytecode file offset 0x4ce64"
!EsStackFrame methodsFor: 'recovered'!
receiverClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) class.
    ^recoveredValue1
! !

"kernel.ic method 0x20002350; bytecode file offset 0x4d394"
!EsStackFrame methodsFor: 'recovered'!
returnSP
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EsStackFrameReturnSP.
    recoveredValue1 := (self) processStackFrameAtOffset: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20002370; bytecode file offset 0x4d394"
!EsStackFrame methodsFor: 'recovered'!
method
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EsStackFrameMethod.
    recoveredValue1 := (self) processStackFrameAtOffset: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20002390; bytecode file offset 0x4d394"
!EsStackFrame methodsFor: 'recovered'!
senderMethod
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EsStackFrameSavedMethod.
    recoveredValue1 := (self) processStackFrameAtOffset: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x200023f0; bytecode file offset 0x4d394"
!EsStackFrame methodsFor: 'recovered'!
returnAddress
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EsStackFrameReturnIndex.
    recoveredValue1 := (self) processStackFrameAtOffset: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20002440; bytecode file offset 0x4d394"
!EsStackFrame methodsFor: 'recovered'!
senderPC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EsStackFrameSavedPC.
    recoveredValue1 := (self) processStackFrameAtOffset: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20003698; bytecode file offset 0x4e5a8"
!EsStackFrame methodsFor: 'recovered'!
senderBP
    | recoveredValue0 |
    (self) updateIfRequired.
    recoveredValue0 := senderBP.
    ^recoveredValue0
! !

"kernel.ic method 0x200036b0; bytecode file offset 0x4e5c0"
!EsStackFrame methodsFor: 'recovered'!
receiver
    | recoveredValue0 |
    (self) updateIfRequired.
    recoveredValue0 := receiver.
    ^recoveredValue0
! !

"kernel.ic method 0x200036c8; bytecode file offset 0x4e5d8"
!EsStackFrame methodsFor: 'recovered'!
context
    | recoveredValue0 |
    (self) updateIfRequired.
    recoveredValue0 := context.
    ^recoveredValue0
! !

"kernel.ic method 0x200036e0; bytecode file offset 0x4e5f0"
!EsStackFrame methodsFor: 'recovered'!
pc
    | recoveredValue0 |
    (self) updateIfRequired.
    recoveredValue0 := pc.
    ^recoveredValue0
! !

"kernel.ic method 0x20003ae8; bytecode file offset 0x4e9fc"
!EsStackFrame methodsFor: 'recovered'!
isTopOfStack
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) process.
    recoveredValue1 := (recoveredValue0) topFrame.
    recoveredValue2 := (recoveredValue1) = (self).
    ^recoveredValue2
! !

"kernel.ic method 0x20003c58; bytecode file offset 0x4ec04"
!EsStackFrame methodsFor: 'recovered'!
process
    | recoveredValue0 |
    recoveredValue0 := process.
    ^recoveredValue0
! !

"kernel.ic method 0x20003e7c; bytecode file offset 0x4ed88"
!EsStackFrame methodsFor: 'recovered'!
frameBP
    | recoveredValue0 |
    recoveredValue0 := frameBP.
    ^recoveredValue0
! !

"kernel.ic method 0x20003f48; bytecode file offset 0x4eebc"
!EsStackFrame methodsFor: 'recovered'!
processSwitchCount
    | recoveredValue0 |
    recoveredValue0 := processSwitchCount.
    ^recoveredValue0
! !

"kernel.ic method 0x20005640; bytecode file offset 0x50558"
!EsStackFrame methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) process.
    recoveredValue1 := (recoveredValue0) hash.
    recoveredValue2 := (self) frameBP.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x200070c4; bytecode file offset 0x51fd4"
!EsStackFrame methodsFor: 'recovered'!
processStackFrameAtOffset: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := process.
    recoveredValue1 := frameBP.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) stackAtFrameBP: (recoveredValue1) offset: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20007614; bytecode file offset 0x52538"
!EsStackFrame methodsFor: 'recovered'!
process: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    process := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007710; bytecode file offset 0x52654"
!EsStackFrame methodsFor: 'recovered'!
frameBP: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    frameBP := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200077bc; bytecode file offset 0x52760"
!EsStackFrame methodsFor: 'recovered'!
processSwitchCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    processSwitchCount := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20009648; bytecode file offset 0x54558"
!EsStackFrame methodsFor: 'recovered'!
processStackFrameAtOffset: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := process.
    recoveredValue1 := frameBP.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) stackAtFrameBP: (recoveredValue1) offset: (recoveredValue2) put: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20009be8; bytecode file offset 0x54afc"
!EsStackFrame methodsFor: 'recovered'!
isReceiverVisible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) context.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) context.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiverVisible.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000c4e8; bytecode file offset 0x57408"
!EsStackFrame methodsFor: 'recovered'!
frameOffset
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) process.
    recoveredValue1 := (self) frameBP.
    recoveredValue2 := (recoveredValue0) frameForBP: (recoveredValue1).
    recoveredValue3 := (self) process.
    recoveredValue4 := (recoveredValue3) startFrame.
    recoveredValue5 := (recoveredValue2) - (recoveredValue4).
    recoveredValue6 := (self) process.
    recoveredValue7 := (recoveredValue6) activeProcessFixup.
    recoveredValue8 := (recoveredValue5) + (recoveredValue7).
    recoveredValue9 := (recoveredValue8) + (1).
    ^recoveredValue9
! !

"kernel.ic method 0x2000cd68; bytecode file offset 0x57c80"
!EsStackFrame methodsFor: 'recovered'!
isExecutingBlock
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) context.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := MethodContext.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~~ (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000ee4c; bytecode file offset 0x59d68"
!EsStackFrame methodsFor: 'recovered'!
isValid
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) process.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isDead.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := process.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := frameBP.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := EsStackFrameBP.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) validateFrame: (recoveredStack2) bpOffset: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000feb4; bytecode file offset 0x5add8"
!EsStackFrame methodsFor: 'recovered'!
previousFrame
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBottomOfStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := process.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) process: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) senderBP.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) frameBP: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20010e98; bytecode file offset 0x5bdb0"
!EsStackFrame methodsFor: 'recovered'!
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
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) process.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) process.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameBP.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) frameBP.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20010fd4; bytecode file offset 0x5bef0"
!EsStackFrame methodsFor: 'recovered'!
updateIfRequired
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := process.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) switchCount.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) processSwitchCount.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) processSwitchCount.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) update.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) processSwitchCount: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001226c; bytecode file offset 0x5d18c"
!EsStackFrame methodsFor: 'recovered'!
isBottomOfStack
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := (self) senderBP.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isNil.
    recoveredBlock4Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block28008c38Arg1 | 
    | block28008c38Value0 block28008c38Value1 |
    block28008c38Value0 := block28008c38Arg1.
    block28008c38Value1 := (block28008c38Value0) exitWith: (true).
    block28008c38Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20012dd4; bytecode file offset 0x5dd00"
!EsStackFrame methodsFor: 'recovered'!
dropToFrame
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('PR') = ('1E6ODB6').
    (self) fixErrorHandlerBeforeDrop.
    (self) processSwitchCount: (0).
    recoveredValue1 := (self) process.
    recoveredValue2 := (self) process.
    recoveredValue3 := (self) frameBP.
    recoveredValue4 := (recoveredValue2) frameForBP: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) dropToFrame: (recoveredValue4).
    ^recoveredValue5
! !

"kernel.ic method 0x20013834; bytecode file offset 0x5e760"
!EsStackFrame methodsFor: 'recovered'!
dropToFrameReplacing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('PR') = ('1E6ODB6').
    (self) fixErrorHandlerBeforeDrop.
    (self) processSwitchCount: (0).
    recoveredValue1 := (self) process.
    recoveredValue2 := (self) process.
    recoveredValue3 := (self) frameBP.
    recoveredValue4 := (recoveredValue2) frameForBP: (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue1) dropToFrame: (recoveredValue4) replaceMethod: (recoveredValue5).
    ^recoveredValue6
! !

"kernel.ic method 0x20014abc; bytecode file offset 0x5f9d8"
!EsStackFrame methodsFor: 'recovered'!
isAboutToReturn
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) pc.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) method.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) bytecodes.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 68.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 70.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20014b3c; bytecode file offset 0x5fa64"
!EsStackFrame methodsFor: 'recovered'!
"VM primitive/special entry 0x17; native fast path not reconstructed; fallback bytecodes follow."
update
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EsStackFrameSavedBP.
    recoveredValue1 := (self) processStackFrameAtOffset: (recoveredValue0).
    senderBP := recoveredValue1.
    recoveredValue2 := EsStackFrameReceiver.
    recoveredValue3 := (self) processStackFrameAtOffset: (recoveredValue2).
    receiver := recoveredValue3.
    recoveredValue4 := EsStackFrameContext.
    recoveredValue5 := (self) processStackFrameAtOffset: (recoveredValue4).
    context := recoveredValue5.
    recoveredValue6 := EsStackFramePC.
    recoveredValue7 := (self) processStackFrameAtOffset: (recoveredValue6).
    pc := recoveredValue7.
    recoveredValue8 := EsStackFrameMethod.
    recoveredValue9 := (self) processStackFrameAtOffset: (recoveredValue8).
    method := recoveredValue9.
    ^self
! !

"kernel.ic method 0x20018150; bytecode file offset 0x63074"
!EsStackFrame methodsFor: 'recovered'!
"VM primitive/special entry 0x17; native fast path not reconstructed; fallback bytecodes follow."
previousFrames: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) previousFrame.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20027920; bytecode file offset 0x7283c"
!EsStackFrame methodsFor: 'recovered'!
isAboutToSend
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pc.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) method.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) bytecodes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 71.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 73.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 77.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := 82.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 86.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := 103.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 116.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := 122.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 126.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 135.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := 142.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := 157.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 200.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) between: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20027b1c; bytecode file offset 0x72a64"
!EsStackFrame methodsFor: 'recovered'!
fixErrorHandlerBeforeDrop
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1E6ODB6'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) process.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) process.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) bpAtFrame: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) stackFrameAtBP: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := Block.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'valueWithErrorHandler:oldHandler:onReturnDo:'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) compiledMethodAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) method.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) previousFrame.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleVariables.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) process.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) errorHandler: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20027d38; bytecode file offset 0x72ca0"
!EsStackFrame methodsFor: 'recovered'!
debugPrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4Stack6 recoveredBlock4Stack7 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            (recoveredBlock4Stack0) printOn: (recoveredBlock4Stack1).
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) process.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isDead.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 22] ifFalse: [recoveredBlock4PC := 24].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack2 := ' (bp:%1,pc=%2,ra=%3)'.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack3 := self.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) frameBP.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) printString.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack4 := self.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) pc.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) printString.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack5 := self.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack5 := (recoveredBlock4Stack5) returnAddress.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack6 := 16.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            recoveredBlock4Stack5 := (recoveredBlock4Stack5) printStringRadix: (recoveredBlock4Stack6).
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) bindWith: (recoveredBlock4Stack3) with: (recoveredBlock4Stack4) with: (recoveredBlock4Stack5).
            recoveredBlock4PC := 50.
        ].
        recoveredBlock4Step = 50 ifTrue: [
            (recoveredBlock4Stack1) nextPutAll: (recoveredBlock4Stack2).
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            (recoveredBlock4Stack0) cr.
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 55.
        ].
        recoveredBlock4Step = 55 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) visibleVariables.
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block57Arg1 | 
    | recoveredBlock4Block57Local1 recoveredBlock4Block57Stack0 recoveredBlock4Block57Stack1 recoveredBlock4Block57Stack2 recoveredBlock4Block57Stack3 recoveredBlock4Block57Stack4 recoveredBlock4Block57Stack5 recoveredBlock4Block57Stack6 recoveredBlock4Block57Stack7 recoveredBlock4Block57PC recoveredBlock4Block57Step recoveredBlock4Block57Done recoveredBlock4Block57Result |
    recoveredBlock4Block57Stack0 := self.
    recoveredBlock4Block57PC := 64.
    recoveredBlock4Block57Done := false.
    [recoveredBlock4Block57Done not] whileTrue: [
        recoveredBlock4Block57Step := recoveredBlock4Block57PC.
        recoveredBlock4Block57Step = 64 ifTrue: [
            recoveredBlock4Block57Stack1 := recoveredBlock4Block57Arg1.
            recoveredBlock4Block57PC := 65.
        ].
        recoveredBlock4Block57Step = 65 ifTrue: [
            recoveredBlock4Block57Stack1 := (recoveredBlock4Block57Stack1) value.
            recoveredBlock4Block57PC := 67.
        ].
        recoveredBlock4Block57Step = 67 ifTrue: [
            recoveredBlock4Block57Local1 := recoveredBlock4Block57Stack1.
            recoveredBlock4Block57PC := 68.
        ].
        recoveredBlock4Block57Step = 68 ifTrue: [
            recoveredBlock4Block57Stack1 := recoveredArg1.
            recoveredBlock4Block57PC := 71.
        ].
        recoveredBlock4Block57Step = 71 ifTrue: [
            recoveredBlock4Block57Stack2 := recoveredBlock4Block57Stack1.
            recoveredBlock4Block57PC := 72.
        ].
        recoveredBlock4Block57Step = 72 ifTrue: [
            (recoveredBlock4Block57Stack2) tab.
            recoveredBlock4Block57Stack2 := recoveredBlock4Block57Stack1.
            recoveredBlock4Block57PC := 75.
        ].
        recoveredBlock4Block57Step = 75 ifTrue: [
            recoveredBlock4Block57Stack3 := '%1=%2'.
            recoveredBlock4Block57PC := 77.
        ].
        recoveredBlock4Block57Step = 77 ifTrue: [
            recoveredBlock4Block57Stack4 := recoveredBlock4Block57Arg1.
            recoveredBlock4Block57PC := 78.
        ].
        recoveredBlock4Block57Step = 78 ifTrue: [
            recoveredBlock4Block57Stack4 := (recoveredBlock4Block57Stack4) printString.
            recoveredBlock4Block57PC := 80.
        ].
        recoveredBlock4Block57Step = 80 ifTrue: [
            recoveredBlock4Block57Stack5 := recoveredBlock4Block57Local1.
            recoveredBlock4Block57PC := 81.
        ].
        recoveredBlock4Block57Step = 81 ifTrue: [
            recoveredBlock4Block57Stack6 := self.
            recoveredBlock4Block57PC := 82.
        ].
        recoveredBlock4Block57Step = 82 ifTrue: [
            (recoveredBlock4Block57Stack5 ~~ recoveredBlock4Block57Stack6) ifTrue: [recoveredBlock4Block57PC := 92] ifFalse: [recoveredBlock4Block57PC := 86].
        ].
        recoveredBlock4Block57Step = 86 ifTrue: [
            recoveredBlock4Block57Stack5 := recoveredBlock4Block57Local1.
            recoveredBlock4Block57PC := 87.
        ].
        recoveredBlock4Block57Step = 87 ifTrue: [
            recoveredBlock4Block57Stack5 := (recoveredBlock4Block57Stack5) printString.
            recoveredBlock4Block57PC := 89.
        ].
        recoveredBlock4Block57Step = 89 ifTrue: [
            recoveredBlock4Block57PC := 95.
        ].
        recoveredBlock4Block57Step = 92 ifTrue: [
            recoveredBlock4Block57Stack5 := recoveredBlock4Block57Local1.
            recoveredBlock4Block57PC := 93.
        ].
        recoveredBlock4Block57Step = 93 ifTrue: [
            recoveredBlock4Block57Stack5 := (recoveredBlock4Block57Stack5) debugPrintString.
            recoveredBlock4Block57PC := 95.
        ].
        recoveredBlock4Block57Step = 95 ifTrue: [
            recoveredBlock4Block57Stack3 := (recoveredBlock4Block57Stack3) bindWith: (recoveredBlock4Block57Stack4) with: (recoveredBlock4Block57Stack5).
            recoveredBlock4Block57PC := 97.
        ].
        recoveredBlock4Block57Step = 97 ifTrue: [
            (recoveredBlock4Block57Stack2) nextPutAll: (recoveredBlock4Block57Stack3).
            recoveredBlock4Block57PC := 99.
        ].
        recoveredBlock4Block57Step = 99 ifTrue: [
            recoveredBlock4Block57Stack1 := (recoveredBlock4Block57Stack1) cr.
            recoveredBlock4Block57PC := 101.
        ].
        recoveredBlock4Block57Step = 101 ifTrue: [
            recoveredBlock4Block57Result := recoveredBlock4Block57Stack1.
            recoveredBlock4Block57Done := true.
        ].
    ].
    recoveredBlock4Block57Result
].
            recoveredBlock4PC := 102.
        ].
        recoveredBlock4Step = 102 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) do: (recoveredBlock4Stack1).
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := ExAll.
    recoveredValue2 := [:recoveredBlock107Arg1 | 
    | recoveredBlock107Value0 recoveredBlock107Value1 recoveredBlock107Value2 |
    recoveredBlock107Value0 := recoveredArg1.
    (recoveredBlock107Value0) nextPutAll: ('(error in EsStackFrame>>#etasDebugPrintOn:)').
    recoveredBlock107Value1 := recoveredBlock107Arg1.
    recoveredBlock107Value2 := (recoveredBlock107Value1) exitWith: (nil).
    recoveredBlock107Value2
].
    (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x2002b508; bytecode file offset 0x76474"
!EsStackFrame methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) process.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDead.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'an %1 in: %2'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) process.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) isExecutingBlock.
            recoveredBlock29PC := 38.
        ].
        recoveredBlock29Step = 38 ifTrue: [
            (recoveredBlock29Stack0) ifTrue: [recoveredBlock29PC := 42] ifFalse: [recoveredBlock29PC := 49].
        ].
        recoveredBlock29Step = 42 ifTrue: [
            recoveredBlock29Stack0 := recoveredArg1.
            recoveredBlock29PC := 45.
        ].
        recoveredBlock29Step = 45 ifTrue: [
            recoveredBlock29Stack1 := '[] in '.
            recoveredBlock29PC := 47.
        ].
        recoveredBlock29Step = 47 ifTrue: [
            (recoveredBlock29Stack0) nextPutAll: (recoveredBlock29Stack1).
            recoveredBlock29PC := 49.
        ].
        recoveredBlock29Step = 49 ifTrue: [
            recoveredBlock29Stack0 := self.
            recoveredBlock29PC := 50.
        ].
        recoveredBlock29Step = 50 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) isReceiverVisible.
            recoveredBlock29PC := 52.
        ].
        recoveredBlock29Step = 52 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Stack0.
            recoveredBlock29PC := 53.
        ].
        recoveredBlock29Step = 53 ifTrue: [
            recoveredLocal3 := recoveredBlock29Stack1.
            recoveredBlock29PC := 56.
        ].
        recoveredBlock29Step = 56 ifTrue: [
            (recoveredBlock29Stack0) ifTrue: [recoveredBlock29PC := 60] ifFalse: [recoveredBlock29PC := 76].
        ].
        recoveredBlock29Step = 60 ifTrue: [
            recoveredBlock29Stack0 := self.
            recoveredBlock29PC := 61.
        ].
        recoveredBlock29Step = 61 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) receiver.
            recoveredBlock29PC := 63.
        ].
        recoveredBlock29Step = 63 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Stack0.
            recoveredBlock29PC := 64.
        ].
        recoveredBlock29Step = 64 ifTrue: [
            recoveredLocal2 := recoveredBlock29Stack1.
            recoveredBlock29PC := 67.
        ].
        recoveredBlock29Step = 67 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) class.
            recoveredBlock29PC := 68.
        ].
        recoveredBlock29Step = 68 ifTrue: [
            recoveredBlock29Stack1 := recoveredArg1.
            recoveredBlock29PC := 71.
        ].
        recoveredBlock29Step = 71 ifTrue: [
            (recoveredBlock29Stack0) printOn: (recoveredBlock29Stack1).
            recoveredBlock29PC := 73.
        ].
        recoveredBlock29Step = 73 ifTrue: [
            recoveredBlock29PC := 83.
        ].
        recoveredBlock29Step = 76 ifTrue: [
            recoveredBlock29Stack0 := recoveredArg1.
            recoveredBlock29PC := 79.
        ].
        recoveredBlock29Step = 79 ifTrue: [
            recoveredBlock29Stack1 := '<optimized block>'.
            recoveredBlock29PC := 81.
        ].
        recoveredBlock29Step = 81 ifTrue: [
            (recoveredBlock29Stack0) nextPutAll: (recoveredBlock29Stack1).
            recoveredBlock29PC := 83.
        ].
        recoveredBlock29Step = 83 ifTrue: [
            recoveredBlock29Stack0 := self.
            recoveredBlock29PC := 84.
        ].
        recoveredBlock29Step = 84 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) method.
            recoveredBlock29PC := 86.
        ].
        recoveredBlock29Step = 86 ifTrue: [
            recoveredLocal1 := recoveredBlock29Stack0.
            recoveredBlock29PC := 89.
        ].
        recoveredBlock29Step = 89 ifTrue: [
            recoveredBlock29Stack0 := recoveredLocal3.
            recoveredBlock29PC := 92.
        ].
        recoveredBlock29Step = 92 ifTrue: [
            (recoveredBlock29Stack0) ifTrue: [recoveredBlock29PC := 96] ifFalse: [recoveredBlock29PC := 108].
        ].
        recoveredBlock29Step = 96 ifTrue: [
            recoveredBlock29Stack0 := recoveredLocal2.
            recoveredBlock29PC := 99.
        ].
        recoveredBlock29Step = 99 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) class.
            recoveredBlock29PC := 100.
        ].
        recoveredBlock29Step = 100 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal1.
            recoveredBlock29PC := 103.
        ].
        recoveredBlock29Step = 103 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) methodClass.
            recoveredBlock29PC := 105.
        ].
        recoveredBlock29Step = 105 ifTrue: [
            (recoveredBlock29Stack0 == recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 124] ifFalse: [recoveredBlock29PC := 108].
        ].
        recoveredBlock29Step = 108 ifTrue: [
            recoveredBlock29Stack0 := recoveredArg1.
            recoveredBlock29PC := 111.
        ].
        recoveredBlock29Step = 111 ifTrue: [
            recoveredBlock29Stack1 := '(%1)'.
            recoveredBlock29PC := 113.
        ].
        recoveredBlock29Step = 113 ifTrue: [
            recoveredBlock29Stack2 := recoveredLocal1.
            recoveredBlock29PC := 116.
        ].
        recoveredBlock29Step = 116 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) methodClass.
            recoveredBlock29PC := 118.
        ].
        recoveredBlock29Step = 118 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) printString.
            recoveredBlock29PC := 120.
        ].
        recoveredBlock29Step = 120 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) bindWith: (recoveredBlock29Stack2).
            recoveredBlock29PC := 122.
        ].
        recoveredBlock29Step = 122 ifTrue: [
            (recoveredBlock29Stack0) nextPutAll: (recoveredBlock29Stack1).
            recoveredBlock29PC := 124.
        ].
        recoveredBlock29Step = 124 ifTrue: [
            recoveredBlock29Stack0 := recoveredArg1.
            recoveredBlock29PC := 127.
        ].
        recoveredBlock29Step = 127 ifTrue: [
            recoveredBlock29Stack1 := '>>'.
            recoveredBlock29PC := 129.
        ].
        recoveredBlock29Step = 129 ifTrue: [
            (recoveredBlock29Stack0) nextPutAll: (recoveredBlock29Stack1).
            recoveredBlock29PC := 131.
        ].
        recoveredBlock29Step = 131 ifTrue: [
            recoveredBlock29Stack0 := recoveredLocal1.
            recoveredBlock29PC := 134.
        ].
        recoveredBlock29Step = 134 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) selector.
            recoveredBlock29PC := 136.
        ].
        recoveredBlock29Step = 136 ifTrue: [
            recoveredBlock29Stack1 := recoveredArg1.
            recoveredBlock29PC := 139.
        ].
        recoveredBlock29Step = 139 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) printOn: (recoveredBlock29Stack1).
            recoveredBlock29PC := 141.
        ].
        recoveredBlock29Step = 141 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack0.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := ExAll.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := [:recoveredBlock144Arg1 | 
    | recoveredBlock144Value0 recoveredBlock144Value1 recoveredBlock144Value2 |
    recoveredBlock144Value0 := recoveredArg1.
    (recoveredBlock144Value0) nextPutAll: (' (error accessing stack properties)').
    recoveredBlock144Value1 := recoveredBlock144Arg1.
    recoveredBlock144Value2 := (recoveredBlock144Value1) exitWith: (nil).
    recoveredBlock144Value2
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20030d30; bytecode file offset 0x7bc9c"
!EsStackFrame methodsFor: 'recovered'!
visibleVariables
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) method.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) argumentCount.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempCount.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 recoveredBlock57Value4 recoveredBlock57Value5 recoveredBlock57Value6 recoveredBlock57Value7 recoveredBlock57Value8 recoveredBlock57Value9 |
    recoveredBlock57Value0 := recoveredLocal3.
    recoveredBlock57Value1 := EsFrameTemporary.
    recoveredBlock57Value2 := recoveredBlock57Arg1.
    recoveredBlock57Value3 := (recoveredBlock57Value2) printString.
    recoveredBlock57Value4 := ('temp') , (recoveredBlock57Value3).
    recoveredBlock57Value5 := recoveredLocal4.
    recoveredBlock57Value6 := recoveredBlock57Arg1.
    recoveredBlock57Value7 := (recoveredBlock57Value5) - (recoveredBlock57Value6).
    recoveredBlock57Value8 := (recoveredBlock57Value1) named: (recoveredBlock57Value4) position: (recoveredBlock57Value7) depth: (0) in: (self).
    recoveredBlock57Value9 := (recoveredBlock57Value0) addFirst: (recoveredBlock57Value8).
    recoveredBlock57Value9
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) to: (recoveredStack1) by: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := [:recoveredBlock100Arg1 | 
    | recoveredBlock100Value0 recoveredBlock100Value1 recoveredBlock100Value2 recoveredBlock100Value3 recoveredBlock100Value4 recoveredBlock100Value5 recoveredBlock100Value6 recoveredBlock100Value7 recoveredBlock100Value8 recoveredBlock100Value9 recoveredBlock100Value10 recoveredBlock100Value11 |
    recoveredBlock100Value0 := recoveredLocal3.
    recoveredBlock100Value1 := EsFrameArgument.
    recoveredBlock100Value2 := recoveredBlock100Arg1.
    recoveredBlock100Value3 := (recoveredBlock100Value2) printString.
    recoveredBlock100Value4 := ('arg') , (recoveredBlock100Value3).
    recoveredBlock100Value5 := recoveredLocal7.
    recoveredBlock100Value6 := recoveredBlock100Arg1.
    recoveredBlock100Value7 := (recoveredBlock100Value5) - (recoveredBlock100Value6).
    recoveredBlock100Value8 := recoveredLocal4.
    recoveredBlock100Value9 := (recoveredBlock100Value7) + (recoveredBlock100Value8).
    recoveredBlock100Value10 := (recoveredBlock100Value1) named: (recoveredBlock100Value4) position: (recoveredBlock100Value9) depth: (0) in: (self).
    recoveredBlock100Value11 := (recoveredBlock100Value0) addFirst: (recoveredBlock100Value10).
    recoveredBlock100Value11
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) to: (recoveredStack1) by: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 342.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredPC := 175.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) runsOnStack.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 325] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) argumentCount.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempCount.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 273] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := [:recoveredBlock231Arg1 | 
    | recoveredBlock231Value0 recoveredBlock231Value1 recoveredBlock231Value2 recoveredBlock231Value3 recoveredBlock231Value4 recoveredBlock231Value5 recoveredBlock231Value6 recoveredBlock231Value7 recoveredBlock231Value8 recoveredBlock231Value9 recoveredBlock231Value10 recoveredBlock231Value11 recoveredBlock231Value12 |
    recoveredBlock231Value0 := recoveredLocal3.
    recoveredBlock231Value1 := EsFrameTemporary.
    recoveredBlock231Value2 := recoveredLocal2.
    recoveredBlock231Value3 := (recoveredBlock231Value2) printString.
    recoveredBlock231Value4 := recoveredBlock231Arg1.
    recoveredBlock231Value5 := (recoveredBlock231Value4) printString.
    recoveredBlock231Value6 := ('temp%1_%2') bindWith: (recoveredBlock231Value3) with: (recoveredBlock231Value5).
    recoveredBlock231Value7 := recoveredLocal4.
    recoveredBlock231Value8 := recoveredBlock231Arg1.
    recoveredBlock231Value9 := (recoveredBlock231Value7) - (recoveredBlock231Value8).
    recoveredBlock231Value10 := recoveredLocal2.
    recoveredBlock231Value11 := (recoveredBlock231Value1) named: (recoveredBlock231Value6) position: (recoveredBlock231Value9) depth: (recoveredBlock231Value10) in: (self).
    recoveredBlock231Value12 := (recoveredBlock231Value0) addFirst: (recoveredBlock231Value11).
    recoveredBlock231Value12
].
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) to: (recoveredStack1) by: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := [:recoveredBlock280Arg1 | 
    | recoveredBlock280Value0 recoveredBlock280Value1 recoveredBlock280Value2 recoveredBlock280Value3 recoveredBlock280Value4 recoveredBlock280Value5 recoveredBlock280Value6 recoveredBlock280Value7 recoveredBlock280Value8 recoveredBlock280Value9 recoveredBlock280Value10 recoveredBlock280Value11 recoveredBlock280Value12 recoveredBlock280Value13 recoveredBlock280Value14 |
    recoveredBlock280Value0 := recoveredLocal3.
    recoveredBlock280Value1 := EsFrameArgument.
    recoveredBlock280Value2 := recoveredLocal2.
    recoveredBlock280Value3 := (recoveredBlock280Value2) printString.
    recoveredBlock280Value4 := recoveredBlock280Arg1.
    recoveredBlock280Value5 := (recoveredBlock280Value4) printString.
    recoveredBlock280Value6 := ('arg%1_%2') bindWith: (recoveredBlock280Value3) with: (recoveredBlock280Value5).
    recoveredBlock280Value7 := recoveredLocal7.
    recoveredBlock280Value8 := recoveredBlock280Arg1.
    recoveredBlock280Value9 := (recoveredBlock280Value7) - (recoveredBlock280Value8).
    recoveredBlock280Value10 := recoveredLocal4.
    recoveredBlock280Value11 := (recoveredBlock280Value9) + (recoveredBlock280Value10).
    recoveredBlock280Value12 := recoveredLocal2.
    recoveredBlock280Value13 := (recoveredBlock280Value1) named: (recoveredBlock280Value6) position: (recoveredBlock280Value11) depth: (recoveredBlock280Value12) in: (self).
    recoveredBlock280Value14 := (recoveredBlock280Value0) addFirst: (recoveredBlock280Value13).
    recoveredBlock280Value14
].
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack0) to: (recoveredStack1) by: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentVisible.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 334].
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReceiverVisible.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 348] ifFalse: [recoveredPC := 358].
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := EsFrameReceiver.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


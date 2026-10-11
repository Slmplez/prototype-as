"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200001a0; bytecode file offset 0x6147c"
!SstDispatcher methodsFor: 'recovered'!
startUp
    ^self
! !

"xxx_dyn.ic method 0x200001a8; bytecode file offset 0x6147c"
!SstDispatcher methodsFor: 'recovered'!
basicCleanUp
    ^self
! !

"xxx_dyn.ic method 0x200001d8; bytecode file offset 0x6147c"
!SstDispatcher methodsFor: 'recovered'!
clear
    ^self
! !

"xxx_dyn.ic method 0x20000268; bytecode file offset 0x6147c"
!SstDispatcher methodsFor: 'recovered'!
reset
    ^self
! !

"xxx_dyn.ic method 0x20000280; bytecode file offset 0x6147c"
!SstDispatcher methodsFor: 'recovered'!
initialize
    ^self
! !

"xxx_dyn.ic method 0x20000340; bytecode file offset 0x6147c"
!SstDispatcher methodsFor: 'recovered'!
shutDown
    ^self
! !

"xxx_dyn.ic method 0x20001c14; bytecode file offset 0x62ce8"
!SstDispatcher methodsFor: 'recovered'!
basicExecuteReply: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) send.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002efc; bytecode file offset 0x64108"
!SstDispatcher methodsFor: 'recovered'!
instantiateFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) copy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) handler: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000379c; bytecode file offset 0x649e8"
!SstDispatcher methodsFor: 'recovered'!
handler
    | recoveredValue0 |
    recoveredValue0 := handler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200046d8; bytecode file offset 0x6592c"
!SstDispatcher methodsFor: 'recovered'!
threadedProcessingAllowed
    ^true
! !

"xxx_dyn.ic method 0x20005a64; bytecode file offset 0x66b38"
!SstDispatcher methodsFor: 'recovered'!
sstMonitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := handler.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) sstMonitor: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20007e3c; bytecode file offset 0x68f50"
!SstDispatcher methodsFor: 'recovered'!
handler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    handler := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20009a28; bytecode file offset 0x6aafc"
!SstDispatcher methodsFor: 'recovered'!
handleFirstIncoming: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := handler.
    recoveredValue1 := (recoveredValue0) configuration.
    recoveredValue2 := (recoveredValue1) callbacks.
    recoveredValue3 := SstFirstIncomingCallback.
    recoveredValue4 := recoveredArg1.
    (recoveredValue2) callCallbacks: (recoveredValue3) callData: (recoveredValue4).
    ^self
! !

"xxx_dyn.ic method 0x2000a500; bytecode file offset 0x6b5d0"
!SstDispatcher methodsFor: 'recovered'!
sendReply: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := handler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) replyReceiver.
    recoveredValue4 := (recoveredValue0) replyFor: (recoveredValue1) to: (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (self) basicSendReply: (recoveredValue4) inResponseTo: (recoveredValue5).
    ^recoveredValue6
! !

"xxx_dyn.ic method 0x2000cc78; bytecode file offset 0x6dd54"
!SstDispatcher methodsFor: 'recovered'!
handleFirstOutgoing: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := handler.
    recoveredValue1 := (recoveredValue0) configuration.
    recoveredValue2 := (recoveredValue1) callbacks.
    recoveredValue3 := SstFirstOutgoingCallback.
    recoveredValue4 := Array.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    (recoveredValue2) callCallbacks: (recoveredValue3) callData: (recoveredValue7).
    ^self
! !

"xxx_dyn.ic method 0x20010b08; bytecode file offset 0x71be8"
!SstDispatcher methodsFor: 'recovered'!
basicSendReply: recoveredArg1 inResponseTo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := handler.
    recoveredValue1 := (recoveredValue0) configuration.
    recoveredValue2 := (recoveredValue1) callbacks.
    recoveredValue3 := SstSendReplyCallback.
    recoveredValue4 := Array.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    (recoveredValue2) callCallbacks: (recoveredValue3) callData: (recoveredValue7).
    recoveredValue8 := handler.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue8) basicReply: (recoveredValue9) to: (recoveredValue10).
    ^recoveredValue11
! !

"xxx_dyn.ic method 0x20010f08; bytecode file offset 0x71fd8"
!SstDispatcher methodsFor: 'recovered'!
sendEarlyReply: recoveredArg1 to: recoveredArg2 continuation: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) sendReply: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSstError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20012a4c; bytecode file offset 0x73b2c"
!SstDispatcher methodsFor: 'recovered'!
dispatchReply: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) mapReplyReceiverIn: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) configuration.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) callbacks.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := SstDispatchReplyCallback.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) callCallbacks: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicExecuteReply: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20021444; bytecode file offset 0x82530"
!SstDispatcher methodsFor: 'recovered'!
dispatchIncoming: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReply.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'SstTag:Dispatch Reply'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstMonitor.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstMonitor.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'SstTag:Dispatch Reply'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) event: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) dispatchReply: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := SstFirstContactInfoKey.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) infoAt: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) handleFirstIncoming: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'SstTag:Dispatch Request'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstMonitor.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstMonitor.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 'SstTag:Dispatch Request'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) event: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) dispatchRequest: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20023f54; bytecode file offset 0x85054"
!SstDispatcher methodsFor: 'recovered'!
dispatchRequest: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mapRequestReceiverIn: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSstError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) reply: (recoveredStack2) inResponseTo: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) configuration.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) callbacks.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := SstDispatchRequestCallback.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) callCallbacks: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicExecuteRequest: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSstError.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) replyError: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSstError.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := handler.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := MxSSTG39.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) sstPrintString.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := (recoveredStack4) sstPrintString.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) logError: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := handler.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) reply: (recoveredStack1) inResponseTo: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20024188; bytecode file offset 0x85290"
!SstDispatcher methodsFor: 'recovered'!
sendRequest: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) replyReceiver.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) replyReceiver.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ExSstNonFatalError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := NlsCatSSTG.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 26.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasContacted: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) handleFirstOutgoing: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) configuration.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) callbacks.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := SstSendRequestCallback.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) callCallbacks: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicInvoke: (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSstError.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) waitForResult: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2002bd78; bytecode file offset 0x8ce94"
!SstDispatcher methodsFor: 'recovered'!
basicExecuteRequest: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) sstCurrentRequest.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Processor.
    recoveredValue3 := (recoveredValue2) activeProcess.
    recoveredValue4 := (recoveredValue3) errorHandler.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := [
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := System.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := recoveredArg1.
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            (recoveredBlock18Stack1) sstCurrentRequest: (recoveredBlock18Stack2).
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack1 := handler.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) configuration.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) forwardExceptions.
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack2 := false.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            (recoveredBlock18Stack1 == recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 101] ifFalse: [recoveredBlock18PC := 42].
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack1 := Processor.
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) activeProcess.
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack2 := [:recoveredBlock18Block45Arg1 | 
    | recoveredBlock18Block45Stack0 recoveredBlock18Block45Stack1 recoveredBlock18Block45Stack2 recoveredBlock18Block45Stack3 recoveredBlock18Block45Stack4 recoveredBlock18Block45Stack5 recoveredBlock18Block45Stack6 recoveredBlock18Block45PC recoveredBlock18Block45Step recoveredBlock18Block45Done recoveredBlock18Block45Result |
    recoveredBlock18Block45Stack0 := self.
    recoveredBlock18Block45PC := 52.
    recoveredBlock18Block45Done := false.
    [recoveredBlock18Block45Done not] whileTrue: [
        recoveredBlock18Block45Step := recoveredBlock18Block45PC.
        recoveredBlock18Block45Step = 52 ifTrue: [
            recoveredBlock18Block45Stack1 := 'SstTag:Forward Exception'.
            recoveredBlock18Block45PC := 54.
        ].
        recoveredBlock18Block45Step = 54 ifTrue: [
            recoveredLocal3 := recoveredBlock18Block45Stack1.
            recoveredBlock18Block45PC := 57.
        ].
        recoveredBlock18Block45Step = 57 ifTrue: [
            recoveredBlock18Block45Stack1 := handler.
            recoveredBlock18Block45PC := 59.
        ].
        recoveredBlock18Block45Step = 59 ifTrue: [
            recoveredBlock18Block45Stack1 := (recoveredBlock18Block45Stack1) sstMonitor.
            recoveredBlock18Block45PC := 61.
        ].
        recoveredBlock18Block45Step = 61 ifTrue: [
            (recoveredBlock18Block45Stack1 == nil) ifTrue: [recoveredBlock18Block45PC := 74] ifFalse: [recoveredBlock18Block45PC := 64].
        ].
        recoveredBlock18Block45Step = 64 ifTrue: [
            recoveredBlock18Block45Stack1 := handler.
            recoveredBlock18Block45PC := 66.
        ].
        recoveredBlock18Block45Step = 66 ifTrue: [
            recoveredBlock18Block45Stack1 := (recoveredBlock18Block45Stack1) sstMonitor.
            recoveredBlock18Block45PC := 68.
        ].
        recoveredBlock18Block45Step = 68 ifTrue: [
            recoveredBlock18Block45Stack2 := 'SstTag:Forward Exception'.
            recoveredBlock18Block45PC := 70.
        ].
        recoveredBlock18Block45Step = 70 ifTrue: [
            recoveredBlock18Block45Stack3 := 1.
            recoveredBlock18Block45PC := 72.
        ].
        recoveredBlock18Block45Step = 72 ifTrue: [
            (recoveredBlock18Block45Stack1) event: (recoveredBlock18Block45Stack2) value: (recoveredBlock18Block45Stack3).
            recoveredBlock18Block45PC := 74.
        ].
        recoveredBlock18Block45Step = 74 ifTrue: [
            recoveredBlock18Block45Stack1 := Processor.
            recoveredBlock18Block45PC := 76.
        ].
        recoveredBlock18Block45Step = 76 ifTrue: [
            recoveredBlock18Block45Stack1 := (recoveredBlock18Block45Stack1) activeProcess.
            recoveredBlock18Block45PC := 77.
        ].
        recoveredBlock18Block45Step = 77 ifTrue: [
            recoveredBlock18Block45Stack2 := recoveredLocal1.
            recoveredBlock18Block45PC := 80.
        ].
        recoveredBlock18Block45Step = 80 ifTrue: [
            (recoveredBlock18Block45Stack1) errorHandler: (recoveredBlock18Block45Stack2).
            recoveredBlock18Block45PC := 82.
        ].
        recoveredBlock18Block45Step = 82 ifTrue: [
            recoveredBlock18Block45Stack1 := SstError.
            recoveredBlock18Block45PC := 84.
        ].
        recoveredBlock18Block45Step = 84 ifTrue: [
            recoveredBlock18Block45Stack2 := SstRemoteExceptionError.
            recoveredBlock18Block45PC := 86.
        ].
        recoveredBlock18Block45Step = 86 ifTrue: [
            recoveredBlock18Block45Stack3 := Array.
            recoveredBlock18Block45PC := 88.
        ].
        recoveredBlock18Block45Step = 88 ifTrue: [
            recoveredBlock18Block45Stack4 := recoveredBlock18Block45Arg1.
            recoveredBlock18Block45PC := 89.
        ].
        recoveredBlock18Block45Step = 89 ifTrue: [
            recoveredBlock18Block45Stack4 := (recoveredBlock18Block45Stack4) description.
            recoveredBlock18Block45PC := 91.
        ].
        recoveredBlock18Block45Step = 91 ifTrue: [
            recoveredBlock18Block45Stack5 := recoveredBlock18Block45Arg1.
            recoveredBlock18Block45PC := 92.
        ].
        recoveredBlock18Block45Step = 92 ifTrue: [
            recoveredBlock18Block45Stack5 := (recoveredBlock18Block45Stack5) arguments.
            recoveredBlock18Block45PC := 94.
        ].
        recoveredBlock18Block45Step = 94 ifTrue: [
            recoveredBlock18Block45Stack3 := (recoveredBlock18Block45Stack3) with: (recoveredBlock18Block45Stack4) with: (recoveredBlock18Block45Stack5).
            recoveredBlock18Block45PC := 96.
        ].
        recoveredBlock18Block45Step = 96 ifTrue: [
            recoveredBlock18Block45Stack1 := (recoveredBlock18Block45Stack1) for: (recoveredBlock18Block45Stack2) with: (recoveredBlock18Block45Stack3).
            recoveredBlock18Block45PC := 98.
        ].
        recoveredBlock18Block45Step = 98 ifTrue: [
            ^recoveredBlock18Block45Stack1
        ].
    ].
    recoveredBlock18Block45Result
].
            recoveredBlock18PC := 99.
        ].
        recoveredBlock18Step = 99 ifTrue: [
            (recoveredBlock18Stack1) errorHandler: (recoveredBlock18Stack2).
            recoveredBlock18PC := 101.
        ].
        recoveredBlock18Step = 101 ifTrue: [
            recoveredBlock18Stack1 := 'SstTag:Execute'.
            recoveredBlock18PC := 103.
        ].
        recoveredBlock18Step = 103 ifTrue: [
            recoveredLocal3 := recoveredBlock18Stack1.
            recoveredBlock18PC := 106.
        ].
        recoveredBlock18Step = 106 ifTrue: [
            recoveredBlock18Stack1 := handler.
            recoveredBlock18PC := 108.
        ].
        recoveredBlock18Step = 108 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) sstMonitor.
            recoveredBlock18PC := 110.
        ].
        recoveredBlock18Step = 110 ifTrue: [
            (recoveredBlock18Stack1 == nil) ifTrue: [recoveredBlock18PC := 124] ifFalse: [recoveredBlock18PC := 114].
        ].
        recoveredBlock18Step = 114 ifTrue: [
            recoveredBlock18Stack1 := handler.
            recoveredBlock18PC := 116.
        ].
        recoveredBlock18Step = 116 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) sstMonitor.
            recoveredBlock18PC := 118.
        ].
        recoveredBlock18Step = 118 ifTrue: [
            recoveredBlock18Stack2 := 'SstTag:Execute'.
            recoveredBlock18PC := 120.
        ].
        recoveredBlock18Step = 120 ifTrue: [
            recoveredBlock18Stack3 := 1.
            recoveredBlock18PC := 122.
        ].
        recoveredBlock18Step = 122 ifTrue: [
            (recoveredBlock18Stack1) event: (recoveredBlock18Stack2) value: (recoveredBlock18Stack3).
            recoveredBlock18PC := 124.
        ].
        recoveredBlock18Step = 124 ifTrue: [
            recoveredBlock18Stack1 := recoveredArg1.
            recoveredBlock18PC := 127.
        ].
        recoveredBlock18Step = 127 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) send.
            recoveredBlock18PC := 129.
        ].
        recoveredBlock18Step = 129 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    recoveredValue6 := [
    | recoveredBlock130Value0 recoveredBlock130Value1 recoveredBlock130Value2 recoveredBlock130Value3 recoveredBlock130Value4 recoveredBlock130Value5 |
    recoveredBlock130Value0 := Processor.
    recoveredBlock130Value1 := (recoveredBlock130Value0) activeProcess.
    recoveredBlock130Value2 := recoveredLocal1.
    (recoveredBlock130Value1) errorHandler: (recoveredBlock130Value2).
    recoveredBlock130Value3 := System.
    recoveredBlock130Value4 := recoveredLocal2.
    recoveredBlock130Value5 := (recoveredBlock130Value3) sstCurrentRequest: (recoveredBlock130Value4).
    recoveredBlock130Value5
].
    recoveredValue7 := (recoveredValue5) ensure: (recoveredValue6).
    ^recoveredValue7
! !


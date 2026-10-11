"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20004150; bytecode file offset 0x65264"
!SstHttpConnection methodsFor: 'recovered'!
canBeMadeAvailable
    | recoveredValue0 |
    recoveredValue0 := canBeMadeAvailable.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000422c; bytecode file offset 0x65328"
!SstHttpConnection methodsFor: 'recovered'!
isClient
    | recoveredValue0 |
    recoveredValue0 := client.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200085e8; bytecode file offset 0x6978c"
!SstHttpConnection methodsFor: 'recovered'!
canBeMadeAvailable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    canBeMadeAvailable := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008724; bytecode file offset 0x69858"
!SstHttpConnection methodsFor: 'recovered'!
isClient: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    client := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20009070; bytecode file offset 0x6a13c"
!SstHttpConnection methodsFor: 'recovered'!
initialize
    super initialize.
    canBeMadeAvailable := true.
    ^self
! !

"xxx_dyn.ic method 0x2000a4e0; bytecode file offset 0x6b5ac"
!SstHttpConnection methodsFor: 'recovered'!
canReach: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClosed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := peer.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLogicallyEquivalentTo: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000c930; bytecode file offset 0x6da00"
!SstHttpConnection methodsFor: 'recovered'!
nextConnectionNumber
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | block2800a7e8Value0 block2800a7e8Value1 block2800a7e8Value2 |
    block2800a7e8Value0 := NextConnectionNumber.
    block2800a7e8Value1 := (block2800a7e8Value0) + (1).
    block2800a7e8Value2 := block2800a7e8Value1.
    NextConnectionNumber := block2800a7e8Value2.
    block2800a7e8Value1
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) critical.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000d6d8; bytecode file offset 0x6e7a0"
!SstHttpConnection methodsFor: 'recovered'!
lastUse: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := recoveredBlock4Value0.
    lastUse := recoveredBlock4Value1.
    recoveredBlock4Value0
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x2000f870; bytecode file offset 0x70938"
!SstHttpConnection methodsFor: 'recovered'!
lastUse
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := lastUse.
    recoveredBlock4Value1 := recoveredBlock4Value0.
    recoveredLocal1 := recoveredBlock4Value1.
    recoveredBlock4Value0
].
    (recoveredValue0) critical.
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2001b230; bytecode file offset 0x7c32c"
!SstHttpConnection methodsFor: 'recovered'!
negotiateAccept
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) isBytes: (false).
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := String.
    recoveredValue4 := HttpSpace.
    recoveredValue5 := (recoveredValue3) with: (recoveredValue4).
    (recoveredValue2) space: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := HttpCrLfString.
    (recoveredValue6) lineDelimiter: (recoveredValue7).
    (recoveredValue0) forgivingNextLine: (true).
    recoveredValue8 := peer.
    recoveredValue9 := (recoveredValue8) copy.
    recoveredValue10 := (self) nextConnectionNumber.
    recoveredValue11 := (recoveredValue9) discriminator: (recoveredValue10).
    peer := recoveredValue11.
    recoveredValue12 := Time.
    recoveredValue13 := (recoveredValue12) millisecondClockValue.
    (self) lastUse: (recoveredValue13).
    client := true.
    ^self
! !

"xxx_dyn.ic method 0x2001e62c; bytecode file offset 0x7f734"
!SstHttpConnection methodsFor: 'recovered'!
replyError: recoveredArg1 text: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := ('<HTML><HEAD></HEAD><BODY>
<P><FONT SIZE=+2>%1</FONT></P>
<P><HR></P>
<PRE>%2</PRE>
</BODY></HTML>') bindWith: (recoveredValue0) with: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := SstHttpResponseHeader.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := recoveredValue4.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) status: (recoveredValue7).
    recoveredValue8 := recoveredValue4.
    (recoveredValue8) contentType: ('text/html').
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue9) size.
    (recoveredValue4) contentLength: (recoveredValue10).
    recoveredValue11 := (self) transport.
    recoveredValue12 := (recoveredValue11) configuration.
    recoveredValue13 := (recoveredValue12) messageClass.
    recoveredValue14 := (recoveredValue13) new.
    recoveredValue15 := recoveredValue14.
    recoveredLocal1 := recoveredValue15.
    recoveredValue16 := recoveredValue14.
    recoveredValue17 := recoveredLocal3.
    (recoveredValue16) header: (recoveredValue17).
    recoveredValue18 := recoveredValue14.
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := (recoveredValue19) sstHttpString.
    (recoveredValue18) contents: (recoveredValue20).
    (recoveredValue14) flushAfterSend: (true).
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := (self) reply: (recoveredValue21).
    ^recoveredValue22
! !

"xxx_dyn.ic method 0x200231d0; bytecode file offset 0x842d8"
!SstHttpConnection methodsFor: 'recovered'!
send: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := sendSemaphore.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) isClosed.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 16] ifFalse: [recoveredBlock6PC := 22].
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack0 := SstError.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := SstSendError.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) for: (recoveredBlock6Stack1).
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            ^recoveredBlock6Stack0
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) isClient.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 43] ifFalse: [recoveredBlock6PC := 28].
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack0 := SstError.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack1 := SstSendError.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack2 := NlsCatSSTG.
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack3 := 15.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) indexedMsg: (recoveredBlock6Stack3).
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) for: (recoveredBlock6Stack1) with: (recoveredBlock6Stack2).
            recoveredBlock6PC := 40.
        ].
        recoveredBlock6Step = 40 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) markNonRecoverable.
            recoveredBlock6PC := 42.
        ].
        recoveredBlock6Step = 42 ifTrue: [
            ^recoveredBlock6Stack0
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack0 := recoveredArg1.
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6Stack1 := true.
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            (recoveredBlock6Stack0) flushAfterSend: (recoveredBlock6Stack1).
            recoveredBlock6PC := 49.
        ].
        recoveredBlock6Step = 49 ifTrue: [
            recoveredBlock6Stack0 := transport.
            recoveredBlock6PC := 51.
        ].
        recoveredBlock6Step = 51 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) assembler.
            recoveredBlock6PC := 53.
        ].
        recoveredBlock6Step = 53 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 56.
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 57.
        ].
        recoveredBlock6Step = 57 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) disassembleSend: (recoveredBlock6Stack1) onto: (recoveredBlock6Stack2).
            recoveredBlock6PC := 59.
        ].
        recoveredBlock6Step = 59 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 60.
        ].
        recoveredBlock6Step = 60 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 63.
        ].
        recoveredBlock6Step = 63 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := Time.
    recoveredValue3 := (recoveredValue2) millisecondClockValue.
    (self) lastUse: (recoveredValue3).
    (self) checkForClosing.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20026270; bytecode file offset 0x8739c"
!SstHttpConnection methodsFor: 'recovered'!
negotiateConnect
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := handle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPeerName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSciError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := SstError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := SstEndpointUnreachableError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) for: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := transport.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) endpoint.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstAsUrl.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyCore.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) sstAsUrlComponent.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) address: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := transport.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) configuration.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) remoteEndpointClass.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromUrl: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            peer := recoveredStack2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSstError.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := SstError.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := SstInternalTransportError.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) for: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := stream.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) isBytes: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := String.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := HttpSpace.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) space: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := HttpCrLfString.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack2) lineDelimiter: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) forgivingNextLine: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) millisecondClockValue.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) lastUse: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            client := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20028688; bytecode file offset 0x8979c"
!SstHttpConnection methodsFor: 'recovered'!
receive
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := receiveSemaphore.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) isClosed.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 16] ifFalse: [recoveredBlock6PC := 22].
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack0 := SstError.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := SstReceiveError.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) for: (recoveredBlock6Stack1).
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            ^recoveredBlock6Stack0
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack0 := transport.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) assembler.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) assembleFrom: (recoveredBlock6Stack1).
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) isSstError.
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 38] ifFalse: [recoveredBlock6PC := 66].
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) isClient.
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 62] ifFalse: [recoveredBlock6PC := 44].
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal1.
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) errorObject.
            recoveredBlock6PC := 49.
        ].
        recoveredBlock6Step = 49 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) sstIsMessage.
            recoveredBlock6PC := 51.
        ].
        recoveredBlock6Step = 51 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 54] ifFalse: [recoveredBlock6PC := 62].
        ].
        recoveredBlock6Step = 54 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 55.
        ].
        recoveredBlock6Step = 55 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal1.
            recoveredBlock6PC := 58.
        ].
        recoveredBlock6Step = 58 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) errorObject.
            recoveredBlock6PC := 60.
        ].
        recoveredBlock6Step = 60 ifTrue: [
            (recoveredBlock6Stack0) reply: (recoveredBlock6Stack1).
            recoveredBlock6PC := 62.
        ].
        recoveredBlock6Step = 62 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal1.
            recoveredBlock6PC := 65.
        ].
        recoveredBlock6Step = 65 ifTrue: [
            ^recoveredBlock6Stack0
        ].
        recoveredBlock6Step = 66 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal1.
            recoveredBlock6PC := 69.
        ].
        recoveredBlock6Step = 69 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) header.
            recoveredBlock6PC := 71.
        ].
        recoveredBlock6Step = 71 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) specifiesPersistentConnection.
            recoveredBlock6PC := 73.
        ].
        recoveredBlock6Step = 73 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 76] ifFalse: [recoveredBlock6PC := 84].
        ].
        recoveredBlock6Step = 76 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 77.
        ].
        recoveredBlock6Step = 77 ifTrue: [
            recoveredBlock6Stack1 := true.
            recoveredBlock6PC := 78.
        ].
        recoveredBlock6Step = 78 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) canBeMadeAvailable: (recoveredBlock6Stack1).
            recoveredBlock6PC := 80.
        ].
        recoveredBlock6Step = 80 ifTrue: [
            recoveredBlock6PC := 100.
        ].
        recoveredBlock6Step = 84 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 85.
        ].
        recoveredBlock6Step = 85 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) isClient.
            recoveredBlock6PC := 87.
        ].
        recoveredBlock6Step = 87 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 90] ifFalse: [recoveredBlock6PC := 96].
        ].
        recoveredBlock6Step = 90 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 91.
        ].
        recoveredBlock6Step = 91 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) close.
            recoveredBlock6PC := 93.
        ].
        recoveredBlock6Step = 93 ifTrue: [
            recoveredBlock6PC := 100.
        ].
        recoveredBlock6Step = 96 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 97.
        ].
        recoveredBlock6Step = 97 ifTrue: [
            recoveredBlock6Stack1 := false.
            recoveredBlock6PC := 98.
        ].
        recoveredBlock6Step = 98 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) canBeMadeAvailable: (recoveredBlock6Stack1).
            recoveredBlock6PC := 100.
        ].
        recoveredBlock6Step = 100 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := Time.
    recoveredValue3 := (recoveredValue2) millisecondClockValue.
    (self) lastUse: (recoveredValue3).
    (self) checkForClosing.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x2002ce10; bytecode file offset 0x8df44"
!SstHttpConnection methodsFor: 'recovered'!
reply: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := sendSemaphore.
    recoveredValue1 := [
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) isClosed.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 16] ifFalse: [recoveredBlock6PC := 22].
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack0 := SstError.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := SstSendError.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) for: (recoveredBlock6Stack1).
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            ^recoveredBlock6Stack0
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) isClient.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 28] ifFalse: [recoveredBlock6PC := 43].
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack0 := SstError.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack1 := SstSendError.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack2 := NlsCatSSTG.
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack3 := 15.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) indexedMsg: (recoveredBlock6Stack3).
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) for: (recoveredBlock6Stack1) with: (recoveredBlock6Stack2).
            recoveredBlock6PC := 40.
        ].
        recoveredBlock6Step = 40 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) markNonRecoverable.
            recoveredBlock6PC := 42.
        ].
        recoveredBlock6Step = 42 ifTrue: [
            ^recoveredBlock6Stack0
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack0 := true.
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Stack0 := recoveredArg1.
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) header.
            recoveredBlock6PC := 50.
        ].
        recoveredBlock6Step = 50 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) specifiesPersistentConnection.
            recoveredBlock6PC := 52.
        ].
        recoveredBlock6Step = 52 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 56] ifFalse: [recoveredBlock6PC := 124].
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6Stack0 := recoveredArg1.
            recoveredBlock6PC := 59.
        ].
        recoveredBlock6Step = 59 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) header.
            recoveredBlock6PC := 61.
        ].
        recoveredBlock6Step = 61 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) specifiesContentLength.
            recoveredBlock6PC := 63.
        ].
        recoveredBlock6Step = 63 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 66] ifFalse: [recoveredBlock6PC := 72].
        ].
        recoveredBlock6Step = 66 ifTrue: [
            recoveredBlock6Stack0 := false.
            recoveredBlock6PC := 67.
        ].
        recoveredBlock6Step = 67 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 68.
        ].
        recoveredBlock6Step = 68 ifTrue: [
            recoveredBlock6PC := 124.
        ].
        recoveredBlock6Step = 72 ifTrue: [
            recoveredBlock6Stack0 := recoveredArg1.
            recoveredBlock6PC := 75.
        ].
        recoveredBlock6Step = 75 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) basicContents.
            recoveredBlock6PC := 77.
        ].
        recoveredBlock6Step = 77 ifTrue: [
            (recoveredBlock6Stack0 ~~ nil) ifTrue: [recoveredBlock6PC := 94] ifFalse: [recoveredBlock6PC := 80].
        ].
        recoveredBlock6Step = 80 ifTrue: [
            recoveredBlock6Stack0 := recoveredArg1.
            recoveredBlock6PC := 83.
        ].
        recoveredBlock6Step = 83 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) header.
            recoveredBlock6PC := 85.
        ].
        recoveredBlock6Step = 85 ifTrue: [
            recoveredBlock6Stack1 := 0.
            recoveredBlock6PC := 87.
        ].
        recoveredBlock6Step = 87 ifTrue: [
            (recoveredBlock6Stack0) contentLength: (recoveredBlock6Stack1).
            recoveredBlock6PC := 89.
        ].
        recoveredBlock6Step = 89 ifTrue: [
            recoveredBlock6Stack0 := false.
            recoveredBlock6PC := 90.
        ].
        recoveredBlock6Step = 90 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 91.
        ].
        recoveredBlock6Step = 91 ifTrue: [
            recoveredBlock6PC := 124.
        ].
        recoveredBlock6Step = 94 ifTrue: [
            recoveredBlock6Stack0 := recoveredArg1.
            recoveredBlock6PC := 97.
        ].
        recoveredBlock6Step = 97 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) basicContents.
            recoveredBlock6PC := 99.
        ].
        recoveredBlock6Step = 99 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) sstIsDeferredContent.
            recoveredBlock6PC := 101.
        ].
        recoveredBlock6Step = 101 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 104] ifFalse: [recoveredBlock6PC := 108].
        ].
        recoveredBlock6Step = 104 ifTrue: [
            recoveredBlock6Stack0 := true.
            recoveredBlock6PC := 105.
        ].
        recoveredBlock6Step = 105 ifTrue: [
            recoveredBlock6PC := 123.
        ].
        recoveredBlock6Step = 108 ifTrue: [
            recoveredBlock6Stack0 := recoveredArg1.
            recoveredBlock6PC := 111.
        ].
        recoveredBlock6Step = 111 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) header.
            recoveredBlock6PC := 113.
        ].
        recoveredBlock6Step = 113 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 116.
        ].
        recoveredBlock6Step = 116 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) contents.
            recoveredBlock6PC := 118.
        ].
        recoveredBlock6Step = 118 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) size.
            recoveredBlock6PC := 120.
        ].
        recoveredBlock6Step = 120 ifTrue: [
            (recoveredBlock6Stack0) contentLength: (recoveredBlock6Stack1).
            recoveredBlock6PC := 122.
        ].
        recoveredBlock6Step = 122 ifTrue: [
            recoveredBlock6Stack0 := false.
            recoveredBlock6PC := 123.
        ].
        recoveredBlock6Step = 123 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 124.
        ].
        recoveredBlock6Step = 124 ifTrue: [
            recoveredBlock6Stack0 := recoveredBlock6Local1.
            recoveredBlock6PC := 125.
        ].
        recoveredBlock6Step = 125 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 128] ifFalse: [recoveredBlock6PC := 146].
        ].
        recoveredBlock6Step = 128 ifTrue: [
            recoveredBlock6Stack0 := recoveredArg1.
            recoveredBlock6PC := 131.
        ].
        recoveredBlock6Step = 131 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) header.
            recoveredBlock6PC := 133.
        ].
        recoveredBlock6Step = 133 ifTrue: [
            recoveredBlock6Stack1 := HttpCloseDirective.
            recoveredBlock6PC := 135.
        ].
        recoveredBlock6Step = 135 ifTrue: [
            (recoveredBlock6Stack0) connection: (recoveredBlock6Stack1).
            recoveredBlock6PC := 137.
        ].
        recoveredBlock6Step = 137 ifTrue: [
            recoveredBlock6Stack0 := recoveredArg1.
            recoveredBlock6PC := 140.
        ].
        recoveredBlock6Step = 140 ifTrue: [
            recoveredBlock6Stack1 := true.
            recoveredBlock6PC := 141.
        ].
        recoveredBlock6Step = 141 ifTrue: [
            (recoveredBlock6Stack0) closeAfterSend: (recoveredBlock6Stack1).
            recoveredBlock6PC := 143.
        ].
        recoveredBlock6Step = 143 ifTrue: [
            recoveredBlock6PC := 156.
        ].
        recoveredBlock6Step = 146 ifTrue: [
            recoveredBlock6Stack0 := recoveredArg1.
            recoveredBlock6PC := 149.
        ].
        recoveredBlock6Step = 149 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 150.
        ].
        recoveredBlock6Step = 150 ifTrue: [
            recoveredBlock6Stack2 := true.
            recoveredBlock6PC := 151.
        ].
        recoveredBlock6Step = 151 ifTrue: [
            (recoveredBlock6Stack1) flushAfterSend: (recoveredBlock6Stack2).
            recoveredBlock6PC := 153.
        ].
        recoveredBlock6Step = 153 ifTrue: [
            recoveredBlock6Stack1 := false.
            recoveredBlock6PC := 154.
        ].
        recoveredBlock6Step = 154 ifTrue: [
            (recoveredBlock6Stack0) closeAfterSend: (recoveredBlock6Stack1).
            recoveredBlock6PC := 156.
        ].
        recoveredBlock6Step = 156 ifTrue: [
            recoveredBlock6Stack0 := transport.
            recoveredBlock6PC := 158.
        ].
        recoveredBlock6Step = 158 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) assembler.
            recoveredBlock6PC := 160.
        ].
        recoveredBlock6Step = 160 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 163.
        ].
        recoveredBlock6Step = 163 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 164.
        ].
        recoveredBlock6Step = 164 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) disassembleReply: (recoveredBlock6Stack1) onto: (recoveredBlock6Stack2).
            recoveredBlock6PC := 166.
        ].
        recoveredBlock6Step = 166 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 167.
        ].
        recoveredBlock6Step = 167 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 170.
        ].
        recoveredBlock6Step = 170 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := Time.
    recoveredValue3 := (recoveredValue2) millisecondClockValue.
    (self) lastUse: (recoveredValue3).
    (self) checkForClosing.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !


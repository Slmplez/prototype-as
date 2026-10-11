"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001420; bytecode file offset 0x626a4"
!SstHttpAssembler methodsFor: 'recovered'!
sstAssemblyInstrumentPackSource
    ^'SST Instrument Pack Message Assembly
Generated at: (11/11/11 11:11:11 PM)
Instrument: 1 SstTapInstrument ''State Tap''
Instrument: 2 SstMonitorPoint nil #''SstTag:Assemble Message'' nil ( SstHttpAssembler ) #assembleFrom: nil ''assembler''
Instrument: 3 SstValueProbe ''assemble'' nil ''1''
Connection: 2	3 #event:from:
Connection: 3	1 #event:from:
Instrument: 4 SstMonitorPoint nil #''SstTag:Disassemble Reply'' nil ( SstHttpAssembler ) #disassembleReply:onto: nil ''assembler''
Instrument: 5 SstValueProbe ''disassembleReply'' nil ''1''
Connection: 4	5 #event:from:
Connection: 5	1 #event:from:
Instrument: 6 SstMonitorPoint nil #''SstTag:Disassemble Send'' nil ( SstHttpAssembler ) #disassembleSend:onto: nil ''assembler''
Instrument: 7 SstValueProbe ''disassembleSend'' nil ''1''
Connection: 6	7 #event:from:
Connection: 7	1 #event:from:
'
! !

"xxx_dyn.ic method 0x200061f0; bytecode file offset 0x672bc"
!SstHttpAssembler methodsFor: 'recovered'!
outputHeader: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) stream.
    (recoveredValue0) sstHttpStringOn: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x20010268; bytecode file offset 0x7133c"
!SstHttpAssembler methodsFor: 'recovered'!
outputContents: recoveredArg1 on: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) sstIsDeferredContent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200114ec; bytecode file offset 0x725c4"
!SstHttpAssembler methodsFor: 'recovered'!
getContentsFrom: recoveredArg1 using: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isResponseHeader.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SstHttpResponseContentAssembler.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentsFrom: (recoveredStack2) using: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) contentLength.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) next: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001b47c; bytecode file offset 0x7c580"
!SstHttpAssembler methodsFor: 'recovered'!
messageForErrorReplyTo: recoveredArg1 using: recoveredArg2 error: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) errorObject.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := ('<HTML><HEAD></HEAD><BODY><P>
<I><FONT SIZE=+2></FONT></I></P>
<P>%1</P>
<P><HR></P>
</BODY></HTML>') bindWith: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := SstHttpResponseHeader.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := recoveredValue5.
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredValue5.
    recoveredValue8 := HttpInternalServerError.
    (recoveredValue7) status: (recoveredValue8).
    recoveredValue9 := recoveredValue5.
    (recoveredValue9) contentType: ('text/html').
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) size.
    (recoveredValue5) contentLength: (recoveredValue11).
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := recoveredLocal2.
    (recoveredValue13) header: (recoveredValue14).
    recoveredValue15 := recoveredValue12.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (recoveredValue16) sstHttpString.
    (recoveredValue15) contents: (recoveredValue17).
    recoveredValue18 := recoveredValue12.
    (recoveredValue18) flushAfterSend: (true).
    ^recoveredValue12
! !

"xxx_dyn.ic method 0x2001e85c; bytecode file offset 0x7f948"
!SstHttpAssembler methodsFor: 'recovered'!
basicAssembleFrom: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClient.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SstHttpResponseHeader.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) stream.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) initializeFrom: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := SstHttpRequestHeader.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) stream.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) initializeFrom: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSstError.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) header: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) getContentsFrom: (recoveredStack1) using: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSstError.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) contents: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001efd0; bytecode file offset 0x800c0"
!SstHttpAssembler methodsFor: 'recovered'!
disassembleSend: recoveredArg1 onto: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
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
            recoveredBlock4Stack2 := recoveredArg2.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) basicDisassemble: (recoveredBlock4Stack1) onto: (recoveredBlock4Stack2).
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack0 := 'SstTag:Disassemble Send'.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack0.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := monitor.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 36] ifFalse: [recoveredBlock4PC := 28].
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack0 := monitor.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack1 := 'SstTag:Disassemble Send'.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack2 := 1.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            (recoveredBlock4Stack0) event: (recoveredBlock4Stack1) value: (recoveredBlock4Stack2).
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := [:block2800bac0Arg1 | 
    | block2800bac0Value0 block2800bac0Value1 block2800bac0Value2 block2800bac0Value3 block2800bac0Value4 block2800bac0Value5 block2800bac0Value6 |
    block2800bac0Value0 := block2800bac0Arg1.
    block2800bac0Value1 := SstError.
    block2800bac0Value2 := SstSendError.
    block2800bac0Value3 := block2800bac0Arg1.
    block2800bac0Value4 := (block2800bac0Value3) argument.
    block2800bac0Value5 := (block2800bac0Value1) for: (block2800bac0Value2) with: (block2800bac0Value4).
    block2800bac0Value6 := (block2800bac0Value0) exitWith: (block2800bac0Value5).
    block2800bac0Value6
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001ffe0; bytecode file offset 0x810d4"
!SstHttpAssembler methodsFor: 'recovered'!
basicDisassemble: recoveredArg1 onto: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) header.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Object.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) sstToBeFixed.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) header.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) outputHeader: (recoveredStack2) on: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := Object.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) sstToBeFixed.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicContents.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicContents.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) outputContents: (recoveredStack2) on: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) closeAfterSend.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) flushAfterSend.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) flush.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) peer.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x200251b8; bytecode file offset 0x862c8"
!SstHttpAssembler methodsFor: 'recovered'!
disassembleReply: recoveredArg1 onto: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
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
            recoveredBlock4Stack2 := recoveredArg2.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) basicDisassemble: (recoveredBlock4Stack1) onto: (recoveredBlock4Stack2).
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack0 := 'SstTag:Disassemble Reply'.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack0.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := monitor.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 36] ifFalse: [recoveredBlock4PC := 28].
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack0 := monitor.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack1 := 'SstTag:Disassemble Reply'.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack2 := 1.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            (recoveredBlock4Stack0) event: (recoveredBlock4Stack1) value: (recoveredBlock4Stack2).
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := [:block2800beb0Arg1 | 
    | block2800beb0Local1 block2800beb0Value0 block2800beb0Value1 block2800beb0Value2 block2800beb0Value3 block2800beb0Value4 block2800beb0Value5 block2800beb0Value6 block2800beb0Value7 block2800beb0Value8 block2800beb0Value9 block2800beb0Value10 block2800beb0Value11 block2800beb0Value12 block2800beb0Value13 block2800beb0Value14 block2800beb0Value15 block2800beb0Value16 block2800beb0Value17 block2800beb0Value18 block2800beb0Value19 |
    block2800beb0Value0 := NlsCatSSTG.
    block2800beb0Value1 := (block2800beb0Value0) indexedMsg: (29).
    block2800beb0Value2 := Processor.
    block2800beb0Value3 := (block2800beb0Value2) activeProcess.
    block2800beb0Value4 := (block2800beb0Value3) printString.
    block2800beb0Value5 := block2800beb0Arg1.
    block2800beb0Value6 := (block2800beb0Value5) printString.
    block2800beb0Value7 := block2800beb0Arg1.
    block2800beb0Value8 := (block2800beb0Value7) arguments.
    block2800beb0Value9 := (block2800beb0Value8) printString.
    block2800beb0Value10 := (block2800beb0Value1) bindWith: (block2800beb0Value4) with: (block2800beb0Value6) with: (block2800beb0Value9).
    block2800beb0Local1 := block2800beb0Value10.
    block2800beb0Value11 := block2800beb0Arg1.
    block2800beb0Value12 := SstError.
    block2800beb0Value13 := SstSendError.
    block2800beb0Value14 := Array.
    block2800beb0Value15 := block2800beb0Local1.
    block2800beb0Value16 := block2800beb0Arg1.
    block2800beb0Value17 := (block2800beb0Value14) with: (block2800beb0Value15) with: (block2800beb0Value16).
    block2800beb0Value18 := (block2800beb0Value12) for: (block2800beb0Value13) with: (block2800beb0Value17).
    block2800beb0Value19 := (block2800beb0Value11) exitWith: (block2800beb0Value18).
    block2800beb0Value19
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20025464; bytecode file offset 0x86548"
!SstHttpAssembler methodsFor: 'recovered'!
retrieveBytes: recoveredArg1 from: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := String.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredLocal1 := 1.
    recoveredValue3 := [
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredArg1.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal2.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredBlock18Stack3 := recoveredLocal1.
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack4 := recoveredArg2.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack4 := (recoveredBlock18Stack4) next.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            (recoveredBlock18Stack2) at: (recoveredBlock18Stack3) put: (recoveredBlock18Stack4).
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) + (1).
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredLocal1 := recoveredBlock18Stack2.
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            (recoveredBlock18Stack1 isInteger) ifTrue: [(recoveredBlock18Stack1 > 0) ifTrue: [recoveredBlock18Stack1 := recoveredBlock18Stack1 - 1. recoveredBlock18PC := 30] ifFalse: [recoveredBlock18PC := 59]] ifFalse: [recoveredBlock18PC := 52].
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) + (-1).
            recoveredBlock18PC := 53.
        ].
        recoveredBlock18Step = 53 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 54.
        ].
        recoveredBlock18Step = 54 ifTrue: [
            recoveredBlock18Stack3 := 0.
            recoveredBlock18PC := 56.
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) >= (recoveredBlock18Stack3).
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 30] ifFalse: [recoveredBlock18PC := 59].
        ].
        recoveredBlock18Step = 59 ifTrue: [
            recoveredBlock18PC := 60.
        ].
        recoveredBlock18Step = 60 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 63.
        ].
        recoveredBlock18Step = 63 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    recoveredValue4 := ExError.
    recoveredValue5 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 recoveredBlock66Value4 recoveredBlock66Value5 |
    recoveredBlock66Value0 := recoveredBlock66Arg1.
    recoveredBlock66Value1 := recoveredLocal2.
    recoveredBlock66Value2 := recoveredLocal1.
    recoveredBlock66Value3 := (recoveredBlock66Value2) + (-1).
    recoveredBlock66Value4 := (recoveredBlock66Value1) copyFrom: (1) to: (recoveredBlock66Value3).
    recoveredBlock66Value5 := (recoveredBlock66Value0) exitWith: (recoveredBlock66Value4).
    recoveredBlock66Value5
].
    recoveredValue6 := (recoveredValue3) when: (recoveredValue4) do: (recoveredValue5).
    ^recoveredValue6
! !

"xxx_dyn.ic method 0x20025acc; bytecode file offset 0x86bf0"
!SstHttpAssembler methodsFor: 'recovered'!
errorResponse: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := Locale.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) preferredStringClass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue0) on: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal3 := recoveredValue6.
    recoveredValue7 := recoveredValue5.
    (recoveredValue7) nextPutAll: ('<HTML><HEAD><TITLE>Error ').
    recoveredValue8 := recoveredValue5.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue5.
    (recoveredValue10) nextPutAll: ('</TITLE></HEAD><BODY><H1>Error ').
    recoveredValue11 := recoveredValue5.
    recoveredValue12 := recoveredArg1.
    (recoveredValue11) nextPutAll: (recoveredValue12).
    recoveredValue13 := recoveredValue5.
    (recoveredValue13) nextPutAll: ('</H1><P>').
    recoveredValue14 := recoveredValue5.
    recoveredValue15 := recoveredArg2.
    (recoveredValue14) nextPutAll: (recoveredValue15).
    (recoveredValue5) nextPutAll: ('</P></BODY></HTML>').
    recoveredValue16 := recoveredLocal3.
    recoveredValue17 := (recoveredValue16) contents.
    recoveredValue18 := (recoveredValue17) sstHttpString.
    recoveredLocal2 := recoveredValue18.
    recoveredValue19 := SstHttpResponseHeader.
    recoveredValue20 := (recoveredValue19) new.
    recoveredValue21 := recoveredValue20.
    recoveredLocal1 := recoveredValue21.
    recoveredValue22 := recoveredValue20.
    recoveredValue23 := HttpVersion10.
    (recoveredValue22) version: (recoveredValue23).
    recoveredValue24 := recoveredValue20.
    recoveredValue25 := recoveredArg1.
    (recoveredValue24) status: (recoveredValue25).
    recoveredValue26 := recoveredValue20.
    (recoveredValue26) contentType: ('text/html').
    recoveredValue27 := recoveredLocal2.
    recoveredValue28 := (recoveredValue27) size.
    (recoveredValue20) contentLength: (recoveredValue28).
    recoveredValue29 := transport.
    recoveredValue30 := (recoveredValue29) configuration.
    recoveredValue31 := (recoveredValue30) messageClass.
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := recoveredLocal2.
    recoveredValue34 := (recoveredValue31) header: (recoveredValue32) contents: (recoveredValue33).
    ^recoveredValue34
! !

"xxx_dyn.ic method 0x2002b548; bytecode file offset 0x8c67c"
!SstHttpAssembler methodsFor: 'recovered'!
assembleFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
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
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) transport.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) configuration.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) messageClass.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) new.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local2.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) basicAssembleFrom: (recoveredBlock4Stack1) into: (recoveredBlock4Stack2).
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isSstError.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 32] ifFalse: [recoveredBlock4PC := 65].
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isClient.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 48] ifFalse: [recoveredBlock4PC := 40].
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local2.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) errorObject.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) sstIsMessage.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 48] ifFalse: [recoveredBlock4PC := 50].
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local2.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 50 ifTrue: [
            recoveredBlock4Stack0 := SstError.
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack1 := SstReceiveError.
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 55.
        ].
        recoveredBlock4Step = 55 ifTrue: [
            recoveredBlock4Stack3 := HttpBadRequest.
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            recoveredBlock4Stack4 := recoveredBlock4Local2.
            recoveredBlock4PC := 58.
        ].
        recoveredBlock4Step = 58 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) errorObject.
            recoveredBlock4PC := 60.
        ].
        recoveredBlock4Step = 60 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) errorResponse: (recoveredBlock4Stack3) with: (recoveredBlock4Stack4).
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) for: (recoveredBlock4Stack1) with: (recoveredBlock4Stack2).
            recoveredBlock4PC := 64.
        ].
        recoveredBlock4Step = 64 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 65 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local2.
            recoveredBlock4PC := 66.
        ].
        recoveredBlock4Step = 66 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 69.
        ].
        recoveredBlock4Step = 69 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) peer.
            recoveredBlock4PC := 71.
        ].
        recoveredBlock4Step = 71 ifTrue: [
            (recoveredBlock4Stack0) sender: (recoveredBlock4Stack1).
            recoveredBlock4PC := 73.
        ].
        recoveredBlock4Step = 73 ifTrue: [
            recoveredBlock4Stack0 := 'SstTag:Assemble Message'.
            recoveredBlock4PC := 75.
        ].
        recoveredBlock4Step = 75 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 76.
        ].
        recoveredBlock4Step = 76 ifTrue: [
            recoveredBlock4Stack0 := monitor.
            recoveredBlock4PC := 78.
        ].
        recoveredBlock4Step = 78 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 90] ifFalse: [recoveredBlock4PC := 82].
        ].
        recoveredBlock4Step = 82 ifTrue: [
            recoveredBlock4Stack0 := monitor.
            recoveredBlock4PC := 84.
        ].
        recoveredBlock4Step = 84 ifTrue: [
            recoveredBlock4Stack1 := 'SstTag:Assemble Message'.
            recoveredBlock4PC := 86.
        ].
        recoveredBlock4Step = 86 ifTrue: [
            recoveredBlock4Stack2 := 1.
            recoveredBlock4PC := 88.
        ].
        recoveredBlock4Step = 88 ifTrue: [
            (recoveredBlock4Stack0) event: (recoveredBlock4Stack1) value: (recoveredBlock4Stack2).
            recoveredBlock4PC := 90.
        ].
        recoveredBlock4Step = 90 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local2.
            recoveredBlock4PC := 91.
        ].
        recoveredBlock4Step = 91 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := ExError.
    recoveredValue2 := [:recoveredBlock94Arg1 | 
    | recoveredBlock94Local1 recoveredBlock94Stack0 recoveredBlock94Stack1 recoveredBlock94Stack2 recoveredBlock94Stack3 recoveredBlock94Stack4 recoveredBlock94Stack5 recoveredBlock94Stack6 recoveredBlock94PC recoveredBlock94Step recoveredBlock94Done recoveredBlock94Result |
    recoveredBlock94Stack0 := self.
    recoveredBlock94PC := 100.
    recoveredBlock94Done := false.
    [recoveredBlock94Done not] whileTrue: [
        recoveredBlock94Step := recoveredBlock94PC.
        recoveredBlock94Step = 100 ifTrue: [
            recoveredBlock94Stack1 := recoveredArg1.
            recoveredBlock94PC := 103.
        ].
        recoveredBlock94Step = 103 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) isClient.
            recoveredBlock94PC := 105.
        ].
        recoveredBlock94Step = 105 ifTrue: [
            (recoveredBlock94Stack1) ifTrue: [recoveredBlock94PC := 108] ifFalse: [recoveredBlock94PC := 114].
        ].
        recoveredBlock94Step = 108 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Arg1.
            recoveredBlock94PC := 109.
        ].
        recoveredBlock94Step = 109 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) signal.
            recoveredBlock94PC := 111.
        ].
        recoveredBlock94Step = 111 ifTrue: [
            recoveredBlock94PC := 144.
        ].
        recoveredBlock94Step = 114 ifTrue: [
            recoveredBlock94Stack1 := self.
            recoveredBlock94PC := 115.
        ].
        recoveredBlock94Step = 115 ifTrue: [
            recoveredBlock94Stack2 := HttpInternalServerError.
            recoveredBlock94PC := 117.
        ].
        recoveredBlock94Step = 117 ifTrue: [
            recoveredBlock94Stack3 := '%1<BR>%2'.
            recoveredBlock94PC := 119.
        ].
        recoveredBlock94Step = 119 ifTrue: [
            recoveredBlock94Stack4 := recoveredBlock94Arg1.
            recoveredBlock94PC := 120.
        ].
        recoveredBlock94Step = 120 ifTrue: [
            recoveredBlock94Stack4 := (recoveredBlock94Stack4) description.
            recoveredBlock94PC := 122.
        ].
        recoveredBlock94Step = 122 ifTrue: [
            recoveredBlock94Stack5 := recoveredBlock94Arg1.
            recoveredBlock94PC := 123.
        ].
        recoveredBlock94Step = 123 ifTrue: [
            recoveredBlock94Stack5 := (recoveredBlock94Stack5) arguments.
            recoveredBlock94PC := 125.
        ].
        recoveredBlock94Step = 125 ifTrue: [
            recoveredBlock94Stack5 := (recoveredBlock94Stack5) debugPrintString.
            recoveredBlock94PC := 127.
        ].
        recoveredBlock94Step = 127 ifTrue: [
            recoveredBlock94Stack3 := (recoveredBlock94Stack3) bindWith: (recoveredBlock94Stack4) with: (recoveredBlock94Stack5).
            recoveredBlock94PC := 129.
        ].
        recoveredBlock94Step = 129 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) errorResponse: (recoveredBlock94Stack2) with: (recoveredBlock94Stack3).
            recoveredBlock94PC := 131.
        ].
        recoveredBlock94Step = 131 ifTrue: [
            recoveredBlock94Local1 := recoveredBlock94Stack1.
            recoveredBlock94PC := 132.
        ].
        recoveredBlock94Step = 132 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Arg1.
            recoveredBlock94PC := 133.
        ].
        recoveredBlock94Step = 133 ifTrue: [
            recoveredBlock94Stack2 := SstError.
            recoveredBlock94PC := 135.
        ].
        recoveredBlock94Step = 135 ifTrue: [
            recoveredBlock94Stack3 := SstReceiveError.
            recoveredBlock94PC := 137.
        ].
        recoveredBlock94Step = 137 ifTrue: [
            recoveredBlock94Stack4 := recoveredBlock94Local1.
            recoveredBlock94PC := 138.
        ].
        recoveredBlock94Step = 138 ifTrue: [
            recoveredBlock94Stack2 := (recoveredBlock94Stack2) for: (recoveredBlock94Stack3) with: (recoveredBlock94Stack4).
            recoveredBlock94PC := 140.
        ].
        recoveredBlock94Step = 140 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) exitWith: (recoveredBlock94Stack2).
            recoveredBlock94PC := 142.
        ].
        recoveredBlock94Step = 142 ifTrue: [
            recoveredBlock94Stack2 := nil.
            recoveredBlock94PC := 143.
        ].
        recoveredBlock94Step = 143 ifTrue: [
            recoveredBlock94Local1 := recoveredBlock94Stack2.
            recoveredBlock94PC := 144.
        ].
        recoveredBlock94Step = 144 ifTrue: [
            recoveredBlock94Result := recoveredBlock94Stack1.
            recoveredBlock94Done := true.
        ].
    ].
    recoveredBlock94Result
].
    recoveredValue3 := (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !


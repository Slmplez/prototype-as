"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006a45c; bytecode file offset 0x967a18"
!EtasCebraToolServer methodsFor: 'recovered'!
socket
    | recoveredValue0 |
    recoveredValue0 := socket.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c215c; bytecode file offset 0x9beac8"
!EtasCebraToolServer methodsFor: 'recovered'!
socket: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    socket := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20128578; bytecode file offset 0xa24eb0"
!EtasCebraToolServer methodsFor: 'recovered'!
logSema
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LogSema.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Semaphore.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) forMutualExclusion.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            LogSema := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := LogSema.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012dde8; bytecode file offset 0xa2a6d0"
!EtasCebraToolServer methodsFor: 'recovered'!
shutDown
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) socket.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) socket.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) socket: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024c5e8; bytecode file offset 0xb48ec0"
!EtasCebraToolServer methodsFor: 'recovered'!
log: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logSema.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 |
    recoveredBlock5Value0 := CfsWriteFileStream.
    recoveredBlock5Value1 := (self) class.
    recoveredBlock5Value2 := (recoveredBlock5Value1) logFileName.
    recoveredBlock5Value3 := (recoveredBlock5Value0) openAppend: (recoveredBlock5Value2).
    recoveredBlock5Local1 := recoveredBlock5Value3.
    recoveredBlock5Value4 := recoveredArg1.
    recoveredBlock5Value5 := recoveredBlock5Local1.
    (recoveredBlock5Value4) printOn: (recoveredBlock5Value5).
    recoveredBlock5Value6 := recoveredBlock5Local1.
    (recoveredBlock5Value6) cr.
    recoveredBlock5Value7 := recoveredBlock5Local1.
    recoveredBlock5Value8 := (recoveredBlock5Value7) close.
    recoveredBlock5Value8
].
    (recoveredValue0) critical: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20287f6c; bytecode file offset 0xb84830"
!EtasCebraToolServer methodsFor: 'recovered'!
send: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) socket.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) socket.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) sendAll: (recoveredStack1) length: (recoveredStack2) startingAt: (recoveredStack3) flags: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSciError.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20405db0; bytecode file offset 0xd0268c"
!EtasCebraToolServer methodsFor: 'recovered'!
receive
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) socket.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) recvAll: (recoveredStack1) length: (recoveredStack2) startingAt: (recoveredStack3) flags: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSciError.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) int64At: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) int32At: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 12.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) int32At: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := ByteArray.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) socket.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) recvAll: (recoveredStack1) length: (recoveredStack2) startingAt: (recoveredStack3) flags: (recoveredStack4).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSciError.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := EtasCebraMessage.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) receive: (recoveredStack1) sizeHeader: (recoveredStack2) sizeBody: (recoveredStack3) messageID: (recoveredStack4).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204db668; bytecode file offset 0xdd7f90"
!EtasCebraToolServer methodsFor: 'recovered'!
run
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) class.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) serverCounterLimitExceeded.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 18] ifFalse: [recoveredBlock4PC := 58].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack0 := 'Kli'.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := 'BOSCH_CC'.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) == (recoveredBlock4Stack1).
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) receive.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 56] ifFalse: [recoveredBlock4PC := 32].
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local2.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) answer.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack1 := ErrorHandle.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) new.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack2 := 910.
            recoveredBlock4PC := 42.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Stack3 := 'Client limit exceeded'.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) fill: (recoveredBlock4Stack2) with: (recoveredBlock4Stack3).
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            (recoveredBlock4Stack0) catItem: (recoveredBlock4Stack1).
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 50.
        ].
        recoveredBlock4Step = 50 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) answer.
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) asByteArray.
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            (recoveredBlock4Stack0) send: (recoveredBlock4Stack1).
            recoveredBlock4PC := 56.
        ].
        recoveredBlock4Step = 56 ifTrue: [
            recoveredBlock4Stack0 := false.
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 58.
        ].
        recoveredBlock4Step = 58 ifTrue: [
            recoveredBlock4PC := 106.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 63.
        ].
        recoveredBlock4Step = 63 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) receive.
            recoveredBlock4PC := 65.
        ].
        recoveredBlock4Step = 65 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 66.
        ].
        recoveredBlock4Step = 66 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 67.
        ].
        recoveredBlock4Step = 67 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 76] ifFalse: [recoveredBlock4PC := 70].
        ].
        recoveredBlock4Step = 70 ifTrue: [
            recoveredBlock4Stack0 := false.
            recoveredBlock4PC := 71.
        ].
        recoveredBlock4Step = 71 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 72.
        ].
        recoveredBlock4Step = 72 ifTrue: [
            recoveredBlock4PC := 106.
        ].
        recoveredBlock4Step = 76 ifTrue: [
            recoveredBlock4Stack0 := 'Kk'.
            recoveredBlock4PC := 78.
        ].
        recoveredBlock4Step = 78 ifTrue: [
            recoveredBlock4Stack1 := 'Call_67274'.
            recoveredBlock4PC := 80.
        ].
        recoveredBlock4Step = 80 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) == (recoveredBlock4Stack1).
            recoveredBlock4PC := 81.
        ].
        recoveredBlock4Step = 81 ifTrue: [
            recoveredBlock4PC := 82.
        ].
        recoveredBlock4Step = 82 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local2.
            recoveredBlock4PC := 83.
        ].
        recoveredBlock4Step = 83 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isQuitMessage.
            recoveredBlock4PC := 85.
        ].
        recoveredBlock4Step = 85 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 88] ifFalse: [recoveredBlock4PC := 94].
        ].
        recoveredBlock4Step = 88 ifTrue: [
            recoveredBlock4Stack0 := false.
            recoveredBlock4PC := 89.
        ].
        recoveredBlock4Step = 89 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 90.
        ].
        recoveredBlock4Step = 90 ifTrue: [
            recoveredBlock4PC := 106.
        ].
        recoveredBlock4Step = 94 ifTrue: [
            recoveredBlock4Stack0 := Fassade.
            recoveredBlock4PC := 96.
        ].
        recoveredBlock4Step = 96 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) new.
            recoveredBlock4PC := 98.
        ].
        recoveredBlock4Step = 98 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 99.
        ].
        recoveredBlock4Step = 99 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 100.
        ].
        recoveredBlock4Step = 100 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) socket.
            recoveredBlock4PC := 102.
        ].
        recoveredBlock4Step = 102 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) initWithOrder: (recoveredBlock4Stack1) socket: (recoveredBlock4Stack2).
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            (recoveredBlock4Stack0) start.
            recoveredBlock4PC := 106.
        ].
        recoveredBlock4Step = 106 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 107.
        ].
        recoveredBlock4Step = 107 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 62] ifFalse: [recoveredBlock4PC := 109].
        ].
        recoveredBlock4Step = 109 ifTrue: [
            recoveredBlock4Stack0 := 'Kk'.
            recoveredBlock4PC := 111.
        ].
        recoveredBlock4Step = 111 ifTrue: [
            recoveredBlock4Stack1 := 'Call_67274'.
            recoveredBlock4PC := 113.
        ].
        recoveredBlock4Step = 113 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) == (recoveredBlock4Stack1).
            recoveredBlock4PC := 114.
        ].
        recoveredBlock4Step = 114 ifTrue: [
            recoveredBlock4PC := 115.
        ].
        recoveredBlock4Step = 115 ifTrue: [
            recoveredBlock4Stack0 := [
    | recoveredBlock4Block115Stack0 recoveredBlock4Block115Stack1 recoveredBlock4Block115Stack2 recoveredBlock4Block115Stack3 recoveredBlock4Block115PC recoveredBlock4Block115Step recoveredBlock4Block115Done recoveredBlock4Block115Result |
    recoveredBlock4Block115Stack0 := self.
    recoveredBlock4Block115PC := 122.
    recoveredBlock4Block115Done := false.
    [recoveredBlock4Block115Done not] whileTrue: [
        recoveredBlock4Block115Step := recoveredBlock4Block115PC.
        recoveredBlock4Block115Step = 122 ifTrue: [
            recoveredBlock4Block115Stack1 := 'Kk'.
            recoveredBlock4Block115PC := 124.
        ].
        recoveredBlock4Block115Step = 124 ifTrue: [
            recoveredBlock4Block115Stack2 := 'Call_70113'.
            recoveredBlock4Block115PC := 126.
        ].
        recoveredBlock4Block115Step = 126 ifTrue: [
            recoveredBlock4Block115Stack1 := (recoveredBlock4Block115Stack1) == (recoveredBlock4Block115Stack2).
            recoveredBlock4Block115PC := 127.
        ].
        recoveredBlock4Block115Step = 127 ifTrue: [
            recoveredBlock4Block115PC := 128.
        ].
        recoveredBlock4Block115Step = 128 ifTrue: [
            recoveredBlock4Block115Stack0 := (recoveredBlock4Block115Stack0) class.
            recoveredBlock4Block115PC := 129.
        ].
        recoveredBlock4Block115Step = 129 ifTrue: [
            (recoveredBlock4Block115Stack0) decServerCounter.
            recoveredBlock4Block115PC := 131.
        ].
        recoveredBlock4Block115Step = 131 ifTrue: [
            recoveredBlock4Block115Stack0 := self.
            recoveredBlock4Block115PC := 132.
        ].
        recoveredBlock4Block115Step = 132 ifTrue: [
            (recoveredBlock4Block115Stack0) shutDown.
            recoveredBlock4Block115PC := 134.
        ].
        recoveredBlock4Block115Step = 134 ifTrue: [
            recoveredBlock4Block115Stack0 := nil.
            recoveredBlock4Block115PC := 135.
        ].
        recoveredBlock4Block115Step = 135 ifTrue: [
            recoveredBlock4Block115Stack1 := self.
            recoveredBlock4Block115PC := 136.
        ].
        recoveredBlock4Block115Step = 136 ifTrue: [
            recoveredBlock4Block115Stack1 := (recoveredBlock4Block115Stack1) class.
            recoveredBlock4Block115PC := 137.
        ].
        recoveredBlock4Block115Step = 137 ifTrue: [
            recoveredBlock4Block115Stack1 := (recoveredBlock4Block115Stack1) serverCounter.
            recoveredBlock4Block115PC := 139.
        ].
        recoveredBlock4Block115Step = 139 ifTrue: [
            recoveredBlock4Block115Stack2 := 0.
            recoveredBlock4Block115PC := 141.
        ].
        recoveredBlock4Block115Step = 141 ifTrue: [
            recoveredBlock4Block115Stack1 := (recoveredBlock4Block115Stack1) = (recoveredBlock4Block115Stack2).
            recoveredBlock4Block115PC := 142.
        ].
        recoveredBlock4Block115Step = 142 ifTrue: [
            (recoveredBlock4Block115Stack1) ifTrue: [recoveredBlock4Block115PC := 146] ifFalse: [recoveredBlock4Block115PC := 151].
        ].
        recoveredBlock4Block115Step = 146 ifTrue: [
            recoveredBlock4Block115PC := 147.
        ].
        recoveredBlock4Block115Step = 147 ifTrue: [
            recoveredBlock4Block115Stack0 := SGObjectHandle.
            recoveredBlock4Block115PC := 149.
        ].
        recoveredBlock4Block115Step = 149 ifTrue: [
            recoveredBlock4Block115Stack0 := (recoveredBlock4Block115Stack0) initObjectTable.
            recoveredBlock4Block115PC := 151.
        ].
        recoveredBlock4Block115Step = 151 ifTrue: [
            recoveredBlock4Block115Result := recoveredBlock4Block115Stack0.
            recoveredBlock4Block115Done := true.
        ].
    ].
    recoveredBlock4Block115Result
].
            recoveredBlock4PC := 152.
        ].
        recoveredBlock4Step = 152 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) critical.
            recoveredBlock4PC := 154.
        ].
        recoveredBlock4Step = 154 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) forkNamed: ('Etas Cebra Process').
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200666ac; bytecode file offset 0x963428"
!SGToolServer methodsFor: 'recovered'!
waitingSocket
    | recoveredValue0 |
    recoveredValue0 := waitingSocket.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067284; bytecode file offset 0x9646f8"
!SGToolServer methodsFor: 'recovered'!
waitingPort
    | recoveredValue0 |
    recoveredValue0 := waitingPort.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200681d4; bytecode file offset 0x965b90"
!SGToolServer methodsFor: 'recovered'!
tool
    | recoveredValue0 |
    recoveredValue0 := tool.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069800; bytecode file offset 0x966bdc"
!SGToolServer methodsFor: 'recovered'!
isActive
    | recoveredValue0 |
    recoveredValue0 := active.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bd31c; bytecode file offset 0x9b9c04"
!SGToolServer methodsFor: 'recovered'!
promptErrorCantStartToolServer: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) waitingPort.
    (recoveredValue0) promptErrorCantStartToolServer: (recoveredValue1) onPort: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200be05c; bytecode file offset 0x9bb178"
!SGToolServer methodsFor: 'recovered'!
waitingSocket: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    waitingSocket := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bed40; bytecode file offset 0x9bc0b4"
!SGToolServer methodsFor: 'recovered'!
waitingPort: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    waitingPort := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c00dc; bytecode file offset 0x9bd228"
!SGToolServer methodsFor: 'recovered'!
tool: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tool := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20104734; bytecode file offset 0xa00ff8"
!SGToolServer methodsFor: 'recovered'!
setInactive
    | recoveredValue0 |
    recoveredValue0 := EtasGeneralDllApi.
    (recoveredValue0) setServerModeCompatibleUserRegKey: ('ToolApiPort') string: ('').
    active := false.
    ^self
! !

"ASDBase.ic method 0x20114994; bytecode file offset 0xa11260"
!SGToolServer methodsFor: 'recovered'!
generateSocketAddress
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SciSocketAddress.
    recoveredValue1 := SGToolServer.
    recoveredValue2 := (recoveredValue1) addressString.
    recoveredValue3 := (recoveredValue0) fromString: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) waitingPort.
    (recoveredValue4) port: (recoveredValue5).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201188dc; bytecode file offset 0xa151a4"
!SGToolServer methodsFor: 'recovered'!
setActive
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    active := true.
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (self) waitingPort.
    recoveredValue2 := (recoveredValue1) asString.
    (recoveredValue0) setServerModeCompatibleUserRegKey: ('ToolApiPort') string: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2014a08c; bytecode file offset 0xa46950"
!SGToolServer methodsFor: 'recovered'!
wait
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateSocketAddress.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSciError.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) waitingSocket.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) accept: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202315fc; bytecode file offset 0xb2ded0"
!SGToolServer methodsFor: 'recovered'!
shutDown
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) waitingSocket.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    (self) waitingSocket: (nil).
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredBlock5Value0.
    (recoveredBlock5Value1) shutDown: (2).
    recoveredBlock5Value2 := (recoveredBlock5Value0) close.
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) class.
    recoveredValue3 := (self) tool.
    (recoveredValue2) removeFromServerList: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2027c058; bytecode file offset 0xb78934"
!SGToolServer methodsFor: 'recovered'!
initialize: recoveredArg1 onPort: recoveredArg2
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
            (recoveredStack0) tool: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) waitingPort: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := SciSocket.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := AFINET.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := SOCKSTREAM.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := IP.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) socket: (recoveredStack1) type: (recoveredStack2) protocol: (recoveredStack3).
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
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) waitingSocket: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) setInactive.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034f518; bytecode file offset 0xc4bdec"
!SGToolServer methodsFor: 'recovered'!
connect
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateSocketAddress.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSciError.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) waitingSocket.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) waitingSocket.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := SOREUSEADDR.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) setSockOpt: (recoveredStack1) optionValue: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSciError.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) waitingSocket.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) bind: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSciError.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) waitingSocket.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) listen: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSciError.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) waitingSocket.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046a044; bytecode file offset 0xd66954"
!SGToolServer methodsFor: 'recovered'!
start
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isActive.
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
            (recoveredStack0) setActive.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Local3 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) connect.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack1.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isSciError.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 28] ifFalse: [recoveredBlock13PC := 36].
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local3.
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) promptErrorCantStartToolServer: (recoveredBlock13Stack1).
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13PC := 96.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack0 := true.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack0.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13PC := 85.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack0 := [
    | recoveredBlock13Block42Value0 |
    recoveredBlock13Block42Value0 := (self) wait.
    recoveredBlock13Block42Value0
].
            recoveredBlock13PC := 51.
        ].
        recoveredBlock13Step = 51 ifTrue: [
            recoveredBlock13Stack1 := [
    | block28100fa8Value0 block28100fa8Value1 |
    block28100fa8Value0 := SciSocketManager.
    block28100fa8Value1 := (block28100fa8Value0) getLastError.
    block28100fa8Value1
].
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13PC := 61.
        ].
        recoveredBlock13Step = 61 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) valueIfFail: (recoveredBlock13Stack1).
            recoveredBlock13PC := 63.
        ].
        recoveredBlock13Step = 63 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 64.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local1.
            recoveredBlock13PC := 65.
        ].
        recoveredBlock13Step = 65 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isSciError.
            recoveredBlock13PC := 66.
        ].
        recoveredBlock13Step = 66 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 70] ifFalse: [recoveredBlock13PC := 76].
        ].
        recoveredBlock13Step = 70 ifTrue: [
            recoveredBlock13Stack0 := false.
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack0.
            recoveredBlock13PC := 72.
        ].
        recoveredBlock13Step = 72 ifTrue: [
            recoveredBlock13PC := 83.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            recoveredBlock13Stack0 := EtasCebraToolServer.
            recoveredBlock13PC := 78.
        ].
        recoveredBlock13Step = 78 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local1.
            recoveredBlock13PC := 79.
        ].
        recoveredBlock13Step = 79 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) create: (recoveredBlock13Stack1).
            recoveredBlock13PC := 81.
        ].
        recoveredBlock13Step = 81 ifTrue: [
            (recoveredBlock13Stack0) run.
            recoveredBlock13PC := 83.
        ].
        recoveredBlock13Step = 83 ifTrue: [
            recoveredBlock13Stack0 := nil.
            recoveredBlock13PC := 84.
        ].
        recoveredBlock13Step = 84 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 85.
        ].
        recoveredBlock13Step = 85 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local2.
            recoveredBlock13PC := 86.
        ].
        recoveredBlock13Step = 86 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 42] ifFalse: [recoveredBlock13PC := 88].
        ].
        recoveredBlock13Step = 88 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 89.
        ].
        recoveredBlock13Step = 89 ifTrue: [
            (recoveredBlock13Stack0) shutDown.
            recoveredBlock13PC := 91.
        ].
        recoveredBlock13Step = 91 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 92.
        ].
        recoveredBlock13Step = 92 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) setInactive.
            recoveredBlock13PC := 94.
        ].
        recoveredBlock13Step = 94 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 95.
        ].
        recoveredBlock13Step = 95 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 96.
        ].
        recoveredBlock13Step = 96 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) activePriority.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) forkAt: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'Etas Cebra Process ['.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) tool.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := ']'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


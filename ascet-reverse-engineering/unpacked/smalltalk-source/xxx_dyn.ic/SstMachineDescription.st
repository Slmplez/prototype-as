"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000588; bytecode file offset 0x619a4"
!SstMachineDescription methodsFor: 'recovered'!
asMachine
    | recoveredValue0 |
    recoveredValue0 := (self) shouldNotImplement.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20002b40; bytecode file offset 0x63c2c"
!SstMachineDescription methodsFor: 'recovered'!
handlerFor: recoveredArg1
    (self) shouldNotImplement.
    ^self
! !

"xxx_dyn.ic method 0x20002b58; bytecode file offset 0x63c2c"
!SstMachineDescription methodsFor: 'recovered'!
handlerOn: recoveredArg1
    (self) shouldNotImplement.
    ^self
! !

"xxx_dyn.ic method 0x20007810; bytecode file offset 0x688dc"
!SstMachineDescription methodsFor: 'recovered'!
remoteHandlerFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SstRemoteInvocationHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := context.
    recoveredValue3 := (recoveredValue0) to: (recoveredValue1) in: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x2000e288; bytecode file offset 0x6f358"
!SstMachineDescription methodsFor: 'recovered'!
asRemoteMachine
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildRemoteMachine.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSstError.
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
            recoveredStack0 := context.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) addMachine: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000fec0; bytecode file offset 0x70f90"
!SstMachineDescription methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPut: ($|).
    recoveredValue1 := recoveredArg1.
    super printOn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) nextPut: ($|).
    ^self
! !

"xxx_dyn.ic method 0x20011d18; bytecode file offset 0x72df4"
!SstMachineDescription methodsFor: 'recovered'!
localHandlerFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SstInvocationHandler.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) configurationFor: (recoveredStack2).
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
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := context.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) space.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) space: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) instantiateOn: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2002687c; bytecode file offset 0x8796c"
!SstMachineDescription methodsFor: 'recovered'!
buildRemoteMachine
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := handlers.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := SstRemoteEndpoint.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) fromUrl: (recoveredBlock12Stack3).
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack3.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isSstError.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 47] ifFalse: [recoveredBlock12PC := 30].
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal2.
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Local1.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) includes: (recoveredBlock12Stack3).
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 47] ifFalse: [recoveredBlock12PC := 40].
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local1.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Local1 recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59Stack4 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 67.
        ].
        recoveredBlock59Step = 67 ifTrue: [
            recoveredBlock59Stack2 := self.
            recoveredBlock59PC := 68.
        ].
        recoveredBlock59Step = 68 ifTrue: [
            recoveredBlock59Stack3 := recoveredBlock59Arg1.
            recoveredBlock59PC := 69.
        ].
        recoveredBlock59Step = 69 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) remoteHandlerFor: (recoveredBlock59Stack3).
            recoveredBlock59PC := 71.
        ].
        recoveredBlock59Step = 71 ifTrue: [
            recoveredBlock59Stack3 := recoveredBlock59Stack2.
            recoveredBlock59PC := 72.
        ].
        recoveredBlock59Step = 72 ifTrue: [
            recoveredBlock59Local1 := recoveredBlock59Stack3.
            recoveredBlock59PC := 73.
        ].
        recoveredBlock59Step = 73 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) isSstError.
            recoveredBlock59PC := 75.
        ].
        recoveredBlock59Step = 75 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 85] ifFalse: [recoveredBlock59PC := 78].
        ].
        recoveredBlock59Step = 78 ifTrue: [
            recoveredBlock59PC := 79.
        ].
        recoveredBlock59Step = 79 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal1.
            recoveredBlock59PC := 82.
        ].
        recoveredBlock59Step = 82 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Local1.
            recoveredBlock59PC := 83.
        ].
        recoveredBlock59Step = 83 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) add: (recoveredBlock59Stack2).
            recoveredBlock59PC := 85.
        ].
        recoveredBlock59Step = 85 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := SstRemoteMachine.
    recoveredValue9 := name.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue8) named: (recoveredValue9) withHandlers: (recoveredValue10).
    ^recoveredValue11
! !

"xxx_dyn.ic method 0x20028eec; bytecode file offset 0x89fe4"
!SstMachineDescription methodsFor: 'recovered'!
asLocalMachine
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := handlers.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := SstLocalEndpoint.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) fromUrl: (recoveredBlock12Stack2).
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack2.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) isSstError.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 30] ifFalse: [recoveredBlock12PC := 32].
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Local1.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal2.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Local1.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) includes: (recoveredBlock12Stack3).
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 49] ifFalse: [recoveredBlock12PC := 42].
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 46.
        ].
        recoveredBlock12Step = 46 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local1.
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 49.
        ].
        recoveredBlock12Step = 49 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Local1 recoveredBlock61Stack0 recoveredBlock61Stack1 recoveredBlock61Stack2 recoveredBlock61PC recoveredBlock61Step recoveredBlock61Done recoveredBlock61Result |
    recoveredBlock61Stack0 := self.
    recoveredBlock61PC := 68.
    recoveredBlock61Done := false.
    [recoveredBlock61Done not] whileTrue: [
        recoveredBlock61Step := recoveredBlock61PC.
        recoveredBlock61Step = 68 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Arg1.
            recoveredBlock61PC := 69.
        ].
        recoveredBlock61Step = 69 ifTrue: [
            recoveredBlock61Stack0 := (recoveredBlock61Stack0) localHandlerFor: (recoveredBlock61Stack1).
            recoveredBlock61PC := 71.
        ].
        recoveredBlock61Step = 71 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Stack0.
            recoveredBlock61PC := 72.
        ].
        recoveredBlock61Step = 72 ifTrue: [
            recoveredBlock61Local1 := recoveredBlock61Stack1.
            recoveredBlock61PC := 73.
        ].
        recoveredBlock61Step = 73 ifTrue: [
            recoveredBlock61Stack0 := (recoveredBlock61Stack0) isSstError.
            recoveredBlock61PC := 75.
        ].
        recoveredBlock61Step = 75 ifTrue: [
            (recoveredBlock61Stack0) ifTrue: [recoveredBlock61PC := 78] ifFalse: [recoveredBlock61PC := 80].
        ].
        recoveredBlock61Step = 78 ifTrue: [
            recoveredBlock61Stack0 := recoveredBlock61Local1.
            recoveredBlock61PC := 79.
        ].
        recoveredBlock61Step = 79 ifTrue: [
            ^recoveredBlock61Stack0
        ].
        recoveredBlock61Step = 80 ifTrue: [
            recoveredBlock61Stack0 := recoveredLocal1.
            recoveredBlock61PC := 83.
        ].
        recoveredBlock61Step = 83 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Local1.
            recoveredBlock61PC := 84.
        ].
        recoveredBlock61Step = 84 ifTrue: [
            recoveredBlock61Stack0 := (recoveredBlock61Stack0) add: (recoveredBlock61Stack1).
            recoveredBlock61PC := 86.
        ].
        recoveredBlock61Step = 86 ifTrue: [
            recoveredBlock61Result := recoveredBlock61Stack0.
            recoveredBlock61Done := true.
        ].
    ].
    recoveredBlock61Result
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := SstLocalMachine.
    recoveredValue9 := name.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue8) named: (recoveredValue9) withHandlers: (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := context.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue12) addMachine: (recoveredValue13).
    recoveredValue14 := context.
    recoveredValue15 := recoveredLocal1.
    (recoveredValue14) machine: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"HwAccessETarget.ic method 0x20000064; bytecode file offset 0xcac4"
!ASDHwAccessETargetSystem class methodsFor: 'recovered'!
typeIdRealTimeSimulation
    ^16896
! !

"HwAccessETarget.ic method 0x20000070; bytecode file offset 0xcac4"
!ASDHwAccessETargetSystem class methodsFor: 'recovered'!
accessIndirect
    ^'indirect'
! !

"HwAccessETarget.ic method 0x2000007c; bytecode file offset 0xcac4"
!ASDHwAccessETargetSystem class methodsFor: 'recovered'!
typeIdPCRP
    ^18176
! !

"HwAccessETarget.ic method 0x200000a0; bytecode file offset 0xcac4"
!ASDHwAccessETargetSystem class methodsFor: 'recovered'!
typeIdEs910DotThree
    ^17408
! !

"HwAccessETarget.ic method 0x200000c4; bytecode file offset 0xcac4"
!ASDHwAccessETargetSystem class methodsFor: 'recovered'!
accessDirect
    ^'direct'
! !

"HwAccessETarget.ic method 0x200004dc; bytecode file offset 0xcec0"
!ASDHwAccessETargetSystem class methodsFor: 'recovered'!
typeIdEs1120
    ^6912
! !

"HwAccessETarget.ic method 0x200004f0; bytecode file offset 0xced4"
!ASDHwAccessETargetSystem class methodsFor: 'recovered'!
typeIdEs1130
    ^7168
! !

"HwAccessETarget.ic method 0x20000504; bytecode file offset 0xcee8"
!ASDHwAccessETargetSystem class methodsFor: 'recovered'!
typeIdEs1135
    ^13056
! !

"HwAccessETarget.ic method 0x20000518; bytecode file offset 0xcefc"
!ASDHwAccessETargetSystem class methodsFor: 'recovered'!
typeIdEs910
    ^15360
! !

"HwAccessETarget.ic method 0x2000052c; bytecode file offset 0xcf10"
!ASDHwAccessETargetSystem class methodsFor: 'recovered'!
typeIdVirtualEcu
    ^16128
! !

"HwAccessETarget.ic method 0x20003048; bytecode file offset 0xfa74"
!ASDHwAccessETargetSystem class methodsFor: 'recovered'!
typeStringDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) typeIdEs1120.
    (recoveredValue2) at: (recoveredValue3) put: ('ES1120').
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) typeIdEs1130.
    (recoveredValue4) at: (recoveredValue5) put: ('ES1130').
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) typeIdEs1135.
    (recoveredValue6) at: (recoveredValue7) put: ('ES1135').
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) typeIdEs910.
    (recoveredValue8) at: (recoveredValue9) put: ('ES910').
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) typeIdEs910DotThree.
    (recoveredValue10) at: (recoveredValue11) put: ('ES910').
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) typeIdVirtualEcu.
    (recoveredValue12) at: (recoveredValue13) put: ('INTECRIO Virtual Prototyping Target').
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) typeIdRealTimeSimulation.
    (recoveredValue14) at: (recoveredValue15) put: ('Real-Time Simulation').
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) typeIdPCRP.
    (recoveredValue16) at: (recoveredValue17) put: ('RTPRO-PC').
    ^recoveredValue1
! !

"HwAccessETarget.ic method 0x200037b8; bytecode file offset 0x101b8"
!ASDHwAccessETargetSystem class methodsFor: 'recovered'!
ipAddressAsString: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := '<unknown>'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 4294967296.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := -24.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitShift: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 255.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := -16.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitShift: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 255.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitAnd: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := -8.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitShift: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 255.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitAnd: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := 255.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitAnd: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000f74; bytecode file offset 0x6209c"
!SstApplicationContext class methodsFor: 'recovered'!
contexts
    | recoveredValue0 |
    recoveredValue0 := Contexts.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20005630; bytecode file offset 0x66a34"
!SstApplicationContext class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20005c4c; bytecode file offset 0x66d78"
!SstApplicationContext class methodsFor: 'recovered'!
contextNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) contextNamed: (recoveredValue0) ifNone: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20007184; bytecode file offset 0x68250"
!SstApplicationContext class methodsFor: 'recovered'!
contextNamed: recoveredArg1 ifNone: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Contexts.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200091c4; bytecode file offset 0x6a298"
!SstApplicationContext class methodsFor: 'recovered'!
removeContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Contexts.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue0) removeKey: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x2000a684; bytecode file offset 0x6b754"
!SstApplicationContext class methodsFor: 'recovered'!
setupAfterLoadNonInherited
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Contexts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            Contexts := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000c2bc; bytecode file offset 0x6d38c"
!SstApplicationContext class methodsFor: 'recovered'!
addContext: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Contexts.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x200110f4; bytecode file offset 0x72210"
!SstApplicationContext class methodsFor: 'recovered'!
cleanUpOnRestart
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Contexts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Contexts.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block2800ac68Arg1 | 
    | block2800ac68Value0 block2800ac68Value1 |
    block2800ac68Value0 := block2800ac68Arg1.
    block2800ac68Value1 := (block2800ac68Value0) cleanUpOnRestart.
    block2800ac68Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20011124; bytecode file offset 0x72210"
!SstApplicationContext class methodsFor: 'recovered'!
shutDownAll
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Contexts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Contexts.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block2800acb0Arg1 | 
    | block2800acb0Value0 block2800acb0Value1 |
    block2800acb0Value0 := block2800acb0Arg1.
    block2800acb0Value1 := (block2800acb0Value0) shutDown.
    block2800acb0Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001113c; bytecode file offset 0x72210"
!SstApplicationContext class methodsFor: 'recovered'!
startUpOnRestart
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Contexts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Contexts.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block2800acd4Arg1 | 
    | block2800acd4Value0 block2800acd4Value1 |
    block2800acd4Value0 := block2800acd4Arg1.
    block2800acd4Value1 := (block2800acd4Value0) startUpOnRestart.
    block2800acd4Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20011e2c; bytecode file offset 0x72ef8"
!SstApplicationContext class methodsFor: 'recovered'!
removeContextNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (self) contextNamed: (recoveredValue0) ifNone: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) removeContext: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x200142d0; bytecode file offset 0x753b0"
!SstApplicationContext class methodsFor: 'recovered'!
clearAll
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Contexts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Contexts.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block2800ae18Arg1 | 
    | block2800ae18Value0 block2800ae18Value1 |
    block2800ae18Value0 := block2800ae18Arg1.
    block2800ae18Value1 := (block2800ae18Value0) clear.
    block2800ae18Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            Contexts := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20016078; bytecode file offset 0x77160"
!SstApplicationContext class methodsFor: 'recovered'!
createContextNamed: recoveredArg1
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
            recoveredStack2 := [].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) contextNamed: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := ExSstSetupError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := NlsCatSSTG.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 61.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) addContext: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2002d3bc; bytecode file offset 0x8e4e4"
!SstApplicationContext class methodsFor: 'recovered'!
createContextNamed: recoveredArg1 at: recoveredArg2 using: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) contextNamed: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := ExSstSetupError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := NlsCatSSTG.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 61.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) sstAsLocalEndpoint.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSstError.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := ExSstSetupError.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) raise: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock46Stack0 recoveredBlock46Stack1 recoveredBlock46Stack2 recoveredBlock46Stack3 recoveredBlock46Stack4 recoveredBlock46PC recoveredBlock46Step recoveredBlock46Done recoveredBlock46Result |
    recoveredBlock46Stack0 := self.
    recoveredBlock46PC := 52.
    recoveredBlock46Done := false.
    [recoveredBlock46Done not] whileTrue: [
        recoveredBlock46Step := recoveredBlock46PC.
        recoveredBlock46Step = 52 ifTrue: [
            recoveredBlock46Stack1 := recoveredLocal1.
            recoveredBlock46PC := 55.
        ].
        recoveredBlock46Step = 55 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) startUp.
            recoveredBlock46PC := 57.
        ].
        recoveredBlock46Step = 57 ifTrue: [
            recoveredBlock46Stack2 := recoveredBlock46Stack1.
            recoveredBlock46PC := 58.
        ].
        recoveredBlock46Step = 58 ifTrue: [
            recoveredLocal2 := recoveredBlock46Stack2.
            recoveredBlock46PC := 61.
        ].
        recoveredBlock46Step = 61 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) isSstError.
            recoveredBlock46PC := 63.
        ].
        recoveredBlock46Step = 63 ifTrue: [
            (recoveredBlock46Stack1) ifTrue: [recoveredBlock46PC := 66] ifFalse: [recoveredBlock46PC := 70].
        ].
        recoveredBlock46Step = 66 ifTrue: [
            recoveredBlock46Stack1 := recoveredLocal2.
            recoveredBlock46PC := 69.
        ].
        recoveredBlock46Step = 69 ifTrue: [
            ^recoveredBlock46Stack1
        ].
        recoveredBlock46Step = 70 ifTrue: [
            recoveredBlock46Stack1 := recoveredLocal1.
            recoveredBlock46PC := 73.
        ].
        recoveredBlock46Step = 73 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) transport.
            recoveredBlock46PC := 75.
        ].
        recoveredBlock46Step = 75 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) preferredAccessibleUrl.
            recoveredBlock46PC := 77.
        ].
        recoveredBlock46Step = 77 ifTrue: [
            recoveredLocal5 := recoveredBlock46Stack1.
            recoveredBlock46PC := 80.
        ].
        recoveredBlock46Step = 80 ifTrue: [
            recoveredBlock46Stack1 := recoveredLocal5.
            recoveredBlock46PC := 83.
        ].
        recoveredBlock46Step = 83 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) printString.
            recoveredBlock46PC := 85.
        ].
        recoveredBlock46Step = 85 ifTrue: [
            recoveredLocal4 := recoveredBlock46Stack1.
            recoveredBlock46PC := 88.
        ].
        recoveredBlock46Step = 88 ifTrue: [
            recoveredBlock46Stack1 := recoveredArg1.
            recoveredBlock46PC := 91.
        ].
        recoveredBlock46Step = 91 ifTrue: [
            recoveredBlock46Stack0 := (recoveredBlock46Stack0) createContextNamed: (recoveredBlock46Stack1).
            recoveredBlock46PC := 93.
        ].
        recoveredBlock46Step = 93 ifTrue: [
            recoveredBlock46Stack1 := recoveredBlock46Stack0.
            recoveredBlock46PC := 94.
        ].
        recoveredBlock46Step = 94 ifTrue: [
            recoveredLocal3 := recoveredBlock46Stack1.
            recoveredBlock46PC := 97.
        ].
        recoveredBlock46Step = 97 ifTrue: [
            recoveredBlock46Stack1 := recoveredBlock46Stack0.
            recoveredBlock46PC := 98.
        ].
        recoveredBlock46Step = 98 ifTrue: [
            recoveredBlock46Stack2 := recoveredLocal4.
            recoveredBlock46PC := 101.
        ].
        recoveredBlock46Step = 101 ifTrue: [
            recoveredBlock46Stack3 := #().
            recoveredBlock46PC := 103.
        ].
        recoveredBlock46Step = 103 ifTrue: [
            (recoveredBlock46Stack1) addSpace: (recoveredBlock46Stack2) at: (recoveredBlock46Stack3).
            recoveredBlock46PC := 105.
        ].
        recoveredBlock46Step = 105 ifTrue: [
            recoveredBlock46Stack1 := recoveredLocal4.
            recoveredBlock46PC := 108.
        ].
        recoveredBlock46Step = 108 ifTrue: [
            recoveredBlock46Stack2 := recoveredArg3.
            recoveredBlock46PC := 111.
        ].
        recoveredBlock46Step = 111 ifTrue: [
            (recoveredBlock46Stack0) setupFor: (recoveredBlock46Stack1) using: (recoveredBlock46Stack2).
            recoveredBlock46PC := 113.
        ].
        recoveredBlock46Step = 113 ifTrue: [
            recoveredBlock46Stack0 := SstInvocationHandler.
            recoveredBlock46PC := 115.
        ].
        recoveredBlock46Step = 115 ifTrue: [
            recoveredBlock46Stack1 := recoveredLocal1.
            recoveredBlock46PC := 118.
        ].
        recoveredBlock46Step = 118 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) sstAsUrl.
            recoveredBlock46PC := 120.
        ].
        recoveredBlock46Step = 120 ifTrue: [
            recoveredBlock46Stack0 := (recoveredBlock46Stack0) configurationFor: (recoveredBlock46Stack1).
            recoveredBlock46PC := 122.
        ].
        recoveredBlock46Step = 122 ifTrue: [
            recoveredBlock46Stack1 := recoveredBlock46Stack0.
            recoveredBlock46PC := 123.
        ].
        recoveredBlock46Step = 123 ifTrue: [
            recoveredLocal2 := recoveredBlock46Stack1.
            recoveredBlock46PC := 126.
        ].
        recoveredBlock46Step = 126 ifTrue: [
            recoveredBlock46Stack0 := (recoveredBlock46Stack0) isSstError.
            recoveredBlock46PC := 128.
        ].
        recoveredBlock46Step = 128 ifTrue: [
            (recoveredBlock46Stack0) ifTrue: [recoveredBlock46PC := 132] ifFalse: [recoveredBlock46PC := 140].
        ].
        recoveredBlock46Step = 132 ifTrue: [
            recoveredBlock46Stack0 := recoveredLocal2.
            recoveredBlock46PC := 135.
        ].
        recoveredBlock46Step = 135 ifTrue: [
            recoveredBlock46Stack1 := ExSstSetupError.
            recoveredBlock46PC := 137.
        ].
        recoveredBlock46Step = 137 ifTrue: [
            recoveredBlock46Stack0 := (recoveredBlock46Stack0) raise: (recoveredBlock46Stack1).
            recoveredBlock46PC := 139.
        ].
        recoveredBlock46Step = 139 ifTrue: [
            ^recoveredBlock46Stack0
        ].
        recoveredBlock46Step = 140 ifTrue: [
            recoveredBlock46Stack0 := recoveredLocal3.
            recoveredBlock46PC := 143.
        ].
        recoveredBlock46Step = 143 ifTrue: [
            recoveredBlock46Stack0 := (recoveredBlock46Stack0) machine.
            recoveredBlock46PC := 145.
        ].
        recoveredBlock46Step = 145 ifTrue: [
            recoveredBlock46Stack1 := recoveredLocal2.
            recoveredBlock46PC := 148.
        ].
        recoveredBlock46Step = 148 ifTrue: [
            recoveredBlock46Stack2 := recoveredLocal1.
            recoveredBlock46PC := 151.
        ].
        recoveredBlock46Step = 151 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) instantiateOn: (recoveredBlock46Stack2).
            recoveredBlock46PC := 153.
        ].
        recoveredBlock46Step = 153 ifTrue: [
            (recoveredBlock46Stack0) addHandler: (recoveredBlock46Stack1).
            recoveredBlock46PC := 155.
        ].
        recoveredBlock46Step = 155 ifTrue: [
            recoveredBlock46Stack0 := recoveredLocal3.
            recoveredBlock46PC := 158.
        ].
        recoveredBlock46Step = 158 ifTrue: [
            recoveredBlock46Result := recoveredBlock46Stack0.
            recoveredBlock46Done := true.
        ].
    ].
    recoveredBlock46Result
].
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock159Stack0 recoveredBlock159Stack1 recoveredBlock159Stack2 recoveredBlock159Stack3 recoveredBlock159PC recoveredBlock159Step recoveredBlock159Done recoveredBlock159Result |
    recoveredBlock159Stack0 := self.
    recoveredBlock159PC := 166.
    recoveredBlock159Done := false.
    [recoveredBlock159Done not] whileTrue: [
        recoveredBlock159Step := recoveredBlock159PC.
        recoveredBlock159Step = 166 ifTrue: [
            recoveredBlock159Stack1 := recoveredLocal1.
            recoveredBlock159PC := 169.
        ].
        recoveredBlock159Step = 169 ifTrue: [
            (recoveredBlock159Stack1 == nil) ifTrue: [recoveredBlock159PC := 177] ifFalse: [recoveredBlock159PC := 172].
        ].
        recoveredBlock159Step = 172 ifTrue: [
            recoveredBlock159Stack1 := recoveredLocal1.
            recoveredBlock159PC := 175.
        ].
        recoveredBlock159Step = 175 ifTrue: [
            (recoveredBlock159Stack1) clear.
            recoveredBlock159PC := 177.
        ].
        recoveredBlock159Step = 177 ifTrue: [
            recoveredBlock159Stack1 := nil.
            recoveredBlock159PC := 178.
        ].
        recoveredBlock159Step = 178 ifTrue: [
            recoveredBlock159Stack2 := recoveredLocal3.
            recoveredBlock159PC := 181.
        ].
        recoveredBlock159Step = 181 ifTrue: [
            (recoveredBlock159Stack2 == nil) ifTrue: [recoveredBlock159PC := 190] ifFalse: [recoveredBlock159PC := 184].
        ].
        recoveredBlock159Step = 184 ifTrue: [
            recoveredBlock159PC := 185.
        ].
        recoveredBlock159Step = 185 ifTrue: [
            recoveredBlock159Stack1 := recoveredLocal3.
            recoveredBlock159PC := 188.
        ].
        recoveredBlock159Step = 188 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) clear.
            recoveredBlock159PC := 190.
        ].
        recoveredBlock159Step = 190 ifTrue: [
            recoveredBlock159Result := recoveredBlock159Stack1.
            recoveredBlock159Done := true.
        ].
    ].
    recoveredBlock159Result
].
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifCurtailed: (recoveredStack1).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


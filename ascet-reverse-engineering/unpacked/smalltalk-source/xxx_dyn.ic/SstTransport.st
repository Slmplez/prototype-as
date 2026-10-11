"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000050; bytecode file offset 0x6147c"
!SstTransport methodsFor: 'recovered'!
basicCleanUp
    ^self
! !

"xxx_dyn.ic method 0x20000140; bytecode file offset 0x6147c"
!SstTransport methodsFor: 'recovered'!
initialize
    ^self
! !

"xxx_dyn.ic method 0x200004d0; bytecode file offset 0x615ac"
!SstTransport methodsFor: 'recovered'!
release: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x200006b4; bytecode file offset 0x619a4"
!SstTransport methodsFor: 'recovered'!
returnAddress
    | recoveredValue0 |
    recoveredValue0 := (self) preferredAccessibleUrl.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000948; bytecode file offset 0x61a44"
!SstTransport methodsFor: 'recovered'!
hasContacted: recoveredArg1
    ^false
! !

"xxx_dyn.ic method 0x20000a2c; bytecode file offset 0x61b9c"
!SstTransport methodsFor: 'recovered'!
isConnectedTo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) isValid.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20001030; bytecode file offset 0x626a4"
!SstTransport methodsFor: 'recovered'!
sstMetaInformalType
    ^'transport'
! !

"xxx_dyn.ic method 0x2000106c; bytecode file offset 0x626a4"
!SstTransport methodsFor: 'recovered'!
accessibleUrls
    ^#()
! !

"xxx_dyn.ic method 0x200013d8; bytecode file offset 0x626a4"
!SstTransport methodsFor: 'recovered'!
sstMetaInformation
    ^#()
! !

"xxx_dyn.ic method 0x2000195c; bytecode file offset 0x62c08"
!SstTransport methodsFor: 'recovered'!
preferredAccessibleUrl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) accessibleUrls.
    recoveredValue1 := (recoveredValue0) first.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200024a4; bytecode file offset 0x63568"
!SstTransport methodsFor: 'recovered'!
isValid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := endpoint.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200027b0; bytecode file offset 0x638ac"
!SstTransport methodsFor: 'recovered'!
receive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getNextIncomingConnection.
    recoveredValue1 := (self) receiveNextRequestOn: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200038d4; bytecode file offset 0x649e8"
!SstTransport methodsFor: 'recovered'!
endpoint
    | recoveredValue0 |
    recoveredValue0 := endpoint.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003940; bytecode file offset 0x64bac"
!SstTransport methodsFor: 'recovered'!
configuration
    | recoveredValue0 |
    recoveredValue0 := configuration.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003bb4; bytecode file offset 0x64d78"
!SstTransport methodsFor: 'recovered'!
assembler
    | recoveredValue0 |
    recoveredValue0 := assembler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003cf0; bytecode file offset 0x64ed4"
!SstTransport methodsFor: 'recovered'!
sstMonitor
    | recoveredValue0 |
    recoveredValue0 := monitor.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200045bc; bytecode file offset 0x656a8"
!SstTransport methodsFor: 'recovered'!
sstActivityInstrumentPackSource
    ^nil
! !

"xxx_dyn.ic method 0x200045c4; bytecode file offset 0x656a8"
!SstTransport methodsFor: 'recovered'!
sstVolumeAdminPack
    ^nil
! !

"xxx_dyn.ic method 0x200045dc; bytecode file offset 0x656a8"
!SstTransport methodsFor: 'recovered'!
sstVolumeInstrumentPackSource
    ^nil
! !

"xxx_dyn.ic method 0x2000493c; bytecode file offset 0x65b30"
!SstTransport methodsFor: 'recovered'!
canReceive
    ^false
! !

"xxx_dyn.ic method 0x20004c44; bytecode file offset 0x65d10"
!SstTransport methodsFor: 'recovered'!
emptyMessageTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := configuration.
    recoveredValue1 := (recoveredValue0) messageClass.
    recoveredValue2 := (recoveredValue1) new.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20005058; bytecode file offset 0x66128"
!SstTransport methodsFor: 'recovered'!
getNextIncomingConnection
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SstError.
    recoveredValue1 := SstInvalidTransportError.
    recoveredValue2 := (recoveredValue0) for: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20005984; bytecode file offset 0x66a54"
!SstTransport methodsFor: 'recovered'!
receiveNextRequestOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SstError.
    recoveredValue1 := SstInvalidTransportError.
    recoveredValue2 := (recoveredValue0) for: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20006108; bytecode file offset 0x671ec"
!SstTransport methodsFor: 'recovered'!
reply: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SstError.
    recoveredValue1 := SstInvalidTransportError.
    recoveredValue2 := (recoveredValue0) for: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000611c; bytecode file offset 0x671ec"
!SstTransport methodsFor: 'recovered'!
send: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SstError.
    recoveredValue1 := SstInvalidTransportError.
    recoveredValue2 := (recoveredValue0) for: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20007e0c; bytecode file offset 0x68f50"
!SstTransport methodsFor: 'recovered'!
endpoint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    endpoint := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007fa8; bytecode file offset 0x69104"
!SstTransport methodsFor: 'recovered'!
basicConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    configuration := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008164; bytecode file offset 0x692b8"
!SstTransport methodsFor: 'recovered'!
assembler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    assembler := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200082f8; bytecode file offset 0x69404"
!SstTransport methodsFor: 'recovered'!
sstMonitor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    monitor := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000a08c; bytecode file offset 0x6b160"
!SstTransport methodsFor: 'recovered'!
reset
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := assembler.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := assembler.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) reset.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000a098; bytecode file offset 0x6b160"
!SstTransport methodsFor: 'recovered'!
shutDown
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := assembler.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := assembler.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) shutDown.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000ad18; bytecode file offset 0x6bde0"
!SstTransport methodsFor: 'recovered'!
canReach: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := endpoint.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := endpoint.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) canReach: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000cb6c; bytecode file offset 0x6dc34"
!SstTransport methodsFor: 'recovered'!
configuration: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) basicConfiguration: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := endpoint.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := endpoint.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) basicConfiguration: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000d1bc; bytecode file offset 0x6e2cc"
!SstTransport methodsFor: 'recovered'!
sstAdminPackMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super sstAdminPackMethods.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) sstActivityAdminPack.
    (recoveredValue1) add: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) sstVolumeAdminPack.
    (recoveredValue3) add: (recoveredValue4).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000d1d8; bytecode file offset 0x6e2cc"
!SstTransport methodsFor: 'recovered'!
sstInstrumentPackMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super sstInstrumentPackMethods.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) sstActivityInstrumentPackSource.
    (recoveredValue1) add: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) sstVolumeInstrumentPackSource.
    (recoveredValue3) add: (recoveredValue4).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000d5d4; bytecode file offset 0x6e708"
!SstTransport methodsFor: 'recovered'!
logWarning: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) endpoint.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) endpoint.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) logWarning: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) sstWarn: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000d61c; bytecode file offset 0x6e708"
!SstTransport methodsFor: 'recovered'!
logError: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) endpoint.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) endpoint.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) logError: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) sstError: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000e6c4; bytecode file offset 0x6f794"
!SstTransport methodsFor: 'recovered'!
startUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := configuration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) assemblerClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := configuration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) assemblerClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            assembler := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := assembler.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) startUp.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001524c; bytecode file offset 0x76314"
!SstTransport methodsFor: 'recovered'!
clear
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := configuration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := configuration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) clear.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := assembler.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := assembler.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) clear.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            assembler := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            endpoint := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            configuration := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200158dc; bytecode file offset 0x769bc"
!SstTransport methodsFor: 'recovered'!
sstInstrumentContextBindings
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('transport') put: (self).
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := assembler.
    (recoveredValue3) at: ('assembler') put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := configuration.
    (recoveredValue5) at: ('configuration') put: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := endpoint.
    (recoveredValue7) at: ('endpoint') put: (recoveredValue8).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20017a18; bytecode file offset 0x78af8"
!SstTransport methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'Invalid Transport'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
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
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := $(.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := endpoint.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := $).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20019960; bytecode file offset 0x7aa7c"
!SstTransport methodsFor: 'recovered'!
sstActivityAdminPack
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (recoveredValue0) classAt: ('SstAdminPack') ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) named: ('Transport Activity').
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) addInstrument: ('SstTag:Send') in: ('transport').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) addInstrument: ('SstTag:Receive') in: ('transport').
    recoveredValue6 := recoveredValue3.
    (recoveredValue6) addInstrument: ('SstTag:Reply') in: ('transport').
    ^recoveredValue3
! !


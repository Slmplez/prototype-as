"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000048; bytecode file offset 0x3c0a8"
!EmLibrary class methodsFor: 'recovered'!
_PRAGMA_EmLibraryExceptions
    ^self
! !

"lib.ic method 0x20000098; bytecode file offset 0x3c100"
!EmLibrary class methodsFor: 'recovered'!
releaseLockMode: recoveredArg1
    ^self
! !

"lib.ic method 0x200000c0; bytecode file offset 0x3c100"
!EmLibrary class methodsFor: 'recovered'!
initialReadSize: recoveredArg1
    ^self
! !

"lib.ic method 0x200000c8; bytecode file offset 0x3c100"
!EmLibrary class methodsFor: 'recovered'!
maximumBufferSize: recoveredArg1
    ^self
! !

"lib.ic method 0x200000d0; bytecode file offset 0x3c100"
!EmLibrary class methodsFor: 'recovered'!
singleUserMode: recoveredArg1
    ^self
! !

"lib.ic method 0x200000d8; bytecode file offset 0x3c100"
!EmLibrary class methodsFor: 'recovered'!
acquireReadLocks: recoveredArg1
    ^self
! !

"lib.ic method 0x2000040c; bytecode file offset 0x3c670"
!EmLibrary class methodsFor: 'recovered'!
headerClass
    | recoveredValue0 |
    recoveredValue0 := EmLibraryHeader.
    ^recoveredValue0
! !

"lib.ic method 0x20000424; bytecode file offset 0x3c670"
!EmLibrary class methodsFor: 'recovered'!
recordClass
    | recoveredValue0 |
    recoveredValue0 := EmRecord.
    ^recoveredValue0
! !

"lib.ic method 0x20000460; bytecode file offset 0x3c670"
!EmLibrary class methodsFor: 'recovered'!
standardAccessorClass
    | recoveredValue0 |
    recoveredValue0 := EmStandardAccessor.
    ^recoveredValue0
! !

"lib.ic method 0x2000052c; bytecode file offset 0x3c670"
!EmLibrary class methodsFor: 'recovered'!
registryRecordClass
    | recoveredValue0 |
    recoveredValue0 := EmFixedDiskDictionary.
    ^recoveredValue0
! !

"lib.ic method 0x20000580; bytecode file offset 0x3c670"
!EmLibrary class methodsFor: 'recovered'!
methodEditionClass
    | recoveredValue0 |
    recoveredValue0 := EmMethodEdition.
    ^recoveredValue0
! !

"lib.ic method 0x20000880; bytecode file offset 0x3c8c8"
!EmLibrary class methodsFor: 'recovered'!
singleUserMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usingServer.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"lib.ic method 0x20001150; bytecode file offset 0x3d1e8"
!EmLibrary class methodsFor: 'recovered'!
cache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EmLibraryCache.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"lib.ic method 0x2000135c; bytecode file offset 0x3d664"
!EmLibrary class methodsFor: 'recovered'!
gatewayAddress
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) serverAddress.
    recoveredValue1 := (self) gatewayAddressFrom: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x200013ac; bytecode file offset 0x3d664"
!EmLibrary class methodsFor: 'recovered'!
emsrvAddress
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) serverAddress.
    recoveredValue1 := (self) emsrvAddressFrom: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20001bfc; bytecode file offset 0x3dc1c"
!EmLibrary class methodsFor: 'recovered'!
openReadOnly
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := openReadOnly.
    recoveredValue1 := (recoveredValue0) == (true).
    ^recoveredValue1
! !

"lib.ic method 0x20002618; bytecode file offset 0x3e638"
!EmLibrary class methodsFor: 'recovered'!
default
    | recoveredValue0 |
    recoveredValue0 := default.
    ^recoveredValue0
! !

"lib.ic method 0x2000262c; bytecode file offset 0x3e664"
!EmLibrary class methodsFor: 'recovered'!
defaultName
    | recoveredValue0 |
    recoveredValue0 := defaultName.
    ^recoveredValue0
! !

"lib.ic method 0x200026ac; bytecode file offset 0x3e6d4"
!EmLibrary class methodsFor: 'recovered'!
hostSystemName
    | recoveredValue0 |
    recoveredValue0 := hostSystemName.
    ^recoveredValue0
! !

"lib.ic method 0x200026f0; bytecode file offset 0x3e710"
!EmLibrary class methodsFor: 'recovered'!
serverAddress
    | recoveredValue0 |
    recoveredValue0 := serverAddress.
    ^recoveredValue0
! !

"lib.ic method 0x2000275c; bytecode file offset 0x3e77c"
!EmLibrary class methodsFor: 'recovered'!
initialReadSize
    ^1024
! !

"lib.ic method 0x20002770; bytecode file offset 0x3e790"
!EmLibrary class methodsFor: 'recovered'!
maximumBufferSize
    ^4096
! !

"lib.ic method 0x20002950; bytecode file offset 0x3e998"
!EmLibrary class methodsFor: 'recovered'!
releaseLockMode
    ^true
! !

"lib.ic method 0x20002a5c; bytecode file offset 0x3eaac"
!EmLibrary class methodsFor: 'recovered'!
acquireReadLocks
    ^false
! !

"lib.ic method 0x20002bf0; bytecode file offset 0x3ec10"
!EmLibrary class methodsFor: 'recovered'!
defaultServerPortNumber
    ^4800
! !

"lib.ic method 0x20002c2c; bytecode file offset 0x3ec4c"
!EmLibrary class methodsFor: 'recovered'!
defaultGatewayPortNumber
    ^4801
! !

"lib.ic method 0x20003538; bytecode file offset 0x3f5c0"
!EmLibrary class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) serverAddress.
    recoveredValue2 := (self) create: (recoveredValue0) on: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20003548; bytecode file offset 0x3f5c0"
!EmLibrary class methodsFor: 'recovered'!
libraryExists: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) serverAddress.
    recoveredValue2 := (self) libraryExists: (recoveredValue0) on: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20003608; bytecode file offset 0x3f628"
!EmLibrary class methodsFor: 'recovered'!
openReadOnly: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) == (true).
    openReadOnly := recoveredValue1.
    ^self
! !

"lib.ic method 0x200038c4; bytecode file offset 0x3f8f0"
!EmLibrary class methodsFor: 'recovered'!
remoteAccessSupportIsNotLoaded
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ExRemoteAccessSupportNotLoaded.
    recoveredValue1 := MxEMcsES22.
    (recoveredValue0) signalWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x200038e4; bytecode file offset 0x3f924"
!EmLibrary class methodsFor: 'recovered'!
isRemoteAccessSupportLoaded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := (recoveredValue0) classAt: ('EmRemoteAccessSupport').
    recoveredValue2 := (recoveredValue1) notNil.
    ^recoveredValue2
! !

"lib.ic method 0x200049ec; bytecode file offset 0x40a14"
!EmLibrary class methodsFor: 'recovered'!
defaultName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultName := recoveredValue0.
    ^self
! !

"lib.ic method 0x20004a38; bytecode file offset 0x40a58"
!EmLibrary class methodsFor: 'recovered'!
eventMessages: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    eventMessages := recoveredValue0.
    ^self
! !

"lib.ic method 0x20004a68; bytecode file offset 0x40a88"
!EmLibrary class methodsFor: 'recovered'!
hostSystemName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hostSystemName := recoveredValue0.
    ^self
! !

"lib.ic method 0x20004ab8; bytecode file offset 0x40ad8"
!EmLibrary class methodsFor: 'recovered'!
serverAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    serverAddress := recoveredValue0.
    ^self
! !

"lib.ic method 0x20004b84; bytecode file offset 0x40bac"
!EmLibrary class methodsFor: 'recovered'!
create: recoveredArg1 version: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) serverAddress.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) create: (recoveredValue0) on: (recoveredValue1) version: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20004c34; bytecode file offset 0x40c5c"
!EmLibrary class methodsFor: 'recovered'!
open: recoveredArg1 singleUserMode: recoveredArg2 initialReadSize: recoveredArg3 serverAddress: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg4.
    recoveredValue2 := (self) openReadOnly.
    recoveredValue3 := (self) open: (recoveredValue0) serverAddress: (recoveredValue1) readOnly: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20004c50; bytecode file offset 0x40c74"
!EmLibrary class methodsFor: 'recovered'!
open: recoveredArg1 singleUserMode: recoveredArg2 initialReadSize: recoveredArg3 serverAddress: recoveredArg4 readOnly: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg4.
    recoveredValue2 := recoveredArg5.
    recoveredValue3 := (self) open: (recoveredValue0) serverAddress: (recoveredValue1) readOnly: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20005278; bytecode file offset 0x412a4"
!EmLibrary class methodsFor: 'recovered'!
open: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) serverAddress.
    recoveredValue2 := (self) openReadOnly.
    recoveredValue3 := (self) open: (recoveredValue0) serverAddress: (recoveredValue1) readOnly: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x200052d8; bytecode file offset 0x41304"
!EmLibrary class methodsFor: 'recovered'!
connectTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) resetTransactionFlag.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) connect: (recoveredValue3).
    ^recoveredValue0
! !

"lib.ic method 0x20005408; bytecode file offset 0x41434"
!EmLibrary class methodsFor: 'recovered'!
open: recoveredArg1 singleUserMode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) serverAddress.
    recoveredValue2 := (self) openReadOnly.
    recoveredValue3 := (self) open: (recoveredValue0) serverAddress: (recoveredValue1) readOnly: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x2000542c; bytecode file offset 0x4146c"
!EmLibrary class methodsFor: 'recovered'!
open: recoveredArg1 serverAddress: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := EmLibrary.
    recoveredValue3 := (recoveredValue2) openReadOnly.
    recoveredValue4 := (self) open: (recoveredValue0) serverAddress: (recoveredValue1) readOnly: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20005440; bytecode file offset 0x4146c"
!EmLibrary class methodsFor: 'recovered'!
create: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := EmLibraryHeader.
    recoveredValue3 := (recoveredValue2) libraryVersion.
    recoveredValue4 := (self) create: (recoveredValue0) on: (recoveredValue1) version: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20005464; bytecode file offset 0x41490"
!EmLibrary class methodsFor: 'recovered'!
open: recoveredArg1 singleUserMode: recoveredArg2 initialReadSize: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) serverAddress.
    recoveredValue2 := (self) openReadOnly.
    recoveredValue3 := (self) open: (recoveredValue0) serverAddress: (recoveredValue1) readOnly: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x200059c8; bytecode file offset 0x419f8"
!EmLibrary class methodsFor: 'recovered'!
primitiveDisconnectFromGateway: recoveredArg1 connection: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibraryInterface.
    recoveredValue1 := (recoveredValue0) serverInterface.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) encodeForOS: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue1) disconnect: (recoveredValue3) connection: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x2000628c; bytecode file offset 0x422b0"
!EmLibrary class methodsFor: 'recovered'!
bypassGatewayWhile: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    useGateway := false.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    recoveredLocal1 := recoveredValue1.
    useGateway := true.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"lib.ic method 0x20006384; bytecode file offset 0x423a8"
!EmLibrary class methodsFor: 'recovered'!
bufLength
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := bufLength.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) remoteAccessSupportIsNotLoaded.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := bufLength.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x200063a0; bytecode file offset 0x423c4"
!EmLibrary class methodsFor: 'recovered'!
deflater
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := deflater.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) remoteAccessSupportIsNotLoaded.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := deflater.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x200063bc; bytecode file offset 0x423e0"
!EmLibrary class methodsFor: 'recovered'!
inflater
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := inflater.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) remoteAccessSupportIsNotLoaded.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := inflater.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x200063d8; bytecode file offset 0x423fc"
!EmLibrary class methodsFor: 'recovered'!
nextInBuf
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nextInBuf.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) remoteAccessSupportIsNotLoaded.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := nextInBuf.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x200063f4; bytecode file offset 0x42418"
!EmLibrary class methodsFor: 'recovered'!
nextOutBuf
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nextOutBuf.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) remoteAccessSupportIsNotLoaded.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := nextOutBuf.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20006410; bytecode file offset 0x42430"
!EmLibrary class methodsFor: 'recovered'!
useGateway
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := useGateway.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            useGateway := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := useGateway.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20006428; bytecode file offset 0x4244c"
!EmLibrary class methodsFor: 'recovered'!
zstream
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := zstream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) remoteAccessSupportIsNotLoaded.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := zstream.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20006ff0; bytecode file offset 0x43018"
!EmLibrary class methodsFor: 'recovered'!
eventMessages
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := eventMessages.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            eventMessages := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := eventMessages.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20007014; bytecode file offset 0x4303c"
!EmLibrary class methodsFor: 'recovered'!
gateways
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := gateways.
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
            gateways := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := gateways.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20007038; bytecode file offset 0x43060"
!EmLibrary class methodsFor: 'recovered'!
openInstances
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := openInstances.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            openInstances := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := openInstances.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x200074d4; bytecode file offset 0x4350c"
!EmLibrary class methodsFor: 'recovered'!
usingGateway
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) usingGateway.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200074e4; bytecode file offset 0x4350c"
!EmLibrary class methodsFor: 'recovered'!
isGateway
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGateway.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20008074; bytecode file offset 0x440a0"
!EmLibrary class methodsFor: 'recovered'!
usingServer
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) usingServer.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) serverAddress.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20008c74; bytecode file offset 0x44cac"
!EmLibrary class methodsFor: 'recovered'!
setVersionOf: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) singleUserMode.
    (recoveredValue1) named: (recoveredValue2) singleUserMode: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) actualOpen.
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) versionId: (recoveredValue6).
    (recoveredValue0) close.
    ^self
! !

"lib.ic method 0x20008d60; bytecode file offset 0x44d88"
!EmLibrary class methodsFor: 'recovered'!
emsrvAddressFrom: recoveredArg1
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
            recoveredStack2 := nil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostNamesFromServerAddress: (recoveredStack1) errorBlock: (recoveredStack2).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200097a8; bytecode file offset 0x457d8"
!EmLibrary class methodsFor: 'recovered'!
eofLocation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := eofLocation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EmLibraryPointer.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) headerClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) fixedLength.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := EmLibraryPointer.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) fixedLength.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromNumber: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            eofLocation := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := eofLocation.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000a108; bytecode file offset 0x46144"
!EmLibrary class methodsFor: 'recovered'!
versionOf: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) singleUserMode.
    (recoveredValue1) named: (recoveredValue2) singleUserMode: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) actualOpen.
    recoveredLocal2 := recoveredValue0.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) fileHeader.
    recoveredValue7 := (recoveredValue6) versionId.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    (recoveredValue8) close.
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"lib.ic method 0x2000aa38; bytecode file offset 0x46a64"
!EmLibrary class methodsFor: 'recovered'!
reallocOSBuffersTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := nextInBuf.
    (recoveredValue0) free.
    recoveredValue1 := nextOutBuf.
    (recoveredValue1) free.
    recoveredValue2 := OSUInt8.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) calloc: (recoveredValue3).
    nextInBuf := recoveredValue4.
    recoveredValue5 := OSUInt8.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) calloc: (recoveredValue6).
    nextOutBuf := recoveredValue7.
    recoveredValue8 := recoveredArg1.
    bufLength := recoveredValue8.
    ^self
! !

"lib.ic method 0x2000bb1c; bytecode file offset 0x47b58"
!EmLibrary class methodsFor: 'recovered'!
default: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOpen.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := EmInterface.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) flushCache.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) cache.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) initializeCache.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            default := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000d028; bytecode file offset 0x49054"
!EmLibrary class methodsFor: 'recovered'!
gatewayAddressFrom: recoveredArg1
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
            recoveredStack2 := nil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostNamesFromServerAddress: (recoveredStack1) errorBlock: (recoveredStack2).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000d7e8; bytecode file offset 0x49820"
!EmLibrary class methodsFor: 'recovered'!
create: recoveredArg1 on: recoveredArg2 version: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 |
    recoveredBlock4Value0 := (self) new.
    recoveredBlock4Value1 := recoveredBlock4Value0.
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := recoveredArg2.
    recoveredBlock4Value4 := (self) openReadOnly.
    (recoveredBlock4Value1) named: (recoveredBlock4Value2) singleUserMode: (true) serverAddress: (recoveredBlock4Value3) readOnly: (recoveredBlock4Value4) connect: (true).
    recoveredBlock4Value5 := recoveredBlock4Value0.
    recoveredBlock4Value6 := recoveredArg3.
    (recoveredBlock4Value5) createVersion: (recoveredBlock4Value6).
    recoveredBlock4Value7 := (recoveredBlock4Value0) close.
    recoveredBlock4Value7
].
    recoveredValue1 := (self) bypassGatewayWhile: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x200103a0; bytecode file offset 0x4c3c4"
!EmLibrary class methodsFor: 'recovered'!
disableGatewayCommunicationCapability
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nextInBuf.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nextInBuf.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) free.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nextOutBuf.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nextOutBuf.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) free.
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
            nextOutBuf := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            nextInBuf := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            bufLength := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            zstream := recoveredStack2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            inflater := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            deflater := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20011008; bytecode file offset 0x4d060"
!EmLibrary class methodsFor: 'recovered'!
disconnect
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) openInstances.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block28004810Arg1 | 
    | block28004810Value0 block28004810Value1 |
    block28004810Value0 := block28004810Arg1.
    block28004810Value1 := (block28004810Value0) closeIgnoreErrors.
    block28004810Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) default: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := EmInterface.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) flushCache.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) initializeCache.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodEditionClass.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) initialize.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200118e8; bytecode file offset 0x4d928"
!EmLibrary class methodsFor: 'recovered'!
hostNamesFromServerAddress: recoveredArg1 errorBlock: recoveredArg2
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
            recoveredStack2 := $|.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := MxEMcsES11.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:block28004858Arg1 | 
    | block28004858Value0 block28004858Value1 |
    block28004858Value0 := block28004858Arg1.
    block28004858Value1 := (block28004858Value0) trimBlanks.
    block28004858Value1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20015ac4; bytecode file offset 0x51b08"
!EmLibrary class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) initializeExceptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'EmLibrarySwitchoverTempDefaultName'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) defaultName: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'EmLibrarySwitchoverTempDefaultName'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'EmLibrarySwitchoverTempServerAddress'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) serverAddress: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'EmLibrarySwitchoverTempServerAddress'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20016c40; bytecode file offset 0x52ca0"
!EmLibrary class methodsFor: 'recovered'!
shutDown
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) disconnect.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := gateways.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := gateways.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredBlock14Arg2.
    recoveredBlock14Value1 := (recoveredBlock14Value0) key.
    recoveredBlock14Value2 := (self) primitiveDisconnectFromGateway: ('') connection: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            gateways := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) disableGatewayCommunicationCapability.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventMessages.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'shutDown'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [
    #()
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [:block28004bb8Arg1 | 
    | block28004bb8Value0 block28004bb8Value1 |
    block28004bb8Value0 := block28004bb8Arg1.
    block28004bb8Value1 := (block28004bb8Value0) send.
    block28004bb8Value1
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200182e4; bytecode file offset 0x54340"
!EmLibrary class methodsFor: 'recovered'!
startUp
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) shutDown.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRemoteAccessSupportLoaded.
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
            (recoveredStack0) enableGatewayCommunicationCapability.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) disableGatewayCommunicationCapability.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultName.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) default: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventMessages.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'startUp'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [
    #()
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:block28004c24Arg1 | 
    | block28004c24Value0 block28004c24Value1 |
    block28004c24Value0 := block28004c24Arg1.
    block28004c24Value1 := (block28004c24Value0) send.
    block28004c24Value1
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001989c; bytecode file offset 0x558f4"
!EmLibrary class methodsFor: 'recovered'!
withAllLibrariesClosedDo: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) openInstances.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) openInstances.
    recoveredValue5 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isActuallyOpen.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 28] ifFalse: [recoveredBlock14PC := 38].
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            (recoveredBlock14Stack1) primitiveClose.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [
    | recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack1 := recoveredLocal1.
            recoveredBlock44PC := 53.
        ].
        recoveredBlock44Step = 53 ifTrue: [
            recoveredBlock44Stack2 := [:block28004c48Arg1 | 
    | block28004c48Value0 block28004c48Value1 block28004c48Value2 block28004c48Value3 block28004c48Value4 block28004c48Value5 block28004c48Value6 block28004c48Value7 |
    block28004c48Value0 := block28004c48Arg1.
    block28004c48Value1 := block28004c48Arg1.
    block28004c48Value2 := block28004c48Arg1.
    block28004c48Value3 := (block28004c48Value2) name.
    block28004c48Value4 := block28004c48Arg1.
    block28004c48Value5 := (block28004c48Value4) mode.
    block28004c48Value6 := (block28004c48Value1) openFile: (block28004c48Value3) accessMode: (block28004c48Value5).
    block28004c48Value7 := (block28004c48Value0) fileId: (block28004c48Value6).
    block28004c48Value7
].
            recoveredBlock44PC := 55.
        ].
        recoveredBlock44Step = 55 ifTrue: [
            recoveredBlock44PC := 71.
        ].
        recoveredBlock44Step = 71 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) do: (recoveredBlock44Stack2).
            recoveredBlock44PC := 73.
        ].
        recoveredBlock44Step = 73 ifTrue: [
            recoveredBlock44Result := recoveredBlock44Stack1.
            recoveredBlock44Done := true.
        ].
    ].
    recoveredBlock44Result
].
    recoveredValue8 := (recoveredValue6) valueOnReturnDo: (recoveredValue7).
    ^recoveredValue8
! !

"lib.ic method 0x20019c78; bytecode file offset 0x55cc8"
!EmLibrary class methodsFor: 'recovered'!
open: recoveredArg1 serverAddress: recoveredArg2 readOnly: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) isNil.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) named: (recoveredValue1) singleUserMode: (recoveredValue3) serverAddress: (recoveredValue4) readOnly: (recoveredValue5) connect: (true).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 |
    recoveredBlock25Value0 := recoveredLocal1.
    recoveredBlock25Value1 := (recoveredBlock25Value0) open.
    recoveredBlock25Value1
].
    recoveredValue8 := ExInvalidLibraryHeader.
    recoveredValue9 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 recoveredBlock39Value4 recoveredBlock39Value5 recoveredBlock39Value6 recoveredBlock39Value7 recoveredBlock39Value8 |
    recoveredBlock39Value0 := recoveredLocal1.
    (recoveredBlock39Value0) close.
    recoveredBlock39Value1 := recoveredBlock39Arg1.
    recoveredBlock39Value2 := EmImageSupport.
    recoveredBlock39Value3 := (recoveredBlock39Value2) errorReporter.
    recoveredBlock39Value4 := Array.
    recoveredBlock39Value5 := recoveredArg1.
    recoveredBlock39Value6 := (recoveredBlock39Value4) with: (recoveredBlock39Value5).
    recoveredBlock39Value7 := (recoveredBlock39Value3) reportError: (146) withParms: (recoveredBlock39Value6).
    recoveredBlock39Value8 := (recoveredBlock39Value1) exitWith: (recoveredBlock39Value7).
    recoveredBlock39Value8
].
    (recoveredValue7) when: (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"lib.ic method 0x2001afe8; bytecode file offset 0x57034"
!EmLibrary class methodsFor: 'recovered'!
connectTo: recoveredArg1 while: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
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
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) connectTo: (recoveredBlock4Stack1).
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg2.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            (recoveredBlock4Stack0) value: (recoveredBlock4Stack1).
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) usingServer.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 34] ifFalse: [recoveredBlock4PC := 39].
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal1.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) rememberNameAsAbsoluteAndChangeToServerStartupDirectory.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) bypassGatewayWhile: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) actualClose.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) usingGateway.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) disconnect.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) connect: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) actualOpen.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20020c4c; bytecode file offset 0x5cca8"
!EmLibrary class methodsFor: 'recovered'!
libraryExists: recoveredArg1 on: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := [
    | recoveredBlock4Block10Value0 recoveredBlock4Block10Value1 recoveredBlock4Block10Value2 recoveredBlock4Block10Value3 recoveredBlock4Block10Value4 |
    recoveredBlock4Block10Value0 := (self) new.
    recoveredBlock4Block10Value1 := recoveredArg1.
    recoveredBlock4Block10Value2 := recoveredArg2.
    recoveredBlock4Block10Value3 := (recoveredBlock4Block10Value0) named: (recoveredBlock4Block10Value1) singleUserMode: (false) serverAddress: (recoveredBlock4Block10Value2) readOnly: (true) connect: (true).
    recoveredBlock4Block10Value4 := recoveredBlock4Block10Value3.
    recoveredLocal3 := recoveredBlock4Block10Value4.
    recoveredBlock4Block10Value3
].
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack2 := ExLibraryError.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack3 := [:block28004f60Arg1 | 
    | block28004f60Value0 block28004f60Value1 |
    block28004f60Value0 := block28004f60Arg1.
    block28004f60Value1 := (block28004f60Value0) exitWith: (nil).
    block28004f60Value1
].
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) when: (recoveredBlock4Stack2) do: (recoveredBlock4Stack3).
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal3.
            recoveredBlock4PC := 55.
        ].
        recoveredBlock4Step = 55 ifTrue: [
            (recoveredBlock4Stack1 == nil) ifTrue: [recoveredBlock4PC := 74] ifFalse: [recoveredBlock4PC := 58].
        ].
        recoveredBlock4Step = 58 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal3.
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 64.
        ].
        recoveredBlock4Step = 64 ifTrue: [
            recoveredBlock4Stack3 := recoveredLocal3.
            recoveredBlock4PC := 67.
        ].
        recoveredBlock4Step = 67 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) mode.
            recoveredBlock4PC := 69.
        ].
        recoveredBlock4Step = 69 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) testOpenFile: (recoveredBlock4Stack2) accessMode: (recoveredBlock4Stack3).
            recoveredBlock4PC := 71.
        ].
        recoveredBlock4Step = 71 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 74.
        ].
        recoveredBlock4Step = 74 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 77.
        ].
        recoveredBlock4Step = 77 ifTrue: [
            (recoveredBlock4Stack1 ~~ nil) ifTrue: [recoveredBlock4PC := 93] ifFalse: [recoveredBlock4PC := 80].
        ].
        recoveredBlock4Step = 80 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal3.
            recoveredBlock4PC := 83.
        ].
        recoveredBlock4Step = 83 ifTrue: [
            (recoveredBlock4Stack1 == nil) ifTrue: [recoveredBlock4PC := 91] ifFalse: [recoveredBlock4PC := 86].
        ].
        recoveredBlock4Step = 86 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal3.
            recoveredBlock4PC := 89.
        ].
        recoveredBlock4Step = 89 ifTrue: [
            (recoveredBlock4Stack1) disconnect.
            recoveredBlock4PC := 91.
        ].
        recoveredBlock4Step = 91 ifTrue: [
            recoveredBlock4Stack1 := false.
            recoveredBlock4PC := 92.
        ].
        recoveredBlock4Step = 92 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 93 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal3.
            recoveredBlock4PC := 96.
        ].
        recoveredBlock4Step = 96 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) fileHeader.
            recoveredBlock4PC := 98.
        ].
        recoveredBlock4Step = 98 ifTrue: [
            recoveredLocal2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 101.
        ].
        recoveredBlock4Step = 101 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal3.
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            (recoveredBlock4Stack1) close.
            recoveredBlock4PC := 106.
        ].
        recoveredBlock4Step = 106 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) recordClass.
            recoveredBlock4PC := 108.
        ].
        recoveredBlock4Step = 108 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) checkPattern.
            recoveredBlock4PC := 110.
        ].
        recoveredBlock4Step = 110 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal2.
            recoveredBlock4PC := 113.
        ].
        recoveredBlock4Step = 113 ifTrue: [
            recoveredBlock4Stack2 := 1.
            recoveredBlock4PC := 115.
        ].
        recoveredBlock4Step = 115 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) occursIn: (recoveredBlock4Stack1) at: (recoveredBlock4Stack2).
            recoveredBlock4PC := 117.
        ].
        recoveredBlock4Step = 117 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 122] ifFalse: [recoveredBlock4PC := 120].
        ].
        recoveredBlock4Step = 120 ifTrue: [
            recoveredBlock4Stack0 := false.
            recoveredBlock4PC := 121.
        ].
        recoveredBlock4Step = 121 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 122 ifTrue: [
            recoveredBlock4Stack0 := true.
            recoveredBlock4PC := 123.
        ].
        recoveredBlock4Step = 123 ifTrue: [
            ^recoveredBlock4Stack0
        ].
    ].
    recoveredBlock4Result
].
    (self) withAllLibrariesClosedDo: (recoveredValue0).
    ^self
! !

"lib.ic method 0x2002417c; bytecode file offset 0x601fc"
!EmLibrary class methodsFor: 'recovered'!
crashRecover: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := MxEMc108.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) addLineDelimiters.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) named: (recoveredStack2) singleUserMode: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) actualOpen.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentEOF.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := EmLibraryPointer.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) asNextAvailable: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFilePositionIn: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilePositionIn: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 82.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) close.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := (recoveredStack4) currentEOF.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) write: (recoveredStack1) from: (recoveredStack2) startingAt: (recoveredStack3) at: (recoveredStack4) offsetBy: (recoveredStack5).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := 84.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := (recoveredStack4) asFilePositionIn: (recoveredStack5).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 155.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) setCurrentEOF.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := 85.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) close.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200270e8; bytecode file offset 0x6314c"
!EmLibrary class methodsFor: 'recovered'!
addressAndPortFromHostName: recoveredArg1 ifNoPortUse: recoveredArg2 errorBlock: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) trimBlanks.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) trimBlanks.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) last.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) trimBlanks.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := MxEMcsES8.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := [:recoveredBlock107Arg1 | 
    | recoveredBlock107Stack0 recoveredBlock107Stack1 recoveredBlock107Stack2 recoveredBlock107Stack3 recoveredBlock107Stack4 recoveredBlock107Stack5 recoveredBlock107PC recoveredBlock107Step recoveredBlock107Done recoveredBlock107Result |
    recoveredBlock107Stack0 := self.
    recoveredBlock107PC := 114.
    recoveredBlock107Done := false.
    [recoveredBlock107Done not] whileTrue: [
        recoveredBlock107Step := recoveredBlock107PC.
        recoveredBlock107Step = 114 ifTrue: [
            recoveredBlock107Stack1 := recoveredBlock107Arg1.
            recoveredBlock107PC := 115.
        ].
        recoveredBlock107Step = 115 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) isDigit.
            recoveredBlock107PC := 117.
        ].
        recoveredBlock107Step = 117 ifTrue: [
            (recoveredBlock107Stack1) ifTrue: [recoveredBlock107PC := 146] ifFalse: [recoveredBlock107PC := 120].
        ].
        recoveredBlock107Step = 120 ifTrue: [
            recoveredBlock107Stack1 := recoveredArg3.
            recoveredBlock107PC := 123.
        ].
        recoveredBlock107Step = 123 ifTrue: [
            (recoveredBlock107Stack1 == nil) ifTrue: [recoveredBlock107PC := 144] ifFalse: [recoveredBlock107PC := 126].
        ].
        recoveredBlock107Step = 126 ifTrue: [
            recoveredBlock107Stack1 := recoveredArg3.
            recoveredBlock107PC := 129.
        ].
        recoveredBlock107Step = 129 ifTrue: [
            recoveredBlock107Stack2 := MxEMcsES9.
            recoveredBlock107PC := 131.
        ].
        recoveredBlock107Step = 131 ifTrue: [
            recoveredBlock107Stack3 := recoveredLocal1.
            recoveredBlock107PC := 134.
        ].
        recoveredBlock107Step = 134 ifTrue: [
            recoveredBlock107Stack3 := (recoveredBlock107Stack3) last.
            recoveredBlock107PC := 136.
        ].
        recoveredBlock107Step = 136 ifTrue: [
            recoveredBlock107Stack2 := (recoveredBlock107Stack2) bindWith: (recoveredBlock107Stack3).
            recoveredBlock107PC := 138.
        ].
        recoveredBlock107Step = 138 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) value: (recoveredBlock107Stack2).
            recoveredBlock107PC := 140.
        ].
        recoveredBlock107Step = 140 ifTrue: [
            recoveredBlock107PC := 145.
        ].
        recoveredBlock107Step = 144 ifTrue: [
            recoveredBlock107Stack1 := nil.
            recoveredBlock107PC := 145.
        ].
        recoveredBlock107Step = 145 ifTrue: [
            ^recoveredBlock107Stack1
        ].
        recoveredBlock107Step = 146 ifTrue: [
            recoveredBlock107Stack1 := recoveredLocal1.
            recoveredBlock107PC := 149.
        ].
        recoveredBlock107Step = 149 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Stack1.
            recoveredBlock107PC := 150.
        ].
        recoveredBlock107Step = 150 ifTrue: [
            recoveredBlock107Stack3 := 2.
            recoveredBlock107PC := 152.
        ].
        recoveredBlock107Step = 152 ifTrue: [
            recoveredBlock107Stack4 := recoveredLocal1.
            recoveredBlock107PC := 155.
        ].
        recoveredBlock107Step = 155 ifTrue: [
            recoveredBlock107Stack4 := (recoveredBlock107Stack4) last.
            recoveredBlock107PC := 157.
        ].
        recoveredBlock107Step = 157 ifTrue: [
            recoveredBlock107Stack4 := (recoveredBlock107Stack4) asNumber.
            recoveredBlock107PC := 159.
        ].
        recoveredBlock107Step = 159 ifTrue: [
            (recoveredBlock107Stack2) at: (recoveredBlock107Stack3) put: (recoveredBlock107Stack4).
            recoveredBlock107PC := 161.
        ].
        recoveredBlock107Step = 161 ifTrue: [
            ^recoveredBlock107Stack1
        ].
    ].
    recoveredBlock107Result
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := MxEMcsES10.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredPC := 191.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 192 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002fac0; bytecode file offset 0x6bb50"
!EmLibrary class methodsFor: 'recovered'!
initializeExceptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ExLibraryError.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ExLibraryError := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ExLibraryError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) markReadOnly: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := MxEMcsES12.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) resumable: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) defaultHandler: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := ExLibraryIsCorrupt.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := ExLibraryError.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ExLibraryIsCorrupt := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := ExLibraryIsCorrupt.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack2) markReadOnly: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := MxEMcsES13.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) resumable: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack2) defaultHandler: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := ExPrimitiveError.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := ExLibraryError.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ExPrimitiveError := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := ExPrimitiveError.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack2) markReadOnly: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := MxEMcsES14.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack2) resumable: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack2) defaultHandler: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := ExInvalidEOF.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 111] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := ExLibraryError.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ExInvalidEOF := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := ExInvalidEOF.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack2) markReadOnly: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := MxEMcsES15.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack2) resumable: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack2) defaultHandler: (recoveredStack3).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := ExExceededLibrarySize.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 143] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := ExLibraryError.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ExExceededLibrarySize := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := ExExceededLibrarySize.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack2) markReadOnly: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := MxEMcsES16.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack2) resumable: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack2) defaultHandler: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := ExInvalidTransaction.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 175] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := ExLibraryError.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            ExInvalidTransaction := recoveredStack1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := ExInvalidTransaction.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack2) markReadOnly: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := MxEMc116.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack2) resumable: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack2) defaultHandler: (recoveredStack3).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := ExTransactionProtocolError.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 207] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := ExLibraryError.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            ExTransactionProtocolError := recoveredStack1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := ExTransactionProtocolError.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack2) markReadOnly: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := MxEMcsES17.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack2) resumable: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack2) defaultHandler: (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := ExFatalTransactionError.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 239] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := ExLibraryError.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            ExFatalTransactionError := recoveredStack1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := ExFatalTransactionError.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack2) markReadOnly: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := MxEMcsES18.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack2) resumable: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack2) defaultHandler: (recoveredStack3).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := ExRemoteAccessSupportNotLoaded.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 271] ifFalse: [recoveredPC := 266].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := ExLibraryError.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            ExRemoteAccessSupportNotLoaded := recoveredStack1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := ExRemoteAccessSupportNotLoaded.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack2) markReadOnly: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := MxEMcsES19.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack2) resumable: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack2) defaultHandler: (recoveredStack3).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := ExInvalidServerAddress.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 303] ifFalse: [recoveredPC := 298].
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := ExLibraryError.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            ExInvalidServerAddress := recoveredStack1.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := ExInvalidServerAddress.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack2) markReadOnly: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := MxEMcsES20.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack2) resumable: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack2) defaultHandler: (recoveredStack3).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := ExInvalidLibraryHeader.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 335] ifFalse: [recoveredPC := 330].
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := ExLibraryError.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            ExInvalidLibraryHeader := recoveredStack1.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := ExInvalidLibraryHeader.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            (recoveredStack2) markReadOnly: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack3 := MxEMcsES21.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack2) resumable: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack2) defaultHandler: (recoveredStack3).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


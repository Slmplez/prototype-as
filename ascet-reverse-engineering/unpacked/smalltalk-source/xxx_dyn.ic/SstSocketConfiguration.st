"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20003328; bytecode file offset 0x643ec"
!SstSocketConfiguration methodsFor: 'recovered'!
allowIncomingConnections
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := allowIncomingConnections.
    recoveredValue1 := (recoveredValue0) ~~ (false).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20004328; bytecode file offset 0x65414"
!SstSocketConfiguration methodsFor: 'recovered'!
receiveBufferSize
    | recoveredValue0 |
    recoveredValue0 := receiveBufferSize.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004384; bytecode file offset 0x65450"
!SstSocketConfiguration methodsFor: 'recovered'!
sendBufferSize
    | recoveredValue0 |
    recoveredValue0 := sendBufferSize.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200043a8; bytecode file offset 0x6547c"
!SstSocketConfiguration methodsFor: 'recovered'!
nonBlocking
    | recoveredValue0 |
    recoveredValue0 := nonBlocking.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200043e4; bytecode file offset 0x654a8"
!SstSocketConfiguration methodsFor: 'recovered'!
listenBacklog
    | recoveredValue0 |
    recoveredValue0 := listenBacklog.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004424; bytecode file offset 0x654f0"
!SstSocketConfiguration methodsFor: 'recovered'!
negotiationTimeout
    | recoveredValue0 |
    recoveredValue0 := negotiationTimeout.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004448; bytecode file offset 0x6550c"
!SstSocketConfiguration methodsFor: 'recovered'!
connectionClass
    | recoveredValue0 |
    recoveredValue0 := connectionClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000445c; bytecode file offset 0x65528"
!SstSocketConfiguration methodsFor: 'recovered'!
connectionManagerClass
    | recoveredValue0 |
    recoveredValue0 := connectionManagerClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004478; bytecode file offset 0x65544"
!SstSocketConfiguration methodsFor: 'recovered'!
socketClass
    | recoveredValue0 |
    recoveredValue0 := socketClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20007730; bytecode file offset 0x6887c"
!SstSocketConfiguration methodsFor: 'recovered'!
sstMetaInformation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super sstMetaInformation.
    recoveredValue1 := (recoveredValue0) , (#(#('Allow incoming connections' 'allowIncomingConnections' 'allowIncomingConnections:' 'info' 'boolean') #('Negotiation timeout (ms)' 'negotiationTimeout' 'negotiationTimeout:' 'dynamic' 'integer' 1) #('Class for connections' 'connectionClass' 'connectionClass:' 'dynamic' 'class') #('Class for connection manager' 'connectionManagerClass' 'connectionManagerClass:' 'info' 'class'))).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20008888; bytecode file offset 0x6994c"
!SstSocketConfiguration methodsFor: 'recovered'!
receiveBufferSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    receiveBufferSize := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000889c; bytecode file offset 0x69980"
!SstSocketConfiguration methodsFor: 'recovered'!
sendBufferSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sendBufferSize := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200088d0; bytecode file offset 0x699ac"
!SstSocketConfiguration methodsFor: 'recovered'!
nonBlocking: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nonBlocking := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008924; bytecode file offset 0x699e8"
!SstSocketConfiguration methodsFor: 'recovered'!
listenBacklog: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    listenBacklog := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008938; bytecode file offset 0x69a14"
!SstSocketConfiguration methodsFor: 'recovered'!
allowIncomingConnections: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    allowIncomingConnections := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008964; bytecode file offset 0x69a38"
!SstSocketConfiguration methodsFor: 'recovered'!
negotiationTimeout: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    negotiationTimeout := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008988; bytecode file offset 0x69a54"
!SstSocketConfiguration methodsFor: 'recovered'!
connectionClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    connectionClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200089ac; bytecode file offset 0x69a70"
!SstSocketConfiguration methodsFor: 'recovered'!
connectionManagerClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    connectionManagerClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200089c8; bytecode file offset 0x69a8c"
!SstSocketConfiguration methodsFor: 'recovered'!
socketClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    socketClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20012944; bytecode file offset 0x73a1c"
!SstSocketConfiguration methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    allowIncomingConnections := true.
    negotiationTimeout := 30000.
    recoveredValue0 := SstSocketConnection.
    connectionClass := recoveredValue0.
    recoveredValue1 := SstConnectionTable.
    connectionManagerClass := recoveredValue1.
    retryCount := 2.
    ^self
! !


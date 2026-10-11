"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20004494; bytecode file offset 0x65558"
!SstTcpConfiguration methodsFor: 'recovered'!
noDelay
    | recoveredValue0 |
    recoveredValue0 := noDelay.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200044a8; bytecode file offset 0x6556c"
!SstTcpConfiguration methodsFor: 'recovered'!
keepAlive
    | recoveredValue0 |
    recoveredValue0 := keepAlive.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200044bc; bytecode file offset 0x65580"
!SstTcpConfiguration methodsFor: 'recovered'!
linger
    | recoveredValue0 |
    recoveredValue0 := linger.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200044d0; bytecode file offset 0x65594"
!SstTcpConfiguration methodsFor: 'recovered'!
reuseAddress
    | recoveredValue0 |
    recoveredValue0 := reuseAddress.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200044e4; bytecode file offset 0x655a8"
!SstTcpConfiguration methodsFor: 'recovered'!
defaultPort
    | recoveredValue0 |
    recoveredValue0 := defaultPort.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200044f8; bytecode file offset 0x655bc"
!SstTcpConfiguration methodsFor: 'recovered'!
securityConfiguration
    | recoveredValue0 |
    recoveredValue0 := securityConfiguration.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20007718; bytecode file offset 0x6887c"
!SstTcpConfiguration methodsFor: 'recovered'!
sstMetaInformation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super sstMetaInformation.
    recoveredValue1 := (recoveredValue0) , (#(#('Receive buffer size' 'receiveBufferSize' 'receiveBufferSize:' 'info' 'integer' 1) #('Send buffer size' 'sendBufferSize' 'sendBufferSize:' 'info' 'integer' 1) #('Use TCP_NODELAY' 'noDelay' 'noDelay:' 'info' 'boolean') #('Use SO_KEEPALIVE' 'keepAlive' 'keepAlive:' 'info' 'boolean') #('Use non-blocking' 'nonBlocking' 'nonBlocking:' 'info' 'boolean') #('Use SO_REUSEADDR' 'reuseAddress' 'reuseAddress:' 'info' 'boolean') #('Default port for listening' 'defaultPort' 'defaultPort:' 'info' 'integer' 0) #('Listen backlog' 'listenBacklog' 'listenBacklog:' 'info' 'integer' 0))).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200089dc; bytecode file offset 0x69aa0"
!SstTcpConfiguration methodsFor: 'recovered'!
noDelay: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    noDelay := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200089f0; bytecode file offset 0x69ab4"
!SstTcpConfiguration methodsFor: 'recovered'!
keepAlive: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    keepAlive := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008a04; bytecode file offset 0x69ac8"
!SstTcpConfiguration methodsFor: 'recovered'!
linger: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    linger := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008a18; bytecode file offset 0x69adc"
!SstTcpConfiguration methodsFor: 'recovered'!
reuseAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    reuseAddress := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008a2c; bytecode file offset 0x69af0"
!SstTcpConfiguration methodsFor: 'recovered'!
defaultPort: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultPort := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008a40; bytecode file offset 0x69b04"
!SstTcpConfiguration methodsFor: 'recovered'!
securityConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    securityConfiguration := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000e934; bytecode file offset 0x6fa04"
!SstTcpConfiguration methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    super initialize.
    defaultPort := 0.
    listenBacklog := 5.
    recoveredValue0 := SciSocket.
    socketClass := recoveredValue0.
    ^self
! !


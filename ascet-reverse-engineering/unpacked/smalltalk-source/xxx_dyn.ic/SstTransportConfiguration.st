"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000136c; bytecode file offset 0x626a4"
!SstTransportConfiguration methodsFor: 'recovered'!
sstMetaInformalType
    ^'transport configuration'
! !

"xxx_dyn.ic method 0x20001480; bytecode file offset 0x626a4"
!SstTransportConfiguration methodsFor: 'recovered'!
sstMetaInformation
    ^#(#('Communication message class' 'messageClass' 'messageClass:' 'dynamic' 'class') #('Remote endpoint class' 'remoteEndpointClass' 'remoteEndpointClass:' 'dynamic' 'class') #('Local endpoint class' 'localEndpointClass' 'localEndpointClass:' 'dynamic' 'class') #('Stream class (if any)' 'streamClass' 'streamClass:' 'info' 'class') #('Transport identifier' 'transportIdentifier' 'transportIdentifier:' 'info' 'string') #('Address class' 'addressClass' 'addressClass:' 'info' 'class') #('Transport class' 'transportClass' 'transportClass:' 'info' 'class') #('Assembler class' 'assemblerClass' 'assemblerClass:' 'info' 'class'))
! !

"xxx_dyn.ic method 0x20003b44; bytecode file offset 0x64d78"
!SstTransportConfiguration methodsFor: 'recovered'!
transportIdentifier
    | recoveredValue0 |
    recoveredValue0 := transportIdentifier.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003e08; bytecode file offset 0x64ed4"
!SstTransportConfiguration methodsFor: 'recovered'!
messageClass
    | recoveredValue0 |
    recoveredValue0 := messageClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003e3c; bytecode file offset 0x64fe8"
!SstTransportConfiguration methodsFor: 'recovered'!
addressClass
    | recoveredValue0 |
    recoveredValue0 := addressClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003fd8; bytecode file offset 0x650c4"
!SstTransportConfiguration methodsFor: 'recovered'!
transportClass
    | recoveredValue0 |
    recoveredValue0 := transportClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000406c; bytecode file offset 0x65178"
!SstTransportConfiguration methodsFor: 'recovered'!
localEndpointClass
    | recoveredValue0 |
    recoveredValue0 := localEndpointClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200041a0; bytecode file offset 0x65264"
!SstTransportConfiguration methodsFor: 'recovered'!
remoteEndpointClass
    | recoveredValue0 |
    recoveredValue0 := remoteEndpointClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000421c; bytecode file offset 0x65328"
!SstTransportConfiguration methodsFor: 'recovered'!
assemblerClass
    | recoveredValue0 |
    recoveredValue0 := assemblerClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200042a8; bytecode file offset 0x65384"
!SstTransportConfiguration methodsFor: 'recovered'!
streamClass
    | recoveredValue0 |
    recoveredValue0 := streamClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000430c; bytecode file offset 0x653d8"
!SstTransportConfiguration methodsFor: 'recovered'!
retryCount
    | recoveredValue0 |
    recoveredValue0 := retryCount.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000812c; bytecode file offset 0x692b8"
!SstTransportConfiguration methodsFor: 'recovered'!
transportIdentifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    transportIdentifier := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008308; bytecode file offset 0x69404"
!SstTransportConfiguration methodsFor: 'recovered'!
messageClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    messageClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200083d4; bytecode file offset 0x69508"
!SstTransportConfiguration methodsFor: 'recovered'!
addressClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    addressClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008500; bytecode file offset 0x695c4"
!SstTransportConfiguration methodsFor: 'recovered'!
transportClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    transportClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000858c; bytecode file offset 0x69688"
!SstTransportConfiguration methodsFor: 'recovered'!
localEndpointClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    localEndpointClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008640; bytecode file offset 0x6978c"
!SstTransportConfiguration methodsFor: 'recovered'!
remoteEndpointClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    remoteEndpointClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000876c; bytecode file offset 0x69858"
!SstTransportConfiguration methodsFor: 'recovered'!
assemblerClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    assemblerClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200087e0; bytecode file offset 0x698bc"
!SstTransportConfiguration methodsFor: 'recovered'!
streamClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    streamClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008834; bytecode file offset 0x69910"
!SstTransportConfiguration methodsFor: 'recovered'!
retryCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    retryCount := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20013388; bytecode file offset 0x74464"
!SstTransportConfiguration methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := SstHeaderedByteMessage.
    messageClass := recoveredValue0.
    recoveredValue1 := SstLocalEndpoint.
    localEndpointClass := recoveredValue1.
    recoveredValue2 := SstRemoteEndpoint.
    remoteEndpointClass := recoveredValue2.
    recoveredValue3 := SstBasicAssembler.
    assemblerClass := recoveredValue3.
    retryCount := 0.
    ^self
! !

"xxx_dyn.ic method 0x20014ce8; bytecode file offset 0x75dc4"
!SstTransportConfiguration methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPut: ($().
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) transportIdentifier.
    recoveredValue7 := (recoveredValue6) printString.
    (recoveredValue5) nextPutAll: (recoveredValue7).
    (recoveredValue0) nextPut: ($)).
    ^self
! !


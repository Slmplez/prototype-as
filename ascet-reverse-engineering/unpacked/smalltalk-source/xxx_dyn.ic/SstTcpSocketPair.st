"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001e34; bytecode file offset 0x63040"
!SstTcpSocketPair methodsFor: 'recovered'!
newStreamSocket
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SciSocket.
    recoveredValue1 := (recoveredValue0) newStreamSocket.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20007a78; bytecode file offset 0x68b48"
!SstTcpSocketPair methodsFor: 'recovered'!
redirectAddressForConnect: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := ('127.0.0.1') inetAddr.
    (recoveredValue1) address: (recoveredValue2).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000cf24; bytecode file offset 0x6e000"
!SstTcpSocketPair methodsFor: 'recovered'!
anySocketAddress
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SciSocketAddress.
    recoveredValue1 := AFINET.
    recoveredValue2 := (recoveredValue0) family: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := INADDRANY.
    (recoveredValue3) address: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) port: (0).
    ^recoveredValue2
! !


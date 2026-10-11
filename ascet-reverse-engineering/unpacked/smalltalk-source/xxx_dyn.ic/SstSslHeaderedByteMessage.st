"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200025b8; bytecode file offset 0x63698"
!SstSslHeaderedByteMessage methodsFor: 'recovered'!
sender
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := sender.
    recoveredValue1 := (recoveredValue0) peer.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20003b1c; bytecode file offset 0x64d78"
!SstSslHeaderedByteMessage methodsFor: 'recovered'!
connection
    | recoveredValue0 |
    recoveredValue0 := sender.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20008144; bytecode file offset 0x692b8"
!SstSslHeaderedByteMessage methodsFor: 'recovered'!
connection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sender := recoveredValue0.
    ^self
! !


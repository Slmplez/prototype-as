"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20003498; bytecode file offset 0x645a4"
!SstRequestHeader methodsFor: 'recovered'!
isMarshalingError
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) type.
    recoveredValue1 := SstMarshalingErrorMessage.
    recoveredValue2 := (recoveredValue0) == (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x200034a8; bytecode file offset 0x645a4"
!SstRequestHeader methodsFor: 'recovered'!
isReply
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) type.
    recoveredValue1 := SstReplyMessage.
    recoveredValue2 := (recoveredValue0) == (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20003764; bytecode file offset 0x649e8"
!SstRequestHeader methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200039a8; bytecode file offset 0x64bac"
!SstRequestHeader methodsFor: 'recovered'!
requestId
    | recoveredValue0 |
    recoveredValue0 := requestId.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003b4c; bytecode file offset 0x64d78"
!SstRequestHeader methodsFor: 'recovered'!
sender
    | recoveredValue0 |
    recoveredValue0 := sender.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20007d04; bytecode file offset 0x68f50"
!SstRequestHeader methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008030; bytecode file offset 0x69104"
!SstRequestHeader methodsFor: 'recovered'!
requestId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    requestId := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200081c4; bytecode file offset 0x692b8"
!SstRequestHeader methodsFor: 'recovered'!
sender: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sender := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200118cc; bytecode file offset 0x729b0"
!SstRequestHeader methodsFor: 'recovered'!
asBytes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) byteSize.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) type.
    (recoveredValue4) uint8At: (0) put: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := (self) requestId.
    (recoveredValue6) sst32At: (1) put: (recoveredValue7).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20015eb0; bytecode file offset 0x76f8c"
!SstRequestHeader methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPut: ($[).
    recoveredValue1 := (self) type.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPut: ($,).
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := (self) requestId.
    recoveredValue7 := (recoveredValue6) printString.
    (recoveredValue5) nextPutAll: (recoveredValue7).
    (recoveredValue3) nextPut: ($]).
    ^self
! !


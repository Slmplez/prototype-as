"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200045a8; bytecode file offset 0x6566c"
!SstRequestHeader class methodsFor: 'recovered'!
byteSize
    ^5
! !

"xxx_dyn.ic method 0x200059a4; bytecode file offset 0x66aa0"
!SstRequestHeader class methodsFor: 'recovered'!
requestForRequestId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SstRequestMessage.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) type: (recoveredValue0) requestId: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x200059b4; bytecode file offset 0x66aa0"
!SstRequestHeader class methodsFor: 'recovered'!
errorForRequestId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SstMarshalingErrorMessage.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) type: (recoveredValue0) requestId: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x200059d4; bytecode file offset 0x66aa0"
!SstRequestHeader class methodsFor: 'recovered'!
replyForRequestId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SstReplyMessage.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) type: (recoveredValue0) requestId: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20008c3c; bytecode file offset 0x69d20"
!SstRequestHeader class methodsFor: 'recovered'!
type: recoveredArg1 requestId: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) type: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) requestId: (recoveredValue3).
    ^recoveredValue4
! !


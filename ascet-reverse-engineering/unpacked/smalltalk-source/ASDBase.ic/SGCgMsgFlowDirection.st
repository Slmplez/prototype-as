"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016b80; bytecode file offset 0x92209c"
!SGCgMsgFlowDirection methodsFor: 'recovered'!
receiveDirectionKey
    ^'receive'
! !

"ASDBase.ic method 0x200191c0; bytecode file offset 0x92209c"
!SGCgMsgFlowDirection methodsFor: 'recovered'!
sendDirectionKey
    ^'send'
! !

"ASDBase.ic method 0x20060690; bytecode file offset 0x95cf54"
!SGCgMsgFlowDirection methodsFor: 'recovered'!
setSendDirection
    | recoveredValue0 |
    recoveredValue0 := (self) sendDirectionKey.
    direction := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2006069c; bytecode file offset 0x95cf54"
!SGCgMsgFlowDirection methodsFor: 'recovered'!
setReceiveDirection
    | recoveredValue0 |
    recoveredValue0 := (self) receiveDirectionKey.
    direction := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2008a39c; bytecode file offset 0x986c60"
!SGCgMsgFlowDirection methodsFor: 'recovered'!
isSendDirection
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := direction.
    recoveredValue1 := (self) sendDirectionKey.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a3a8; bytecode file offset 0x986c60"
!SGCgMsgFlowDirection methodsFor: 'recovered'!
isReceiveDirection
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := direction.
    recoveredValue1 := (self) receiveDirectionKey.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !


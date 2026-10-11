"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015c38; bytecode file offset 0x92209c"
!SGMdMsgUsage class methodsFor: 'recovered'!
sendReceiveUsage
    ^'SNDRCV'
! !

"ASDBase.ic method 0x2001aa2c; bytecode file offset 0x92209c"
!SGMdMsgUsage class methodsFor: 'recovered'!
receiveUsage
    ^'RCV'
! !

"ASDBase.ic method 0x2001ab58; bytecode file offset 0x92209c"
!SGMdMsgUsage class methodsFor: 'recovered'!
explicitAccess
    ^'EXPLICIT'
! !

"ASDBase.ic method 0x200214a0; bytecode file offset 0x92209c"
!SGMdMsgUsage class methodsFor: 'recovered'!
sendUsage
    ^'SND'
! !

"ASDBase.ic method 0x20025c60; bytecode file offset 0x923928"
!SGMdMsgUsage class methodsFor: 'recovered'!
implicitAccess
    ^'IMPLICIT'
! !

"ASDBase.ic method 0x20096c80; bytecode file offset 0x9937fc"
!SGMdMsgUsage class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) msgId: (recoveredValue2).
    ^recoveredValue0
! !


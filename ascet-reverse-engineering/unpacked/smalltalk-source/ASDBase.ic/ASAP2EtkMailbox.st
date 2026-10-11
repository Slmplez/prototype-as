"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b994; bytecode file offset 0x948384"
!ASAP2EtkMailbox methodsFor: 'recovered'!
mailboxTag
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bc24; bytecode file offset 0x94877c"
!ASAP2EtkMailbox methodsFor: 'recovered'!
bufferToSG
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bfa4; bytecode file offset 0x948b80"
!ASAP2EtkMailbox methodsFor: 'recovered'!
bufferFromSG
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c4bc; bytecode file offset 0x948e28"
!ASAP2EtkMailbox methodsFor: 'recovered'!
mailboxType
    | recoveredValue0 |
    recoveredValue0 := (self) at: (7).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c6c8; bytecode file offset 0x949118"
!ASAP2EtkMailbox methodsFor: 'recovered'!
mailboxVersion
    | recoveredValue0 |
    recoveredValue0 := (self) at: (8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20097564; bytecode file offset 0x995850"
!ASAP2EtkMailbox methodsFor: 'recovered'!
putBufferFromSGIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bufferFromSG.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) putIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20097704; bytecode file offset 0x995850"
!ASAP2EtkMailbox methodsFor: 'recovered'!
putBufferToSGIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bufferToSG.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) putIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a6410; bytecode file offset 0x9a2f38"
!ASAP2EtkMailbox methodsFor: 'recovered'!
mailboxTag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a67e8; bytecode file offset 0x9a32e0"
!ASAP2EtkMailbox methodsFor: 'recovered'!
bufferToSG: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6b18; bytecode file offset 0x9a3694"
!ASAP2EtkMailbox methodsFor: 'recovered'!
bufferFromSG: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6f5c; bytecode file offset 0x9a391c"
!ASAP2EtkMailbox methodsFor: 'recovered'!
mailboxType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (7) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a728c; bytecode file offset 0x9a3b44"
!ASAP2EtkMailbox methodsFor: 'recovered'!
mailboxVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (8) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200fb278; bytecode file offset 0x9f7ee4"
!ASAP2EtkMailbox methodsFor: 'recovered'!
putMailboxVersionIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) mailboxVersion.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb584; bytecode file offset 0x9f7ee4"
!ASAP2EtkMailbox methodsFor: 'recovered'!
putMailboxTypeIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) mailboxType.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb598; bytecode file offset 0x9f7ee4"
!ASAP2EtkMailbox methodsFor: 'recovered'!
putMailboxTagIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) mailboxTag.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fd68c; bytecode file offset 0x9fa1f4"
!ASAP2EtkMailbox methodsFor: 'recovered'!
getMailboxTag: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (self) mailboxTag: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fd8e4; bytecode file offset 0x9fa1f4"
!ASAP2EtkMailbox methodsFor: 'recovered'!
getMailboxType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (self) mailboxType: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fd90c; bytecode file offset 0x9fa1f4"
!ASAP2EtkMailbox methodsFor: 'recovered'!
getMailboxVersion: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (self) mailboxVersion: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2011fbc4; bytecode file offset 0xa1c498"
!ASAP2EtkMailbox methodsFor: 'recovered'!
putInV2: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putMailboxTypeIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putMailboxVersionIn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2011fbd8; bytecode file offset 0xa1c498"
!ASAP2EtkMailbox methodsFor: 'recovered'!
getFromV2: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) getFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getMailboxType: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getMailboxVersion: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20125b2c; bytecode file offset 0xa22600"
!ASAP2EtkMailbox methodsFor: 'recovered'!
getBufferFromSG: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2PageBuffer.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    (self) bufferFromSG: (recoveredValue1).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) getFrom: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20125c1c; bytecode file offset 0xa22600"
!ASAP2EtkMailbox methodsFor: 'recovered'!
getBufferToSG: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2PageBuffer.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    (self) bufferToSG: (recoveredValue1).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) getFrom: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20163c48; bytecode file offset 0xa605cc"
!ASAP2EtkMailbox methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getMailboxTag: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getBufferToSG: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) getBufferFromSG: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201d8568; bytecode file offset 0xad4e38"
!ASAP2EtkMailbox methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) keyWord.
    (self) putIn: (recoveredValue1) string: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putMailboxTagIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) putBufferToSGIn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) putBufferFromSGIn: (recoveredValue6).
    ^self
! !


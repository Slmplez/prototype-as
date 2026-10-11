"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200182a8; bytecode file offset 0x92209c"
!ASAP2EtkMailbox class methodsFor: 'recovered'!
keyWord
    ^'ETK_MAILBOX'
! !

"ASDBase.ic method 0x2001afd8; bytecode file offset 0x92209c"
!ASAP2EtkMailbox class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'mailboxTag:' 'bufferToSG:' 'bufferFromSG:')
! !

"ASDBase.ic method 0x200b6f80; bytecode file offset 0x9b39ac"
!ASAP2EtkMailbox class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('mailboxTag' 'bufferToSG' 'bufferFromSG' 'mailboxType' 'mailboxVersion')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f9bf4; bytecode file offset 0x9f64b0"
!ASAP2EtkMailbox class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (3).
    recoveredValue2 := (recoveredValue1) + (2).
    ^recoveredValue2
! !


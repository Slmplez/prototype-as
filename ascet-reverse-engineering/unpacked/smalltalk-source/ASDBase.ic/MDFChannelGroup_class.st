"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20025b34; bytecode file offset 0x923928"
!MDFChannelGroup class methodsFor: 'recovered'!
id
    ^'CG'
! !

"ASDBase.ic method 0x2007fba4; bytecode file offset 0x97c468"
!MDFChannelGroup class methodsFor: 'recovered'!
fixedSize
    ^26
! !

"ASDBase.ic method 0x200b6b18; bytecode file offset 0x9b39ac"
!MDFChannelGroup class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('cgPtr' 'cnPtr' 'txPtr' 'recId' 'noOfChannels' 'recordSize' 'noOfCycles')).
    ^recoveredValue1
! !


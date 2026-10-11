"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001856c; bytecode file offset 0x92209c"
!ASAP2Seram class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'flashPageType:' 'ramPageType:' 'readAccessFlashData:' 'verifyAccessFlashCode:' 'readAccessFlashCode:' 'upAndDownloadOnlyActivePage:' 'ramBeginA:' 'ramBeginO:' 'ramEndU:' 'ramEndE:')
! !

"ASDBase.ic method 0x20026ce0; bytecode file offset 0x923928"
!ASAP2Seram class methodsFor: 'recovered'!
keyWord
    ^'SERAM'
! !

"ASDBase.ic method 0x20080148; bytecode file offset 0x97c9fc"
!ASAP2Seram class methodsFor: 'recovered'!
emBehaviorId
    ^169
! !

"ASDBase.ic method 0x200b63b0; bytecode file offset 0x9b39ac"
!ASAP2Seram class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('ramBeginA' 'ramBeginO' 'ramEndU' 'ramEndE')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7414; bytecode file offset 0x9b3da0"
!ASAP2Seram class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (4).
    ^recoveredValue1
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016934; bytecode file offset 0x92209c"
!ASAP2DataAccess class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'flashPageType:' 'ramPageType:' 'readAccessFlashData:' 'verifyAccessFlashCode:' 'readAccessFlashCode:' 'upAndDownloadOnlyActivePage:')
! !

"ASDBase.ic method 0x2001a15c; bytecode file offset 0x92209c"
!ASAP2DataAccess class methodsFor: 'recovered'!
keyWord
    ^'DATA_ACCESS'
! !

"ASDBase.ic method 0x200b6a70; bytecode file offset 0x9b39ac"
!ASAP2DataAccess class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('flashPageType' 'ramPageType' 'readAccessFlashData' 'verifyAccessFlashCode' 'readAccessFlashCode' 'upAndDownloadOnlyActivePage')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b75ec; bytecode file offset 0x9b3f08"
!ASAP2DataAccess class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (6).
    ^recoveredValue1
! !


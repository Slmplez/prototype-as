"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017fcc; bytecode file offset 0x92209c"
!ASAP2KWP2000V30Upload class methodsFor: 'recovered'!
keyWord
    ^'UPLOAD'
! !

"ASDBase.ic method 0x200248b4; bytecode file offset 0x92209c"
!ASAP2KWP2000V30Upload class methodsFor: 'recovered'!
members
    ^#('uploadCommand')
! !

"ASDBase.ic method 0x200724a8; bytecode file offset 0x96ee04"
!ASAP2KWP2000V30Upload class methodsFor: 'recovered'!
fixedSize
    ^1
! !

"ASDBase.ic method 0x2020c440; bytecode file offset 0xb08d1c"
!ASAP2KWP2000V30Upload class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('UPLOAD_COMMAND') put: ('getUploadCommand:').
    recoveredValue2 := options.
    recoveredValue3 := Association.
    recoveredValue4 := (recoveredValue3) key: ('UPLOAD_COMMAND') value: ('putIn:uploadCommand:').
    (recoveredValue2) add: (recoveredValue4).
    ^self
! !


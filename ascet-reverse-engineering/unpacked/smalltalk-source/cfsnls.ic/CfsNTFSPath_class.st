"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000a50; bytecode file offset 0x23de0"
!CfsNTFSPath class methodsFor: 'recovered'!
fileSystemType
    ^'NTFS'
! !

"cfsnls.ic method 0x20000ac8; bytecode file offset 0x23de0"
!CfsNTFSPath class methodsFor: 'recovered'!
description
    ^'NT File System (NTFS) (Windows NT)'
! !

"cfsnls.ic method 0x200020e8; bytecode file offset 0x25318"
!CfsNTFSPath class methodsFor: 'recovered'!
maximumLength
    ^259
! !

"cfsnls.ic method 0x2000235c; bytecode file offset 0x2558c"
!CfsNTFSPath class methodsFor: 'recovered'!
maximumFileNameLength
    ^254
! !

"cfsnls.ic method 0x200024ac; bytecode file offset 0x25704"
!CfsNTFSPath class methodsFor: 'recovered'!
isIllegalCharacter: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('"*/:<>?\|') includes: (recoveredValue0).
    ^recoveredValue1
! !


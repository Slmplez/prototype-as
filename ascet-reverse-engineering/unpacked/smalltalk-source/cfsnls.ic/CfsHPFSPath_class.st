"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000a68; bytecode file offset 0x23de0"
!CfsHPFSPath class methodsFor: 'recovered'!
description
    ^'High Performance File System (OS/2 HPFS)'
! !

"cfsnls.ic method 0x20000ad4; bytecode file offset 0x23de0"
!CfsHPFSPath class methodsFor: 'recovered'!
fileSystemType
    ^'HPFS'
! !

"cfsnls.ic method 0x200020e0; bytecode file offset 0x25318"
!CfsHPFSPath class methodsFor: 'recovered'!
maximumLength
    ^259
! !

"cfsnls.ic method 0x20002354; bytecode file offset 0x2558c"
!CfsHPFSPath class methodsFor: 'recovered'!
maximumFileNameLength
    ^254
! !

"cfsnls.ic method 0x200024cc; bytecode file offset 0x25704"
!CfsHPFSPath class methodsFor: 'recovered'!
isIllegalCharacter: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('"*,/:;<=>?\|') includes: (recoveredValue0).
    ^recoveredValue1
! !


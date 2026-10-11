"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016820; bytecode file offset 0x92209c"
!SGCgFileoutInfo methodsFor: 'recovered'!
fileExtensionKey
    ^'FILE.EXTENSION'
! !

"ASDBase.ic method 0x200172dc; bytecode file offset 0x92209c"
!SGCgFileoutInfo methodsFor: 'recovered'!
fileCreationDateKey
    ^'FILE.DATE'
! !

"ASDBase.ic method 0x20019604; bytecode file offset 0x92209c"
!SGCgFileoutInfo methodsFor: 'recovered'!
fileCreationTimeKey
    ^'FILE.TIME'
! !

"ASDBase.ic method 0x20020798; bytecode file offset 0x92209c"
!SGCgFileoutInfo methodsFor: 'recovered'!
fileDescriptionKey
    ^'FILE.DESCRIPTION'
! !

"ASDBase.ic method 0x20024e78; bytecode file offset 0x92209c"
!SGCgFileoutInfo methodsFor: 'recovered'!
fileNameKey
    ^'FILE.NAME'
! !

"ASDBase.ic method 0x2004a2bc; bytecode file offset 0x947128"
!SGCgFileoutInfo methodsFor: 'recovered'!
extension
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileExtensionKey.
    recoveredValue1 := (self) bannerInfosAt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a66c; bytecode file offset 0x947128"
!SGCgFileoutInfo methodsFor: 'recovered'!
description
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileDescriptionKey.
    recoveredValue1 := (self) bannerInfosAt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a6ac; bytecode file offset 0x947128"
!SGCgFileoutInfo methodsFor: 'recovered'!
name
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileNameKey.
    recoveredValue1 := (self) bannerInfosAt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005fc54; bytecode file offset 0x95c58c"
!SGCgFileoutInfo methodsFor: 'recovered'!
creationTime
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fileCreationTimeKey.
    recoveredValue1 := (self) bannerInfosAt: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) forceSBString.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fca4; bytecode file offset 0x95c58c"
!SGCgFileoutInfo methodsFor: 'recovered'!
creationDate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fileCreationDateKey.
    recoveredValue1 := (self) bannerInfosAt: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) forceSBString.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bc874; bytecode file offset 0x9b94b8"
!SGCgFileoutInfo methodsFor: 'recovered'!
extension: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) bannerInfos.
    recoveredValue1 := (self) fileExtensionKey.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bcb08; bytecode file offset 0x9b94b8"
!SGCgFileoutInfo methodsFor: 'recovered'!
description: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) bannerInfos.
    recoveredValue1 := (self) fileDescriptionKey.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bcb1c; bytecode file offset 0x9b94b8"
!SGCgFileoutInfo methodsFor: 'recovered'!
creationDate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) bannerInfos.
    recoveredValue1 := (self) fileCreationDateKey.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bcb6c; bytecode file offset 0x9b94b8"
!SGCgFileoutInfo methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) bannerInfos.
    recoveredValue1 := (self) fileNameKey.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bcb80; bytecode file offset 0x9b94b8"
!SGCgFileoutInfo methodsFor: 'recovered'!
creationTime: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) bannerInfos.
    recoveredValue1 := (self) fileCreationTimeKey.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !


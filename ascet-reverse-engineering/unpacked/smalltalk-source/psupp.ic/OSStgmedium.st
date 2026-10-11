"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001aa0; bytecode file offset 0x155d58"
!OSStgmedium methodsFor: 'recovered'!
tymed
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200087e8; bytecode file offset 0x15caa4"
!OSStgmedium methodsFor: 'recovered'!
releaseStgMedium
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ReleaseStgMedium.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20010220; bytecode file offset 0x165330"
!OSStgmedium methodsFor: 'recovered'!
tymed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200122fc; bytecode file offset 0x166e00"
!OSStgmedium methodsFor: 'recovered'!
hGlobal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200123e0; bytecode file offset 0x166e00"
!OSStgmedium methodsFor: 'recovered'!
hBitmap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200123ec; bytecode file offset 0x166e00"
!OSStgmedium methodsFor: 'recovered'!
lpszFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012b60; bytecode file offset 0x166e00"
!OSStgmedium methodsFor: 'recovered'!
pstg: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012c2c; bytecode file offset 0x166e00"
!OSStgmedium methodsFor: 'recovered'!
hEnhMetaFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200130d0; bytecode file offset 0x166e00"
!OSStgmedium methodsFor: 'recovered'!
pstm: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013520; bytecode file offset 0x166e00"
!OSStgmedium methodsFor: 'recovered'!
hMetaFilePict: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013f1c; bytecode file offset 0x1683c0"
!OSStgmedium methodsFor: 'recovered'!
pUnkForRelease: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b3f8; bytecode file offset 0x16f1fc"
!OSStgmedium methodsFor: 'recovered'!
pstm
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSIStream.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b484; bytecode file offset 0x16f1fc"
!OSStgmedium methodsFor: 'recovered'!
lpszFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSOleStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b588; bytecode file offset 0x16f1fc"
!OSStgmedium methodsFor: 'recovered'!
hGlobal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHglobal.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b6a0; bytecode file offset 0x16f1fc"
!OSStgmedium methodsFor: 'recovered'!
hBitmap
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHbitmap.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b704; bytecode file offset 0x16f1fc"
!OSStgmedium methodsFor: 'recovered'!
hEnhMetaFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHenhmetafile.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b7cc; bytecode file offset 0x16f1fc"
!OSStgmedium methodsFor: 'recovered'!
pstg
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSIStorage.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b808; bytecode file offset 0x16f1fc"
!OSStgmedium methodsFor: 'recovered'!
hMetaFilePict
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHmetafilepict.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bc10; bytecode file offset 0x16f8e8"
!OSStgmedium methodsFor: 'recovered'!
pUnkForRelease
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSIUnknown.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !


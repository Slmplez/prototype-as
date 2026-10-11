"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000000; bytecode file offset 0x232e0"
!CommonFileSystem class methodsFor: 'recovered'!
_PRAGMA_CfsConstants
    ^self
! !

"cfsnls.ic method 0x20000038; bytecode file offset 0x232e0"
!CommonFileSystem class methodsFor: 'recovered'!
_PRAGMA_NlsCatCFS
    ^self
! !

"cfsnls.ic method 0x20001438; bytecode file offset 0x2469c"
!CommonFileSystem class methodsFor: 'recovered'!
loaded
    (self) localize.
    ^self
! !

"cfsnls.ic method 0x20003110; bytecode file offset 0x26374"
!CommonFileSystem class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatCFS.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"cfsnls.ic method 0x20006aac; bytecode file offset 0x29cf4"
!CommonFileSystem class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('DirectoryDescriptors') inClassNamed: ('CfsDirectoryDescriptor').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) initializeToNilClassVariable: ('StartUpDirectory') inClassNamed: ('CfsDirectoryDescriptor').
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) initializeToNilClassVariable: ('FileDescriptors') inClassNamed: ('CfsFileDescriptor').
    ^self
! !


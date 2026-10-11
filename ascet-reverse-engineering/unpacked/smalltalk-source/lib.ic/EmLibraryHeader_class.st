"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200011a0; bytecode file offset 0x3d1e8"
!EmLibraryHeader class methodsFor: 'recovered'!
filePointer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EmLibraryPointer.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"lib.ic method 0x200014ec; bytecode file offset 0x3d664"
!EmLibraryHeader class methodsFor: 'recovered'!
empty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fixedLength.
    recoveredValue1 := (self) new: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20002748; bytecode file offset 0x3e768"
!EmLibraryHeader class methodsFor: 'recovered'!
fixedLength
    ^256
! !

"lib.ic method 0x20002810; bytecode file offset 0x3e838"
!EmLibraryHeader class methodsFor: 'recovered'!
versionLocation
    ^5
! !

"lib.ic method 0x20002818; bytecode file offset 0x3e838"
!EmLibraryHeader class methodsFor: 'recovered'!
oldLibraryVersion
    ^5
! !

"lib.ic method 0x20002844; bytecode file offset 0x3e864"
!EmLibraryHeader class methodsFor: 'recovered'!
libraryVersion
    ^6
! !

"lib.ic method 0x20008690; bytecode file offset 0x446c4"
!EmLibraryHeader class methodsFor: 'recovered'!
addInitialTo: recoveredArg1 version: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) fixedLength.
    recoveredValue2 := (self) empty.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) create: (recoveredValue3).
    recoveredValue5 := (self) filePointer.
    (recoveredValue0) write: (recoveredValue1) from: (recoveredValue4) startingAt: (1) at: (recoveredValue5) offsetBy: (0).
    ^self
! !


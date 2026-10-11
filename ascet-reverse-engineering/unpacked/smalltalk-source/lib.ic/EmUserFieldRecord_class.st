"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20002af8; bytecode file offset 0x3eb18"
!EmUserFieldRecord class methodsFor: 'recovered'!
tag
    ^161
! !

"lib.ic method 0x2000f788; bytecode file offset 0x4b7e0"
!EmUserFieldRecord class methodsFor: 'recovered'!
on: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := String.
    recoveredValue1 := (self) headerSize.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) libraryFormatFor: (recoveredValue3).
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) new.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) collection: (recoveredValue8).
    recoveredValue9 := recoveredValue6.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) size.
    (recoveredValue9) initializeToUse: (recoveredValue11).
    recoveredValue12 := recoveredValue6.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) containsByteCharacters.
    (recoveredValue12) isByteCharacters: (recoveredValue14).
    recoveredValue15 := recoveredValue6.
    recoveredValue16 := EmLibraryPointer.
    recoveredValue17 := (recoveredValue16) void.
    (recoveredValue15) filePointer: (recoveredValue17).
    ^recoveredValue6
! !


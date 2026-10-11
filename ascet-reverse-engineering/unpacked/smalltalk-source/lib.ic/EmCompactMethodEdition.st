"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200030b8; bytecode file offset 0x3f0d8"
!EmCompactMethodEdition methodsFor: 'recovered'!
mustBeCompiled
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := statusByte.
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"lib.ic method 0x200030cc; bytecode file offset 0x3f0ec"
!EmCompactMethodEdition methodsFor: 'recovered'!
mustBeCompiledFirst
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := statusByte.
    recoveredValue1 := (recoveredValue0) = (2).
    ^recoveredValue1
! !

"lib.ic method 0x200040c8; bytecode file offset 0x400e8"
!EmCompactMethodEdition methodsFor: 'recovered'!
filePointer: recoveredArg1 statusByte: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    filePointer := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    statusByte := recoveredValue1.
    ^self
! !

"lib.ic method 0x20004cc8; bytecode file offset 0x40cf4"
!EmCompactMethodEdition methodsFor: 'recovered'!
source
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) cache.
    recoveredValue2 := filePointer.
    recoveredValue3 := (recoveredValue1) methodSourceAt: (recoveredValue2) decompress: (true).
    ^recoveredValue3
! !


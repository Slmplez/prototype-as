"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000ba4; bytecode file offset 0x7ce40"
!CgWinICOFileFormat class methodsFor: 'recovered'!
formatName
    ^'Windows ICO'
! !

"winsys.ic method 0x20006f88; bytecode file offset 0x83154"
!CgWinICOFileFormat class methodsFor: 'recovered'!
formatMatchesByteStream: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) readFormatLE: ('ww').
    recoveredValue2 := (recoveredValue1) = (#(0 1)).
    ^recoveredValue2
! !


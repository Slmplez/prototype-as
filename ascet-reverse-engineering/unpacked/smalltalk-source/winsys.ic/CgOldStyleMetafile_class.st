"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2000b984; bytecode file offset 0x87b58"
!CgOldStyleMetafile class methodsFor: 'recovered'!
screen: recoveredArg1 fileName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) screen: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := OSHmetafile.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue3) getMetaFile: (recoveredValue4).
    (recoveredValue2) osHmf: (recoveredValue5).
    recoveredValue6 := (recoveredValue1) shouldNotBeFreed.
    ^recoveredValue6
! !

"winsys.ic method 0x2001ad88; bytecode file offset 0x96f74"
!CgOldStyleMetafile class methodsFor: 'recovered'!
compatibleWith: recoveredArg1 x: recoveredArg2 y: recoveredArg3 width: recoveredArg4 height: recoveredArg5 description: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) screen.
    recoveredValue2 := (self) screen: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := OSHdc.
    recoveredValue5 := (recoveredValue4) createMetaFile: (nil).
    (recoveredValue3) handle: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) width: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := recoveredArg5.
    (recoveredValue8) height: (recoveredValue9).
    recoveredValue10 := recoveredValue2.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) depth.
    (recoveredValue10) depth: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) privateSetDefaultPalette.
    recoveredValue14 := (recoveredValue2) shouldNotBeFreed.
    ^recoveredValue14
! !


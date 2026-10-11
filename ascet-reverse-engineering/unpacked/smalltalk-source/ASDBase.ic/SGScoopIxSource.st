"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20042658; bytecode file offset 0x93ef10"
!SGScoopIxSource methodsFor: 'recovered'!
sixSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := sixSourceHandle.
    recoveredValue1 := (recoveredValue0) sixSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061550; bytecode file offset 0x95e838"
!SGScoopIxSource methodsFor: 'recovered'!
moduleFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileName.
    recoveredValue1 := (recoveredValue0) , ('.six').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c651c; bytecode file offset 0x9c2dd0"
!SGScoopIxSource methodsFor: 'recovered'!
sixSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sixSourceHandle := recoveredValue0.
    ^self
! !


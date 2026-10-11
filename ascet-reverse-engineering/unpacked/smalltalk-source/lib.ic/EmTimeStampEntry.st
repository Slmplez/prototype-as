"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000120; bytecode file offset 0x3c21c"
!EmTimeStampEntry methodsFor: 'recovered'!
key
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"lib.ic method 0x20001180; bytecode file offset 0x3d1e8"
!EmTimeStampEntry methodsFor: 'recovered'!
totalValueSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EmTimeStamp.
    recoveredValue1 := (recoveredValue0) fixedLength.
    ^recoveredValue1
! !

"lib.ic method 0x2000158c; bytecode file offset 0x3d664"
!EmTimeStampEntry methodsFor: 'recovered'!
value
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) valueIndex.
    recoveredValue1 := (self) timeStampAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20003354; bytecode file offset 0x3f37c"
!EmTimeStampEntry methodsFor: 'recovered'!
replaceValueWith: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := MxEMc142.
    (self) fatalError: (recoveredValue0).
    ^self
! !

"lib.ic method 0x20003e54; bytecode file offset 0x3feac"
!EmTimeStampEntry methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) valueIndex.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) putTimeStamp: (recoveredValue1).
    ^self
! !


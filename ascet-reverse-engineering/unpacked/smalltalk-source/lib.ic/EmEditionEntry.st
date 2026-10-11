"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000180; bytecode file offset 0x3c21c"
!EmEditionEntry methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := (self) key.
    ^recoveredValue0
! !

"lib.ic method 0x20001190; bytecode file offset 0x3d1e8"
!EmEditionEntry methodsFor: 'recovered'!
totalKeySize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EmTimeStamp.
    recoveredValue1 := (recoveredValue0) fixedLength.
    ^recoveredValue1
! !

"lib.ic method 0x200011c0; bytecode file offset 0x3d1e8"
!EmEditionEntry methodsFor: 'recovered'!
keySize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EmTimeStamp.
    recoveredValue1 := (recoveredValue0) fixedLength.
    ^recoveredValue1
! !

"lib.ic method 0x200014bc; bytecode file offset 0x3d664"
!EmEditionEntry methodsFor: 'recovered'!
key
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) keyIndex.
    recoveredValue1 := (self) timeStampAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20003dc4; bytecode file offset 0x3feac"
!EmEditionEntry methodsFor: 'recovered'!
key: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) keyIndex.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) putTimeStamp: (recoveredValue1).
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200001e0; bytecode file offset 0x3c21c"
!EmAssociationEntry methodsFor: 'recovered'!
valueIndex
    | recoveredValue0 |
    recoveredValue0 := (self) startPosition.
    ^recoveredValue0
! !

"lib.ic method 0x20000b08; bytecode file offset 0x3cba0"
!EmAssociationEntry methodsFor: 'recovered'!
totalValueSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) redundantLength.
    ^recoveredValue1
! !

"lib.ic method 0x2000139c; bytecode file offset 0x3d664"
!EmAssociationEntry methodsFor: 'recovered'!
value
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) valueIndex.
    recoveredValue1 := (self) filePointerAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20001d68; bytecode file offset 0x3ddc0"
!EmAssociationEntry methodsFor: 'recovered'!
length
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) totalKeySize.
    recoveredValue1 := (self) totalValueSize.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20001d98; bytecode file offset 0x3ddc0"
!EmAssociationEntry methodsFor: 'recovered'!
keyIndex
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (self) totalValueSize.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20003e14; bytecode file offset 0x3feac"
!EmAssociationEntry methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) valueIndex.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) putFilePointer: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20003e74; bytecode file offset 0x3feac"
!EmAssociationEntry methodsFor: 'recovered'!
replaceValueWith: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) valueIndex.
    recoveredValue1 := recoveredArg1.
    (self) replacePointerAt: (recoveredValue0) with: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20004c88; bytecode file offset 0x40cd0"
!EmAssociationEntry methodsFor: 'recovered'!
asAssociation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Association.
    recoveredValue1 := (self) key.
    recoveredValue2 := (self) value.
    recoveredValue3 := (recoveredValue0) key: (recoveredValue1) value: (recoveredValue2).
    ^recoveredValue3
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012db0; bytecode file offset 0x912098"
!DBLiteralItem class methodsFor: 'recovered'!
BitClass
    | recoveredValue0 |
    recoveredValue0 := DB8BitItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004f944; bytecode file offset 0x94d048"
!DBLiteralItem class methodsFor: 'recovered'!
byteSize
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200636c4; bytecode file offset 0x95ff88"
!DBLiteralItem class methodsFor: 'recovered'!
bitSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) byteSize.
    recoveredValue1 := (recoveredValue0) * (8).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007d784; bytecode file offset 0x97c330"
!DBLiteralItem class methodsFor: 'recovered'!
isDBBitItem
    ^false
! !

"ASDBase.ic method 0x200cb1b0; bytecode file offset 0x9c7b3c"
!DBLiteralItem class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) offset: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cc54c; bytecode file offset 0x9c8f90"
!DBLiteralItem class methodsFor: 'recovered'!
interval
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (self) maxRangeNeg.
    recoveredValue2 := (self) maxRange.
    recoveredValue3 := (recoveredValue0) left: (recoveredValue1) right: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20113f2c; bytecode file offset 0xa1088c"
!DBLiteralItem class methodsFor: 'recovered'!
create: recoveredArg1 name: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) offset: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    (recoveredValue1) name: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20071fc0; bytecode file offset 0x96ee04"
!SGCgVarOptimize methodsFor: 'recovered'!
bitAssigned
    ^1
! !

"ASDBase.ic method 0x200725a8; bytecode file offset 0x96f1c4"
!SGCgVarOptimize methodsFor: 'recovered'!
bitUsed
    ^2
! !

"ASDBase.ic method 0x2007853c; bytecode file offset 0x9757c8"
!SGCgVarOptimize methodsFor: 'recovered'!
isMdlVarOptimize
    ^true
! !

"ASDBase.ic method 0x2008a530; bytecode file offset 0x98729c"
!SGCgVarOptimize methodsFor: 'recovered'!
isCgOptUsed
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitUsed.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a8c0; bytecode file offset 0x98729c"
!SGCgVarOptimize methodsFor: 'recovered'!
isCgOptAssigned
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitAssigned.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b0d18; bytecode file offset 0x9add94"
!SGCgVarOptimize methodsFor: 'recovered'!
cgOptUsed
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitUsed.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0d38; bytecode file offset 0x9add94"
!SGCgVarOptimize methodsFor: 'recovered'!
cgOptAssigned
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitAssigned.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0fc8; bytecode file offset 0x9add94"
!SGCgVarOptimize methodsFor: 'recovered'!
cgOptNotAssigned
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitAssigned.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1418; bytecode file offset 0x9add94"
!SGCgVarOptimize methodsFor: 'recovered'!
cgOptNotUsed
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitUsed.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200e6840; bytecode file offset 0x9e30fc"
!SGCgVarOptimize methodsFor: 'recovered'!
initialize
    super initialize.
    flags := 0.
    ^self
! !


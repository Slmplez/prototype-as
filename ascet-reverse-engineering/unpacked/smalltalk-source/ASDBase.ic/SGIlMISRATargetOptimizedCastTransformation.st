"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006e494; bytecode file offset 0x96af48"
!SGIlMISRATargetOptimizedCastTransformation methodsFor: 'recovered'!
bitSize
    | recoveredValue0 |
    recoveredValue0 := bitSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bbdf8; bytecode file offset 0x9b86d4"
!SGIlMISRATargetOptimizedCastTransformation methodsFor: 'recovered'!
signedTypeIncluding: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) bitSize.
    recoveredValue1 := RBInt32Signed.
    recoveredValue2 := (recoveredValue1) createDefault.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) intSizedType: (recoveredValue2) interval: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bbe10; bytecode file offset 0x9b86d4"
!SGIlMISRATargetOptimizedCastTransformation methodsFor: 'recovered'!
unsignedTypeIncluding: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) bitSize.
    recoveredValue1 := RBInt32Unsigned.
    recoveredValue2 := (recoveredValue1) createDefault.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) intSizedType: (recoveredValue2) interval: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c4d24; bytecode file offset 0x9c16b0"
!SGIlMISRATargetOptimizedCastTransformation methodsFor: 'recovered'!
bitSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bitSize := recoveredValue0.
    ^self
! !


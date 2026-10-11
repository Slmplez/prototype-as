"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019754; bytecode file offset 0x92209c"
!SGIlOSExpERCOSEK1135Simu methodsFor: 'recovered'!
coopLevelMask
    ^65534
! !

"ASDBase.ic method 0x2001d948; bytecode file offset 0x92209c"
!SGIlOSExpERCOSEK1135Simu methodsFor: 'recovered'!
decrementerMask
    ^63488
! !

"ASDBase.ic method 0x2002393c; bytecode file offset 0x92209c"
!SGIlOSExpERCOSEK1135Simu methodsFor: 'recovered'!
lsIntMask
    ^'0xF800'
! !

"ASDBase.ic method 0x20024dd0; bytecode file offset 0x92209c"
!SGIlOSExpERCOSEK1135Simu methodsFor: 'recovered'!
preempLevelExclusiveSwMask
    ^65532
! !

"ASDBase.ic method 0x200bb5ec; bytecode file offset 0x9b7eac"
!SGIlOSExpERCOSEK1135Simu methodsFor: 'recovered'!
iterateMask: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) << (1).
    recoveredValue2 := (recoveredValue1) bitAnd: (65535).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bb628; bytecode file offset 0x9b7ee4"
!SGIlOSExpERCOSEK1135Simu methodsFor: 'recovered'!
iterateLevelMask: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) << (1).
    recoveredValue2 := (recoveredValue1) bitAnd: (15).
    ^recoveredValue2
! !


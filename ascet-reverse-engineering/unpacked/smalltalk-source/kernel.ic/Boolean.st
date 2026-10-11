"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200000fc; bytecode file offset 0x4b1b0"
!Boolean methodsFor: 'recovered'!
deepCopy
    ^self
! !

"kernel.ic method 0x20000174; bytecode file offset 0x4b1b0"
!Boolean methodsFor: 'recovered'!
shallowCopy
    ^self
! !

"kernel.ic method 0x200020dc; bytecode file offset 0x4cfe8"
!Boolean methodsFor: 'recovered'!
eqv: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) == (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20002c44; bytecode file offset 0x4db50"
!Boolean methodsFor: 'recovered'!
xor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) == (recoveredValue0).
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"kernel.ic method 0x20004c04; bytecode file offset 0x4fb74"
!Boolean methodsFor: 'recovered'!
storeOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printOn: (recoveredValue0).
    ^self
! !


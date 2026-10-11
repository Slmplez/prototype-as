"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009998; bytecode file offset 0x908be4"
!SGCgCounter methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := (self) currentValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005ff2c; bytecode file offset 0x95c7e0"
!SGCgCounter methodsFor: 'recovered'!
reset
    currentValue := 0.
    ^self
! !

"ASDBase.ic method 0x20065afc; bytecode file offset 0x963428"
!SGCgCounter methodsFor: 'recovered'!
currentValue
    | recoveredValue0 |
    recoveredValue0 := currentValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008aaec; bytecode file offset 0x9873a8"
!SGCgCounter methodsFor: 'recovered'!
decrement
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := currentValue.
    recoveredValue1 := (recoveredValue0) + (-1).
    currentValue := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008ab18; bytecode file offset 0x9873cc"
!SGCgCounter methodsFor: 'recovered'!
increment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := currentValue.
    recoveredValue1 := (recoveredValue0) + (1).
    currentValue := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200a2dd8; bytecode file offset 0x99f68c"
!SGCgCounter methodsFor: 'recovered'!
increment: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := currentValue.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    currentValue := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200a2dec; bytecode file offset 0x99f6a0"
!SGCgCounter methodsFor: 'recovered'!
decrement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := currentValue.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    currentValue := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200d66f8; bytecode file offset 0x9d3134"
!SGCgCounter methodsFor: 'recovered'!
initialize
    super initialize.
    (self) reset.
    ^self
! !


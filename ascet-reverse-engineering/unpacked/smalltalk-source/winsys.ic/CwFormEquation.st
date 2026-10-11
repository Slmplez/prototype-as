"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20002a50; bytecode file offset 0x7ed00"
!CwFormEquation methodsFor: 'recovered'!
aX
    | recoveredValue0 |
    recoveredValue0 := aX.
    ^recoveredValue0
! !

"winsys.ic method 0x20002cb8; bytecode file offset 0x7efc0"
!CwFormEquation methodsFor: 'recovered'!
b
    | recoveredValue0 |
    recoveredValue0 := b.
    ^recoveredValue0
! !

"winsys.ic method 0x20006c40; bytecode file offset 0x82e00"
!CwFormEquation methodsFor: 'recovered'!
initialize
    b := 0.
    aX := 0.
    ^self
! !

"winsys.ic method 0x20006e5c; bytecode file offset 0x8301c"
!CwFormEquation methodsFor: 'recovered'!
solveX: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := aX.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) * (recoveredValue1).
    recoveredValue3 := b.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    ^recoveredValue4
! !

"winsys.ic method 0x20006f28; bytecode file offset 0x830ec"
!CwFormEquation methodsFor: 'recovered'!
solveY: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := b.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    recoveredValue3 := aX.
    recoveredValue4 := (recoveredValue2) / (recoveredValue3).
    ^recoveredValue4
! !

"winsys.ic method 0x200071dc; bytecode file offset 0x8346c"
!CwFormEquation methodsFor: 'recovered'!
aX: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    aX := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200074d4; bytecode file offset 0x836b4"
!CwFormEquation methodsFor: 'recovered'!
b: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    b := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000a6a4; bytecode file offset 0x8686c"
!CwFormEquation methodsFor: 'recovered'!
plusB: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := aX.
    recoveredValue2 := b.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := (recoveredValue0) aX: (recoveredValue1) plusB: (recoveredValue4).
    ^recoveredValue5
! !

"winsys.ic method 0x2000a6c4; bytecode file offset 0x8688c"
!CwFormEquation methodsFor: 'recovered'!
minusB: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := aX.
    recoveredValue2 := b.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) - (recoveredValue3).
    recoveredValue5 := (recoveredValue0) aX: (recoveredValue1) plusB: (recoveredValue4).
    ^recoveredValue5
! !

"winsys.ic method 0x2000d5b0; bytecode file offset 0x89780"
!CwFormEquation methodsFor: 'recovered'!
plus: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) class.
    recoveredValue1 := aX.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) aX.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := b.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) b.
    recoveredValue8 := (recoveredValue5) + (recoveredValue7).
    recoveredValue9 := (recoveredValue0) aX: (recoveredValue4) plusB: (recoveredValue8).
    ^recoveredValue9
! !

"winsys.ic method 0x2000d5dc; bytecode file offset 0x897ac"
!CwFormEquation methodsFor: 'recovered'!
minus: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) class.
    recoveredValue1 := aX.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) aX.
    recoveredValue4 := (recoveredValue1) - (recoveredValue3).
    recoveredValue5 := b.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) b.
    recoveredValue8 := (recoveredValue5) - (recoveredValue7).
    recoveredValue9 := (recoveredValue0) aX: (recoveredValue4) plusB: (recoveredValue8).
    ^recoveredValue9
! !

"winsys.ic method 0x2000eb6c; bytecode file offset 0x8ad38"
!CwFormEquation methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := aX.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) nextPutAll: ('X + ').
    recoveredValue3 := b.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    ^self
! !


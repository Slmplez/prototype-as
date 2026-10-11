"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200022f0; bytecode file offset 0x3e340"
!EmDeclarationToken methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"lib.ic method 0x20002334; bytecode file offset 0x3e394"
!EmDeclarationToken methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"lib.ic method 0x20004790; bytecode file offset 0x407c0"
!EmDeclarationToken methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"lib.ic method 0x200047d4; bytecode file offset 0x407fc"
!EmDeclarationToken methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"lib.ic method 0x2000d250; bytecode file offset 0x4928c"
!EmDeclarationToken methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('Token').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) type.
    recoveredValue4 := (recoveredValue3) printString.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) nextPutAll: ('  (').
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := (self) value.
    recoveredValue8 := (recoveredValue7) printString.
    (recoveredValue6) nextPutAll: (recoveredValue8).
    (recoveredValue0) nextPut: ($)).
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20001aa8; bytecode file offset 0x52874"
!Character methodsFor: 'recovered'!
ewHeightUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) fontStruct.
    recoveredValue2 := (recoveredValue1) height.
    ^recoveredValue2
! !

"extwid.ic method 0x20001bd8; bytecode file offset 0x52a74"
!Character methodsFor: 'recovered'!
ewWidthUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) asString.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) ewWidthUsing: (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x20001ca8; bytecode file offset 0x52a74"
!Character methodsFor: 'recovered'!
ewDrawUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) asString.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) ewDrawUsing: (recoveredValue1).
    ^recoveredValue2
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b24c; bytecode file offset 0x908be4"
!ASAP2TypedValue methodsFor: 'recovered'!
position
    | recoveredValue0 |
    recoveredValue0 := (self) value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004af68; bytecode file offset 0x947a60"
!ASAP2TypedValue methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b438; bytecode file offset 0x947d20"
!ASAP2TypedValue methodsFor: 'recovered'!
dataType
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b530; bytecode file offset 0x947ec0"
!ASAP2TypedValue methodsFor: 'recovered'!
index
    | recoveredValue0 |
    recoveredValue0 := (self) at: (3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a5e60; bytecode file offset 0x9a27f0"
!ASAP2TypedValue methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a5f78; bytecode file offset 0x9a2a28"
!ASAP2TypedValue methodsFor: 'recovered'!
dataType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (2) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6260; bytecode file offset 0x9a2b84"
!ASAP2TypedValue methodsFor: 'recovered'!
index: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (3) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200ee434; bytecode file offset 0x9ead40"
!ASAP2TypedValue methodsFor: 'recovered'!
putIn
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ProgressingReadWriteStream.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) putIn: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) contents.
    ^recoveredValue4
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002238; bytecode file offset 0x8ffcfc"
!IniEntry methodsFor: 'recovered'!
initialize
    ^self
! !

"ASDBase.ic method 0x20040c24; bytecode file offset 0x93d83c"
!IniEntry methodsFor: 'recovered'!
asString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := value.
    recoveredValue1 := (recoveredValue0) asString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040e1c; bytecode file offset 0x93d83c"
!IniEntry methodsFor: 'recovered'!
asInteger
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := value.
    recoveredValue1 := (recoveredValue0) asInteger.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065ea4; bytecode file offset 0x963428"
!IniEntry methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067b84; bytecode file offset 0x9646f8"
!IniEntry methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068b14; bytecode file offset 0x965b90"
!IniEntry methodsFor: 'recovered'!
lineNumber
    | recoveredValue0 |
    recoveredValue0 := lineNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be6dc; bytecode file offset 0x9bb178"
!IniEntry methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf1a0; bytecode file offset 0x9bc0b4"
!IniEntry methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c08dc; bytecode file offset 0x9bd228"
!IniEntry methodsFor: 'recovered'!
lineNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lineNumber := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20192b34; bytecode file offset 0xa8f3f4"
!IniEntry methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := name.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) nextPut: ($=).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := value.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x201f5794; bytecode file offset 0xaf2064"
!IniEntry methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := (self) name.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) nextPutAll: (' = ').
    recoveredValue5 := (self) value.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) printOn: (recoveredValue6).
    ^self
! !


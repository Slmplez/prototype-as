"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b45c; bytecode file offset 0x908be4"
!ASDEnumerationEntry methodsFor: 'recovered'!
string
    | recoveredValue0 |
    recoveredValue0 := (self) enumeratorName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003b078; bytecode file offset 0x938608"
!ASDEnumerationEntry methodsFor: 'recovered'!
string: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) enumeratorName: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066384; bytecode file offset 0x963428"
!ASDEnumerationEntry methodsFor: 'recovered'!
enumeratorName
    | recoveredValue0 |
    recoveredValue0 := enumeratorName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067a0c; bytecode file offset 0x9646f8"
!ASDEnumerationEntry methodsFor: 'recovered'!
enumeratorCode
    | recoveredValue0 |
    recoveredValue0 := enumeratorCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082ee4; bytecode file offset 0x97f798"
!ASDEnumerationEntry methodsFor: 'recovered'!
enumeratorName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    enumeratorName := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082f48; bytecode file offset 0x97f81c"
!ASDEnumerationEntry methodsFor: 'recovered'!
enumeratorCode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    enumeratorCode := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20085c28; bytecode file offset 0x9824ec"
!ASDEnumerationEntry methodsFor: 'recovered'!
< recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) enumeratorCode.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) enumeratorCode.
    recoveredValue3 := (recoveredValue0) < (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20085ca0; bytecode file offset 0x982564"
!ASDEnumerationEntry methodsFor: 'recovered'!
<= recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) enumeratorCode.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) enumeratorCode.
    recoveredValue3 := (recoveredValue0) <= (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20152ff4; bytecode file offset 0xa4f8b4"
!ASDEnumerationEntry methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := enumeratorName.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) nextPutAll: (':').
    recoveredValue3 := enumeratorCode.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    ^self
! !


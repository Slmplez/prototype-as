"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000bde0; bytecode file offset 0x908be4"
!AbtTypeField class methodsFor: 'recovered'!
alignedLength
    | recoveredValue0 |
    recoveredValue0 := (self) length.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20057ba8; bytecode file offset 0x956284"
!AbtTypeField class methodsFor: 'recovered'!
determineAlignmentSize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) length.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) min: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2007f2cc; bytecode file offset 0x97c330"
!AbtTypeField class methodsFor: 'recovered'!
isPointer
    ^false
! !

"ASDBase.ic method 0x20086c80; bytecode file offset 0x98376c"
!AbtTypeField class methodsFor: 'recovered'!
valueInRecord: recoveredArg1 parentOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) valueInRecord: (recoveredValue0) atOffset: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200914d4; bytecode file offset 0x98de70"
!AbtTypeField class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20096e40; bytecode file offset 0x9937fc"
!AbtTypeField class methodsFor: 'recovered'!
named: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) name: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200af138; bytecode file offset 0x9aba2c"
!AbtTypeField class methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 parentOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) put: (recoveredValue0) intoRecord: (recoveredValue1) atOffset: (recoveredValue2).
    ^recoveredValue3
! !


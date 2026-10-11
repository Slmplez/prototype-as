"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200000fc; bytecode file offset 0x10284"
!AbtTypeField class methodsFor: 'recovered'!
alignedLength
    | recoveredValue0 |
    recoveredValue0 := (self) length.
    ^recoveredValue0
! !

"abtdah.ic method 0x2000087c; bytecode file offset 0x108bc"
!AbtTypeField class methodsFor: 'recovered'!
determineAlignmentSize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) length.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) min: (recoveredValue1).
    ^recoveredValue2
! !

"abtdah.ic method 0x20000dec; bytecode file offset 0x10e2c"
!AbtTypeField class methodsFor: 'recovered'!
isPointer
    ^false
! !

"abtdah.ic method 0x20000fb0; bytecode file offset 0x11000"
!AbtTypeField class methodsFor: 'recovered'!
valueInRecord: recoveredArg1 parentOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) valueInRecord: (recoveredValue0) atOffset: (recoveredValue1).
    ^recoveredValue2
! !

"abtdah.ic method 0x200011b4; bytecode file offset 0x1124c"
!AbtTypeField class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"abtdah.ic method 0x20001340; bytecode file offset 0x11390"
!AbtTypeField class methodsFor: 'recovered'!
named: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) name: (recoveredValue2).
    ^recoveredValue0
! !

"abtdah.ic method 0x20001798; bytecode file offset 0x117c4"
!AbtTypeField class methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 parentOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) put: (recoveredValue0) intoRecord: (recoveredValue1) atOffset: (recoveredValue2).
    ^recoveredValue3
! !


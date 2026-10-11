"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200001f8; bytecode file offset 0x10284"
!AbtRecord class methodsFor: 'recovered'!
newBlankRecord
    | recoveredValue0 |
    recoveredValue0 := (self) new.
    ^recoveredValue0
! !

"abtdah.ic method 0x2000064c; bytecode file offset 0x1068c"
!AbtRecord class methodsFor: 'recovered'!
currentCodePage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtCodePageConverter.
    recoveredValue1 := (recoveredValue0) currentCodePage.
    ^recoveredValue1
! !

"abtdah.ic method 0x20000978; bytecode file offset 0x109ac"
!AbtRecord class methodsFor: 'recovered'!
codePageConversionMessage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtCodePageConverter.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (recoveredValue1) conversionMessage.
    ^recoveredValue2
! !

"abtdah.ic method 0x200011f0; bytecode file offset 0x1124c"
!AbtRecord class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"abtdah.ic method 0x200015f0; bytecode file offset 0x11624"
!AbtRecord class methodsFor: 'recovered'!
codePageConversionMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtCodePageConverter.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) conversionMessage: (recoveredValue2).
    ^self
! !


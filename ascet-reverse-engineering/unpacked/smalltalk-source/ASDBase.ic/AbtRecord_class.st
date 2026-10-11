"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b318; bytecode file offset 0x908be4"
!AbtRecord class methodsFor: 'recovered'!
newBlankRecord
    | recoveredValue0 |
    recoveredValue0 := (self) new.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003dfa8; bytecode file offset 0x93bf94"
!AbtRecord class methodsFor: 'recovered'!
currentCodePage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtCodePageConverter.
    recoveredValue1 := (recoveredValue0) currentCodePage.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005c9ec; bytecode file offset 0x959680"
!AbtRecord class methodsFor: 'recovered'!
codePageConversionMessage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtCodePageConverter.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (recoveredValue1) conversionMessage.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091394; bytecode file offset 0x98de70"
!AbtRecord class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a2ab4; bytecode file offset 0x99f57c"
!AbtRecord class methodsFor: 'recovered'!
codePageConversionMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtCodePageConverter.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) conversionMessage: (recoveredValue2).
    ^self
! !


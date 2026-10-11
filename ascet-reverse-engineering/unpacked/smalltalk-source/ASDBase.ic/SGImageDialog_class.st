"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001bed8; bytecode file offset 0x92209c"
!SGImageDialog class methodsFor: 'recovered'!
editorName
    ^'Icon Editor'
! !

"ASDBase.ic method 0x200e30b0; bytecode file offset 0x9df968"
!SGImageDialog class methodsFor: 'recovered'!
minSize
    | recoveredValue0 |
    recoveredValue0 := (345) @ (400).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201cd528; bytecode file offset 0xac9df8"
!SGImageDialog class methodsFor: 'recovered'!
createForImage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) imageDB: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) image.
    recoveredValue7 := (recoveredValue6) deepCopy.
    (recoveredValue4) originalImage: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) image.
    recoveredValue11 := (recoveredValue10) deepCopy.
    (recoveredValue8) image: (recoveredValue11).
    ^recoveredValue0
! !


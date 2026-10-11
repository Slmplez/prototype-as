"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065e5c; bytecode file offset 0x963428"
!RBAreaStyle methodsFor: 'recovered'!
color
    | recoveredValue0 |
    recoveredValue0 := color.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008951c; bytecode file offset 0x985ef8"
!RBAreaStyle methodsFor: 'recovered'!
initDefault
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) white.
    color := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008961c; bytecode file offset 0x985ef8"
!RBAreaStyle methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) white.
    color := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2009ce98; bytecode file offset 0x99976c"
!RBAreaStyle methodsFor: 'recovered'!
getColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := color.
    recoveredValue1 := CgRGBColor.
    recoveredValue2 := (recoveredValue1) black.
    recoveredValue3 := (recoveredValue0) defaultReturn: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bdb7c; bytecode file offset 0x9bb178"
!RBAreaStyle methodsFor: 'recovered'!
setColor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    color := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200be7e4; bytecode file offset 0x9bb178"
!RBAreaStyle methodsFor: 'recovered'!
color: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    color := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2022710c; bytecode file offset 0xb239d8"
!RBAreaStyle methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) printString.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    (recoveredValue0) cr.
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := color.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := (' color: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    (recoveredValue5) cr.
    recoveredValue10 := recoveredArg1.
    (recoveredValue10) cr.
    recoveredValue11 := recoveredArg1.
    ^recoveredValue11
! !


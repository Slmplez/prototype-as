"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200e2014; bytecode file offset 0x9de8d0"
!SpRGBColor class methodsFor: 'recovered'!
red
    | recoveredValue0 |
    recoveredValue0 := (self) red: (65535) green: (0) blue: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e2c14; bytecode file offset 0x9df4d0"
!SpRGBColor class methodsFor: 'recovered'!
green
    | recoveredValue0 |
    recoveredValue0 := (self) red: (0) green: (65535) blue: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e2c34; bytecode file offset 0x9df4f0"
!SpRGBColor class methodsFor: 'recovered'!
blue
    | recoveredValue0 |
    recoveredValue0 := (self) red: (0) green: (0) blue: (65535).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ea000; bytecode file offset 0x9e68f4"
!SpRGBColor class methodsFor: 'recovered'!
from: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) red.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) green.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) blue.
    recoveredValue6 := (self) red: (recoveredValue1) green: (recoveredValue3) blue: (recoveredValue5).
    ^recoveredValue6
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017d2c; bytecode file offset 0x92209c"
!ETASCanDBFile class methodsFor: 'recovered'!
fileExtension
    ^'dbc'
! !

"ASDBase.ic method 0x2001e770; bytecode file offset 0x92209c"
!ETASCanDBFile class methodsFor: 'recovered'!
fileTag
    ^'VERSION'
! !

"ASDBase.ic method 0x20024758; bytecode file offset 0x92209c"
!ETASCanDBFile class methodsFor: 'recovered'!
fileTypeString
    ^'Can DB'
! !

"ASDBase.ic method 0x200ef0b0; bytecode file offset 0x9eb9a4"
!ETASCanDBFile class methodsFor: 'recovered'!
createFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) path: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) parse.
    ^recoveredValue5
! !

"ASDBase.ic method 0x200f22a4; bytecode file offset 0x9eeb64"
!ETASCanDBFile class methodsFor: 'recovered'!
test
    (self) createFrom: ('e:\m3can_~1.dbc').
    (self) createFrom: ('e:\m3can.dbc').
    ^self
! !


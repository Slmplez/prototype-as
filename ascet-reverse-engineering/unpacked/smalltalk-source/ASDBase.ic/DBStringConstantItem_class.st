"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017780; bytecode file offset 0x92209c"
!DBStringConstantItem class methodsFor: 'recovered'!
dbFormatString
    ^'S'
! !

"ASDBase.ic method 0x2001fd60; bytecode file offset 0x92209c"
!DBStringConstantItem class methodsFor: 'recovered'!
defaultValue
    ^''
! !

"ASDBase.ic method 0x20060450; bytecode file offset 0x95cd08"
!DBStringConstantItem class methodsFor: 'recovered'!
byteSize
    (self) etasDevHalt.
    ^4
! !

"ASDBase.ic method 0x200742ac; bytecode file offset 0x970bc8"
!DBStringConstantItem class methodsFor: 'recovered'!
mdfFormatId
    ^7
! !

"ASDBase.ic method 0x200792e4; bytecode file offset 0x975bb8"
!DBStringConstantItem class methodsFor: 'recovered'!
formatId
    ^22
! !

"ASDBase.ic method 0x20099634; bytecode file offset 0x995eec"
!DBStringConstantItem class methodsFor: 'recovered'!
create: recoveredArg1 name: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) create: (recoveredValue0) size: (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20113d94; bytecode file offset 0xa10650"
!DBStringConstantItem class methodsFor: 'recovered'!
create: recoveredArg1 size: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) create: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue3) + (recoveredValue4).
    recoveredValue6 := (recoveredValue5) + (-1).
    (recoveredValue2) end: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !


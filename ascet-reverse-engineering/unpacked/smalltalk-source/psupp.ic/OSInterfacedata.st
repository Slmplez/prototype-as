"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200037ac; bytecode file offset 0x157170"
!OSInterfacedata methodsFor: 'recovered'!
cMembers
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200116e4; bytecode file offset 0x165330"
!OSInterfacedata methodsFor: 'recovered'!
pmethdata: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013334; bytecode file offset 0x166e00"
!OSInterfacedata methodsFor: 'recovered'!
cMembers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001af64; bytecode file offset 0x16ea70"
!OSInterfacedata methodsFor: 'recovered'!
pmethdata
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSMethoddata.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200211ec; bytecode file offset 0x174df8"
!OSInterfacedata methodsFor: 'recovered'!
createDispTypeInfo: recoveredArg1 pptinfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CreateDispTypeInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !


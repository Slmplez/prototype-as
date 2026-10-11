"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20005ee4; bytecode file offset 0x159974"
!OSInterfaceinfo methodsFor: 'recovered'!
wMethod
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d534; bytecode file offset 0x160f90"
!OSInterfaceinfo methodsFor: 'recovered'!
iid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSIid.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010e08; bytecode file offset 0x165330"
!OSInterfaceinfo methodsFor: 'recovered'!
pUnk: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200128b4; bytecode file offset 0x166e00"
!OSInterfaceinfo methodsFor: 'recovered'!
iid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016838; bytecode file offset 0x16a7b4"
!OSInterfaceinfo methodsFor: 'recovered'!
wMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ae74; bytecode file offset 0x16ea70"
!OSInterfaceinfo methodsFor: 'recovered'!
pUnk
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSIUnknown.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !


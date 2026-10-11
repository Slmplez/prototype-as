"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20001dcc; bytecode file offset 0x2500c"
!CfsDirectoryEntry methodsFor: 'recovered'!
dName
    | recoveredValue0 |
    recoveredValue0 := dName.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20002690; bytecode file offset 0x258c8"
!CfsDirectoryEntry methodsFor: 'recovered'!
dName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    dName := recoveredValue1.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20006ee4; bytecode file offset 0x2a134"
!CfsDirectoryEntry methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) dName.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    recoveredValue3 := String.
    recoveredValue4 := (recoveredValue3) new: (4).
    recoveredValue5 := Space.
    recoveredValue6 := (recoveredValue4) atAllPut: (recoveredValue5).
    (recoveredValue0) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    super printOn: (recoveredValue7).
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003f9e0; bytecode file offset 0x93c75c"
!CTUser methodsFor: 'recovered'!
userstmp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Idz.
    recoveredValue1 := (self) uint32At: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009be54; bytecode file offset 0x998710"
!CTUser methodsFor: 'recovered'!
usermem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Idz.
    recoveredValue1 := (recoveredValue0) + (4).
    recoveredValue2 := (self) uint32At: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009be9c; bytecode file offset 0x998758"
!CTUser methodsFor: 'recovered'!
userattr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Idz.
    recoveredValue1 := (recoveredValue0) + (8).
    recoveredValue2 := (self) uint32At: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a27a8; bytecode file offset 0x99f064"
!CTUser methodsFor: 'recovered'!
userstmp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Idz.
    recoveredValue1 := recoveredArg1.
    (self) uint32At: (recoveredValue0) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b301c; bytecode file offset 0x9af8f8"
!CTUser methodsFor: 'recovered'!
userid
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Idz.
    recoveredValue1 := (recoveredValue0) + (-1).
    recoveredValue2 := (self) copyPSZStringFrom: (0) to: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e6de0; bytecode file offset 0x9e36ac"
!CTUser methodsFor: 'recovered'!
usermem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Idz.
    recoveredValue1 := (recoveredValue0) + (4).
    recoveredValue2 := recoveredArg1.
    (self) uint32At: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e6e20; bytecode file offset 0x9e36dc"
!CTUser methodsFor: 'recovered'!
userattr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Idz.
    recoveredValue1 := (recoveredValue0) + (8).
    recoveredValue2 := recoveredArg1.
    (self) uint32At: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2015c138; bytecode file offset 0xa58a0c"
!CTUser methodsFor: 'recovered'!
userword
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Idz.
    recoveredValue1 := (recoveredValue0) + (12).
    recoveredValue2 := Idz.
    recoveredValue3 := (recoveredValue2) + (12).
    recoveredValue4 := Pwz.
    recoveredValue5 := (recoveredValue3) + (recoveredValue4).
    recoveredValue6 := (recoveredValue5) + (-1).
    recoveredValue7 := (self) copyPSZStringFrom: (recoveredValue1) to: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2017bc14; bytecode file offset 0xa78508"
!CTUser methodsFor: 'recovered'!
userid: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Idz.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) min: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) memcpyFrom: (0) to: (recoveredValue6) into: (self) startingAt: (0).
    ^self
! !

"ASDBase.ic method 0x201ab448; bytecode file offset 0xaa7d10"
!CTUser methodsFor: 'recovered'!
userword: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Pwz.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) min: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := Idz.
    recoveredValue8 := (recoveredValue7) + (12).
    (recoveredValue5) memcpyFrom: (0) to: (recoveredValue6) into: (self) startingAt: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201bfe7c; bytecode file offset 0xabc740"
!CTUser methodsFor: 'recovered'!
userds
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := Idz.
    recoveredValue1 := (recoveredValue0) + (12).
    recoveredValue2 := Pwz.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredValue4 := Idz.
    recoveredValue5 := (recoveredValue4) + (12).
    recoveredValue6 := Pwz.
    recoveredValue7 := (recoveredValue5) + (recoveredValue6).
    recoveredValue8 := Dsz.
    recoveredValue9 := (recoveredValue7) + (recoveredValue8).
    recoveredValue10 := (recoveredValue9) + (-1).
    recoveredValue11 := (self) copyPSZStringFrom: (recoveredValue3) to: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x201dea78; bytecode file offset 0xadb344"
!CTUser methodsFor: 'recovered'!
userds: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Dsz.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) min: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := Idz.
    recoveredValue8 := (recoveredValue7) + (12).
    recoveredValue9 := Pwz.
    recoveredValue10 := (recoveredValue8) + (recoveredValue9).
    (recoveredValue5) memcpyFrom: (0) to: (recoveredValue6) into: (self) startingAt: (recoveredValue10).
    ^self
! !


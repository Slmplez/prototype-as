"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200078c8; bytecode file offset 0x908be4"
!SgmlUnknownEntity methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := (self) contents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007727c; bytecode file offset 0x9757c8"
!SgmlUnknownEntity methodsFor: 'recovered'!
isEntityDeclaration
    ^true
! !

"ASDBase.ic method 0x20153918; bytecode file offset 0xa5020c"
!SgmlUnknownEntity methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := ERO.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) contents.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    recoveredValue5 := REFC.
    (recoveredValue0) nextPutAll: (recoveredValue5).
    ^self
! !


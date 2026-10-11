"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200085ac; bytecode file offset 0x908be4"
!SGBdlCtDummyNode methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := (self) identifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e35c; bytecode file offset 0x96af48"
!SGBdlCtDummyNode methodsFor: 'recovered'!
identifier
    | recoveredValue0 |
    recoveredValue0 := identifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007d114; bytecode file offset 0x97c330"
!SGBdlCtDummyNode methodsFor: 'recovered'!
isCTDirectOutputMethodNode
    ^false
! !

"ASDBase.ic method 0x200c4a6c; bytecode file offset 0x9c16b0"
!SGBdlCtDummyNode methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    identifier := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201cd270; bytecode file offset 0xac9b3c"
!SGBdlCtDummyNode methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPutAll: (' <').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) identifier.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    (recoveredValue1) nextPutAll: ('>').
    ^self
! !


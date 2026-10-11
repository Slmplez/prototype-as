"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006589c; bytecode file offset 0x963428"
!SGLogicLayer methodsFor: 'recovered'!
id
    | recoveredValue0 |
    recoveredValue0 := id.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007c93c; bytecode file offset 0x97c330"
!SGLogicLayer methodsFor: 'recovered'!
outlineActionCode
    ^false
! !

"ASDBase.ic method 0x200bd95c; bytecode file offset 0x9bb178"
!SGLogicLayer methodsFor: 'recovered'!
id: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    id := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20285240; bytecode file offset 0xb81b14"
!SGLogicLayer methodsFor: 'recovered'!
ascetLink: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 |
    recoveredBlock7Value0 := (self) modelSpec.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := recoveredBlock7Arg1.
    (recoveredBlock7Value0) ascetLink: (recoveredBlock7Value1) on: (recoveredBlock7Value2).
    recoveredBlock7Value3 := recoveredBlock7Arg1.
    recoveredBlock7Value4 := recoveredBlock7Value3.
    (recoveredBlock7Value4) nextPutAll: ('/').
    recoveredBlock7Value5 := recoveredBlock7Value3.
    (recoveredBlock7Value5) nextPutAll: ('goid=').
    recoveredBlock7Value6 := (self) id.
    recoveredBlock7Value7 := (recoveredBlock7Value6) asString.
    recoveredBlock7Value8 := (recoveredBlock7Value3) nextPutAll: (recoveredBlock7Value7).
    recoveredBlock7Value8
].
    recoveredValue2 := (recoveredValue0) ascetLinkWithStream: (recoveredValue1).
    ^recoveredValue2
! !


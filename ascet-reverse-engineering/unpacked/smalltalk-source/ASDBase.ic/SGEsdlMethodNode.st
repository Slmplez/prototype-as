"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006b808; bytecode file offset 0x96873c"
!SGEsdlMethodNode methodsFor: 'recovered'!
declaration
    | recoveredValue0 |
    recoveredValue0 := declaration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bf54; bytecode file offset 0x9692b0"
!SGEsdlMethodNode methodsFor: 'recovered'!
methodBody
    | recoveredValue0 |
    recoveredValue0 := methodBody.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c2578; bytecode file offset 0x9bf474"
!SGEsdlMethodNode methodsFor: 'recovered'!
declaration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    declaration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3154; bytecode file offset 0x9bfde0"
!SGEsdlMethodNode methodsFor: 'recovered'!
methodBody: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    methodBody := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ff948; bytecode file offset 0x9fc26c"
!SGEsdlMethodNode methodsFor: 'recovered'!
subnodesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) methodBody.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2025773c; bytecode file offset 0xb54000"
!SGEsdlMethodNode methodsFor: 'recovered'!
allNodesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) value: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) methodBody.
    recoveredValue3 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredArg1.
    recoveredBlock22Value1 := recoveredBlock22Arg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) value: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !


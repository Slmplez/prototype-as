"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018614; bytecode file offset 0x92209c"
!RBCalScalarDataDisplayConfig methodsFor: 'recovered'!
xmlTag
    ^'NumericEditorConfig'
! !

"ASDBase.ic method 0x200b81f4; bytecode file offset 0x9b4ba0"
!RBCalScalarDataDisplayConfig methodsFor: 'recovered'!
decimals: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('decimals') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b8214; bytecode file offset 0x9b4ba0"
!RBCalScalarDataDisplayConfig methodsFor: 'recovered'!
max: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('max') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b8244; bytecode file offset 0x9b4ba0"
!RBCalScalarDataDisplayConfig methodsFor: 'recovered'!
largeFont: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('largeFont') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b8254; bytecode file offset 0x9b4ba0"
!RBCalScalarDataDisplayConfig methodsFor: 'recovered'!
displayUnit: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('displayUnit') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b8274; bytecode file offset 0x9b4ba0"
!RBCalScalarDataDisplayConfig methodsFor: 'recovered'!
min: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('min') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b82e4; bytecode file offset 0x9b4ba0"
!RBCalScalarDataDisplayConfig methodsFor: 'recovered'!
numberRepresentation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('numberRepresentation') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cd494; bytecode file offset 0x9ca268"
!RBCalScalarDataDisplayConfig methodsFor: 'recovered'!
largeFont
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('largeFont') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cd5fc; bytecode file offset 0x9ca268"
!RBCalScalarDataDisplayConfig methodsFor: 'recovered'!
decimals
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('decimals') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cd638; bytecode file offset 0x9ca268"
!RBCalScalarDataDisplayConfig methodsFor: 'recovered'!
max
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('max') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cd7dc; bytecode file offset 0x9ca268"
!RBCalScalarDataDisplayConfig methodsFor: 'recovered'!
numberRepresentation
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('numberRepresentation') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cd8e0; bytecode file offset 0x9ca268"
!RBCalScalarDataDisplayConfig methodsFor: 'recovered'!
min
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('min') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cd8f4; bytecode file offset 0x9ca268"
!RBCalScalarDataDisplayConfig methodsFor: 'recovered'!
displayUnit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('displayUnit') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x204943a0; bytecode file offset 0xd90ca8"
!RBCalScalarDataDisplayConfig methodsFor: 'recovered'!
internalWriteXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    super internalWriteXML: (recoveredValue0).
    recoveredValue1 := (self) decimals.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) attr: ('decimals') nnInt: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := (self) largeFont.
    recoveredValue4 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 |
    recoveredBlock34Value0 := recoveredArg1.
    recoveredBlock34Value1 := recoveredBlock34Arg1.
    recoveredBlock34Value2 := (recoveredBlock34Value0) attr: ('largeFont') boolean: (recoveredBlock34Value1).
    recoveredBlock34Value2
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := (self) numberRepresentation.
    recoveredValue6 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 |
    recoveredBlock54Value0 := recoveredArg1.
    recoveredBlock54Value1 := recoveredBlock54Arg1.
    recoveredBlock54Value2 := (recoveredBlock54Value0) attr: ('numberRepresentation') enum: (recoveredBlock54Value1).
    recoveredBlock54Value2
].
    (recoveredValue5) ifNotNil: (recoveredValue6).
    recoveredValue7 := (self) min.
    recoveredValue8 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Value0 recoveredBlock74Value1 recoveredBlock74Value2 recoveredBlock74Value3 |
    recoveredBlock74Value0 := recoveredArg1.
    recoveredBlock74Value1 := recoveredBlock74Arg1.
    recoveredBlock74Value2 := (recoveredBlock74Value1) asFloat.
    recoveredBlock74Value3 := (recoveredBlock74Value0) attr: ('min') double: (recoveredBlock74Value2).
    recoveredBlock74Value3
].
    (recoveredValue7) ifNotNil: (recoveredValue8).
    recoveredValue9 := (self) max.
    recoveredValue10 := [:recoveredBlock96Arg1 | 
    | recoveredBlock96Value0 recoveredBlock96Value1 recoveredBlock96Value2 recoveredBlock96Value3 |
    recoveredBlock96Value0 := recoveredArg1.
    recoveredBlock96Value1 := recoveredBlock96Arg1.
    recoveredBlock96Value2 := (recoveredBlock96Value1) asFloat.
    recoveredBlock96Value3 := (recoveredBlock96Value0) attr: ('max') double: (recoveredBlock96Value2).
    recoveredBlock96Value3
].
    (recoveredValue9) ifNotNil: (recoveredValue10).
    recoveredValue11 := (self) displayUnit.
    recoveredValue12 := [:recoveredBlock118Arg1 | 
    | recoveredBlock118Value0 |
    recoveredBlock118Value0 := (self) runtimeAssert: (false) additionalInfo: ('Unsupported display config value').
    recoveredBlock118Value0
].
    (recoveredValue11) ifNotNil: (recoveredValue12).
    ^self
! !


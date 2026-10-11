"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200895ec; bytecode file offset 0x985ef8"
!RBCalViewConfig methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    contents := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200b8460; bytecode file offset 0x9b4fec"
!RBCalViewConfig methodsFor: 'recovered'!
hasHorizontalZAxis: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('hasHorizontalZAxis') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b86a0; bytecode file offset 0x9b4fec"
!RBCalViewConfig methodsFor: 'recovered'!
showKeyHelp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('showKeyHelp') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200cd4d0; bytecode file offset 0x9ca268"
!RBCalViewConfig methodsFor: 'recovered'!
hasHorizontalZAxis
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('hasHorizontalZAxis') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cd890; bytecode file offset 0x9ca268"
!RBCalViewConfig methodsFor: 'recovered'!
showKeyHelp
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('showKeyHelp') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20110b9c; bytecode file offset 0xa0d470"
!RBCalViewConfig methodsFor: 'recovered'!
writeXML: recoveredArg1 tag: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) openComplex: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) internalWriteXML: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) closeComplex.
    ^self
! !

"ASDBase.ic method 0x20285720; bytecode file offset 0xb81ff0"
!RBCalViewConfig methodsFor: 'recovered'!
internalWriteXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) showKeyHelp.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) attr: ('showKeyHelp') boolean: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) hasHorizontalZAxis.
    recoveredValue3 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 |
    recoveredBlock26Value0 := (self) runtimeAssert: (false) additionalInfo: ('Unsupported display config value').
    recoveredBlock26Value0
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^self
! !


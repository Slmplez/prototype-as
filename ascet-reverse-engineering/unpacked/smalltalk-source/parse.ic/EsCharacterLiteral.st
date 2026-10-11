"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x200007fc; bytecode file offset 0x15e58"
!EsCharacterLiteral methodsFor: 'recovered'!
isMagic
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) magicValue.
    recoveredValue1 := (recoveredValue0) < (32768).
    ^recoveredValue1
! !

"parse.ic method 0x20001024; bytecode file offset 0x166a0"
!EsCharacterLiteral methodsFor: 'recovered'!
magicValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CodeStream.
    recoveredValue1 := contents.
    recoveredValue2 := (recoveredValue0) makeCharacter: (recoveredValue1).
    ^recoveredValue2
! !

"parse.ic method 0x20001600; bytecode file offset 0x16cac"
!EsCharacterLiteral methodsFor: 'recovered'!
valueOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) asObject: (recoveredValue1).
    (recoveredValue0) pushCharacterLiteral: (recoveredValue2).
    ^self
! !

"parse.ic method 0x20002a78; bytecode file offset 0x180d0"
!EsCharacterLiteral methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPut: ($$).
    recoveredValue2 := contents.
    (recoveredValue0) nextPut: (recoveredValue2).
    ^self
! !


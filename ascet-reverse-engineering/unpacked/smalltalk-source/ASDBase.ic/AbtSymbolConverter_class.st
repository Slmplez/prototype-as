"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200076e8; bytecode file offset 0x908be4"
!AbtSymbolConverter class methodsFor: 'recovered'!
isEndUserConverter
    | recoveredValue0 |
    recoveredValue0 := (self) visibleToEndUsers.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200129f0; bytecode file offset 0x912098"
!AbtSymbolConverter class methodsFor: 'recovered'!
displayName
    | recoveredValue0 |
    recoveredValue0 := AbtCvtrNameSymbol.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001560c; bytecode file offset 0x912098"
!AbtSymbolConverter class methodsFor: 'recovered'!
objectClass
    | recoveredValue0 |
    recoveredValue0 := Symbol.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20053d98; bytecode file offset 0x951190"
!AbtSymbolConverter class methodsFor: 'recovered'!
visibleToEndUsers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    AbtVisible := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005bcf0; bytecode file offset 0x9585b4"
!AbtSymbolConverter class methodsFor: 'recovered'!
visibleToEndUsers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtVisible.
    recoveredValue1 := (recoveredValue0) == (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005c5a0; bytecode file offset 0x959680"
!AbtSymbolConverter class methodsFor: 'recovered'!
defaultObjectFromEmptyString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := String.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) asSymbol.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2007ab1c; bytecode file offset 0x97c330"
!AbtSymbolConverter class methodsFor: 'recovered'!
defaultAcceptsDBString
    ^false
! !

"ASDBase.ic method 0x2007f70c; bytecode file offset 0x97c330"
!AbtSymbolConverter class methodsFor: 'recovered'!
emptyMakesDefault
    ^false
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022d3c; bytecode file offset 0x92209c"
!ASAP2CharacteristicAscii methodsFor: 'recovered'!
type
    ^'ASCII'
! !

"ASDBase.ic method 0x200df130; bytecode file offset 0x9dba0c"
!ASAP2CharacteristicAscii methodsFor: 'recovered'!
createBytesObject
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2BytesCharacteristicAscii.
    recoveredValue1 := (self) dataType.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) createBytesObjectIn: (recoveredValue3).
    ^recoveredValue4
! !


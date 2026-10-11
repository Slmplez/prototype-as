"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200722b0; bytecode file offset 0x96ee04"
!ASAP2CharacteristicValueBoolean methodsFor: 'recovered'!
defaultBitMask
    ^1
! !

"ASDBase.ic method 0x200df118; bytecode file offset 0x9dba0c"
!ASAP2CharacteristicValueBoolean methodsFor: 'recovered'!
createBytesObject
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2BytesCharacteristicValueBoolean.
    recoveredValue1 := (self) dataType.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) createBytesObjectIn: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20162604; bytecode file offset 0xa5eed4"
!ASAP2CharacteristicValueBoolean methodsFor: 'recovered'!
initializeDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeDefault.
    recoveredValue0 := TypeClasses.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) superclass.
    recoveredValue3 := (recoveredValue0) keyAtValue: (recoveredValue2).
    (self) type: (recoveredValue3).
    ^self
! !


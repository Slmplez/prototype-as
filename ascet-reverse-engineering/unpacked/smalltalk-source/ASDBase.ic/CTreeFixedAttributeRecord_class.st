"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009764; bytecode file offset 0x908be4"
!CTreeFixedAttributeRecord class methodsFor: 'recovered'!
blobSize
    | recoveredValue0 |
    recoveredValue0 := (self) attributeNameLength.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20062034; bytecode file offset 0x95e900"
!CTreeFixedAttributeRecord class methodsFor: 'recovered'!
blobStart
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fixedSize.
    recoveredValue1 := (self) attributeNameLength.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2007f084; bytecode file offset 0x97c330"
!CTreeFixedAttributeRecord class methodsFor: 'recovered'!
isVariable
    ^false
! !

"ASDBase.ic method 0x200f9bd0; bytecode file offset 0x9f6490"
!CTreeFixedAttributeRecord class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (self) attributeNameLength.
    recoveredValue2 := (2) * (recoveredValue1).
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !


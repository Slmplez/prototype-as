"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013008; bytecode file offset 0x912098"
!CTreeFixedAttributeRecord methodsFor: 'recovered'!
proxyClass
    | recoveredValue0 |
    recoveredValue0 := DBAttributeProxy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20028594; bytecode file offset 0x934580"
!CTreeFixedAttributeRecord methodsFor: 'recovered'!
blobSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) blobSize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20165004; bytecode file offset 0xa618c8"
!CTreeFixedAttributeRecord methodsFor: 'recovered'!
blobSize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fixedSize.
    recoveredValue2 := (recoveredValue1) - (4).
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) attributeNameLength.
    recoveredValue5 := (recoveredValue2) - (recoveredValue4).
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) attributeNameLength.
    (self) uint32At: (recoveredValue5) put: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201e1774; bytecode file offset 0xade040"
!CTreeFixedAttributeRecord methodsFor: 'recovered'!
blob
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) attributeNameLength.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) attributeNameLength.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) fixedSize.
    recoveredValue8 := (recoveredValue7) + (1).
    recoveredValue9 := (self) class.
    recoveredValue10 := (recoveredValue9) attributeNameLength.
    recoveredValue11 := (recoveredValue8) - (recoveredValue10).
    recoveredValue12 := (recoveredValue3) replaceFrom: (1) to: (recoveredValue5) with: (self) startingAt: (recoveredValue11).
    ^recoveredValue12
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013ca4; bytecode file offset 0x912098"
!CTreeAttributeRecord methodsFor: 'recovered'!
proxyClass
    | recoveredValue0 |
    recoveredValue0 := DBAttributeProxy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20085d0c; bytecode file offset 0x982678"
!CTreeAttributeRecord methodsFor: 'recovered'!
attributeNameEqual: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributeName.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) attributeName.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20149aac; bytecode file offset 0xa46374"
!CTreeAttributeRecord methodsFor: 'recovered'!
attributeName
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fieldOffsetAt: ('attributeName').
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) attributeNameLength.
    recoveredValue6 := (recoveredValue3) + (recoveredValue5).
    recoveredValue7 := (self) copyPSZStringFrom: (recoveredValue1) to: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20152ef0; bytecode file offset 0xa4f808"
!CTreeAttributeRecord methodsFor: 'recovered'!
includesAttributeNameSubstring: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) fieldOffsetAt: ('attributeName').
    recoveredValue6 := (recoveredValue1) string: (self) includes: (recoveredValue3) startingAt: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2016ab24; bytecode file offset 0xa673f0"
!CTreeAttributeRecord methodsFor: 'recovered'!
attributeNameHash
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fieldOffsetAt: ('attributeName').
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) attributeNameLength.
    recoveredValue6 := (recoveredValue3) + (recoveredValue5).
    recoveredValue7 := (self) copyPSZStringFrom: (recoveredValue1) to: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) hash.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201a5bd8; bytecode file offset 0xaa24a8"
!CTreeAttributeRecord methodsFor: 'recovered'!
attributeName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) attributeNameLength.
    recoveredValue5 := (recoveredValue2) min: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) + (-1).
    recoveredValue7 := (self) class.
    recoveredValue8 := (recoveredValue7) fieldOffsetAt: ('attributeName').
    (recoveredValue0) memcpyFrom: (0) to: (recoveredValue6) into: (self) startingAt: (recoveredValue8).
    ^self
! !


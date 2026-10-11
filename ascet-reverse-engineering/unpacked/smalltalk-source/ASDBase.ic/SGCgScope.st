"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002b3c4; bytecode file offset 0x934580"
!SGCgScope methodsFor: 'recovered'!
componentInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) component.
    recoveredValue1 := (recoveredValue0) componentInfo.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006594c; bytecode file offset 0x963428"
!SGCgScope methodsFor: 'recovered'!
category
    | recoveredValue0 |
    recoveredValue0 := category.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067a6c; bytecode file offset 0x9646f8"
!SGCgScope methodsFor: 'recovered'!
component
    | recoveredValue0 |
    recoveredValue0 := component.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008f270; bytecode file offset 0x98bd60"
!SGCgScope methodsFor: 'recovered'!
isLocal
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) category.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) localScopeKey.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f3ec; bytecode file offset 0x98bd60"
!SGCgScope methodsFor: 'recovered'!
isExported
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) category.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) exportedScopeKey.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f478; bytecode file offset 0x98bd60"
!SGCgScope methodsFor: 'recovered'!
isImported
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) category.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) importedScopeKey.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be1a4; bytecode file offset 0x9bb178"
!SGCgScope methodsFor: 'recovered'!
category: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    category := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf3c8; bytecode file offset 0x9bc0b4"
!SGCgScope methodsFor: 'recovered'!
component: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    component := recoveredValue0.
    ^self
! !


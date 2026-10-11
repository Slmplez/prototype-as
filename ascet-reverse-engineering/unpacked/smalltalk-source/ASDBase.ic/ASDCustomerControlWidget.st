"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20033854; bytecode file offset 0x934580"
!ASDCustomerControlWidget methodsFor: 'recovered'!
clientName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) optionValueForCustomerControlProgId.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f2df8; bytecode file offset 0x9ef6c0"
!ASDCustomerControlWidget methodsFor: 'recovered'!
setItemData
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) itemOid.
    recoveredValue1 := (recoveredValue0) asString.
    (self) setOID: (recoveredValue1).
    recoveredValue2 := (self) xmlCcInfo.
    recoveredValue3 := (self) setItemData: (recoveredValue2).
    ^recoveredValue3
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x200005e0; bytecode file offset 0x13664"
!OSSslAsn1Integer methodsFor: 'recovered'!
asInteger
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASN1_INTEGER_get.
    recoveredValue1 := (recoveredValue0) asyncCallWith: (self).
    ^recoveredValue1
! !

"sci.ic method 0x20000ea0; bytecode file offset 0x13f24"
!OSSslAsn1Integer methodsFor: 'recovered'!
setInteger: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASN1_INTEGER_set.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) asyncCallWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !


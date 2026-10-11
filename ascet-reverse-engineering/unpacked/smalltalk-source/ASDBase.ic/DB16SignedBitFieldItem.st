"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20023018; bytecode file offset 0x92209c"
!DB16SignedBitFieldItem methodsFor: 'recovered'!
maxMask
    ^65535
! !

"ASDBase.ic method 0x2003e868; bytecode file offset 0x93bf94"
!DB16SignedBitFieldItem methodsFor: 'recovered'!
createImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt16Signed.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009446c; bytecode file offset 0x990d28"
!DB16SignedBitFieldItem methodsFor: 'recovered'!
getItemFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := offset.
    recoveredValue2 := (recoveredValue0) uint16At: (recoveredValue1).
    recoveredValue3 := (self) getNewValueFrom: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2017d340; bytecode file offset 0xa79c14"
!DB16SignedBitFieldItem methodsFor: 'recovered'!
putItem: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := offset.
    recoveredValue2 := (recoveredValue0) uint16At: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) putNewValue: (recoveredValue3) in: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := offset.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue6) uint16At: (recoveredValue7) put: (recoveredValue8).
    ^self
! !


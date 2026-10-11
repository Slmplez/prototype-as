"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003dd58; bytecode file offset 0x93bf94"
!DB8BitFieldItem methodsFor: 'recovered'!
createImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt8Unsigned.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20081390; bytecode file offset 0x97dc5c"
!DB8BitFieldItem methodsFor: 'recovered'!
maxMask
    ^255
! !

"ASDBase.ic method 0x2009445c; bytecode file offset 0x990d28"
!DB8BitFieldItem methodsFor: 'recovered'!
getItemFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := offset.
    recoveredValue2 := (recoveredValue0) uint8At: (recoveredValue1).
    recoveredValue3 := (self) getNewValueFrom: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2017d2f0; bytecode file offset 0xa79c14"
!DB8BitFieldItem methodsFor: 'recovered'!
putItem: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := offset.
    recoveredValue2 := (recoveredValue0) uint8At: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) putNewValue: (recoveredValue3) in: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := offset.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue6) uint8At: (recoveredValue7) put: (recoveredValue8).
    ^self
! !


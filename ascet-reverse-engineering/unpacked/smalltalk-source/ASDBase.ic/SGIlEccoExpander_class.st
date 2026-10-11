"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b1ac; bytecode file offset 0x92209c"
!SGIlEccoExpander class methodsFor: 'recovered'!
versionString
    ^''
! !

"ASDBase.ic method 0x20080e04; bytecode file offset 0x97d6b8"
!SGIlEccoExpander class methodsFor: 'recovered'!
compatibilityId
    ^610
! !

"ASDBase.ic method 0x2013c9a0; bytecode file offset 0xa392ac"
!SGIlEccoExpander class methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) versionString.
    recoveredValue1 := ('Generic ') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (' CID: ').
    recoveredValue3 := (self) compatibilityId.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    ^recoveredValue5
! !


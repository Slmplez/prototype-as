"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000168; bytecode file offset 0x3c21c"
!EmConfigurationMapPrivilegesRecord methodsFor: 'recovered'!
privilegesIndex
    | recoveredValue0 |
    recoveredValue0 := (self) startPosition.
    ^recoveredValue0
! !

"lib.ic method 0x200015cc; bytecode file offset 0x3d664"
!EmConfigurationMapPrivilegesRecord methodsFor: 'recovered'!
privilegesLong
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) privilegesIndex.
    recoveredValue1 := (self) longAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000bf7c; bytecode file offset 0x47fc4"
!EmConfigurationMapPrivilegesRecord methodsFor: 'recovered'!
onLong: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := String.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) headerSize.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) defaultLength.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (recoveredValue0) new: (recoveredValue5).
    (self) collection: (recoveredValue6).
    recoveredValue7 := (self) endPosition.
    (self) initializeToUse: (recoveredValue7).
    recoveredValue8 := (self) privilegesIndex.
    recoveredValue9 := recoveredArg1.
    (self) at: (recoveredValue8) putLong: (recoveredValue9).
    ^self
! !


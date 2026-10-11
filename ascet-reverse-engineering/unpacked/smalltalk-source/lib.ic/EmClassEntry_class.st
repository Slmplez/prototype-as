"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x2000072c; bytecode file offset 0x3c804"
!EmClassEntry class methodsFor: 'recovered'!
classTypes
    ^#('Extended' 'PubliclyDefined' 'PrivatelyDefined' 'Deleted')
! !

"lib.ic method 0x2000283c; bytecode file offset 0x3e864"
!EmClassEntry class methodsFor: 'recovered'!
remainingSpace
    ^6
! !

"lib.ic method 0x2000287c; bytecode file offset 0x3e8ac"
!EmClassEntry class methodsFor: 'recovered'!
defaultLength
    ^7
! !

"lib.ic method 0x2000935c; bytecode file offset 0x45394"
!EmClassEntry class methodsFor: 'recovered'!
named: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) spaceFor: (recoveredValue0).
    recoveredValue2 := (self) remainingSpace.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredValue4 := (self) new: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredValue4.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) allocatedLength.
    (recoveredValue6) usedLength: (recoveredValue8).
    recoveredValue9 := recoveredValue4.
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) key: (recoveredValue10).
    ^recoveredValue4
! !


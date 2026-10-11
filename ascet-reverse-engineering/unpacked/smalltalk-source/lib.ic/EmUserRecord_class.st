"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000714; bytecode file offset 0x3c804"
!EmUserRecord class methodsFor: 'recovered'!
registryKey
    ^'Users'
! !

"lib.ic method 0x200029e4; bytecode file offset 0x3ea04"
!EmUserRecord class methodsFor: 'recovered'!
tag
    ^8209
! !

"lib.ic method 0x20002bac; bytecode file offset 0x3ebcc"
!EmUserRecord class methodsFor: 'recovered'!
defaultLength
    ^52
! !

"lib.ic method 0x20012400; bytecode file offset 0x4e478"
!EmUserRecord class methodsFor: 'recovered'!
allUniqueAndFullNames
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) rootDictionary.
    recoveredValue3 := recoveredValue2.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) name.
    recoveredBlock15Value3 := recoveredBlock15Arg1.
    recoveredBlock15Value4 := (recoveredBlock15Value3) value.
    recoveredBlock15Value5 := recoveredLocal2.
    recoveredBlock15Value6 := (recoveredBlock15Value5) library.
    recoveredBlock15Value7 := (self) using: (recoveredBlock15Value4) from: (recoveredBlock15Value6).
    recoveredBlock15Value8 := (recoveredBlock15Value7) fullName.
    recoveredBlock15Value9 := (recoveredBlock15Value0) at: (recoveredBlock15Value2) put: (recoveredBlock15Value8).
    recoveredBlock15Value9
].
    (recoveredValue2) forAllEntriesDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"lib.ic method 0x20012430; bytecode file offset 0x4e478"
!EmUserRecord class methodsFor: 'recovered'!
allPurgedUniqueAndFullNames
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) purgedRootDictionary.
    recoveredValue3 := recoveredValue2.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) name.
    recoveredBlock15Value3 := recoveredBlock15Arg1.
    recoveredBlock15Value4 := (recoveredBlock15Value3) value.
    recoveredBlock15Value5 := recoveredLocal2.
    recoveredBlock15Value6 := (recoveredBlock15Value5) library.
    recoveredBlock15Value7 := (self) using: (recoveredBlock15Value4) from: (recoveredBlock15Value6).
    recoveredBlock15Value8 := (recoveredBlock15Value7) fullName.
    recoveredBlock15Value9 := (recoveredBlock15Value0) at: (recoveredBlock15Value2) put: (recoveredBlock15Value8).
    recoveredBlock15Value9
].
    (recoveredValue2) forAllEntriesDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !


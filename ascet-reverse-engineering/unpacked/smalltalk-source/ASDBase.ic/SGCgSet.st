"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065fd4; bytecode file offset 0x963428"
!SGCgSet methodsFor: 'recovered'!
keys
    | recoveredValue0 |
    recoveredValue0 := keys.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067d4c; bytecode file offset 0x9646f8"
!SGCgSet methodsFor: 'recovered'!
allObjects
    | recoveredValue0 |
    recoveredValue0 := allObjects.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009a468; bytecode file offset 0x997194"
!SGCgSet methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) keys.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bdbe4; bytecode file offset 0x9bb178"
!SGCgSet methodsFor: 'recovered'!
keys: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    keys := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bec18; bytecode file offset 0x9bc0b4"
!SGCgSet methodsFor: 'recovered'!
allObjects: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    allObjects := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2015186c; bytecode file offset 0xa4e134"
!SGCgSet methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    keys := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    allObjects := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x201f7af4; bytecode file offset 0xaf43b8"
!SGCgSet methodsFor: 'recovered'!
addObject: recoveredArg1 key: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) allObjects.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := (self) keys.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := [
    | recoveredBlock15Value0 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value0
].
    (recoveredValue2) at: (recoveredValue3) ifAbsentPut: (recoveredValue4).
    ^self
! !


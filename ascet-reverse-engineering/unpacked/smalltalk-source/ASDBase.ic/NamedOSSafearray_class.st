"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2015a894; bytecode file offset 0xa571a0"
!NamedOSSafearray class methodsFor: 'recovered'!
createSafeArrayInt32: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createSafeArrayInt32: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) createdSize: (recoveredValue4).
    (recoveredValue2) valid: (true).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2015a8ac; bytecode file offset 0xa571a0"
!NamedOSSafearray class methodsFor: 'recovered'!
createSafeArrayReal64: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createSafeArrayReal64: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) createdSize: (recoveredValue4).
    (recoveredValue2) valid: (true).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2015a8c4; bytecode file offset 0xa571a0"
!NamedOSSafearray class methodsFor: 'recovered'!
createSafeArray: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createSafeArray: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) createdSize: (recoveredValue4).
    (recoveredValue2) valid: (true).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2015a8dc; bytecode file offset 0xa571a0"
!NamedOSSafearray class methodsFor: 'recovered'!
createSafeArrayReal32: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createSafeArrayReal32: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) createdSize: (recoveredValue4).
    (recoveredValue2) valid: (true).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201b18f0; bytecode file offset 0xaae1c4"
!NamedOSSafearray class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeAfterLoad.
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('shortNameDevice' 'rgsabound' 'createdSize' 'valid')).
    recoveredValue2 := (recoveredValue1) asSet.
    recoveredValue3 := (recoveredValue2) asArray.
    (self) members: (recoveredValue3).
    ^self
! !


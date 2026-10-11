"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002700; bytecode file offset 0x8ffcfc"
!AbtDeletedClassView methodsFor: 'recovered'!
initializePrimaryPart
    ^self
! !

"ASDBase.ic method 0x2000ce64; bytecode file offset 0x909ab8"
!AbtDeletedClassView methodsFor: 'recovered'!
doesNotUnderstand: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x200dc3fc; bytecode file offset 0x9d8cbc"
!AbtDeletedClassView methodsFor: 'recovered'!
valueOfAttributeNamed: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := super valueOfAttributeNamed: (recoveredValue0) ifAbsent: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dddb4; bytecode file offset 0x9da674"
!AbtDeletedClassView methodsFor: 'recovered'!
valueOfAttributeNamed: recoveredArg1 ifAbsent: recoveredArg2 put: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super valueOfAttributeNamed: (recoveredValue0) ifAbsent: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fe878; bytecode file offset 0x9fb278"
!AbtDeletedClassView methodsFor: 'recovered'!
nameInParentPart: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super nameInParentPart: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) label: (recoveredValue1).
    ^self
! !


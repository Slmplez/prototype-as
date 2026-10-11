"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002ac0; bytecode file offset 0x8ffcfc"
!SGAccessScalar class methodsFor: 'recovered'!
reinitializeDeviceToPreventWalkback
    ^self
! !

"ASDBase.ic method 0x20015738; bytecode file offset 0x912098"
!SGAccessScalar class methodsFor: 'recovered'!
getCMethods
    | recoveredValue0 |
    recoveredValue0 := CMethods.
    ^recoveredValue0
! !

"ASDBase.ic method 0x202f37e0; bytecode file offset 0xbf00bc"
!SGAccessScalar class methodsFor: 'recovered'!
initializeCMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    CMethods := recoveredValue1.
    recoveredValue2 := CMethods.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('getSelfPtr()') put: (0).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('getValuePtr()') put: (1).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('getScalar()') put: (2).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('setScalar()') put: (3).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('getMinMaxQuant()') put: (4).
    (recoveredValue2) at: ('setMinMaxQuant()') put: (5).
    ^self
! !


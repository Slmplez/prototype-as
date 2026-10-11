"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014958; bytecode file offset 0x912098"
!SGAccessVector class methodsFor: 'recovered'!
getCMethods
    | recoveredValue0 |
    recoveredValue0 := CMethods.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20361968; bytecode file offset 0xc5e24c"
!SGAccessVector class methodsFor: 'recovered'!
initializeCMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    CMethods := recoveredValue1.
    recoveredValue2 := CMethods.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('getSelfPtr()') put: (0).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('getValuePtr()') put: (1).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('getVector()') put: (2).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('setVector()') put: (3).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('readVectorAtIndex()') put: (4).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('writeVectorAtIndex()') put: (5).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('getVectorMaxSize()') put: (6).
    (recoveredValue2) at: ('getWorkingPoint()') put: (7).
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201550f4; bytecode file offset 0xa519c0"
!ASDNavigationManager class methodsFor: 'recovered'!
createFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    (recoveredValue1) navigationStack: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) owner: (recoveredValue5).
    recoveredValue6 := (recoveredValue0) lastError: ('').
    ^recoveredValue6
! !


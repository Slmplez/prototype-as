"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20057a68; bytecode file offset 0x956284"
!AbtAttributeMapping class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) initializeFromDOMElement: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ebf50; bytecode file offset 0x9e8860"
!AbtAttributeMapping class methodsFor: 'recovered'!
fromDOMElement: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) classElementMapping: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) initializeFromDOMElement: (recoveredValue4).
    ^recoveredValue0
! !


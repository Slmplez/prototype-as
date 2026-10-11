"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20021c8c; bytecode file offset 0x92209c"
!AbtNlsGroup class methodsFor: 'recovered'!
defaultMriClassName
    ^'AbtMRI'
! !

"ASDBase.ic method 0x2005cfac; bytecode file offset 0x9599ac"
!AbtNlsGroup class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtNLSCoordinator.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (self) new: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200eafb4; bytecode file offset 0x9e7878"
!AbtNlsGroup class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) coordinator: (recoveredValue2).
    recoveredValue3 := (recoveredValue0) initialize.
    ^recoveredValue3
! !


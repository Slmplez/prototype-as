"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbh.ic method 0x200003d4; bytecode file offset 0x11ee4"
!AbtNlsGroup class methodsFor: 'recovered'!
defaultMriClassName
    ^'AbtMRI'
! !

"abtdbh.ic method 0x20000954; bytecode file offset 0x12430"
!AbtNlsGroup class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtNLSCoordinator.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (self) new: (recoveredValue1).
    ^recoveredValue2
! !

"abtdbh.ic method 0x20001ddc; bytecode file offset 0x138bc"
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


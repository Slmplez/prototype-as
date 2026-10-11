"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20028bc4; bytecode file offset 0x934580"
!OSGuid class methodsFor: 'recovered'!
createGUIDString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createGUID.
    recoveredValue1 := (recoveredValue0) asString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200af79c; bytecode file offset 0x9ac068"
!OSGuid class methodsFor: 'recovered'!
createGUID
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) coCreateGuid.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !


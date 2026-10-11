"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20021b90; bytecode file offset 0x92209c"
!SGPMIPreprocessorDLL class methodsFor: 'recovered'!
fileName
    ^'pmipp'
! !

"ASDBase.ic method 0x20033834; bytecode file offset 0x934580"
!SGPMIPreprocessorDLL class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b029c; bytecode file offset 0x9acb60"
!SGPMIPreprocessorDLL class methodsFor: 'recovered'!
closeDLL
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := PlatformLibrary.
    recoveredValue1 := (self) fileName.
    recoveredValue2 := (recoveredValue0) logicalName: (recoveredValue1).
    (recoveredValue2) close.
    ^self
! !


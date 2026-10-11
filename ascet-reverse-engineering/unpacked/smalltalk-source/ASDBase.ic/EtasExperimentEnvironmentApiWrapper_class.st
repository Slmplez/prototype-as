"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002938; bytecode file offset 0x8ffcfc"
!EtasExperimentEnvironmentApiWrapper class methodsFor: 'recovered'!
_PRAGMA_ASDExperimentEnvironmentSupport
    ^self
! !

"ASDBase.ic method 0x2013a234; bytecode file offset 0xa36b00"
!EtasExperimentEnvironmentApiWrapper class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ExError.
    recoveredValue1 := (recoveredValue0) newChild.
    recoveredValue2 := recoveredValue1.
    ExASDExperimentEnvironmentError := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) description: ('ETAS Experiment Environment Error').
    (recoveredValue1) resumable: (false).
    ^self
! !


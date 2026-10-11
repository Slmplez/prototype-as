"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002110; bytecode file offset 0x8ffcfc"
!EtasDatamodelCallbackApp class methodsFor: 'recovered'!
_PRAGMA_EtasCallbackActionConstants
    ^self
! !

"ASDBase.ic method 0x200afcf4; bytecode file offset 0x9ac5b8"
!EtasDatamodelCallbackApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDProjectOptions.
    recoveredValue1 := EtasChangeProjectPropertiesCallback.
    recoveredValue2 := (recoveredValue1) create.
    (recoveredValue0) hookedProjectOptionsCallback: (recoveredValue2).
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000840; bytecode file offset 0x8ffcfc"
!ASDApiBaseApp class methodsFor: 'recovered'!
_PRAGMA_ToolAPIExceptions
    ^self
! !

"ASDBase.ic method 0x20088340; bytecode file offset 0x984c1c"
!ASDApiBaseApp class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := EtasMainAPI.
    (recoveredValue0) ActualDatabase: (nil).
    ^self
! !

"ASDBase.ic method 0x2017e538; bytecode file offset 0xa7ae08"
!ASDApiBaseApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EtasAPIError.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initializeClass.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) defineDefaultErrors.
    (recoveredValue0) defineAscetErrors.
    recoveredValue3 := EtasAPIPrimitiveModelElement.
    (recoveredValue3) initClass.
    recoveredValue4 := EtasAPITask.
    (recoveredValue4) initializeClass.
    ^self
! !


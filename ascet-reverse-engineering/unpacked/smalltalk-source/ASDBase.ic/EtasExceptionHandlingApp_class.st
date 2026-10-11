"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001e38; bytecode file offset 0x8ffcfc"
!EtasExceptionHandlingApp class methodsFor: 'recovered'!
_PRAGMA_EtasExceptionHandlingExceptions
    ^self
! !

"ASDBase.ic method 0x2013a214; bytecode file offset 0xa36b00"
!EtasExceptionHandlingApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ExError.
    recoveredValue1 := (recoveredValue0) newChild.
    recoveredValue2 := recoveredValue1.
    ExUndefinedObjectDoesNotUnderstand := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) description: ('UndefinedObject does not understand').
    (recoveredValue1) resumable: (false).
    ^self
! !


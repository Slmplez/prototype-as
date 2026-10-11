"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20000d14; bytecode file offset 0x13d98"
!OSSslSession methodsFor: 'recovered'!
setSessionForSslHandle: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dispatcher.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callSSL_set_sessionWith: (recoveredValue1) with: (self).
    ^recoveredValue2
! !

"sci.ic method 0x20001474; bytecode file offset 0x144fc"
!OSSslSession methodsFor: 'recovered'!
free
    | recoveredValue0 |
    (self) removeToBeFinalized.
    recoveredValue0 := (self) dispatcher.
    (recoveredValue0) callSSL_SESSION_freeWith: (self).
    ^self
! !


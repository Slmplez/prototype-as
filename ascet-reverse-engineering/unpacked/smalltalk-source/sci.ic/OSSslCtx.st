"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x2000144c; bytecode file offset 0x144fc"
!OSSslCtx methodsFor: 'recovered'!
free
    | recoveredValue0 |
    (self) removeToBeFinalized.
    recoveredValue0 := (self) dispatcher.
    (recoveredValue0) callSSL_CTX_freeWith: (self).
    ^self
! !


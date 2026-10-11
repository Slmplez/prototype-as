"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20000c50; bytecode file offset 0x13cec"
!OSSslCtx class methodsFor: 'recovered'!
newForMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dispatcher.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callSSL_CTX_newWith: (recoveredValue1).
    recoveredValue3 := (self) buildInstanceOrErrorFromAddress: (recoveredValue2).
    ^recoveredValue3
! !


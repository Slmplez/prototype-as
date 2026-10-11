"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000448; bytecode file offset 0x23760"
!CfsOSHandle methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionCloseHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000bd4; bytecode file offset 0x23e44"
!CfsOSHandle methodsFor: 'recovered'!
closeHandle
    | recoveredValue0 |
    recoveredValue0 := (self) platformFunctionCloseHandle: (self).
    ^recoveredValue0
! !


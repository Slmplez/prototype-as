"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x2000039c; bytecode file offset 0x235ec"
!Character methodsFor: 'recovered'!
isSpecialRootForDumpingFor: recoveredArg1
    ^true
! !

"cfsnls.ic method 0x20000590; bytecode file offset 0x23828"
!Character methodsFor: 'recovered'!
"VM primitive/special entry 0x17; native fast path not reconstructed; fallback bytecodes follow."
convertFromPlatform: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200021d8; bytecode file offset 0x25458"
!Character methodsFor: 'recovered'!
isImmediateForDumping
    ^true
! !

"cfsnls.ic method 0x20004964; bytecode file offset 0x27ba8"
!Character methodsFor: 'recovered'!
dumpSpecialRootFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) swappingStream.
    recoveredValue2 := ByteArray.
    recoveredValue3 := (self) value.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) nextPutAll: (recoveredValue4).
    ^recoveredValue5
! !


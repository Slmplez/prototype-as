"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20009314; bytecode file offset 0x15cd08"
!OSRpcBindingHandle class methodsFor: 'recovered'!
iRpcGetCurrentCallHandle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := IRpcGetCurrentCallHandle.
    recoveredValue1 := (recoveredValue0) call.
    recoveredValue2 := (self) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000be18; bytecode file offset 0x15f71c"
!OSRpcBindingHandle class methodsFor: 'recovered'!
nDRCContextBinding: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := NDRCContextBinding.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (recoveredValue1).
    recoveredValue3 := (self) immediate: (recoveredValue2).
    ^recoveredValue3
! !


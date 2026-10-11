"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"async.ic method 0x20000350; bytecode file offset 0x74e4"
!AcoAsyncBlock methodsFor: 'recovered'!
terminate
    (self) removeElement.
    ^self
! !

"async.ic method 0x20001000; bytecode file offset 0x8198"
!AcoAsyncBlock methodsFor: 'recovered'!
"VM primitive/special entry 0x17; native fast path not reconstructed; fallback bytecodes follow."
setCopyBuffer: recoveredArg1 size: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (544) put: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) uint32At: (548) put: (recoveredValue1).
    ^self
! !

"async.ic method 0x200011f0; bytecode file offset 0x8394"
!AcoAsyncBlock methodsFor: 'recovered'!
initializeCopyBuffer
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) minimumSize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) address.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) fixedSize.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue6) - (recoveredValue7).
    (self) setCopyBuffer: (recoveredValue4) size: (recoveredValue8).
    ^self
! !


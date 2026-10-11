"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"async.ic method 0x20000148; bytecode file offset 0x72e0"
!OSPoolObject methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
primitiveRemoveElement: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x200003ec; bytecode file offset 0x7580"
!OSPoolObject methodsFor: 'recovered'!
invalidate
    (self) reference: (nil).
    ^self
! !

"async.ic method 0x20000c74; bytecode file offset 0x7e18"
!OSPoolObject methodsFor: 'recovered'!
removeElement
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) memoryPool.
    recoveredValue2 := (recoveredValue1) reference.
    (self) primitiveRemoveElement: (recoveredValue2).
    (self) invalidate.
    ^self
! !


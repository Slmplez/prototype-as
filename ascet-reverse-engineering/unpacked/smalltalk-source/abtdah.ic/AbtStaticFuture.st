"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200022a0; bytecode file offset 0x122d8"
!AbtStaticFuture methodsFor: 'recovered'!
reinitialize
    | recoveredValue0 recoveredValue1 |
    super reinitialize.
    recoveredValue0 := AbtSemaphore.
    recoveredValue1 := (recoveredValue0) new.
    semaphore := recoveredValue1.
    ^self
! !

"abtdah.ic method 0x200024dc; bytecode file offset 0x12518"
!AbtStaticFuture methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := AbtSemaphore.
    recoveredValue1 := (recoveredValue0) new.
    (self) semaphore: (recoveredValue1).
    ^self
! !


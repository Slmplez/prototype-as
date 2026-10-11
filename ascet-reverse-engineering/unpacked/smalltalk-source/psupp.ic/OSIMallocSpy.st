"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2001dcfc; bytecode file offset 0x171598"
!OSIMallocSpy methodsFor: 'recovered'!
preHeapMinimize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := PreHeapMinimize.
    recoveredValue1 := (recoveredValue0) callWith: (13) with: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2001dd38; bytecode file offset 0x1715d4"
!OSIMallocSpy methodsFor: 'recovered'!
postHeapMinimize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := PostHeapMinimize.
    recoveredValue1 := (recoveredValue0) callWith: (14) with: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200229ec; bytecode file offset 0x1762e8"
!OSIMallocSpy methodsFor: 'recovered'!
preAlloc: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := PreAlloc.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (3) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20022adc; bytecode file offset 0x1764f8"
!OSIMallocSpy methodsFor: 'recovered'!
postAlloc: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := PostAlloc.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (4) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20022eac; bytecode file offset 0x176878"
!OSIMallocSpy methodsFor: 'recovered'!
postFree: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := PostFree.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (6) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20025a78; bytecode file offset 0x179334"
!OSIMallocSpy methodsFor: 'recovered'!
preFree: recoveredArg1 fSpyed: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PreFree.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (5) with: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20025c18; bytecode file offset 0x1794b4"
!OSIMallocSpy methodsFor: 'recovered'!
postRealloc: recoveredArg1 fSpyed: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PostRealloc.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (8) with: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20025c38; bytecode file offset 0x179524"
!OSIMallocSpy methodsFor: 'recovered'!
preGetSize: recoveredArg1 fSpyed: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PreGetSize.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (9) with: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20025cb8; bytecode file offset 0x179564"
!OSIMallocSpy methodsFor: 'recovered'!
postGetSize: recoveredArg1 fSpyed: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PostGetSize.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (10) with: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20025d08; bytecode file offset 0x1795a4"
!OSIMallocSpy methodsFor: 'recovered'!
preDidAlloc: recoveredArg1 fSpyed: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PreDidAlloc.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (11) with: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20028618; bytecode file offset 0x17beb4"
!OSIMallocSpy methodsFor: 'recovered'!
postDidAlloc: recoveredArg1 fSpyed: recoveredArg2 fActual: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := PostDidAlloc.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (12) with: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20029818; bytecode file offset 0x17d0c4"
!OSIMallocSpy methodsFor: 'recovered'!
preRealloc: recoveredArg1 cbRequest: recoveredArg2 ppNewRequest: recoveredArg3 fSpyed: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := PreRealloc.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) callWith: (7) with: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !


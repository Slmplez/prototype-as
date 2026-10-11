"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2001dba0; bytecode file offset 0x17147c"
!OSIMalloc methodsFor: 'recovered'!
heapMinimize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HeapMinimize.
    recoveredValue1 := (recoveredValue0) callWith: (8) with: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2002290c; bytecode file offset 0x1762e8"
!OSIMalloc methodsFor: 'recovered'!
alloc: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Alloc.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (3) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20022d0c; bytecode file offset 0x176668"
!OSIMalloc methodsFor: 'recovered'!
free: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Free.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (5) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20022f0c; bytecode file offset 0x176878"
!OSIMalloc methodsFor: 'recovered'!
getSize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetSize.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (6) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2002301c; bytecode file offset 0x176988"
!OSIMalloc methodsFor: 'recovered'!
didAlloc: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DidAlloc.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (7) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200259b8; bytecode file offset 0x179274"
!OSIMalloc methodsFor: 'recovered'!
realloc: recoveredArg1 cb: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Realloc.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (4) with: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !


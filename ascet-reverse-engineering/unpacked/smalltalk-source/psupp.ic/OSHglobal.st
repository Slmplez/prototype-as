"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20008218; bytecode file offset 0x15caa4"
!OSHglobal methodsFor: 'recovered'!
globalUnlock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GlobalUnlock.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008518; bytecode file offset 0x15caa4"
!OSHglobal methodsFor: 'recovered'!
globalWire
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GlobalWire.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008538; bytecode file offset 0x15caa4"
!OSHglobal methodsFor: 'recovered'!
globalFlags
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GlobalFlags.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008688; bytecode file offset 0x15caa4"
!OSHglobal methodsFor: 'recovered'!
lockResource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LockResource.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200087c8; bytecode file offset 0x15caa4"
!OSHglobal methodsFor: 'recovered'!
globalUnfix
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GlobalUnfix.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200088c8; bytecode file offset 0x15caa4"
!OSHglobal methodsFor: 'recovered'!
freeResource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := FreeResource.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008958; bytecode file offset 0x15caa4"
!OSHglobal methodsFor: 'recovered'!
globalLock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GlobalLock.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008a18; bytecode file offset 0x15caa4"
!OSHglobal methodsFor: 'recovered'!
globalSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GlobalSize.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200090f8; bytecode file offset 0x15caa4"
!OSHglobal methodsFor: 'recovered'!
globalFix
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GlobalFix.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20009208; bytecode file offset 0x15caa4"
!OSHglobal methodsFor: 'recovered'!
globalUnWire
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GlobalUnWire.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2001a630; bytecode file offset 0x16e2c4"
!OSHglobal methodsFor: 'recovered'!
globalFree
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHglobal.
    recoveredValue1 := GlobalFree.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x200207ac; bytecode file offset 0x174df8"
!OSHglobal methodsFor: 'recovered'!
createILockBytesOnHGlobal: recoveredArg1 pplkbyt: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CreateILockBytesOnHGlobal.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x200208ec; bytecode file offset 0x174df8"
!OSHglobal methodsFor: 'recovered'!
createStreamOnHGlobal: recoveredArg1 ppstm: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CreateStreamOnHGlobal.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2002270c; bytecode file offset 0x1760d0"
!OSHglobal methodsFor: 'recovered'!
createDIBPatternBrush: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSHbrush.
    recoveredValue1 := CreateDIBPatternBrush.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) callWith: (self) with: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) immediate: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20027da4; bytecode file offset 0x17b888"
!OSHglobal methodsFor: 'recovered'!
globalReAlloc: recoveredArg1 fuAlloc: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OSHglobal.
    recoveredValue1 := GlobalReAlloc.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) immediate: (recoveredValue4).
    ^recoveredValue5
! !


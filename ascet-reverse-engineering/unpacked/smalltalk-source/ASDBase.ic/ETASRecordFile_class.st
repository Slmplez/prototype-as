"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200198a4; bytecode file offset 0x92209c"
!ETASRecordFile class methodsFor: 'recovered'!
fileTypeString
    ^'Raw data without header'
! !

"ASDBase.ic method 0x20079a54; bytecode file offset 0x97c330"
!ETASRecordFile class methodsFor: 'recovered'!
isItemFile
    ^false
! !

"ASDBase.ic method 0x200dfa30; bytecode file offset 0x9dc3b8"
!ETASRecordFile class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) path: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !


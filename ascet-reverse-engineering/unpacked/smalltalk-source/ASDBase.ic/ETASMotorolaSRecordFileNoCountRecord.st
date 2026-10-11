"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005ebc; bytecode file offset 0x902de8"
!ETASMotorolaSRecordFileNoCountRecord methodsFor: 'recovered'!
createTerminationRecord: recoveredArg1 class: recoveredArg2 on: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2017babc; bytecode file offset 0xa78388"
!ETASMotorolaSRecordFileNoCountRecord methodsFor: 'recovered'!
createTerminationRecord: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue2) putTerminationRecordOn: (recoveredValue3).
    recoveredValue4 := fHandle.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) contents.
    recoveredValue7 := (recoveredValue4) writeBytes: (recoveredValue6).
    ^recoveredValue7
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003118; bytecode file offset 0x8ffcfc"
!OSProcessInformation methodsFor: 'recovered'!
defaultValues
    ^self
! !

"ASDBase.ic method 0x2018e9f8; bytecode file offset 0xa8b2c8"
!OSProcessInformation methodsFor: 'recovered'!
free
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kk') == ('Call_70198').
    recoveredValue1 := (self) hProcess.
    (recoveredValue1) closeHandle.
    recoveredValue2 := (self) hThread.
    (recoveredValue2) closeHandle.
    recoveredValue3 := super free.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201d4530; bytecode file offset 0xad0dfc"
!OSProcessInformation methodsFor: 'recovered'!
isProcessRunning
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OSUInt64.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) hProcess.
    recoveredValue3 := recoveredLocal2.
    (recoveredValue2) getExitCodeProcess: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue4) uint64At: (0).
    recoveredValue6 := (recoveredValue5) = (259).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    (recoveredValue7) free.
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !


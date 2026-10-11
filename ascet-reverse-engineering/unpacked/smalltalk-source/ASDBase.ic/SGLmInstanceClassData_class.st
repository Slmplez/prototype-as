"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2014ab30; bytecode file offset 0xa473fc"
!SGLmInstanceClassData class methodsFor: 'recovered'!
createForMappedInstanceElement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := (self) createForExportedVar: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := SGLmClassData.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) first.
    recoveredValue7 := (recoveredValue4) createForInstVar: (recoveredValue6).
    (recoveredValue3) port: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !


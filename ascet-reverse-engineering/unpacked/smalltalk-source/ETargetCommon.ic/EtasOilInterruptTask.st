"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ETargetCommon.ic method 0x20000374; bytecode file offset 0xf434"
!EtasOilInterruptTask methodsFor: 'recovered'!
genIsrSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isrSource.
    recoveredValue1 := (recoveredValue0) asString.
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x20000824; bytecode file offset 0xf81c"
!EtasOilInterruptTask methodsFor: 'recovered'!
isrSource
    | recoveredValue0 |
    recoveredValue0 := isrSource.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x20000c74; bytecode file offset 0xfc74"
!EtasOilInterruptTask methodsFor: 'recovered'!
isrSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isrSource := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20002778; bytecode file offset 0x117a4"
!EtasOilInterruptTask methodsFor: 'recovered'!
generateOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) name.
    recoveredValue4 := ('ISR %1 {') bindWith: (recoveredValue3).
    (recoveredValue2) newlinePutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) incIndent.
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) newlinePutAll: ('CATEGORY = 2;').
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) genPrio.
    recoveredValue9 := ('//RTAOILCFG PRIORITY = %1;') bindWith: (recoveredValue8).
    (recoveredValue7) newlinePutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := (self) genIsrSource.
    recoveredValue12 := ('//RTAOILCFG ADDRESS = %1;') bindWith: (recoveredValue11).
    (recoveredValue10) newlinePutAll: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    (recoveredValue13) decIndent.
    recoveredValue14 := recoveredValue0.
    (recoveredValue14) newlinePutAll: ('};').
    (recoveredValue0) cr.
    ^self
! !


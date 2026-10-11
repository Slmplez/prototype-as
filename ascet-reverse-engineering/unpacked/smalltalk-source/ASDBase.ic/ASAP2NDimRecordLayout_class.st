"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20073e70; bytecode file offset 0x970b34"
!ASAP2NDimRecordLayout class methodsFor: 'recovered'!
emBehaviorId
    ^nil
! !

"ASDBase.ic method 0x200a1938; bytecode file offset 0x99e1fc"
!ASAP2NDimRecordLayout class methodsFor: 'recovered'!
recordLayoutEntries
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) superclass.
    recoveredValue1 := (recoveredValue0) superclass.
    recoveredValue2 := (recoveredValue1) members.
    recoveredValue3 := (recoveredValue2) , (#('positioned' 'AXIS_PTS' 'NO_AXIS_PTS' 'FIX_NO_AXIS_PTS' 'SRC_ADDR' 'RIP_ADDR' 'SHIFT_OP' 'OFFSET' 'DIST_OP' 'AXIS_RESCALE' 'NO_RESCALE' 'ALIGNMENTBYTE' 'ALIGNMENTWORD' 'ALIGNMENTDWORD' 'ALIGNMENTDINT64' 'ALIGNMENTREAL32' 'ALIGNMENTREAL64' 'FNC_VALUES' 'IDENTIFICATION' 'RESERVED' 'RIP_ADDR_W' 'isRecordLayoutSupported')).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b6860; bytecode file offset 0x9b39ac"
!ASAP2NDimRecordLayout class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('alignmentInt64' 'axisPts' 'noAxisPts' 'fixNoAxisPts' 'srcAddr' 'ripAddr' 'shiftOp' 'offset' 'distOp' 'axisRescale' 'noRescale')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011bc5c; bytecode file offset 0xa18518"
!ASAP2NDimRecordLayout class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) superclass.
    recoveredValue1 := (recoveredValue0) superclass.
    recoveredValue2 := (recoveredValue1) fixedSize.
    recoveredValue3 := (recoveredValue2) + (7).
    recoveredValue4 := (recoveredValue3) + (10).
    recoveredValue5 := (recoveredValue4) + (4).
    ^recoveredValue5
! !


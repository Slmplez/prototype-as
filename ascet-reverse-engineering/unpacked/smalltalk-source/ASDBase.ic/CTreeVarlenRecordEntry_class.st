"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001180; bytecode file offset 0x8ffcfc"
!CTreeVarlenRecordEntry class methodsFor: 'recovered'!
initializeConstants
    ^self
! !

"ASDBase.ic method 0x2001eb3c; bytecode file offset 0x92209c"
!CTreeVarlenRecordEntry class methodsFor: 'recovered'!
members
    ^#('recmrk' 'totalSize' 'usedSize' 'record')
! !

"ASDBase.ic method 0x200a0510; bytecode file offset 0x99cdcc"
!CTreeVarlenRecordEntry class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CTreeSearchObjectRecord.
    recoveredValue1 := (recoveredValue0) fixedSize.
    recoveredValue2 := (10) + (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2014bec0; bytecode file offset 0xa48780"
!CTreeVarlenRecordEntry class methodsFor: 'recovered'!
initializeFieldOffsets
    | recoveredValue0 |
    (self) fieldOffsetAt: ('varSize') put: (6).
    (self) fieldOffsetAt: ('record') put: (10).
    recoveredValue0 := fieldOffsets.
    ^recoveredValue0
! !


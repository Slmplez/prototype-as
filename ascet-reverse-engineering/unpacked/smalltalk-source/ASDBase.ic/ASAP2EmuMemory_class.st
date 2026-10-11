"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001fbb0; bytecode file offset 0x92209c"
!ASAP2EmuMemory class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'startAddress:' 'length:' 'type:' 'mirrorOffset1:' 'mirrorOffset2:' 'mirrorOffset3:' 'mirrorOffset4:' 'mirrorOffset5:')
! !

"ASDBase.ic method 0x200b6590; bytecode file offset 0x9b39ac"
!ASAP2EmuMemory class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('startAddress' 'length' 'type' 'mirrorOffset1' 'mirrorOffset2' 'mirrorOffset3' 'mirrorOffset4' 'mirrorOffset5' 'application' 'usage')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f9c14; bytecode file offset 0x9f64d0"
!ASAP2EmuMemory class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (8).
    recoveredValue2 := (recoveredValue1) + (2).
    ^recoveredValue2
! !


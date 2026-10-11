"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b6710; bytecode file offset 0x9b39ac"
!CANDBTop class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('ns' 'bs' 'nodes')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20209d08; bytecode file offset 0xb065cc"
!CANDBTop class methodsFor: 'recovered'!
initializeSeparators
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (Character value: 9).
    recoveredValue2 := Cr.
    recoveredValue3 := Lf.
    recoveredValue4 := (recoveredValue0) with: ($ ) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: ($:) with: ($;).
    separators := recoveredValue4.
    ^self
! !


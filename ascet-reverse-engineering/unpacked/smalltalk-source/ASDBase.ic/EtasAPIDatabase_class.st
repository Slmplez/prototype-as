"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022e74; bytecode file offset 0x92209c"
!EtasAPIDatabase class methodsFor: 'recovered'!
pathSeperatorString
    ^'\'
! !

"ASDBase.ic method 0x200d9d78; bytecode file offset 0x9d6868"
!EtasAPIDatabase class methodsFor: 'recovered'!
createFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) updateWithDBInterface: (recoveredValue3).
    ^recoveredValue0
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ced4; bytecode file offset 0x92209c"
!SGBreakGO class methodsFor: 'recovered'!
goTypeString
    ^'Break'
! !

"ASDBase.ic method 0x200efee4; bytecode file offset 0x9ec7e4"
!SGBreakGO class methodsFor: 'recovered'!
interfacePositions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('Break') put: (#(350)).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201499d4; bytecode file offset 0xa46298"
!SGBreakGO class methodsFor: 'recovered'!
createDefault
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super createDefault: ('Break').
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) actualNameVisibility: (false).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20189380; bytecode file offset 0xa85c4c"
!SGBreakGO class methodsFor: 'recovered'!
interfaceProcs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := SGAliasMethod.
    recoveredValue4 := (recoveredValue3) createWithName: ('Break').
    (recoveredValue2) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !


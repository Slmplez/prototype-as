"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b6890; bytecode file offset 0x9b39ac"
!CANDBInterval class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('low' 'high')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20307048; bytecode file offset 0xc03914"
!CANDBInterval class methodsFor: 'recovered'!
initializeSeparators
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ($ ).
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := (Character value: 9).
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) add: ($[).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) add: ($|).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) add: ($]).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := Cr.
    (recoveredValue9) add: (recoveredValue10).
    recoveredValue11 := Lf.
    (recoveredValue2) add: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) asArray.
    separators := recoveredValue13.
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054218; bytecode file offset 0x951190"
!RBUserQuestion class methodsFor: 'recovered'!
setCancelPossible: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CancelPossible := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005b794; bytecode file offset 0x95804c"
!RBUserQuestion class methodsFor: 'recovered'!
isCancelPossible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CancelPossible.
    recoveredValue1 := (recoveredValue0) ~= (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d9f94; bytecode file offset 0x9d6868"
!RBUserQuestion class methodsFor: 'recovered'!
confirm: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) message: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20133338; bytecode file offset 0xa2fc1c"
!RBUserQuestion class methodsFor: 'recovered'!
confirmWarning: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) message: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) type: ('warning').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20133354; bytecode file offset 0xa2fc1c"
!RBUserQuestion class methodsFor: 'recovered'!
confirmError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) message: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) type: ('error').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2014b2a8; bytecode file offset 0xa47b6c"
!RBUserQuestion class methodsFor: 'recovered'!
confirm: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) new.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) initialize.
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) message: (recoveredValue6).
    ^recoveredValue3
! !


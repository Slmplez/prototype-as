"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001dd44; bytecode file offset 0x92209c"
!MDFFormula class methodsFor: 'recovered'!
id
    ^'CC'
! !

"ASDBase.ic method 0x20080244; bytecode file offset 0x97cb00"
!MDFFormula class methodsFor: 'recovered'!
fixedSize
    ^46
! !

"ASDBase.ic method 0x2009b550; bytecode file offset 0x997e5c"
!MDFFormula class methodsFor: 'recovered'!
createDefault: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) initializeDefault: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b6c50; bytecode file offset 0x9b39ac"
!MDFFormula class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('phyMinMaxOk' 'phyMin' 'phyMax' 'phyUnit' 'formulaId' 'formulaNPar' 'parameter')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200df484; bytecode file offset 0x9dbd80"
!MDFFormula class methodsFor: 'recovered'!
createIdentity
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) createDefault.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) formulaId: (65535).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !


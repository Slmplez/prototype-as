"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002bb04; bytecode file offset 0x934580"
!ARAbstractEventNode class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b95a8; bytecode file offset 0x9b5e7c"
!ARAbstractEventNode class methodsFor: 'recovered'!
inBrackets: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (' (') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (')').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d9d00; bytecode file offset 0x9d6868"
!ARAbstractEventNode class methodsFor: 'recovered'!
createWithHandler: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) eventSpecificationHandler: (recoveredValue3).
    ^recoveredValue0
! !


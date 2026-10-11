"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d2e8; bytecode file offset 0x92209c"
!FamosComponent class methodsFor: 'recovered'!
nextKeySection
    ^#('CC' 'CG' 'CT' 'CB')
! !

"ASDBase.ic method 0x20022b08; bytecode file offset 0x92209c"
!FamosComponent class methodsFor: 'recovered'!
keyWord
    ^'CC'
! !

"ASDBase.ic method 0x200b6578; bytecode file offset 0x9b39ac"
!FamosComponent class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('index' 'analogDigital' 'packInfo' 'range' 'channels' 'scaling' 'triggerTime' 'displayProperty')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2014b538; bytecode file offset 0xa47dfc"
!FamosComponent class methodsFor: 'recovered'!
create: recoveredArg1 analogDigital: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) index: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) analogDigital: (recoveredValue5).
    (recoveredValue1) getKeyBytes.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !


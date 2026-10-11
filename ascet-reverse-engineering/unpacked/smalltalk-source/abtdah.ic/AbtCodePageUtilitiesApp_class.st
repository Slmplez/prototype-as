"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200007d8; bytecode file offset 0x1081c"
!AbtCodePageUtilitiesApp class methodsFor: 'recovered'!
removing
    (self) startUp.
    ^self
! !

"abtdah.ic method 0x2000093c; bytecode file offset 0x1098c"
!AbtCodePageUtilitiesApp class methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := AbtAbstractCodePageConverter.
    (recoveredValue0) startUp.
    ^self
! !

"abtdah.ic method 0x2000094c; bytecode file offset 0x1098c"
!AbtCodePageUtilitiesApp class methodsFor: 'recovered'!
relocalize
    | recoveredValue0 |
    recoveredValue0 := AbtCodePageConverter.
    (recoveredValue0) relocalize.
    ^self
! !

"abtdah.ic method 0x20001944; bytecode file offset 0x1198c"
!AbtCodePageUtilitiesApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('Current') inClassNamed: ('AbtAbstractCodePageConverter').
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004e1d4; bytecode file offset 0x94d048"
!AbtCodePageUtilitiesApp class methodsFor: 'recovered'!
removing
    (self) startUp.
    ^self
! !

"ASDBase.ic method 0x2005c094; bytecode file offset 0x958ab0"
!AbtCodePageUtilitiesApp class methodsFor: 'recovered'!
relocalize
    | recoveredValue0 |
    recoveredValue0 := AbtCodePageConverter.
    (recoveredValue0) relocalize.
    ^self
! !

"ASDBase.ic method 0x200ccc60; bytecode file offset 0x9c9524"
!AbtCodePageUtilitiesApp class methodsFor: 'recovered'!
startUp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtAbstractCodePageConverter.
    (recoveredValue0) startUp.
    recoveredValue1 := AbtBase64Coder.
    (recoveredValue1) reset.
    ^self
! !

"ASDBase.ic method 0x201440c0; bytecode file offset 0xa40984"
!AbtCodePageUtilitiesApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('Current') inClassNamed: ('AbtAbstractCodePageConverter').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) initializeToNilClassVariable: ('Current') inClassNamed: ('AbtBase64Coder').
    ^self
! !


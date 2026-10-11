"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001678; bytecode file offset 0x8ffcfc"
!AbtXmlBaseApp class methodsFor: 'recovered'!
_PRAGMA_AbtXmlConstants
    ^self
! !

"ASDBase.ic method 0x2005c034; bytecode file offset 0x958ab0"
!AbtXmlBaseApp class methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := AbtXmlConfiguration.
    (recoveredValue0) startUp.
    ^self
! !

"ASDBase.ic method 0x200bae94; bytecode file offset 0x9b7790"
!AbtXmlBaseApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('Current') inClassNamed: ('AbtXmlObjectCache').
    ^self
! !

"ASDBase.ic method 0x200cc8dc; bytecode file offset 0x9c91b0"
!AbtXmlBaseApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 |
    recoveredValue0 := SgmlException.
    (recoveredValue0) resumable: (true).
    (self) startUp.
    ^self
! !

"ASDBase.ic method 0x20114dd0; bytecode file offset 0xa116ac"
!AbtXmlBaseApp class methodsFor: 'recovered'!
removing
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlObjectCache.
    (recoveredValue0) reset.
    recoveredValue1 := AbtXmlResourceReader.
    (recoveredValue1) reset.
    recoveredValue2 := AbtXmlConfiguration.
    (recoveredValue2) reset.
    ^self
! !


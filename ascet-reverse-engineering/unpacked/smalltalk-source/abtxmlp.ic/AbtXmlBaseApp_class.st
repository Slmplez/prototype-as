"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000c78; bytecode file offset 0x19468"
!AbtXmlBaseApp class methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := AbtXmlConfiguration.
    (recoveredValue0) startUp.
    ^self
! !

"abtxmlp.ic method 0x2000235c; bytecode file offset 0x1ab50"
!AbtXmlBaseApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('Current') inClassNamed: ('AbtXmlObjectCache').
    ^self
! !

"abtxmlp.ic method 0x20002944; bytecode file offset 0x1b138"
!AbtXmlBaseApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 |
    recoveredValue0 := SgmlException.
    (recoveredValue0) resumable: (true).
    (self) startUp.
    ^self
! !

"abtxmlp.ic method 0x2000359c; bytecode file offset 0x1bd94"
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


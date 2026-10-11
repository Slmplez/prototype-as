"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200913e4; bytecode file offset 0x98de70"
!AbtXmlPluggableConfiguration class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a8e80; bytecode file offset 0x9a57cc"
!AbtXmlPluggableConfiguration class methodsFor: 'recovered'!
forKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := AbtXmlObjectCache.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (self) forKey: (recoveredValue0) cache: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20110db8; bytecode file offset 0xa0d67c"
!AbtXmlPluggableConfiguration class methodsFor: 'recovered'!
forKey: recoveredArg1 cache: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) objectCache: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) mappingSpecNamed: (recoveredValue5).
    (recoveredValue3) mappingSpec: (recoveredValue6).
    ^recoveredValue0
! !


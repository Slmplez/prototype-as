"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c358; bytecode file offset 0x92209c"
!AbtXmlSerializationBaseApp class methodsFor: 'recovered'!
packagerIncludeClassNames
    ^#('AbtXmlDtdOutputSerializer')
! !

"ASDBase.ic method 0x20026404; bytecode file offset 0x923928"
!AbtXmlSerializationBaseApp class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('abtXmlNoOp' 'abtXmlAddAll:' 'abtXmlElements')
! !

"ASDBase.ic method 0x200baea8; bytecode file offset 0x9b7790"
!AbtXmlSerializationBaseApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('Default') inClassNamed: ('AbtXmlOutputSerializer').
    ^self
! !

"ASDBase.ic method 0x2019e10c; bytecode file offset 0xa9a9e0"
!AbtXmlSerializationBaseApp class methodsFor: 'recovered'!
removing
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := AbtXmlOutputSerializer.
    (recoveredValue0) reset.
    recoveredValue1 := AbtXmlObjectCache.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    (recoveredValue3) mappingSpecs: (recoveredValue5).
    recoveredValue6 := LookupTable.
    recoveredValue7 := (recoveredValue6) new.
    (recoveredValue2) outputSerializers: (recoveredValue7).
    ^self
! !


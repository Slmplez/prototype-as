"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006f928; bytecode file offset 0x96c1f4"
!DBXmlImportDescGenericComponent methodsFor: 'recovered'!
hasFileList
    | recoveredValue0 |
    recoveredValue0 := hasFileList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20148660; bytecode file offset 0xa44f24"
!DBXmlImportDescGenericComponent methodsFor: 'recovered'!
initOn: recoveredArg1 namespace: recoveredArg2 database: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super initOn: (recoveredValue0) namespace: (recoveredValue1) database: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getBoolean: ('hasFileList').
    hasFileList := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x2018a230; bytecode file offset 0xa86afc"
!DBXmlImportDescGenericComponent methodsFor: 'recovered'!
asXML
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super asXML.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) name: ('genericComponent').
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := hasFileList.
    (recoveredValue2) setAttr: ('hasFileList') boolean: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !


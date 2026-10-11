"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004d28; bytecode file offset 0x90206c"
!ASDDatamodelDummyXMLController methodsFor: 'recovered'!
addReference: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005618; bytecode file offset 0x90206c"
!ASDDatamodelDummyXMLController methodsFor: 'recovered'!
outdatedLocalID: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20022934; bytecode file offset 0x92209c"
!ASDDatamodelDummyXMLController methodsFor: 'recovered'!
encryptionKey
    ^''
! !

"ASDBase.ic method 0x2005cca8; bytecode file offset 0x959680"
!ASDDatamodelDummyXMLController methodsFor: 'recovered'!
destVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDXMLExportOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) defaultXMLFormatVersion.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2007522c; bytecode file offset 0x9757c8"
!ASDDatamodelDummyXMLController methodsFor: 'recovered'!
isSignExport
    ^true
! !

"ASDBase.ic method 0x200752fc; bytecode file offset 0x9757c8"
!ASDDatamodelDummyXMLController methodsFor: 'recovered'!
isVerifyImport
    ^true
! !

"ASDBase.ic method 0x20092000; bytecode file offset 0x98e9dc"
!ASDDatamodelDummyXMLController methodsFor: 'recovered'!
logError: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) logError: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200920c0; bytecode file offset 0x98e9dc"
!ASDDatamodelDummyXMLController methodsFor: 'recovered'!
inconsistencyFound: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) logError: (recoveredValue1).
    ^self
! !


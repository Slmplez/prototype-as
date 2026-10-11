"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001434c; bytecode file offset 0x912098"
!ASDBuildResultManager class methodsFor: 'recovered'!
xmlDocumentClass
    | recoveredValue0 |
    recoveredValue0 := ASDBuildResultDOMDocument.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200abf9c; bytecode file offset 0x9a894c"
!ASDBuildResultManager class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) xmlDocument: (recoveredValue3).
    ^recoveredValue1
! !


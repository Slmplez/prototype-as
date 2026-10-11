"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200030a0; bytecode file offset 0x8ffcfc"
!ASDXMLImportApp class methodsFor: 'recovered'!
_PRAGMA_ASDXMLImportPkg
    ^self
! !

"ASDBase.ic method 0x203e44d8; bytecode file offset 0xce0dcc"
!ASDXMLImportApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := ExASDXML.
    recoveredValue1 := (recoveredValue0) newChild.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) description: ('Cannot read file').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) resumable: (false).
    FileReadError := recoveredValue1.
    recoveredValue4 := ExASDXML.
    recoveredValue5 := (recoveredValue4) newChild.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) description: ('Cannot find element').
    recoveredValue7 := recoveredValue5.
    (recoveredValue7) resumable: (false).
    ElementNotFound := recoveredValue5.
    recoveredValue8 := ExASDXML.
    recoveredValue9 := (recoveredValue8) newChild.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) description: ('Import aborted').
    recoveredValue11 := recoveredValue9.
    (recoveredValue11) resumable: (false).
    ImportAborted := recoveredValue9.
    recoveredValue12 := ExASDXML.
    recoveredValue13 := (recoveredValue12) newChild.
    recoveredValue14 := recoveredValue13.
    (recoveredValue14) description: ('Cannot find generator short name').
    recoveredValue15 := recoveredValue13.
    (recoveredValue15) resumable: (false).
    ShortNameNotFound := recoveredValue13.
    recoveredValue16 := ExASDXML.
    recoveredValue17 := (recoveredValue16) newChild.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) description: ('Item to import not found').
    recoveredValue19 := recoveredValue17.
    (recoveredValue19) resumable: (false).
    ImportItemNotFound := recoveredValue17.
    recoveredValue20 := ExASDXML.
    recoveredValue21 := (recoveredValue20) newChild.
    recoveredValue22 := recoveredValue21.
    (recoveredValue22) description: ('No *.main.xml or *.main.amd files found in "%1"').
    recoveredValue23 := recoveredValue21.
    (recoveredValue23) resumable: (false).
    NoMainXMLFound := recoveredValue21.
    ^self
! !


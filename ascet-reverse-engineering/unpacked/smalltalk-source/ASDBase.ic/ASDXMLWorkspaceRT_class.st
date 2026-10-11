"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000410; bytecode file offset 0x8ffcfc"
!ASDXMLWorkspaceRT class methodsFor: 'recovered'!
_PRAGMA_DBXmlPkg
    ^self
! !

"ASDBase.ic method 0x202b2b2c; bytecode file offset 0xbaf408"
!ASDXMLWorkspaceRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := ExASDXML.
    recoveredValue1 := (recoveredValue0) newChild.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) description: ('XML workspace exception').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) resumable: (false).
    ExDBXml := recoveredValue1.
    recoveredValue4 := ExDBXml.
    recoveredValue5 := (recoveredValue4) newChild.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) description: ('Workspace is already locked').
    recoveredValue7 := recoveredValue5.
    (recoveredValue7) resumable: (false).
    ExDBXmlWorkspaceLocked := recoveredValue5.
    recoveredValue8 := ExDBXml.
    recoveredValue9 := (recoveredValue8) newChild.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) description: ('Modification on frozen workspace').
    recoveredValue11 := recoveredValue9.
    (recoveredValue11) resumable: (true).
    ExDBXmlWorkspaceFrozen := recoveredValue9.
    ^self
! !


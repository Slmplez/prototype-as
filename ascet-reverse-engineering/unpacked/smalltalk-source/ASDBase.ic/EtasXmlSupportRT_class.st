"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002e70; bytecode file offset 0x8ffcfc"
!EtasXmlSupportRT class methodsFor: 'recovered'!
_PRAGMA_EtasXmlSupportPkg
    ^self
! !

"ASDBase.ic method 0x2005bd14; bytecode file offset 0x958ab0"
!EtasXmlSupportRT class methodsFor: 'recovered'!
saving
    | recoveredValue0 |
    recoveredValue0 := EtasXmlSupportCatalog.
    (recoveredValue0) dispose.
    ^self
! !

"ASDBase.ic method 0x20441914; bytecode file offset 0xd3e224"
!EtasXmlSupportRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := EtasXmlUtil.
    recoveredValue1 := (recoveredValue0) new.
    Util := recoveredValue1.
    recoveredValue2 := ExError.
    recoveredValue3 := (recoveredValue2) newChild.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) description: ('General XML tools exception').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) resumable: (false).
    ExASDXML := recoveredValue3.
    recoveredValue6 := ExASDXML.
    recoveredValue7 := (recoveredValue6) newChild.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) description: ('Mismatching specification type exception').
    recoveredValue9 := recoveredValue7.
    (recoveredValue9) resumable: (false).
    ExASDXMLMismatchingSpecType := recoveredValue7.
    recoveredValue10 := ExASDXML.
    recoveredValue11 := (recoveredValue10) newChild.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) description: ('Cannot read or parse XML file').
    recoveredValue13 := recoveredValue11.
    (recoveredValue13) resumable: (false).
    XMLReadError := recoveredValue11.
    recoveredValue14 := ExASDXML.
    recoveredValue15 := (recoveredValue14) newChild.
    recoveredValue16 := recoveredValue15.
    (recoveredValue16) description: ('Required attribute missing').
    recoveredValue17 := recoveredValue15.
    (recoveredValue17) resumable: (false).
    ExMissingAttribute := recoveredValue15.
    recoveredValue18 := ExASDXML.
    recoveredValue19 := (recoveredValue18) newChild.
    recoveredValue20 := recoveredValue19.
    (recoveredValue20) description: ('input / ouput system error').
    recoveredValue21 := recoveredValue19.
    (recoveredValue21) resumable: (false).
    IOError := recoveredValue19.
    recoveredValue22 := IOError.
    recoveredValue23 := (recoveredValue22) newChild.
    recoveredValue24 := recoveredValue23.
    (recoveredValue24) description: ('Cannot create temp dir').
    recoveredValue25 := recoveredValue23.
    (recoveredValue25) resumable: (false).
    CreateTempDirError := recoveredValue23.
    recoveredValue26 := ('Kli') == ('Call_70942').
    XmlExt := 'amd'.
    ^self
! !


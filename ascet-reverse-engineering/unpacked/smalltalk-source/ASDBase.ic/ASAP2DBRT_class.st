"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004e834; bytecode file offset 0x94d048"
!ASAP2DBRT class methodsFor: 'recovered'!
localize
    (self) etasDefaultLocalize.
    ^self
! !

"ASDBase.ic method 0x2004fca4; bytecode file offset 0x94d048"
!ASAP2DBRT class methodsFor: 'recovered'!
relocalize
    (self) localize.
    ^self
! !

"ASDBase.ic method 0x2005c024; bytecode file offset 0x958ab0"
!ASAP2DBRT class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := ASAP2FloatByteArray.
    (recoveredValue0) cleanupInstances.
    ^self
! !

"ASDBase.ic method 0x201d5280; bytecode file offset 0xad1b54"
!ASAP2DBRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ASAP2BytesLabelObject.
    (recoveredValue0) initializeClass.
    recoveredValue1 := ASAP2DeviceLink.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) setShortName.
    (recoveredValue1) setEmptyNameBlock.
    recoveredValue3 := ASAP2BytesAxisDescription.
    (recoveredValue3) initializeClass.
    recoveredValue4 := ASAP2BytesCompuMethod.
    (recoveredValue4) initializeClass.
    recoveredValue5 := ASAP2FloatByteArray.
    (recoveredValue5) initializeClass.
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20091f50; bytecode file offset 0x98e9dc"
!EtasXmlSupportSchema methodsFor: 'recovered'!
internal_doRelease: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasXmlSupportNative.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) releaseSchema: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d6e38; bytecode file offset 0x9d36f8"
!EtasXmlSupportSchema methodsFor: 'recovered'!
validate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasXmlSupportNative.
    recoveredValue1 := cPointer.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) cPointer.
    (recoveredValue0) validateDoc: (recoveredValue1) doc: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2022055c; bytecode file offset 0xb1ce70"
!EtasXmlSupportSchema methodsFor: 'recovered'!
initFromFile: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ('Die') == ('Call_95542').
    recoveredValue1 := EtasXmlSupportUTF8String.
    recoveredValue2 := Util.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) checkFileName: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) create: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) castToSBString.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := EtasXmlSupportNative.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) readSchema: (recoveredValue8).
    super init: (recoveredValue9).
    ^self
! !


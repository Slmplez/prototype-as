"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20083744; bytecode file offset 0x980230"
!EtasXmlSupportStyleSheet methodsFor: 'recovered'!
transform: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) transform: (recoveredValue0) params: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008381c; bytecode file offset 0x980230"
!EtasXmlSupportStyleSheet methodsFor: 'recovered'!
transformReplace: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) transformReplace: (recoveredValue0) params: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20091f10; bytecode file offset 0x98e9dc"
!EtasXmlSupportStyleSheet methodsFor: 'recovered'!
internal_doRelease: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasXmlSupportNative.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) releaseStyleSheet: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20156930; bytecode file offset 0xa531fc"
!EtasXmlSupportStyleSheet methodsFor: 'recovered'!
transform: recoveredArg1 params: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXmlSupportDoc.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := EtasXmlSupportNative.
    recoveredValue3 := cPointer.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) cPointer.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue2) transform: (recoveredValue3) doc: (recoveredValue5) params: (recoveredValue6).
    recoveredValue8 := (recoveredValue1) init: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201fb484; bytecode file offset 0xaf7d54"
!EtasXmlSupportStyleSheet methodsFor: 'recovered'!
transformReplace: recoveredArg1 params: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) cPointer.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := EtasXmlSupportNative.
    recoveredValue4 := cPointer.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) cPointer.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue3) transform: (recoveredValue4) doc: (recoveredValue6) params: (recoveredValue7).
    (recoveredValue2) init: (recoveredValue8).
    recoveredValue9 := EtasXmlSupportDoc.
    recoveredValue10 := (recoveredValue9) new.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue10) init: (recoveredValue11).
    (recoveredValue12) dispose.
    ^nil
! !

"ASDBase.ic method 0x20220590; bytecode file offset 0xb1ce70"
!EtasXmlSupportStyleSheet methodsFor: 'recovered'!
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
    recoveredValue9 := (recoveredValue7) readStyleSheet: (recoveredValue8).
    super init: (recoveredValue9).
    ^self
! !


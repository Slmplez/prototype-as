"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201e028c; bytecode file offset 0xadcb5c"
!DBXmlRenamer methodsFor: 'recovered'!
renameIn: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Array.
    recoveredValue1 := Util.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) quoteAsXSLTParam: (recoveredValue2).
    recoveredValue4 := Util.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue4) quoteAsXSLTParam: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) with: ('in') with: (recoveredValue3) with: ('out') with: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredLocal1.
    (self) renameIn: (recoveredValue8) xsltParams: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x201f43e0; bytecode file offset 0xaf0cb4"
!DBXmlRenamer methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    recoveredValue1 := EtasXmlSupportStyleSheet.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := Util.
    recoveredValue4 := (recoveredValue3) dbXmlPath.
    recoveredValue5 := (recoveredValue4) , ('\rename.').
    recoveredValue6 := type.
    recoveredValue7 := (recoveredValue5) , (recoveredValue6).
    recoveredValue8 := (recoveredValue7) , ('.xslt').
    recoveredValue9 := (recoveredValue2) initFromFile: (recoveredValue8).
    xslt := recoveredValue9.
    ^self
! !

"ASDBase.ic method 0x2027dfd4; bytecode file offset 0xb7a8b0"
!DBXmlRenamer methodsFor: 'recovered'!
renameIn: recoveredArg1 xsltParams: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) , ('.').
    recoveredValue2 := type.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('.amd').
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := EtasXmlSupportDoc.
    recoveredValue6 := (recoveredValue5) new.
    recoveredValue7 := recoveredLocal3.
    recoveredValue8 := (recoveredValue6) initFromFile: (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := xslt.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := recoveredArg2.
    (recoveredValue9) transformReplace: (recoveredValue10) params: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    (recoveredValue12) sign.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := recoveredLocal3.
    (recoveredValue13) writeToFile: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    (recoveredValue15) dispose.
    ^self
! !


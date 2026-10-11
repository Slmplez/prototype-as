"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20099bdc; bytecode file offset 0x996498"
!SGIlExpOilXML methodsFor: 'recovered'!
endTask: recoveredArg1 category: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) xmlStream.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) endTag: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a113c; bytecode file offset 0x99db8c"
!SGIlExpOilXML methodsFor: 'recovered'!
endAppMode
    | recoveredValue0 |
    recoveredValue0 := (self) xmlStream.
    (recoveredValue0) endTag: ('appmode').
    ^self
! !

"ASDBase.ic method 0x200a1204; bytecode file offset 0x99db8c"
!SGIlExpOilXML methodsFor: 'recovered'!
endProcessRef
    | recoveredValue0 |
    recoveredValue0 := (self) xmlStream.
    (recoveredValue0) endTag: ('process').
    ^self
! !

"ASDBase.ic method 0x200ec36c; bytecode file offset 0x9e8c2c"
!SGIlExpOilXML methodsFor: 'recovered'!
beginTask: recoveredArg1 category: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) xmlStream.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) openTag: (recoveredValue1) withAttribute: ('name') value: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fedd8; bytecode file offset 0x9fb69c"
!SGIlExpOilXML methodsFor: 'recovered'!
beginAppMode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) xmlStream.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) openTag: ('appmode') withAttribute: ('name') value: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20108730; bytecode file offset 0xa04ff4"
!SGIlExpOilXML methodsFor: 'recovered'!
endOperatingSystem
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) xmlStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) endTag: ('os').
    (recoveredValue0) endTag: ('AscetOSDescription').
    ^self
! !

"ASDBase.ic method 0x201769e8; bytecode file offset 0xa732b8"
!SGIlExpOilXML methodsFor: 'recovered'!
beginAscetOs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) xmlStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) version: ('1.0') encoding: ('iso-8859-1').
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) openTag: ('AscetOSDescription') withAttribute: ('version') value: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201b6460; bytecode file offset 0xab2d30"
!SGIlExpOilXML methodsFor: 'recovered'!
beginProcessRef: recoveredArg1 cName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) xmlStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) startOpenTag: ('process').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) addTagAttributeNamed: ('name') value: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) addTagAttributeNamed: ('identifier') value: (recoveredValue5).
    (recoveredValue0) endOpenTag.
    ^self
! !

"ASDBase.ic method 0x2021d698; bytecode file offset 0xb19f70"
!SGIlExpOilXML methodsFor: 'recovered'!
beginOperatingSystem: recoveredArg1 version: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) xmlStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) startOpenTag: ('os').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) addTagAttributeNamed: ('name') value: ('ETAS').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) addTagAttributeNamed: ('type') value: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) addTagAttributeNamed: ('version') value: (recoveredValue6).
    (recoveredValue0) endOpenTag.
    ^self
! !

"ASDBase.ic method 0x2024d454; bytecode file offset 0xb49d30"
!SGIlExpOilXML methodsFor: 'recovered'!
attribute: recoveredArg1 type: recoveredArg2 value: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) xmlStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) startOpenTag: ('attribute').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) addTagAttributeNamed: ('name') value: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) addTagAttributeNamed: ('type') value: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) endOpenTag.
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := (recoveredValue8) asString.
    (recoveredValue7) nextPutAll: (recoveredValue9).
    (recoveredValue0) closeTag: ('attribute').
    ^self
! !


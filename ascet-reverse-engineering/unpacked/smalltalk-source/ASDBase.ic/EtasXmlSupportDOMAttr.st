"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065ed4; bytecode file offset 0x963428"
!EtasXmlSupportDOMAttr methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200675fc; bytecode file offset 0x9646f8"
!EtasXmlSupportDOMAttr methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20095458; bytecode file offset 0x991fb4"
!EtasXmlSupportDOMAttr methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) printString.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ad0a8; bytecode file offset 0x9a9964"
!EtasXmlSupportDOMAttr methodsFor: 'recovered'!
initOn: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    value := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200cdacc; bytecode file offset 0x9ca388"
!EtasXmlSupportDOMAttr methodsFor: 'recovered'!
printString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := name.
    recoveredValue1 := (recoveredValue0) , ('=').
    recoveredValue2 := value.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20139afc; bytecode file offset 0xa363b8"
!EtasXmlSupportDOMAttr methodsFor: 'recovered'!
toUTF8
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EtasXmlSupportUTF8String.
    recoveredValue1 := name.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    name := recoveredValue2.
    recoveredValue3 := EtasXmlSupportUTF8String.
    recoveredValue4 := value.
    recoveredValue5 := (recoveredValue3) create: (recoveredValue4).
    value := recoveredValue5.
    ^self
! !


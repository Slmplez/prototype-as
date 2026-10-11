"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002738; bytecode file offset 0x8ffcfc"
!AbtXmlSaxParserApp class methodsFor: 'recovered'!
_PRAGMA_AbtSaxConstants
    ^self
! !

"ASDBase.ic method 0x2001eb84; bytecode file offset 0x92209c"
!AbtXmlSaxParserApp class methodsFor: 'recovered'!
packagerIgnoreSelectors
    ^#('pushContext' 'popContext')
! !

"ASDBase.ic method 0x2019e3b8; bytecode file offset 0xa9ac84"
!AbtXmlSaxParserApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ExError.
    recoveredValue1 := (recoveredValue0) newChild.
    AbtSaxException := recoveredValue1.
    recoveredValue2 := AbtSaxException.
    recoveredValue3 := (recoveredValue2) newChild.
    AbtSaxNotRecognizedException := recoveredValue3.
    recoveredValue4 := AbtSaxException.
    recoveredValue5 := (recoveredValue4) newChild.
    AbtSaxNotSupportedException := recoveredValue5.
    recoveredValue6 := AbtSaxException.
    recoveredValue7 := (recoveredValue6) newChild.
    AbtSaxParseException := recoveredValue7.
    ^self
! !


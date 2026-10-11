"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000048; bytecode file offset 0x188a8"
!AbtXmlSaxParserApp class methodsFor: 'recovered'!
_PRAGMA_AbtSaxConstants
    ^self
! !

"abtxmlp.ic method 0x20000580; bytecode file offset 0x18dd8"
!AbtXmlSaxParserApp class methodsFor: 'recovered'!
packagerIgnoreSelectors
    | recoveredValue0 |
    recoveredValue0 := (Notification new: 0) instVarAt: 1 put: ('pushContext'); instVarAt: 2 put: ('popContext'); yourself.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20004b54; bytecode file offset 0x1d354"
!AbtXmlSaxParserApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EsStackFrameContext.
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


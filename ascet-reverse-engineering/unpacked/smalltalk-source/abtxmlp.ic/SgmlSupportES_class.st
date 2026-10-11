"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000028; bytecode file offset 0x188a8"
!SgmlSupportES class methodsFor: 'recovered'!
_PRAGMA_SgmlConstants
    ^self
! !

"abtxmlp.ic method 0x20000038; bytecode file offset 0x188a8"
!SgmlSupportES class methodsFor: 'recovered'!
_PRAGMA_SgmlTextConstants
    ^self
! !

"abtxmlp.ic method 0x200000b0; bytecode file offset 0x188a8"
!SgmlSupportES class methodsFor: 'recovered'!
_PRAGMA_SgmlExceptions
    ^self
! !

"abtxmlp.ic method 0x200016b4; bytecode file offset 0x19ea4"
!SgmlSupportES class methodsFor: 'recovered'!
setWasRemovedCode
    (self) wasRemovedCode: ('Smalltalk removeKey: #SgmlExceptions asGlobalKey ifAbsent: [].').
    ^self
! !

"abtxmlp.ic method 0x20006010; bytecode file offset 0x1e82c"
!SgmlSupportES class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SgmlTextConstants.
    recoveredValue1 := EsLocalStackVariable.
    recoveredValue2 := (recoveredValue1) at: ('LineDelimiter').
    (recoveredValue0) at: ('LineDelimiter') put: (recoveredValue2).
    recoveredValue3 := SgmlExceptions.
    recoveredValue4 := SortedCollection.
    recoveredValue5 := (recoveredValue4) at: ('ExAll').
    recoveredValue6 := (recoveredValue5) newChild.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) description: ('SGML exception').
    recoveredValue8 := recoveredValue6.
    (recoveredValue8) resumable: (false).
    (recoveredValue3) at: ('SgmlException') put: (recoveredValue6).
    ^self
! !


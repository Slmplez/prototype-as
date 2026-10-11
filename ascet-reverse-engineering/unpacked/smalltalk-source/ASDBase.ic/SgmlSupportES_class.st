"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200023b0; bytecode file offset 0x8ffcfc"
!SgmlSupportES class methodsFor: 'recovered'!
_PRAGMA_SgmlTextConstants
    ^self
! !

"ASDBase.ic method 0x200024c8; bytecode file offset 0x8ffcfc"
!SgmlSupportES class methodsFor: 'recovered'!
_PRAGMA_SgmlExceptions
    ^self
! !

"ASDBase.ic method 0x20002a08; bytecode file offset 0x8ffcfc"
!SgmlSupportES class methodsFor: 'recovered'!
_PRAGMA_SgmlConstants
    ^self
! !

"ASDBase.ic method 0x2008c3fc; bytecode file offset 0x989498"
!SgmlSupportES class methodsFor: 'recovered'!
setWasRemovedCode
    (self) wasRemovedCode: ('Smalltalk removeKey: #SgmlExceptions asGlobalKey ifAbsent: [].').
    ^self
! !

"ASDBase.ic method 0x202523cc; bytecode file offset 0xb4ecb4"
!SgmlSupportES class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SgmlTextConstants.
    recoveredValue1 := CldtConstants.
    recoveredValue2 := (recoveredValue1) at: ('LineDelimiter').
    (recoveredValue0) at: ('LineDelimiter') put: (recoveredValue2).
    recoveredValue3 := SgmlExceptions.
    recoveredValue4 := SystemExceptions.
    recoveredValue5 := (recoveredValue4) at: ('ExAll').
    recoveredValue6 := (recoveredValue5) newChild.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) description: ('SGML exception').
    recoveredValue8 := recoveredValue6.
    (recoveredValue8) resumable: (false).
    (recoveredValue3) at: ('SgmlException') put: (recoveredValue6).
    ^self
! !


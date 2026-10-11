"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000ed8; bytecode file offset 0x8ffcfc"
!AbtDocumentObjectModelApp class methodsFor: 'recovered'!
_PRAGMA_AbtDOMConstants
    ^self
! !

"ASDBase.ic method 0x20001e50; bytecode file offset 0x8ffcfc"
!AbtDocumentObjectModelApp class methodsFor: 'recovered'!
_PRAGMA_AbtDOMMsg
    ^self
! !

"ASDBase.ic method 0x2004e270; bytecode file offset 0x94d048"
!AbtDocumentObjectModelApp class methodsFor: 'recovered'!
removing
    (self) abtUnregisterExternalStrings.
    ^self
! !

"ASDBase.ic method 0x2004ef54; bytecode file offset 0x94d048"
!AbtDocumentObjectModelApp class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"ASDBase.ic method 0x200e0288; bytecode file offset 0x9dcbc0"
!AbtDocumentObjectModelApp class methodsFor: 'recovered'!
abtExternalizedStringBuildingInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('abtdo?40') with: (false) with: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201fe24c; bytecode file offset 0xafab2c"
!AbtDocumentObjectModelApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) abtRegisterExternalStrings.
    recoveredValue0 := AbtDOMConstants.
    recoveredValue1 := SystemExceptions.
    recoveredValue2 := (recoveredValue1) at: ('ExAll').
    recoveredValue3 := (recoveredValue2) newChild.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) description: ('DOM exception').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) resumable: (true).
    (recoveredValue0) at: ('AbtDOMException') put: (recoveredValue3).
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000020; bytecode file offset 0x188a8"
!AbtDocumentObjectModelApp class methodsFor: 'recovered'!
_PRAGMA_AbtDOMConstants
    ^self
! !

"abtxmlp.ic method 0x20000058; bytecode file offset 0x188a8"
!AbtDocumentObjectModelApp class methodsFor: 'recovered'!
_PRAGMA_AbtDOMMsg
    ^self
! !

"abtxmlp.ic method 0x20000914; bytecode file offset 0x19160"
!AbtDocumentObjectModelApp class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"abtxmlp.ic method 0x2000095c; bytecode file offset 0x19160"
!AbtDocumentObjectModelApp class methodsFor: 'recovered'!
removing
    (self) abtUnregisterExternalStrings.
    ^self
! !

"abtxmlp.ic method 0x20002bdc; bytecode file offset 0x1b3d0"
!AbtDocumentObjectModelApp class methodsFor: 'recovered'!
abtExternalizedStringBuildingInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ExceptionalEvent.
    recoveredValue1 := (recoveredValue0) with: ('abtdo?40') with: (false) with: (true).
    ^recoveredValue1
! !

"abtxmlp.ic method 0x200057a8; bytecode file offset 0x1dfbc"
!AbtDocumentObjectModelApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) abtRegisterExternalStrings.
    recoveredValue0 := AbtDOMConstants.
    recoveredValue1 := SortedCollection.
    recoveredValue2 := (recoveredValue1) at: ('ExAll').
    recoveredValue3 := (recoveredValue2) newChild.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) description: ('DOM exception').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) resumable: (true).
    (recoveredValue0) at: ('AbtDOMException') put: (recoveredValue3).
    ^self
! !


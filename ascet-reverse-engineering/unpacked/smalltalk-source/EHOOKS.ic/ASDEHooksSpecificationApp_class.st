"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x20000018; bytecode file offset 0xf158"
!ASDEHooksSpecificationApp class methodsFor: 'recovered'!
_PRAGMA_EHooksConstants
    ^self
! !

"EHOOKS.ic method 0x20000020; bytecode file offset 0xf158"
!ASDEHooksSpecificationApp class methodsFor: 'recovered'!
_PRAGMA_EHooksStrings
    ^self
! !

"EHOOKS.ic method 0x20000028; bytecode file offset 0xf158"
!ASDEHooksSpecificationApp class methodsFor: 'recovered'!
_PRAGMA_ASDEHooksExceptions
    ^self
! !

"EHOOKS.ic method 0x200003b0; bytecode file offset 0xf514"
!ASDEHooksSpecificationApp class methodsFor: 'recovered'!
loaded
    (self) initializeExceptions.
    ^self
! !

"EHOOKS.ic method 0x200003d4; bytecode file offset 0xf514"
!ASDEHooksSpecificationApp class methodsFor: 'recovered'!
initializeClass
    (self) initializeExceptions.
    ^self
! !

"EHOOKS.ic method 0x20002040; bytecode file offset 0x11190"
!ASDEHooksSpecificationApp class methodsFor: 'recovered'!
initializeExceptions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ExAll.
    recoveredValue1 := (recoveredValue0) newChild.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) description: ('ehooks file error').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) resumable: (false).
    ExEHooksFileError := recoveredValue1.
    recoveredValue4 := ExAll.
    recoveredValue5 := (recoveredValue4) newChild.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) description: ('ehooks fatal error').
    recoveredValue7 := recoveredValue5.
    (recoveredValue7) resumable: (false).
    ExEHooksFatalError := recoveredValue5.
    ^self
! !


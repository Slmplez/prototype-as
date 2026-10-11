"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000058; bytecode file offset 0x232e0"
!EswMutationSupport class methodsFor: 'recovered'!
_PRAGMA_NlsCatESW
    ^self
! !

"cfsnls.ic method 0x200009e8; bytecode file offset 0x23c4c"
!EswMutationSupport class methodsFor: 'recovered'!
supportedPlatforms
    | recoveredValue0 |
    recoveredValue0 := SupportedPlatforms.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20003138; bytecode file offset 0x26374"
!EswMutationSupport class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatESW.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"cfsnls.ic method 0x2000d378; bytecode file offset 0x305e8"
!EswMutationSupport class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    SupportedPlatforms := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: (8096) put: ('ES').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) at: (286) put: ('286').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) at: (20) put: ('020').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) at: (22350) put: ('WIN').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) at: (20557) put: ('PM').
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) at: (19206) put: ('st80').
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) at: (18437) put: ('st80').
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) at: (18985) put: ('st80').
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) at: (13215) put: ('st80').
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) at: (11472) put: ('st80').
    (recoveredValue1) at: (23608) put: ('st80').
    ^self
! !


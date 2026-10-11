"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x20000050; bytecode file offset 0xf3ec"
!AbtPromptersWithUIApp class methodsFor: 'recovered'!
_PRAGMA_NlsCatABTpwui
    ^self
! !

"abtdau.ic method 0x20000068; bytecode file offset 0xf3ec"
!AbtPromptersWithUIApp class methodsFor: 'recovered'!
failedRemove
    ^self
! !

"abtdau.ic method 0x20000070; bytecode file offset 0xf3ec"
!AbtPromptersWithUIApp class methodsFor: 'recovered'!
_PRAGMA_AbtPrompterConstants
    ^self
! !

"abtdau.ic method 0x2000057c; bytecode file offset 0xf910"
!AbtPromptersWithUIApp class methodsFor: 'recovered'!
saving
    | recoveredValue0 |
    recoveredValue0 := AbtExtendedMessagePrompter.
    (recoveredValue0) abtAboutToSaveImage.
    ^self
! !

"abtdau.ic method 0x2000059c; bytecode file offset 0xf910"
!AbtPromptersWithUIApp class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := AbtExtendedMessagePrompter.
    (recoveredValue0) freeIcons.
    ^self
! !

"abtdau.ic method 0x20000c98; bytecode file offset 0x10024"
!AbtPromptersWithUIApp class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatABTpwui.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"abtdau.ic method 0x20000e68; bytecode file offset 0x101e0"
!AbtPromptersWithUIApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 |
    (self) localize.
    recoveredValue0 := AbtExtendedMessagePrompter.
    (recoveredValue0) abtLoaded.
    ^self
! !

"abtdau.ic method 0x20000ea8; bytecode file offset 0x10220"
!AbtPromptersWithUIApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('AbtIcons') inClassNamed: ('AbtExtendedMessagePrompter').
    ^self
! !


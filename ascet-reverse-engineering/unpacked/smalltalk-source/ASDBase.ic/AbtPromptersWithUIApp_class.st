"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001700; bytecode file offset 0x8ffcfc"
!AbtPromptersWithUIApp class methodsFor: 'recovered'!
_PRAGMA_NlsCatABTpwui
    ^self
! !

"ASDBase.ic method 0x20002200; bytecode file offset 0x8ffcfc"
!AbtPromptersWithUIApp class methodsFor: 'recovered'!
failedRemove
    ^self
! !

"ASDBase.ic method 0x20002560; bytecode file offset 0x8ffcfc"
!AbtPromptersWithUIApp class methodsFor: 'recovered'!
_PRAGMA_AbtPrompterConstants
    ^self
! !

"ASDBase.ic method 0x2005beb4; bytecode file offset 0x958ab0"
!AbtPromptersWithUIApp class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := AbtExtendedMessagePrompter.
    (recoveredValue0) freeIcons.
    ^self
! !

"ASDBase.ic method 0x2005c0e4; bytecode file offset 0x958ab0"
!AbtPromptersWithUIApp class methodsFor: 'recovered'!
saving
    | recoveredValue0 |
    recoveredValue0 := AbtExtendedMessagePrompter.
    (recoveredValue0) abtAboutToSaveImage.
    ^self
! !

"ASDBase.ic method 0x2009baf8; bytecode file offset 0x998444"
!AbtPromptersWithUIApp class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatABTpwui.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b32cc; bytecode file offset 0x9afbb4"
!AbtPromptersWithUIApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 |
    (self) localize.
    recoveredValue0 := AbtExtendedMessagePrompter.
    (recoveredValue0) abtLoaded.
    ^self
! !

"ASDBase.ic method 0x200bae58; bytecode file offset 0x9b7790"
!AbtPromptersWithUIApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('AbtIcons') inClassNamed: ('AbtExtendedMessagePrompter').
    ^self
! !


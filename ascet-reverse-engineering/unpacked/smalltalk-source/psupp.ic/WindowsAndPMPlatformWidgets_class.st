"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200000b0; bytecode file offset 0x153a14"
!WindowsAndPMPlatformWidgets class methodsFor: 'recovered'!
_PRAGMA_NlsCatCWcsPMWin
    ^self
! !

"psupp.ic method 0x20008054; bytecode file offset 0x15b928"
!WindowsAndPMPlatformWidgets class methodsFor: 'recovered'!
loaded
    (self) localize.
    ^self
! !

"psupp.ic method 0x20025128; bytecode file offset 0x1789ec"
!WindowsAndPMPlatformWidgets class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := NlsCatCWcsPMWin.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    recoveredValue2 := OSButton.
    (recoveredValue2) initializeStrings.
    ^self
! !

"psupp.ic method 0x2002af40; bytecode file offset 0x17e7e8"
!WindowsAndPMPlatformWidgets class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('DefaultIcon') inClassNamed: ('OSShell').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) initializeToNilClassVariable: ('EventTable') inClassNamed: ('OSWidget').
    ^self
! !


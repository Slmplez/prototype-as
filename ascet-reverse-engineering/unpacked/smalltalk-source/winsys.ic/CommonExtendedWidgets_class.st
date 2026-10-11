"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200000d8; bytecode file offset 0x7c350"
!CommonExtendedWidgets class methodsFor: 'recovered'!
_PRAGMA_NlsCatESTa
    ^self
! !

"winsys.ic method 0x200020e4; bytecode file offset 0x7e36c"
!CommonExtendedWidgets class methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := CwSash.
    (recoveredValue0) loadCursors.
    ^self
! !

"winsys.ic method 0x20002104; bytecode file offset 0x7e36c"
!CommonExtendedWidgets class methodsFor: 'recovered'!
exiting
    | recoveredValue0 |
    recoveredValue0 := CwSash.
    (recoveredValue0) freeCursors.
    ^self
! !

"winsys.ic method 0x20005e58; bytecode file offset 0x820c4"
!CommonExtendedWidgets class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatESTa.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x20006cb8; bytecode file offset 0x82e84"
!CommonExtendedWidgets class methodsFor: 'recovered'!
loaded
    | recoveredValue0 |
    (self) localize.
    recoveredValue0 := CwFontPrompter.
    (recoveredValue0) initialize.
    ^self
! !

"winsys.ic method 0x20008ca4; bytecode file offset 0x84e74"
!CommonExtendedWidgets class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CwSash.
    (recoveredValue0) clearCursors.
    recoveredValue1 := CwFontPrompter.
    (recoveredValue1) initialize.
    ^self
! !

"winsys.ic method 0x2001931c; bytecode file offset 0x954f8"
!CommonExtendedWidgets class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('DisplayFonts') inClassNamed: ('CwFontPrompter').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) initializeToNilClassVariable: ('LastFont') inClassNamed: ('CwFontPrompter').
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) initializeToNilClassVariable: ('HorizontalCursor') inClassNamed: ('CwSash').
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) initializeToNilClassVariable: ('VerticalCursor') inClassNamed: ('CwSash').
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200012f8; bytecode file offset 0x8ffcfc"
!MouseWheelWinAdditionsApp class methodsFor: 'recovered'!
_PRAGMA_MorePlatformConstants
    ^self
! !

"ASDBase.ic method 0x20018260; bytecode file offset 0x92209c"
!MouseWheelWinAdditionsApp class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('wmMousewheel:with:')
! !

"ASDBase.ic method 0x2004ea14; bytecode file offset 0x94d048"
!MouseWheelWinAdditionsApp class methodsFor: 'recovered'!
failedRemove
    (self) initializeEventTable.
    ^self
! !

"ASDBase.ic method 0x2004f7e8; bytecode file offset 0x94d048"
!MouseWheelWinAdditionsApp class methodsFor: 'recovered'!
startUp
    (self) initializeEventTable.
    ^self
! !

"ASDBase.ic method 0x2004fe9c; bytecode file offset 0x94d048"
!MouseWheelWinAdditionsApp class methodsFor: 'recovered'!
loaded
    (self) startUp.
    ^self
! !

"ASDBase.ic method 0x20087b68; bytecode file offset 0x9845b8"
!MouseWheelWinAdditionsApp class methodsFor: 'recovered'!
packagerIncludeClasses
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := MouseWheelWinAdditionsApp.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200afcd4; bytecode file offset 0x9ac594"
!MouseWheelWinAdditionsApp class methodsFor: 'recovered'!
removing
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSWidget.
    recoveredValue1 := WmMousewheel.
    (recoveredValue0) eventTableAt: (recoveredValue1) put: (nil).
    ^self
! !

"ASDBase.ic method 0x200cb850; bytecode file offset 0x9c8114"
!MouseWheelWinAdditionsApp class methodsFor: 'recovered'!
initializeEventTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSWidget.
    recoveredValue1 := WmMousewheel.
    (recoveredValue0) eventTableAt: (recoveredValue1) put: ('wmMousewheel:with:').
    ^self
! !


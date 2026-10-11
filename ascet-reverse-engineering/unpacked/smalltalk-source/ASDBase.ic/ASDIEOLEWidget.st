"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001ca0; bytecode file offset 0x8ffcfc"
!ASDIEOLEWidget methodsFor: 'recovered'!
checkModified
    ^self
! !

"ASDBase.ic method 0x200029f0; bytecode file offset 0x8ffcfc"
!ASDIEOLEWidget methodsFor: 'recovered'!
startObserving
    ^self
! !

"ASDBase.ic method 0x200033d0; bytecode file offset 0x8ffcfc"
!ASDIEOLEWidget methodsFor: 'recovered'!
play
    ^self
! !

"ASDBase.ic method 0x200052c0; bytecode file offset 0x90206c"
!ASDIEOLEWidget methodsFor: 'recovered'!
installActionKeysStarting: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005b70; bytecode file offset 0x902744"
!ASDIEOLEWidget methodsFor: 'recovered'!
hookInterfaceCallbacksFor: recoveredArg1 clientData: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2001b710; bytecode file offset 0x92209c"
!ASDIEOLEWidget methodsFor: 'recovered'!
clientName
    ^'Shell.Explorer.2'
! !

"ASDBase.ic method 0x2001d99c; bytecode file offset 0x92209c"
!ASDIEOLEWidget methodsFor: 'recovered'!
dynamicMenus
    ^#()
! !

"ASDBase.ic method 0x200227c0; bytecode file offset 0x92209c"
!ASDIEOLEWidget methodsFor: 'recovered'!
dynamicMenuLabels
    ^#()
! !

"ASDBase.ic method 0x2002f854; bytecode file offset 0x934580"
!ASDIEOLEWidget methodsFor: 'recovered'!
destroyWidget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) oleControlWrapper.
    recoveredValue1 := (recoveredValue0) release.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20073420; bytecode file offset 0x970b34"
!ASDIEOLEWidget methodsFor: 'recovered'!
item
    ^nil
! !

"ASDBase.ic method 0x200795a4; bytecode file offset 0x97c330"
!ASDIEOLEWidget methodsFor: 'recovered'!
allowWidgetCaching
    ^false
! !

"ASDBase.ic method 0x2007d1e4; bytecode file offset 0x97c330"
!ASDIEOLEWidget methodsFor: 'recovered'!
isEditingInProgress
    ^false
! !

"ASDBase.ic method 0x20085074; bytecode file offset 0x981ca4"
!ASDIEOLEWidget methodsFor: 'recovered'!
updateKeyboardControlNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) installActionKeysStarting: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20088480; bytecode file offset 0x985628"
!ASDIEOLEWidget methodsFor: 'recovered'!
licenseKey
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OleControl.
    recoveredValue1 := (self) clientName.
    recoveredValue2 := (recoveredValue0) getLicenseKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b7850; bytecode file offset 0x9b4110"
!ASDIEOLEWidget methodsFor: 'recovered'!
release
    | recoveredValue0 recoveredValue1 |
    super release.
    recoveredValue0 := (self) oleControlWrapper.
    recoveredValue1 := (recoveredValue0) release.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c4b1c; bytecode file offset 0x9c16b0"
!ASDIEOLEWidget methodsFor: 'recovered'!
item: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    item := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20133e24; bytecode file offset 0xa306e4"
!ASDIEOLEWidget methodsFor: 'recovered'!
open: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) oleControlWrapper.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) navigate: (recoveredValue1) flags: (4128) targetFrameName: ('_self') postData: (nil) headers: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201408a8; bytecode file offset 0xa3d170"
!ASDIEOLEWidget methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super initializeAfterOpen.
    recoveredValue0 := item.
    recoveredValue1 := (recoveredValue0) comment.
    recoveredValue2 := (recoveredValue1) trimBlanks.
    (self) open: (recoveredValue2).
    ^self
! !


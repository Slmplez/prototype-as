"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20055884; bytecode file offset 0x952a9c"
!SGMdAREventModeSwitch methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlARModeSwitchEvent: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ca90; bytecode file offset 0x969c04"
!SGMdAREventModeSwitch methodsFor: 'recovered'!
isEntryActivation
    | recoveredValue0 |
    recoveredValue0 := entryActivation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d40c; bytecode file offset 0x96a390"
!SGMdAREventModeSwitch methodsFor: 'recovered'!
switchMode
    | recoveredValue0 |
    recoveredValue0 := switchMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200774fc; bytecode file offset 0x9757c8"
!SGMdAREventModeSwitch methodsFor: 'recovered'!
isMdlARModeSwitchEvent
    ^true
! !

"ASDBase.ic method 0x200c3a70; bytecode file offset 0x9c058c"
!SGMdAREventModeSwitch methodsFor: 'recovered'!
entryActivation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    entryActivation := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c40dc; bytecode file offset 0x9c0bf0"
!SGMdAREventModeSwitch methodsFor: 'recovered'!
switchMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    switchMode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e6410; bytecode file offset 0x9e2ce4"
!SGMdAREventModeSwitch methodsFor: 'recovered'!
initialize
    super initialize.
    (self) entryActivation: (true).
    ^self
! !


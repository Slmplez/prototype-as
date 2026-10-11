"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"drgdrp.ic method 0x200000e8; bytecode file offset 0x5564"
!CwDragAndDropPMWIN class methodsFor: 'recovered'!
loaded
    (self) initializeOSWidgetHooks.
    ^self
! !

"drgdrp.ic method 0x20000188; bytecode file offset 0x55f0"
!CwDragAndDropPMWIN class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := CwTargetTypeManager.
    (recoveredValue0) removing.
    ^self
! !

"drgdrp.ic method 0x20000ed8; bytecode file offset 0x634c"
!CwDragAndDropPMWIN class methodsFor: 'recovered'!
initializeOSWidgetHooks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (1) bitShift: (1).
    OSxDropSiteEnter := recoveredValue0.
    recoveredValue1 := (1) bitShift: (2).
    OSxDropSiteLeave := recoveredValue1.
    recoveredValue2 := (1) bitShift: (3).
    OSxDragMotion := recoveredValue2.
    recoveredValue3 := (1) bitShift: (4).
    OSxOperationChanged := recoveredValue3.
    ^self
! !


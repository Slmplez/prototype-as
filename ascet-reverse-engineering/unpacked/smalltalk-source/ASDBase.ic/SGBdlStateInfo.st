"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200281d4; bytecode file offset 0x934580"
!SGBdlStateInfo methodsFor: 'recovered'!
asdlStaticForState
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) state.
    recoveredValue1 := (recoveredValue0) asdlStaticForState.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002acc4; bytecode file offset 0x934580"
!SGBdlStateInfo methodsFor: 'recovered'!
exitTypeForState
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) state.
    recoveredValue1 := (recoveredValue0) exitTypeForState.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ad24; bytecode file offset 0x934580"
!SGBdlStateInfo methodsFor: 'recovered'!
transitionsForState
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) state.
    recoveredValue1 := (recoveredValue0) transitionsForState.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b704; bytecode file offset 0x934580"
!SGBdlStateInfo methodsFor: 'recovered'!
staticTypeForState
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) state.
    recoveredValue1 := (recoveredValue0) staticTypeForState.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002bd64; bytecode file offset 0x934580"
!SGBdlStateInfo methodsFor: 'recovered'!
entryTypeForState
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) state.
    recoveredValue1 := (recoveredValue0) entryTypeForState.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002be24; bytecode file offset 0x934580"
!SGBdlStateInfo methodsFor: 'recovered'!
isHierarchyState
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) state.
    recoveredValue1 := (recoveredValue0) isHierarchyState.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032c24; bytecode file offset 0x934580"
!SGBdlStateInfo methodsFor: 'recovered'!
asdlEntryForState
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) state.
    recoveredValue1 := (recoveredValue0) asdlEntryForState.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035584; bytecode file offset 0x934580"
!SGBdlStateInfo methodsFor: 'recovered'!
mdlLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) state.
    recoveredValue1 := (recoveredValue0) mdlLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037264; bytecode file offset 0x934580"
!SGBdlStateInfo methodsFor: 'recovered'!
asdlExitForState
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) state.
    recoveredValue1 := (recoveredValue0) asdlExitForState.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20043acc; bytecode file offset 0x9451f8"
!SGBdlStateInfo methodsFor: 'recovered'!
bdeExitForState
    | recoveredValue0 |
    recoveredValue0 := (self) labelsAt: ('bdeExitForState').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044afc; bytecode file offset 0x9451f8"
!SGBdlStateInfo methodsFor: 'recovered'!
parentStateLabel
    | recoveredValue0 |
    recoveredValue0 := (self) labelsAt: ('parentStateLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004555c; bytecode file offset 0x9451f8"
!SGBdlStateInfo methodsFor: 'recovered'!
bdeStaticForState
    | recoveredValue0 |
    recoveredValue0 := (self) labelsAt: ('bdeStaticForState').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200465ac; bytecode file offset 0x9451f8"
!SGBdlStateInfo methodsFor: 'recovered'!
bdeEntryForState
    | recoveredValue0 |
    recoveredValue0 := (self) labelsAt: ('bdeEntryForState').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200670b4; bytecode file offset 0x9646f8"
!SGBdlStateInfo methodsFor: 'recovered'!
state
    | recoveredValue0 |
    recoveredValue0 := state.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200aaf38; bytecode file offset 0x9a7960"
!SGBdlStateInfo methodsFor: 'recovered'!
parentStateLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) labels.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('parentStateLabel') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bc044; bytecode file offset 0x9b8ddc"
!SGBdlStateInfo methodsFor: 'recovered'!
bdeStaticForState: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) labels.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('bdeStaticForState') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc058; bytecode file offset 0x9b8ddc"
!SGBdlStateInfo methodsFor: 'recovered'!
bdeExitForState: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) labels.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('bdeExitForState') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc0e4; bytecode file offset 0x9b8ddc"
!SGBdlStateInfo methodsFor: 'recovered'!
bdeEntryForState: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) labels.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('bdeEntryForState') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bf158; bytecode file offset 0x9bc0b4"
!SGBdlStateInfo methodsFor: 'recovered'!
state: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    state := recoveredValue0.
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002c274; bytecode file offset 0x934580"
!SGBdlTransitionInfo methodsFor: 'recovered'!
actionTypeForTrans
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) transition.
    recoveredValue1 := (recoveredValue0) actionTypeForTrans.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fb04; bytecode file offset 0x934580"
!SGBdlTransitionInfo methodsFor: 'recovered'!
prioForTrans
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) transition.
    recoveredValue1 := (recoveredValue0) prioForTrans.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200344a4; bytecode file offset 0x934580"
!SGBdlTransitionInfo methodsFor: 'recovered'!
asdlForAction
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) transition.
    recoveredValue1 := (recoveredValue0) asdlForAction.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034564; bytecode file offset 0x934580"
!SGBdlTransitionInfo methodsFor: 'recovered'!
asdlForCondition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) transition.
    recoveredValue1 := (recoveredValue0) asdlForCondition.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037a94; bytecode file offset 0x934580"
!SGBdlTransitionInfo methodsFor: 'recovered'!
conditionTypeForTrans
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) transition.
    recoveredValue1 := (recoveredValue0) conditionTypeForTrans.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20043f0c; bytecode file offset 0x9451f8"
!SGBdlTransitionInfo methodsFor: 'recovered'!
bdeForAction
    | recoveredValue0 |
    recoveredValue0 := (self) labelsAt: ('bdeForAction').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004449c; bytecode file offset 0x9451f8"
!SGBdlTransitionInfo methodsFor: 'recovered'!
bdeForCondition
    | recoveredValue0 |
    recoveredValue0 := (self) labelsAt: ('bdeForCondition').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004759c; bytecode file offset 0x9451f8"
!SGBdlTransitionInfo methodsFor: 'recovered'!
triggerLabel
    | recoveredValue0 |
    recoveredValue0 := (self) labelsAt: ('triggerLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066fbc; bytecode file offset 0x9646f8"
!SGBdlTransitionInfo methodsFor: 'recovered'!
transition
    | recoveredValue0 |
    recoveredValue0 := transition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200aaf88; bytecode file offset 0x9a7960"
!SGBdlTransitionInfo methodsFor: 'recovered'!
bdeForAction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) labels.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('bdeForAction') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ab028; bytecode file offset 0x9a7960"
!SGBdlTransitionInfo methodsFor: 'recovered'!
bdeForCondition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) labels.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('bdeForCondition') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ab078; bytecode file offset 0x9a7960"
!SGBdlTransitionInfo methodsFor: 'recovered'!
triggerLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) labels.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('triggerLabel') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bf730; bytecode file offset 0x9bc0b4"
!SGBdlTransitionInfo methodsFor: 'recovered'!
transition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    transition := recoveredValue0.
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201037b0; bytecode file offset 0xa00070"
!EtasOleEventObjectWrapper class methodsFor: 'recovered'!
createWithAutomationObjectAndEvents: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createWithAutomationObject: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) connectNotificationSinks.
    (recoveredValue2) registerOleEventHandlers.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !


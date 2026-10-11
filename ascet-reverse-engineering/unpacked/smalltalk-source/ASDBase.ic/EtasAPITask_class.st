"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014574; bytecode file offset 0x912098"
!EtasAPITask class methodsFor: 'recovered'!
triggerModes
    | recoveredValue0 |
    recoveredValue0 := TriggerModes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200546d4; bytecode file offset 0x951190"
!EtasAPITask class methodsFor: 'recovered'!
triggerModes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    TriggerModes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200603a4; bytecode file offset 0x95ccc0"
!EtasAPITask class methodsFor: 'recovered'!
create
    | recoveredValue0 |
    (self) initialize.
    recoveredValue0 := (self) new.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d9cc4; bytecode file offset 0x9d6868"
!EtasAPITask class methodsFor: 'recovered'!
createFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) task: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20100f90; bytecode file offset 0x9fd854"
!EtasAPITask class methodsFor: 'recovered'!
createFor: recoveredArg1 item: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) task: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) project: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x203439b8; bytecode file offset 0xc402b0"
!EtasAPITask class methodsFor: 'recovered'!
initializeClass
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) triggerModes: (recoveredValue1).
    recoveredValue2 := (self) triggerModes.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := SGOSInitTrigger.
    (recoveredValue3) at: ('Init') put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := SGOSSoftwareTrigger.
    (recoveredValue5) at: ('Software') put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := SGOSTimerTrigger.
    (recoveredValue7) at: ('Timer') put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := SGOSTimerTrigger.
    (recoveredValue9) at: ('Alarm') put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := SGOSEventTrigger.
    (recoveredValue11) at: ('Event') put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := SGOSEventTrigger.
    (recoveredValue13) at: ('Interrupt') put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := SGOSTimetableTrigger.
    (recoveredValue15) at: ('Timetable') put: (recoveredValue16).
    ^self
! !


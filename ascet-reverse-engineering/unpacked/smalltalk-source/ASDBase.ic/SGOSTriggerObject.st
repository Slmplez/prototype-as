"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007328; bytecode file offset 0x908be4"
!SGOSTriggerObject methodsFor: 'recovered'!
asapPeriod
    | recoveredValue0 |
    recoveredValue0 := (self) period.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008144; bytecode file offset 0x908be4"
!SGOSTriggerObject methodsFor: 'recovered'!
triggerType
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c254; bytecode file offset 0x908be4"
!SGOSTriggerObject methodsFor: 'recovered'!
isMonVar
    | recoveredValue0 |
    recoveredValue0 := (self) isHooksMonVar.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000cdcc; bytecode file offset 0x909ab8"
!SGOSTriggerObject methodsFor: 'recovered'!
delay: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000cef4; bytecode file offset 0x909ab8"
!SGOSTriggerObject methodsFor: 'recovered'!
triggerEvent: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d09c; bytecode file offset 0x909ab8"
!SGOSTriggerObject methodsFor: 'recovered'!
period: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d204; bytecode file offset 0x909ab8"
!SGOSTriggerObject methodsFor: 'recovered'!
maxActivate: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2001a7bc; bytecode file offset 0x92209c"
!SGOSTriggerObject methodsFor: 'recovered'!
getInfoString
    ^''
! !

"ASDBase.ic method 0x200200f0; bytecode file offset 0x92209c"
!SGOSTriggerObject methodsFor: 'recovered'!
period
    ^#[123 20 174 71 225 122 116 63]
! !

"ASDBase.ic method 0x200212fc; bytecode file offset 0x92209c"
!SGOSTriggerObject methodsFor: 'recovered'!
periodTicks
    ^#[123 20 174 71 225 122 116 63]
! !

"ASDBase.ic method 0x20023774; bytecode file offset 0x92209c"
!SGOSTriggerObject methodsFor: 'recovered'!
isrSourceString
    ^''
! !

"ASDBase.ic method 0x200237c8; bytecode file offset 0x92209c"
!SGOSTriggerObject methodsFor: 'recovered'!
bitSchedulingNoneRTA
    ^16384
! !

"ASDBase.ic method 0x2002c174; bytecode file offset 0x934580"
!SGOSTriggerObject methodsFor: 'recovered'!
isTimetableTrigger
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) isTimetableTrigger.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20052528; bytecode file offset 0x94f0e0"
!SGOSTriggerObject methodsFor: 'recovered'!
mdlDeadline
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) deadlineCheckValue.
    recoveredValue1 := (recoveredValue0) asFloat.
    recoveredValue2 := (recoveredValue1) asMicroSecondsFromSeconds.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058058; bytecode file offset 0x956284"
!SGOSTriggerObject methodsFor: 'recovered'!
etcTypeLabelForTask: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) etcTypeLabelForTask: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005ff54; bytecode file offset 0x95c810"
!SGOSTriggerObject methodsFor: 'recovered'!
initAttributes
    attributes := 0.
    ^self
! !

"ASDBase.ic method 0x20066b5c; bytecode file offset 0x963428"
!SGOSTriggerObject methodsFor: 'recovered'!
priorityGroupForConversion
    | recoveredValue0 |
    recoveredValue0 := priorityGroup.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200682a4; bytecode file offset 0x965b90"
!SGOSTriggerObject methodsFor: 'recovered'!
getAttributes
    | recoveredValue0 |
    recoveredValue0 := attributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a190; bytecode file offset 0x966bdc"
!SGOSTriggerObject methodsFor: 'recovered'!
getAttributesValues
    | recoveredValue0 |
    recoveredValue0 := attributesValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071d28; bytecode file offset 0x96e60c"
!SGOSTriggerObject methodsFor: 'recovered'!
bitMinimumPeriodCheck
    ^128
! !

"ASDBase.ic method 0x20071da4; bytecode file offset 0x96e680"
!SGOSTriggerObject methodsFor: 'recovered'!
bitSchedulingCooperative
    ^256
! !

"ASDBase.ic method 0x20071de8; bytecode file offset 0x96e6dc"
!SGOSTriggerObject methodsFor: 'recovered'!
bitSchedulingPreemptive
    ^512
! !

"ASDBase.ic method 0x20071e5c; bytecode file offset 0x96e718"
!SGOSTriggerObject methodsFor: 'recovered'!
bitSchedulingNonPreemptive
    ^1024
! !

"ASDBase.ic method 0x20071eec; bytecode file offset 0x96e7c8"
!SGOSTriggerObject methodsFor: 'recovered'!
bitSchedulingCooperativeRTA
    ^4096
! !

"ASDBase.ic method 0x20071f30; bytecode file offset 0x96e80c"
!SGOSTriggerObject methodsFor: 'recovered'!
bitSchedulingFullRTA
    ^8192
! !

"ASDBase.ic method 0x200720d8; bytecode file offset 0x96ee04"
!SGOSTriggerObject methodsFor: 'recovered'!
bitHooksMonVar
    ^1
! !

"ASDBase.ic method 0x20072140; bytecode file offset 0x96ee04"
!SGOSTriggerObject methodsFor: 'recovered'!
bitHooksNone
    ^1
! !

"ASDBase.ic method 0x200721f0; bytecode file offset 0x96ee04"
!SGOSTriggerObject methodsFor: 'recovered'!
bitMonVar
    ^1
! !

"ASDBase.ic method 0x20072728; bytecode file offset 0x96f1c4"
!SGOSTriggerObject methodsFor: 'recovered'!
bitHooksDtOnly
    ^2
! !

"ASDBase.ic method 0x200727f0; bytecode file offset 0x96f1c4"
!SGOSTriggerObject methodsFor: 'recovered'!
bitHooks
    ^2
! !

"ASDBase.ic method 0x200733b8; bytecode file offset 0x970b34"
!SGOSTriggerObject methodsFor: 'recovered'!
delayTicks
    ^nil
! !

"ASDBase.ic method 0x20073668; bytecode file offset 0x970b34"
!SGOSTriggerObject methodsFor: 'recovered'!
triggerEvent
    ^nil
! !

"ASDBase.ic method 0x20073d58; bytecode file offset 0x970b34"
!SGOSTriggerObject methodsFor: 'recovered'!
delay
    ^nil
! !

"ASDBase.ic method 0x20074200; bytecode file offset 0x970b34"
!SGOSTriggerObject methodsFor: 'recovered'!
maxActivate
    ^nil
! !

"ASDBase.ic method 0x20075634; bytecode file offset 0x9757c8"
!SGOSTriggerObject methodsFor: 'recovered'!
supportsPriority
    ^true
! !

"ASDBase.ic method 0x2007799c; bytecode file offset 0x9757c8"
!SGOSTriggerObject methodsFor: 'recovered'!
supportsScheduling
    ^true
! !

"ASDBase.ic method 0x20078d84; bytecode file offset 0x9757c8"
!SGOSTriggerObject methodsFor: 'recovered'!
supportsHooks
    ^true
! !

"ASDBase.ic method 0x20079060; bytecode file offset 0x97594c"
!SGOSTriggerObject methodsFor: 'recovered'!
bitStartAlarm
    ^16
! !

"ASDBase.ic method 0x2007a3bc; bytecode file offset 0x97c330"
!SGOSTriggerObject methodsFor: 'recovered'!
isSoftwareTrigger
    ^false
! !

"ASDBase.ic method 0x2007a5fc; bytecode file offset 0x97c330"
!SGOSTriggerObject methodsFor: 'recovered'!
supportsMinimumPeriodCheck
    ^false
! !

"ASDBase.ic method 0x2007a71c; bytecode file offset 0x97c330"
!SGOSTriggerObject methodsFor: 'recovered'!
supportsStartAlarm
    ^false
! !

"ASDBase.ic method 0x2007c4bc; bytecode file offset 0x97c330"
!SGOSTriggerObject methodsFor: 'recovered'!
supportsDeadlineCheck
    ^false
! !

"ASDBase.ic method 0x2007c4ec; bytecode file offset 0x97c330"
!SGOSTriggerObject methodsFor: 'recovered'!
supportsAutostart
    ^false
! !

"ASDBase.ic method 0x2007c4fc; bytecode file offset 0x97c330"
!SGOSTriggerObject methodsFor: 'recovered'!
isTimerTrigger
    ^false
! !

"ASDBase.ic method 0x2007d454; bytecode file offset 0x97c330"
!SGOSTriggerObject methodsFor: 'recovered'!
isInitTrigger
    ^false
! !

"ASDBase.ic method 0x2007d63c; bytecode file offset 0x97c330"
!SGOSTriggerObject methodsFor: 'recovered'!
isEventTrigger
    ^false
! !

"ASDBase.ic method 0x2007fe10; bytecode file offset 0x97c764"
!SGOSTriggerObject methodsFor: 'recovered'!
bitAutostart
    ^32
! !

"ASDBase.ic method 0x20080658; bytecode file offset 0x97cf3c"
!SGOSTriggerObject methodsFor: 'recovered'!
bitDeadlineCheck
    ^64
! !

"ASDBase.ic method 0x2008f9bc; bytecode file offset 0x98c27c"
!SGOSTriggerObject methodsFor: 'recovered'!
isHooksNone
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) isHooksMonVar.
    recoveredValue1 := (self) isHooksDtOnly.
    recoveredValue2 := (recoveredValue0) | (recoveredValue1).
    recoveredValue3 := (recoveredValue2) not.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a0ad0; bytecode file offset 0x99d3ac"
!SGOSTriggerObject methodsFor: 'recovered'!
setHooksNone
    (self) clearHooksMonVar.
    (self) clearHooksDtOnly.
    ^self
! !

"ASDBase.ic method 0x200aafb0; bytecode file offset 0x9a7960"
!SGOSTriggerObject methodsFor: 'recovered'!
minimumPeriodCheckValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributesValue.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('minimumPeriodCheck') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ab064; bytecode file offset 0x9a7960"
!SGOSTriggerObject methodsFor: 'recovered'!
deadlineCheckValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributesValue.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('deadlineCheck') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b2fc8; bytecode file offset 0x9af880"
!SGOSTriggerObject methodsFor: 'recovered'!
initPriority
    priority := 0.
    (self) setSchedulingCooperative.
    ^self
! !

"ASDBase.ic method 0x200be384; bytecode file offset 0x9bb178"
!SGOSTriggerObject methodsFor: 'recovered'!
priorityGroupForConversion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    priorityGroup := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf778; bytecode file offset 0x9bc0b4"
!SGOSTriggerObject methodsFor: 'recovered'!
priority: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    priority := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfd0c; bytecode file offset 0x9bd228"
!SGOSTriggerObject methodsFor: 'recovered'!
setAttributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1498; bytecode file offset 0x9bdf14"
!SGOSTriggerObject methodsFor: 'recovered'!
setAttributesValues: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributesValue := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ce41c; bytecode file offset 0x9cadc8"
!SGOSTriggerObject methodsFor: 'recovered'!
clearHooksDtOnly
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65533).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce42c; bytecode file offset 0x9cadc8"
!SGOSTriggerObject methodsFor: 'recovered'!
clearSchedulingNoneRTA
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (49151).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce43c; bytecode file offset 0x9cadc8"
!SGOSTriggerObject methodsFor: 'recovered'!
clearDeadlineCheck
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65471).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce46c; bytecode file offset 0x9cadc8"
!SGOSTriggerObject methodsFor: 'recovered'!
clearAutostart
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65503).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce47c; bytecode file offset 0x9cadc8"
!SGOSTriggerObject methodsFor: 'recovered'!
clearSchedulingCooperative
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65279).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce4ac; bytecode file offset 0x9cadc8"
!SGOSTriggerObject methodsFor: 'recovered'!
clearStartAlarm
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65519).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce4bc; bytecode file offset 0x9cadc8"
!SGOSTriggerObject methodsFor: 'recovered'!
clearSchedulingNonPreemptive
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (64511).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce4cc; bytecode file offset 0x9cadc8"
!SGOSTriggerObject methodsFor: 'recovered'!
clearSchedulingFullRTA
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (57343).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce4dc; bytecode file offset 0x9cadc8"
!SGOSTriggerObject methodsFor: 'recovered'!
clearMinimumPeriodCheck
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65407).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce4ec; bytecode file offset 0x9cadc8"
!SGOSTriggerObject methodsFor: 'recovered'!
clearSchedulingPreemptive
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65023).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce4fc; bytecode file offset 0x9cadc8"
!SGOSTriggerObject methodsFor: 'recovered'!
clearHooksMonVar
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65534).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce50c; bytecode file offset 0x9cadc8"
!SGOSTriggerObject methodsFor: 'recovered'!
clearSchedulingCooperativeRTA
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (61439).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce52c; bytecode file offset 0x9cade8"
!SGOSTriggerObject methodsFor: 'recovered'!
isSchedulingNoneRTA
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (16384).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce580; bytecode file offset 0x9cae68"
!SGOSTriggerObject methodsFor: 'recovered'!
isHooksMonVar
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce618; bytecode file offset 0x9caedc"
!SGOSTriggerObject methodsFor: 'recovered'!
isHooksDtOnly
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (2).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce7c8; bytecode file offset 0x9cb080"
!SGOSTriggerObject methodsFor: 'recovered'!
isStartAlarm
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (16).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce7e4; bytecode file offset 0x9cb09c"
!SGOSTriggerObject methodsFor: 'recovered'!
setAutostart
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (32).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce800; bytecode file offset 0x9cb0b8"
!SGOSTriggerObject methodsFor: 'recovered'!
isAutostart
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (32).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e10c0; bytecode file offset 0x9dd978"
!SGOSTriggerObject methodsFor: 'recovered'!
restoreInstVars
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := attributes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initAttributes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e2264; bytecode file offset 0x9dec60"
!SGOSTriggerObject methodsFor: 'recovered'!
isAutostartAPI
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isAutostart.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsAutostart.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e23a4; bytecode file offset 0x9dec60"
!SGOSTriggerObject methodsFor: 'recovered'!
isStartAlarmAPI
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isStartAlarm.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsStartAlarm.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f0914; bytecode file offset 0x9ed1cc"
!SGOSTriggerObject methodsFor: 'recovered'!
setMinimumPeriodCheck
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (128).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f0930; bytecode file offset 0x9ed1e8"
!SGOSTriggerObject methodsFor: 'recovered'!
isMinimumPeriodCheck
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (128).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f094c; bytecode file offset 0x9ed204"
!SGOSTriggerObject methodsFor: 'recovered'!
isSchedulingCooperative
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (256).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f0968; bytecode file offset 0x9ed220"
!SGOSTriggerObject methodsFor: 'recovered'!
isSchedulingPreemptive
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (512).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f0984; bytecode file offset 0x9ed23c"
!SGOSTriggerObject methodsFor: 'recovered'!
isSchedulingNonPreemptive
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (1024).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f09a0; bytecode file offset 0x9ed258"
!SGOSTriggerObject methodsFor: 'recovered'!
isSchedulingCooperativeRTA
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (4096).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f09bc; bytecode file offset 0x9ed274"
!SGOSTriggerObject methodsFor: 'recovered'!
isSchedulingFullRTA
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (8192).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f09d8; bytecode file offset 0x9ed290"
!SGOSTriggerObject methodsFor: 'recovered'!
setDeadlineCheck
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (64).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f09f4; bytecode file offset 0x9ed2ac"
!SGOSTriggerObject methodsFor: 'recovered'!
isDeadlineCheck
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (64).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20105a04; bytecode file offset 0xa022c4"
!SGOSTriggerObject methodsFor: 'recovered'!
setHooksMonVar
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65520).
    recoveredValue2 := (recoveredValue1) bitOr: (1).
    recoveredValue3 := recoveredValue2.
    attributes := recoveredValue3.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20105a3c; bytecode file offset 0xa022fc"
!SGOSTriggerObject methodsFor: 'recovered'!
setHooksDtOnly
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65520).
    recoveredValue2 := (recoveredValue1) bitOr: (2).
    recoveredValue3 := recoveredValue2.
    attributes := recoveredValue3.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2010c01c; bytecode file offset 0xa08928"
!SGOSTriggerObject methodsFor: 'recovered'!
initialize
    super initialize.
    (self) initAttributes.
    (self) initPriority.
    ^self
! !

"ASDBase.ic method 0x20129898; bytecode file offset 0xa261a4"
!SGOSTriggerObject methodsFor: 'recovered'!
attributesValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := attributesValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            attributesValue := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := attributesValue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013c6ec; bytecode file offset 0xa38fac"
!SGOSTriggerObject methodsFor: 'recovered'!
setStartAlarm
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kli') == ('Call_65477').
    recoveredValue1 := attributes.
    recoveredValue2 := (recoveredValue1) bitOr: (16).
    recoveredValue3 := recoveredValue2.
    attributes := recoveredValue3.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2013df70; bytecode file offset 0xa3a854"
!SGOSTriggerObject methodsFor: 'recovered'!
minimumPeriodCheckValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributesValue.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'minimumPeriodCheck'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cbf10Value0 |
    block280cbf10Value0 := (0) printString.
    block280cbf10Value0
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013df8c; bytecode file offset 0xa3a854"
!SGOSTriggerObject methodsFor: 'recovered'!
deadlineCheckValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributesValue.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'deadlineCheck'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cbf34Value0 |
    block280cbf34Value0 := (0) printString.
    block280cbf34Value0
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013e3e8; bytecode file offset 0xa3ad84"
!SGOSTriggerObject methodsFor: 'recovered'!
toggleMinimumPeriodCheck
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMinimumPeriodCheck.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) clearMinimumPeriodCheck.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setMinimumPeriodCheck.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013e3fc; bytecode file offset 0xa3ad84"
!SGOSTriggerObject methodsFor: 'recovered'!
toggleStartAlarm
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isStartAlarm.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) clearStartAlarm.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setStartAlarm.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013e410; bytecode file offset 0xa3ad84"
!SGOSTriggerObject methodsFor: 'recovered'!
toggleAutostart
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAutostart.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) clearAutostart.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setAutostart.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013e424; bytecode file offset 0xa3ad84"
!SGOSTriggerObject methodsFor: 'recovered'!
toggleDeadlineCheck
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDeadlineCheck.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) clearDeadlineCheck.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setDeadlineCheck.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013e474; bytecode file offset 0xa3ad84"
!SGOSTriggerObject methodsFor: 'recovered'!
toggleMonVar
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMonVar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) setHooksNone.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setHooksMonVar.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017ef84; bytecode file offset 0xa7b83c"
!SGOSTriggerObject methodsFor: 'recovered'!
priority
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := priority.
    recoveredValue1 := [
    priority := 0.
    0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := priority.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201908dc; bytecode file offset 0xa8d1b0"
!SGOSTriggerObject methodsFor: 'recovered'!
duplicate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) priority.
    (recoveredValue2) priority: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) getAttributes.
    (recoveredValue4) setAttributes: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) getAttributesValues.
    (recoveredValue6) setAttributesValues: (recoveredValue7).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201a0e20; bytecode file offset 0xa9d6e8"
!SGOSTriggerObject methodsFor: 'recovered'!
setSchedulingNoneRTA
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kli') == ('Call_70759').
    recoveredValue1 := attributes.
    recoveredValue2 := (recoveredValue1) bitAnd: (255).
    recoveredValue3 := (recoveredValue2) bitOr: (16384).
    recoveredValue4 := recoveredValue3.
    attributes := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201a0e58; bytecode file offset 0xa9d71c"
!SGOSTriggerObject methodsFor: 'recovered'!
setSchedulingCooperative
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kli') == ('Call_70759').
    recoveredValue1 := attributes.
    recoveredValue2 := (recoveredValue1) bitAnd: (255).
    recoveredValue3 := (recoveredValue2) bitOr: (256).
    recoveredValue4 := recoveredValue3.
    attributes := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201a0e8c; bytecode file offset 0xa9d750"
!SGOSTriggerObject methodsFor: 'recovered'!
setSchedulingPreemptive
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kli') == ('Call_70759').
    recoveredValue1 := attributes.
    recoveredValue2 := (recoveredValue1) bitAnd: (255).
    recoveredValue3 := (recoveredValue2) bitOr: (512).
    recoveredValue4 := recoveredValue3.
    attributes := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201a0ec0; bytecode file offset 0xa9d784"
!SGOSTriggerObject methodsFor: 'recovered'!
setSchedulingNonPreemptive
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kli') == ('Call_70759').
    recoveredValue1 := attributes.
    recoveredValue2 := (recoveredValue1) bitAnd: (255).
    recoveredValue3 := (recoveredValue2) bitOr: (1024).
    recoveredValue4 := recoveredValue3.
    attributes := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201a0ef4; bytecode file offset 0xa9d7b8"
!SGOSTriggerObject methodsFor: 'recovered'!
setSchedulingCooperativeRTA
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kli') == ('Call_70759').
    recoveredValue1 := attributes.
    recoveredValue2 := (recoveredValue1) bitAnd: (255).
    recoveredValue3 := (recoveredValue2) bitOr: (4096).
    recoveredValue4 := recoveredValue3.
    attributes := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201a0f28; bytecode file offset 0xa9d7ec"
!SGOSTriggerObject methodsFor: 'recovered'!
setSchedulingFullRTA
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kli') == ('Call_70759').
    recoveredValue1 := attributes.
    recoveredValue2 := (recoveredValue1) bitAnd: (255).
    recoveredValue3 := (recoveredValue2) bitOr: (8192).
    recoveredValue4 := recoveredValue3.
    attributes := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201b5e50; bytecode file offset 0xab271c"
!SGOSTriggerObject methodsFor: 'recovered'!
mdlAttributes: recoveredArg1 task: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDeadlineCheckAPI.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlDeadline.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) taskDeadline: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) mdlAttributes: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) priority.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) taskPriority: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20253b30; bytecode file offset 0xb50404"
!SGOSTriggerObject methodsFor: 'recovered'!
prePostHooksString
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHooksNone.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) prePostHooksNoneString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHooksDtOnly.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) prePostHooksDtOnlyString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHooksMonVar.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) prePostHooksMonitoringString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := 'undef'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026cb08; bytecode file offset 0xb693d4"
!SGOSTriggerObject methodsFor: 'recovered'!
initForTarget: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsRTA.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) clearSchedulingCooperative.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) setSchedulingFullRTA.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsCooperativeScheduling.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) clearSchedulingCooperative.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsPreemptiveScheduling.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) setSchedulingPreemptive.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202792ac; bytecode file offset 0xb75b8c"
!SGOSTriggerObject methodsFor: 'recovered'!
getValueDictionary
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) getAttributes.
    (recoveredValue3) at: ('attributes') put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) getAttributesValues.
    (recoveredValue5) at: ('attributesValue') put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := (self) priorityGroupForConversion.
    (recoveredValue7) at: ('priorityGroup') put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := (self) priority.
    (recoveredValue9) at: ('priority') put: (recoveredValue10).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20297a30; bytecode file offset 0xb94348"
!SGOSTriggerObject methodsFor: 'recovered'!
setPrePostHooksForString: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) prePostHooksNoneString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) setHooksNone.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) prePostHooksDtOnlyString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) setHooksDtOnly.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) prePostHooksMonitoringString.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) setHooksMonVar.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202a28f4; bytecode file offset 0xb9f1c8"
!SGOSTriggerObject methodsFor: 'recovered'!
checkPriorityGroupPreemptive: recoveredArg1 coopLevels: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSchedulingCooperativeRTA.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSchedulingFullRTA.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSchedulingNoneRTA.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSchedulingPreemptive.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) setSchedulingPreemptive.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSchedulingCooperative.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) setSchedulingCooperative.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a8634; bytecode file offset 0xba4efc"
!SGOSTriggerObject methodsFor: 'recovered'!
checkScheduling
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := priorityGroup.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'unused'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := priorityGroup.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := priorityGroup.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'preemptive'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) setSchedulingPreemptive.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := priorityGroup.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'cooperative'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) setSchedulingCooperative.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'unused'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            priorityGroup := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033b258; bytecode file offset 0xc37b34"
!SGOSTriggerObject methodsFor: 'recovered'!
updateValuesFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'attributes'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'attributes'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) setAttributes: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'attributesValue'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 'attributesValue'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) setAttributesValues: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'priorityGroup'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := 'priorityGroup'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) priorityGroupForConversion: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'priority'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := 'priority'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) priority: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038eab0; bytecode file offset 0xc8b39c"
!SGOSTriggerObject methodsFor: 'recovered'!
schedulingString
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSchedulingCooperative.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) cooperativeString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSchedulingPreemptive.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) preemptiveString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSchedulingNonPreemptive.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) nonPreemptiveString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSchedulingCooperativeRTA.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) cooperativeStringRTA.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSchedulingFullRTA.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) fullStringRTA.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSchedulingNoneRTA.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) noneStringRTA.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := 'undef'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d0218; bytecode file offset 0xcccb1c"
!SGOSTriggerObject methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 'priority'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := (recoveredStack4) priority.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) attr: (recoveredStack3) nnInt: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'scheduling'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := (recoveredStack4) schedulingString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) attr: (recoveredStack3) string: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'maxNoActivations'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) maxActivate.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nnInt: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) delay.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'delay'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) delay.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nnInt: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'period'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) period.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) double: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'deadline'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) isDeadlineCheck.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) boolean: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 'deadlineValue'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) isDeadlineCheck.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) deadlineCheckValue.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nnInt: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 'prePostHooks'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) prePostHooksString.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d591c; bytecode file offset 0xcd2204"
!SGOSTriggerObject methodsFor: 'recovered'!
setSchedulingForString: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) cooperativeString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) setSchedulingCooperative.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) preemptiveString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) setSchedulingPreemptive.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) nonPreemptiveString.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) setSchedulingNonPreemptive.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) noneStringRTA.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) setSchedulingNoneRTA.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) fullStringRTA.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) setSchedulingFullRTA.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) cooperativeStringRTA.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) setSchedulingCooperativeRTA.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204db894; bytecode file offset 0xdd81b8"
!SGOSTriggerObject methodsFor: 'recovered'!
attributesPrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isHooksMonVar.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isHooksMonVar: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) isHooksDtOnly.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('isHooksDtOnly: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    (recoveredValue5) cr.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := (self) isSchedulingPreemptive.
    recoveredValue13 := (recoveredValue12) printString.
    recoveredValue14 := ('isSchedulingPreemptive: ') , (recoveredValue13).
    (recoveredValue11) nextPutAll: (recoveredValue14).
    (recoveredValue10) cr.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := (self) isSchedulingNonPreemptive.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := ('isSchedulingNonPreemptive: ') , (recoveredValue18).
    (recoveredValue16) nextPutAll: (recoveredValue19).
    (recoveredValue15) cr.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := recoveredValue20.
    recoveredValue22 := (self) isSchedulingCooperative.
    recoveredValue23 := (recoveredValue22) printString.
    recoveredValue24 := ('isSchedulingCooperative: ') , (recoveredValue23).
    (recoveredValue21) nextPutAll: (recoveredValue24).
    (recoveredValue20) cr.
    recoveredValue25 := recoveredArg1.
    recoveredValue26 := recoveredValue25.
    recoveredValue27 := (self) isSchedulingCooperativeRTA.
    recoveredValue28 := (recoveredValue27) printString.
    recoveredValue29 := ('isSchedulingCooperativeRTA: ') , (recoveredValue28).
    (recoveredValue26) nextPutAll: (recoveredValue29).
    (recoveredValue25) cr.
    recoveredValue30 := recoveredArg1.
    recoveredValue31 := recoveredValue30.
    recoveredValue32 := (self) isSchedulingFullRTA.
    recoveredValue33 := (recoveredValue32) printString.
    recoveredValue34 := ('isSchedulingFullRTA: ') , (recoveredValue33).
    (recoveredValue31) nextPutAll: (recoveredValue34).
    (recoveredValue30) cr.
    recoveredValue35 := recoveredArg1.
    recoveredValue36 := recoveredValue35.
    recoveredValue37 := (self) isSchedulingNoneRTA.
    recoveredValue38 := (recoveredValue37) printString.
    recoveredValue39 := ('isSchedulingNoneRTA: ') , (recoveredValue38).
    (recoveredValue36) nextPutAll: (recoveredValue39).
    (recoveredValue35) cr.
    recoveredValue40 := recoveredArg1.
    recoveredValue41 := recoveredValue40.
    recoveredValue42 := (self) isAutostart.
    recoveredValue43 := (recoveredValue42) printString.
    recoveredValue44 := ('isAutostart: ') , (recoveredValue43).
    (recoveredValue41) nextPutAll: (recoveredValue44).
    (recoveredValue40) cr.
    recoveredValue45 := recoveredArg1.
    recoveredValue46 := recoveredValue45.
    recoveredValue47 := (self) isStartAlarm.
    recoveredValue48 := (recoveredValue47) printString.
    recoveredValue49 := ('isStartAlarm: ') , (recoveredValue48).
    (recoveredValue46) nextPutAll: (recoveredValue49).
    (recoveredValue45) cr.
    recoveredValue50 := recoveredArg1.
    recoveredValue51 := recoveredValue50.
    recoveredValue52 := (self) isMinimumPeriodCheck.
    recoveredValue53 := (recoveredValue52) printString.
    recoveredValue54 := ('isMinimumPeriodCheck: ') , (recoveredValue53).
    (recoveredValue51) nextPutAll: (recoveredValue54).
    (recoveredValue50) cr.
    recoveredValue55 := recoveredArg1.
    recoveredValue56 := recoveredValue55.
    recoveredValue57 := (self) isDeadlineCheck.
    recoveredValue58 := (recoveredValue57) printString.
    recoveredValue59 := ('isDeadlineCheck: ') , (recoveredValue58).
    (recoveredValue56) nextPutAll: (recoveredValue59).
    (recoveredValue55) cr.
    ^self
! !

"ASDBase.ic method 0x2059959c; bytecode file offset 0xe95f00"
!SGOSTriggerObject methodsFor: 'recovered'!
attributesTest
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: (' ').
    recoveredLocal1 := recoveredValue1.
    (self) setHooksMonVar.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('--------setHooksMonVar--------').
    (recoveredValue2) cr.
    recoveredValue4 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue4).
    (self) setHooksDtOnly.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('--------setHooksDtOnly--------').
    (recoveredValue5) cr.
    recoveredValue7 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue7).
    (self) setSchedulingPreemptive.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) nextPutAll: ('--------setSchedulingPreemptive--------').
    (recoveredValue8) cr.
    recoveredValue10 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue10).
    (self) setAutostart.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPutAll: ('--------setAutostart--------').
    (recoveredValue11) cr.
    recoveredValue13 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue13).
    (self) setSchedulingNonPreemptive.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredValue14.
    (recoveredValue15) nextPutAll: ('--------setSchedulingNonPreemptive--------').
    (recoveredValue14) cr.
    recoveredValue16 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue16).
    (self) setSchedulingCooperative.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) nextPutAll: ('--------setSchedulingCooperative--------').
    (recoveredValue17) cr.
    recoveredValue19 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue19).
    (self) setStartAlarm.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := recoveredValue20.
    (recoveredValue21) nextPutAll: ('--------setStartAlarm--------').
    (recoveredValue20) cr.
    recoveredValue22 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue22).
    (self) setMinimumPeriodCheck.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := recoveredValue23.
    (recoveredValue24) nextPutAll: ('--------setMinimumPeriodCheck--------').
    (recoveredValue23) cr.
    recoveredValue25 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue25).
    (self) setDeadlineCheck.
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := recoveredValue26.
    (recoveredValue27) nextPutAll: ('--------setDeadlineCheck--------').
    (recoveredValue26) cr.
    recoveredValue28 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue28).
    (self) clearHooksMonVar.
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := recoveredValue29.
    (recoveredValue30) nextPutAll: ('--------clearHooksMonVar--------').
    (recoveredValue29) cr.
    recoveredValue31 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue31).
    (self) clearHooksDtOnly.
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := recoveredValue32.
    (recoveredValue33) nextPutAll: ('--------clearHooksDtOnly--------').
    (recoveredValue32) cr.
    recoveredValue34 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue34).
    (self) clearSchedulingPreemptive.
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := recoveredValue35.
    (recoveredValue36) nextPutAll: ('--------clearSchedulingPreemptive--------').
    (recoveredValue35) cr.
    recoveredValue37 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue37).
    (self) clearAutostart.
    recoveredValue38 := recoveredLocal1.
    recoveredValue39 := recoveredValue38.
    (recoveredValue39) nextPutAll: ('--------clearAutostart--------').
    (recoveredValue38) cr.
    recoveredValue40 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue40).
    (self) clearSchedulingNonPreemptive.
    recoveredValue41 := recoveredLocal1.
    recoveredValue42 := recoveredValue41.
    (recoveredValue42) nextPutAll: ('--------clearSchedulingNonPreemptive--------').
    (recoveredValue41) cr.
    recoveredValue43 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue43).
    (self) clearSchedulingCooperative.
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := recoveredValue44.
    (recoveredValue45) nextPutAll: ('--------clearSchedulingCooperative--------').
    (recoveredValue44) cr.
    recoveredValue46 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue46).
    (self) clearStartAlarm.
    recoveredValue47 := recoveredLocal1.
    recoveredValue48 := recoveredValue47.
    (recoveredValue48) nextPutAll: ('--------clearStartAlarm--------').
    (recoveredValue47) cr.
    recoveredValue49 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue49).
    (self) clearMinimumPeriodCheck.
    recoveredValue50 := recoveredLocal1.
    recoveredValue51 := recoveredValue50.
    (recoveredValue51) nextPutAll: ('--------clearMinimumPeriodCheck--------').
    (recoveredValue50) cr.
    recoveredValue52 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue52).
    (self) clearDeadlineCheck.
    recoveredValue53 := recoveredLocal1.
    recoveredValue54 := recoveredValue53.
    (recoveredValue54) nextPutAll: ('--------clearDeadlineCheck--------').
    (recoveredValue53) cr.
    recoveredValue55 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue55).
    recoveredValue56 := recoveredLocal1.
    recoveredValue57 := (recoveredValue56) contents.
    (recoveredValue57) edit.
    ^self
! !


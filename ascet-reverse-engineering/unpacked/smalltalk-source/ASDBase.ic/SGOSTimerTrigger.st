"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200753bc; bytecode file offset 0x9757c8"
!SGOSTimerTrigger methodsFor: 'recovered'!
supportsStartAlarm
    ^true
! !

"ASDBase.ic method 0x200769e4; bytecode file offset 0x9757c8"
!SGOSTimerTrigger methodsFor: 'recovered'!
isTimerTrigger
    ^true
! !

"ASDBase.ic method 0x201cc0d4; bytecode file offset 0xac89a8"
!SGOSTimerTrigger methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('Alarm').
    recoveredValue1 := recoveredArg1.
    super writeXML: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) isStartAlarm.
    (recoveredValue2) attr: ('startAlarm') boolean: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) closeComplex.
    ^self
! !

"ASDBase.ic method 0x201cec74; bytecode file offset 0xacb568"
!SGOSTimerTrigger methodsFor: 'recovered'!
buildMdl: recoveredArg1 task: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) mdlAttributes: (recoveredValue0) task: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) timerTask.
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := (self) maxActivate.
    (recoveredValue4) maxActive: (recoveredValue5).
    recoveredValue6 := (self) delay.
    recoveredValue7 := (self) period.
    (recoveredValue2) delay: (recoveredValue6) period: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20247650; bytecode file offset 0xb43f34"
!SGOSTimerTrigger methodsFor: 'recovered'!
asTimetableTrigger
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SGOSTimetableTrigger.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) priority.
    (recoveredValue2) priority: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) priorityGroupForConversion.
    (recoveredValue4) priorityGroupForConversion: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) delay.
    (recoveredValue6) delay: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) maxActivate.
    (recoveredValue8) maxActivate: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) period.
    (recoveredValue10) period: (recoveredValue11).
    ^recoveredValue1
! !


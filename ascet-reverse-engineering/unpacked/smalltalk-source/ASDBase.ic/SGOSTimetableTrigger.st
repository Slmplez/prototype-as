"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2014419c; bytecode file offset 0xa40a64"
!SGOSTimetableTrigger methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('Timetable').
    recoveredValue1 := recoveredArg1.
    super writeXML: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) closeComplex.
    ^self
! !

"ASDBase.ic method 0x201cec98; bytecode file offset 0xacb568"
!SGOSTimetableTrigger methodsFor: 'recovered'!
buildMdl: recoveredArg1 task: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) mdlAttributes: (recoveredValue0) task: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) timeTableTask.
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := (self) maxActivate.
    (recoveredValue4) maxActive: (recoveredValue5).
    recoveredValue6 := (self) delay.
    recoveredValue7 := (self) period.
    (recoveredValue2) delay: (recoveredValue6) period: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x202475e0; bytecode file offset 0xb43f34"
!SGOSTimetableTrigger methodsFor: 'recovered'!
asTimerTrigger
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SGOSTimerTrigger.
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


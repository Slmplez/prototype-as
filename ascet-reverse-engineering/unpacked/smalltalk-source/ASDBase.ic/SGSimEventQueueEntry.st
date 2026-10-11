"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20042528; bytecode file offset 0x93edec"
!SGSimEventQueueEntry methodsFor: 'recovered'!
hasDependentEvent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dependentEvent.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004915c; bytecode file offset 0x945a10"
!SGSimEventQueueEntry methodsFor: 'recovered'!
removeDependentEvent
    dependentEvent := nil.
    ^self
! !

"ASDBase.ic method 0x200525c8; bytecode file offset 0x94f0e0"
!SGSimEventQueueEntry methodsFor: 'recovered'!
currentSimTimeInTicks
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) simulator.
    recoveredValue1 := (recoveredValue0) simEnvironment.
    recoveredValue2 := (recoveredValue1) currentSimTimeInTicks.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200662f4; bytecode file offset 0x963428"
!SGSimEventQueueEntry methodsFor: 'recovered'!
simulator
    | recoveredValue0 |
    recoveredValue0 := simulator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066df4; bytecode file offset 0x9646f8"
!SGSimEventQueueEntry methodsFor: 'recovered'!
eventName
    | recoveredValue0 |
    recoveredValue0 := eventName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068c54; bytecode file offset 0x965b90"
!SGSimEventQueueEntry methodsFor: 'recovered'!
dmMethod
    | recoveredValue0 |
    recoveredValue0 := dmMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069fb8; bytecode file offset 0x966bdc"
!SGSimEventQueueEntry methodsFor: 'recovered'!
receiver
    | recoveredValue0 |
    recoveredValue0 := receiver.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a36c; bytecode file offset 0x967a18"
!SGSimEventQueueEntry methodsFor: 'recovered'!
selector
    | recoveredValue0 |
    recoveredValue0 := selector.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b410; bytecode file offset 0x96873c"
!SGSimEventQueueEntry methodsFor: 'recovered'!
arguments
    | recoveredValue0 |
    recoveredValue0 := arguments.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006becc; bytecode file offset 0x9692b0"
!SGSimEventQueueEntry methodsFor: 'recovered'!
return
    | recoveredValue0 |
    recoveredValue0 := return.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006caa0; bytecode file offset 0x969c04"
!SGSimEventQueueEntry methodsFor: 'recovered'!
isEnabled
    | recoveredValue0 |
    recoveredValue0 := enabled.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d8bc; bytecode file offset 0x96a390"
!SGSimEventQueueEntry methodsFor: 'recovered'!
scheduleTime
    | recoveredValue0 |
    recoveredValue0 := scheduleTime.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dfe8; bytecode file offset 0x96a9dc"
!SGSimEventQueueEntry methodsFor: 'recovered'!
delay
    | recoveredValue0 |
    recoveredValue0 := delay.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e4fc; bytecode file offset 0x96af48"
!SGSimEventQueueEntry methodsFor: 'recovered'!
phase
    | recoveredValue0 |
    recoveredValue0 := phase.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006eb40; bytecode file offset 0x96b41c"
!SGSimEventQueueEntry methodsFor: 'recovered'!
prio
    | recoveredValue0 |
    recoveredValue0 := prio.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ee14; bytecode file offset 0x96b8a0"
!SGSimEventQueueEntry methodsFor: 'recovered'!
drehzahl
    | recoveredValue0 |
    recoveredValue0 := drehzahl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f688; bytecode file offset 0x96bf7c"
!SGSimEventQueueEntry methodsFor: 'recovered'!
mode
    | recoveredValue0 |
    recoveredValue0 := mode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f748; bytecode file offset 0x96c1f4"
!SGSimEventQueueEntry methodsFor: 'recovered'!
dependentEvent
    | recoveredValue0 |
    recoveredValue0 := dependentEvent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fa10; bytecode file offset 0x96c42c"
!SGSimEventQueueEntry methodsFor: 'recovered'!
timeRaster
    | recoveredValue0 |
    recoveredValue0 := timeRaster.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008bb80; bytecode file offset 0x98845c"
!SGSimEventQueueEntry methodsFor: 'recovered'!
isSingleMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := mode.
    recoveredValue1 := (recoveredValue0) = ('singleShot').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008bb8c; bytecode file offset 0x98845c"
!SGSimEventQueueEntry methodsFor: 'recovered'!
isSegmentMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := mode.
    recoveredValue1 := (recoveredValue0) = ('segment').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008bb98; bytecode file offset 0x98845c"
!SGSimEventQueueEntry methodsFor: 'recovered'!
isSignalledMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := mode.
    recoveredValue1 := (recoveredValue0) = ('signalled').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008bba4; bytecode file offset 0x98845c"
!SGSimEventQueueEntry methodsFor: 'recovered'!
isSynchronMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := mode.
    recoveredValue1 := (recoveredValue0) = ('timeSynchron').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009f8d8; bytecode file offset 0x99c9e0"
!SGSimEventQueueEntry methodsFor: 'recovered'!
reenterEvent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) simulator.
    recoveredValue1 := (recoveredValue0) actualSimTime.
    (self) scheduleTime: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bde5c; bytecode file offset 0x9bb178"
!SGSimEventQueueEntry methodsFor: 'recovered'!
simulator: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    simulator := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf6f8; bytecode file offset 0x9bc0b4"
!SGSimEventQueueEntry methodsFor: 'recovered'!
eventName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    eventName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0904; bytecode file offset 0x9bd228"
!SGSimEventQueueEntry methodsFor: 'recovered'!
dmMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dmMethod := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1650; bytecode file offset 0x9bdf14"
!SGSimEventQueueEntry methodsFor: 'recovered'!
receiver: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    receiver := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1c4c; bytecode file offset 0x9beac8"
!SGSimEventQueueEntry methodsFor: 'recovered'!
selector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selector := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2390; bytecode file offset 0x9bf474"
!SGSimEventQueueEntry methodsFor: 'recovered'!
arguments: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    arguments := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c344c; bytecode file offset 0x9bfde0"
!SGSimEventQueueEntry methodsFor: 'recovered'!
return: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    return := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3dbc; bytecode file offset 0x9c0bf0"
!SGSimEventQueueEntry methodsFor: 'recovered'!
scheduleTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scheduleTime := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4c84; bytecode file offset 0x9c16b0"
!SGSimEventQueueEntry methodsFor: 'recovered'!
phase: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    phase := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4f70; bytecode file offset 0x9c1afc"
!SGSimEventQueueEntry methodsFor: 'recovered'!
prio: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    prio := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5278; bytecode file offset 0x9c1f64"
!SGSimEventQueueEntry methodsFor: 'recovered'!
drehzahl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    drehzahl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c597c; bytecode file offset 0x9c22c8"
!SGSimEventQueueEntry methodsFor: 'recovered'!
parameter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parameter := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5ca8; bytecode file offset 0x9c25bc"
!SGSimEventQueueEntry methodsFor: 'recovered'!
mode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5e48; bytecode file offset 0x9c2804"
!SGSimEventQueueEntry methodsFor: 'recovered'!
dependentEvent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dependentEvent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c606c; bytecode file offset 0x9c29e8"
!SGSimEventQueueEntry methodsFor: 'recovered'!
timeRaster: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    timeRaster := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d2554; bytecode file offset 0x9cee0c"
!SGSimEventQueueEntry methodsFor: 'recovered'!
disable
    enabled := false.
    (self) scheduleTime: (-1).
    ^self
! !

"ASDBase.ic method 0x200d4e90; bytecode file offset 0x9d174c"
!SGSimEventQueueEntry methodsFor: 'recovered'!
scheduleSegment
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) calcAndSetSegmentDelay.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) scheduleSynchron.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e4ec4; bytecode file offset 0x9e1780"
!SGSimEventQueueEntry methodsFor: 'recovered'!
handleDependentEvent
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentEvent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := dependentEvent.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) reenterEvent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f2b14; bytecode file offset 0x9ef3f0"
!SGSimEventQueueEntry methodsFor: 'recovered'!
scheduleSingle
    | recoveredValue0 recoveredValue1 |
    (self) delay: (nil).
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) invalidTime.
    (self) scheduleTime: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2013bb00; bytecode file offset 0xa383b4"
!SGSimEventQueueEntry methodsFor: 'recovered'!
parameter
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parameter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 180.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            parameter := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := parameter.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20165e90; bytecode file offset 0xa6274c"
!SGSimEventQueueEntry methodsFor: 'recovered'!
delay: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            delay := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 198 176 64].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            delay := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016faf8; bytecode file offset 0xa6c3b8"
!SGSimEventQueueEntry methodsFor: 'recovered'!
getDrehzahlValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := drehzahl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := drehzahl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) get.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := drehzahl.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysValue.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017e324; bytecode file offset 0xa7abf0"
!SGSimEventQueueEntry methodsFor: 'recovered'!
scheduleSignalled
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) simulator.
    recoveredValue1 := (recoveredValue0) simEnvironment.
    recoveredValue2 := (recoveredValue1) dataGenerator.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (self) scheduleTime.
    recoveredValue5 := timeRaster.
    recoveredValue6 := (recoveredValue3) getNextMasterTimeFor: (recoveredValue4) timeGroup: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    (self) scheduleTime: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201c8a6c; bytecode file offset 0xac533c"
!SGSimEventQueueEntry methodsFor: 'recovered'!
resetEvent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) startTime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) phase.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) scheduleTime: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) mode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'segment'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) calcAndSetSegmentDelay.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fe920; bytecode file offset 0xafb1f0"
!SGSimEventQueueEntry methodsFor: 'recovered'!
iconName
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEnabled.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSynchronMode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'ElementTypeVariableDT'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSegmentMode.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := 'ElementsParameter'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := 'GeneralEvent'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 'GeneralArrowNeutral'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022b5cc; bytecode file offset 0xb27ea0"
!SGSimEventQueueEntry methodsFor: 'recovered'!
reScheduleSegment
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) calcAndSetSegmentDelay.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := #[72 175 188 154 242 215 122 62].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) simulator.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualSimTime.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) delay.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncateTo: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) scheduleTime: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024e8d8; bytecode file offset 0xb4b1b0"
!SGSimEventQueueEntry methodsFor: 'recovered'!
scheduleSynchron
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) delay.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultDelay.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) delay: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := #[72 175 188 154 242 215 122 62].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) scheduleTime.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) delay.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncateTo: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) scheduleTime: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20259b4c; bytecode file offset 0xb56418"
!SGSimEventQueueEntry methodsFor: 'recovered'!
calcAndSetSegmentDelay
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDrehzahlValue.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
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
            (recoveredStack0) scheduleSingle.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack1 := #[85 85 85 85 85 85 197 63].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := parameter.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) delay: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a8c98; bytecode file offset 0xba556c"
!SGSimEventQueueEntry methodsFor: 'recovered'!
scheduleEvent
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSynchronMode.
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
            (recoveredStack0) scheduleSynchron.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSegmentMode.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) scheduleSegment.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSignalledMode.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) scheduleSignalled.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) scheduleSingle.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) handleDependentEvent.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b3d4c; bytecode file offset 0xbb0624"
!SGSimEventQueueEntry methodsFor: 'recovered'!
enable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('Rnz') == ('EHI_83920').
    recoveredValue1 := (self) dmMethod.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) canBeStimulated.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 27] ifFalse: [recoveredBlock11PC := 24].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            ^recoveredBlock11Stack1
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    enabled := true.
    recoveredValue3 := (self) simulator.
    recoveredValue4 := (recoveredValue3) actualSimTime.
    recoveredValue5 := (self) phase.
    recoveredValue6 := (recoveredValue4) + (recoveredValue5).
    (self) scheduleTime: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203444b4; bytecode file offset 0xc40db0"
!SGSimEventQueueEntry methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    super initialize.
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) startTime.
    (self) scheduleTime: (recoveredValue1).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) startTime.
    (self) phase: (recoveredValue3).
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) defaultPrio.
    (self) prio: (recoveredValue5).
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) defaultDelay.
    (self) delay: (recoveredValue7).
    recoveredValue8 := (self) class.
    recoveredValue9 := (recoveredValue8) defaultMode.
    (self) mode: (recoveredValue9).
    recoveredValue10 := (self) class.
    recoveredValue11 := (recoveredValue10) defaultParameter.
    (self) parameter: (recoveredValue11).
    (self) timeRaster: (1).
    (self) arguments: (#()).
    (self) disable.
    ^self
! !

"ASDBase.ic method 0x20382cc0; bytecode file offset 0xc7f594"
!SGSimEventQueueEntry methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) cr.
    recoveredValue1 := (self) class.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    recoveredValue3 := eventName.
    recoveredValue4 := (' ') , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , (' T:').
    recoveredValue6 := scheduleTime.
    recoveredValue7 := (recoveredValue6) printString.
    recoveredValue8 := (recoveredValue5) , (recoveredValue7).
    recoveredValue9 := (recoveredValue8) , (' ').
    recoveredValue10 := mode.
    recoveredValue11 := (recoveredValue9) , (recoveredValue10).
    recoveredValue12 := (recoveredValue11) , (' ').
    recoveredValue13 := (recoveredValue12) , (' DT:').
    recoveredValue14 := delay.
    recoveredValue15 := (recoveredValue14) printString.
    recoveredValue16 := (recoveredValue13) , (recoveredValue15).
    recoveredValue17 := (recoveredValue16) , (' ').
    recoveredValue18 := (recoveredValue17) , (' ').
    recoveredValue19 := enabled.
    recoveredValue20 := (recoveredValue19) printString.
    recoveredValue21 := (recoveredValue18) , (recoveredValue20).
    recoveredValue22 := (recoveredValue21) , (' ').
    recoveredValue23 := recoveredArg1.
    (recoveredValue22) printOn: (recoveredValue23).
    ^self
! !

"ASDBase.ic method 0x2048d98c; bytecode file offset 0xd8a278"
!SGSimEventQueueEntry methodsFor: 'recovered'!
performEvent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := receiver.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenerator.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := receiver.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) simulator.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualSimTime.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) isSignalledMode.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateData: (recoveredStack2) signalled: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := delay.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := receiver.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := selector.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := arguments.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := return.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := (recoveredStack5) currentSimTimeInTicks.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack6 := delay.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack7 := 1000000.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack6 := (recoveredStack6) * (recoveredStack7).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack7 := 1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack6 := (recoveredStack6) // (recoveredStack7).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) performASG: (recoveredStack2) withArguments: (recoveredStack3) return: (recoveredStack4) time: (recoveredStack5) dt: (recoveredStack6).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'DET37360'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionInternalNonFatalNumericalSimulationErrors.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := receiver.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := selector.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := arguments.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := return.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack5 := (recoveredStack5) currentSimTimeInTicks.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack6 := 1000.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) performASG: (recoveredStack2) withArguments: (recoveredStack3) return: (recoveredStack4) time: (recoveredStack5) dt: (recoveredStack6).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := 'DET37360'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionInternalNonFatalNumericalSimulationErrors.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) scheduleEvent.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f293c; bytecode file offset 0xdef234"
!SGSimEventQueueEntry methodsFor: 'recovered'!
printState
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEnabled.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Disabled'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := mode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := mode.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'segment'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := mode.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'signalled'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := delay.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := ', dt: '.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := delay.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := ' [s]'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := prio.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := ', Prio: '.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := prio.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := mode.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 'segment'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := parameter.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := ', call every: '.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := parameter.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (String new: 3) at: 1 put: (Character value: 176); at: 2 put: (Character value: 67); at: 3 put: (Character value: 83); yourself.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := drehzahl.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := ', r.p.m.-Var: '.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := drehzahl.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) asASDSimLabel.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := mode.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := 'signalled'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := timeRaster.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := ', Time raster: '.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := timeRaster.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := dependentEvent.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := ', Dep.-Event: '.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := dependentEvent.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) eventName.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


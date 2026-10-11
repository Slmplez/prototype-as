"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200166f4; bytecode file offset 0x92209c"
!SGEventSimulator class methodsFor: 'recovered'!
startTime
    ^#[0 0 0 0 0 0 0 0]
! !

"ASDBase.ic method 0x20026e0c; bytecode file offset 0x923928"
!SGEventSimulator class methodsFor: 'recovered'!
defaultStepMode
    ^'Steps'
! !

"ASDBase.ic method 0x20074694; bytecode file offset 0x970f98"
!SGEventSimulator class methodsFor: 'recovered'!
highPrio
    ^10
! !

"ASDBase.ic method 0x200d9cb0; bytecode file offset 0x9d6868"
!SGEventSimulator class methodsFor: 'recovered'!
createForSimMainController: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) simMainController: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201dd208; bytecode file offset 0xad9ad0"
!SGEventSimulator class methodsFor: 'recovered'!
optionSimulationProcessSuspendCyle
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLDefinedOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'SimulationProcessSuspendCyle'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'ETASInternal'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOption: (recoveredStack2) fromCategory: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 500.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f10c0; bytecode file offset 0xaed99c"
!SGEventSimulator class methodsFor: 'recovered'!
simProcessName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := ('ASD-Simulation') , (' (').
    recoveredValue1 := Date.
    recoveredValue2 := (recoveredValue1) today.
    recoveredValue3 := (recoveredValue2) debugPrintString.
    recoveredValue4 := (recoveredValue0) , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , (' ').
    recoveredValue6 := Time.
    recoveredValue7 := (recoveredValue6) now.
    recoveredValue8 := (recoveredValue7) debugPrintString.
    recoveredValue9 := (recoveredValue5) , (recoveredValue8).
    recoveredValue10 := (recoveredValue9) , (')').
    ^recoveredValue10
! !


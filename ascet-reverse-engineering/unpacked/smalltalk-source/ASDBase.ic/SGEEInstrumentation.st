"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000368; bytecode file offset 0x8ffcfc"
!SGEEInstrumentation methodsFor: 'recovered'!
initialize
    ^self
! !

"ASDBase.ic method 0x20001378; bytecode file offset 0x8ffcfc"
!SGEEInstrumentation methodsFor: 'recovered'!
aboutToCloseExperiment
    ^self
! !

"ASDBase.ic method 0x20001760; bytecode file offset 0x8ffcfc"
!SGEEInstrumentation methodsFor: 'recovered'!
updateInstrumentation
    ^self
! !

"ASDBase.ic method 0x20001c08; bytecode file offset 0x8ffcfc"
!SGEEInstrumentation methodsFor: 'recovered'!
doSimulationInits
    ^self
! !

"ASDBase.ic method 0x20004808; bytecode file offset 0x90206c"
!SGEEInstrumentation methodsFor: 'recovered'!
initDiagramStyleProvider: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200059e0; bytecode file offset 0x902744"
!SGEEInstrumentation methodsFor: 'recovered'!
appendToolbarEntriesForExperiment: recoveredArg1 view: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005aa0; bytecode file offset 0x902744"
!SGEEInstrumentation methodsFor: 'recovered'!
initAdditionalMeasurementVariablesWith: recoveredArg1 simNode: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005c00; bytecode file offset 0x902744"
!SGEEInstrumentation methodsFor: 'recovered'!
appendMenuItemsForExperiment: recoveredArg1 view: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20006434; bytecode file offset 0x902de8"
!SGEEInstrumentation methodsFor: 'recovered'!
addTreePanesTo: recoveredArg1 widgetDictionary: recoveredArg2 view: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20048efc; bytecode file offset 0x9457b8"
!SGEEInstrumentation methodsFor: 'recovered'!
resetResults
    results := nil.
    ^self
! !

"ASDBase.ic method 0x20065f3c; bytecode file offset 0x963428"
!SGEEInstrumentation methodsFor: 'recovered'!
simController
    | recoveredValue0 |
    recoveredValue0 := simController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ab6ac; bytecode file offset 0x9a8250"
!SGEEInstrumentation methodsFor: 'recovered'!
resultAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) results.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ae328; bytecode file offset 0x9ab034"
!SGEEInstrumentation methodsFor: 'recovered'!
resultAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) results.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bdaec; bytecode file offset 0x9bb178"
!SGEEInstrumentation methodsFor: 'recovered'!
simController: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    simController := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20129358; bytecode file offset 0xa25c54"
!SGEEInstrumentation methodsFor: 'recovered'!
results
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := results.
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
            results := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := results.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


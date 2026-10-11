"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200028d4; bytecode file offset 0x63b1c"
!SstWSDeploymentManager class methodsFor: 'recovered'!
cleanUpBeforeRemoveNonInherited
    (self) reset.
    ^self
! !

"xxx_dyn.ic method 0x20002b90; bytecode file offset 0x63cb8"
!SstWSDeploymentManager class methodsFor: 'recovered'!
deploymentStrategies: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DeploymentStrategies := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000339c; bytecode file offset 0x64464"
!SstWSDeploymentManager class methodsFor: 'recovered'!
reset
    (self) deploymentStrategies: (nil).
    ^self
! !

"xxx_dyn.ic method 0x20004b10; bytecode file offset 0x65c7c"
!SstWSDeploymentManager class methodsFor: 'recovered'!
fatalDeploymentError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ExWSFatalDeploymentError.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) signalWith: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20006228; bytecode file offset 0x67374"
!SstWSDeploymentManager class methodsFor: 'recovered'!
register: recoveredArg1 as: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) deploymentStrategies.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006f50; bytecode file offset 0x681b0"
!SstWSDeploymentManager class methodsFor: 'recovered'!
strategyFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) deploymentStrategies.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007018; bytecode file offset 0x681b0"
!SstWSDeploymentManager class methodsFor: 'recovered'!
unregisterStrategyNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) deploymentStrategies.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20009424; bytecode file offset 0x6a544"
!SstWSDeploymentManager class methodsFor: 'recovered'!
for: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) container: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) initialize.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000c794; bytecode file offset 0x6d868"
!SstWSDeploymentManager class methodsFor: 'recovered'!
deploymentStrategies
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DeploymentStrategies.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := LookupTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) deploymentStrategies: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := DeploymentStrategies.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


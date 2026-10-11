"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000190; bytecode file offset 0x6147c"
!SstWSDeploymentManager methodsFor: 'recovered'!
initialize
    ^self
! !

"xxx_dyn.ic method 0x20001c70; bytecode file offset 0x62d98"
!SstWSDeploymentManager methodsFor: 'recovered'!
undeploymentStrategyFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) strategyFor: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000381c; bytecode file offset 0x649e8"
!SstWSDeploymentManager methodsFor: 'recovered'!
container
    | recoveredValue0 |
    recoveredValue0 := container.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20007b7c; bytecode file offset 0x68c60"
!SstWSDeploymentManager methodsFor: 'recovered'!
undeploy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) undeploymentStrategyFor: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) container.
    recoveredValue4 := (recoveredValue1) undeploy: (recoveredValue2) from: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20007b90; bytecode file offset 0x68c60"
!SstWSDeploymentManager methodsFor: 'recovered'!
deploy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) strategyFor: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) container.
    recoveredValue4 := (recoveredValue1) deploy: (recoveredValue2) into: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20007cb4; bytecode file offset 0x68f50"
!SstWSDeploymentManager methodsFor: 'recovered'!
container: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    container := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20009f24; bytecode file offset 0x6aff4"
!SstWSDeploymentManager methodsFor: 'recovered'!
deployUnmanagedServices: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) strategyFor: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) container.
    recoveredValue4 := (recoveredValue1) deployUnmanagedServices: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x2000e86c; bytecode file offset 0x6f948"
!SstWSDeploymentManager methodsFor: 'recovered'!
indeterminateDeploymentStrategy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := WSIndeterminateUrlDeploymentStrategy.
    recoveredValue2 := (recoveredValue0) strategyFor: (recoveredValue1).
    recoveredValue3 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) error: ('Indeterminate deployment strategy not defined.').
    recoveredBlock8Value0
].
    recoveredValue4 := (recoveredValue2) ifNil: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20011420; bytecode file offset 0x724fc"
!SstWSDeploymentManager methodsFor: 'recovered'!
strategyForUrl: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) subStrings: ($.).
    recoveredValue3 := (recoveredValue2) last.
    recoveredValue4 := (recoveredValue0) strategyFor: (recoveredValue3).
    recoveredValue5 := [
    | recoveredBlock13Value0 |
    recoveredBlock13Value0 := (self) indeterminateDeploymentStrategy.
    recoveredBlock13Value0
].
    recoveredValue6 := (recoveredValue4) ifNil: (recoveredValue5).
    ^recoveredValue6
! !

"xxx_dyn.ic method 0x200161dc; bytecode file offset 0x772b8"
!SstWSDeploymentManager methodsFor: 'recovered'!
strategyFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstDeploymentIdentifier.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) strategyFor: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) strategyForUrl: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) indeterminateDeploymentStrategy.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


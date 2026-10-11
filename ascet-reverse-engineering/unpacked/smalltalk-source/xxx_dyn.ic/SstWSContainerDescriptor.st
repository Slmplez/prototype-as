"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000351c; bytecode file offset 0x64614"
!SstWSContainerDescriptor methodsFor: 'recovered'!
defaultActionStrategy
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := WSCreateIfAbsent.
    recoveredValue2 := (recoveredValue0) creationActionStrategyNamed: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20004254; bytecode file offset 0x65328"
!SstWSContainerDescriptor methodsFor: 'recovered'!
configuration
    | recoveredValue0 |
    recoveredValue0 := configuration.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200042a0; bytecode file offset 0x65384"
!SstWSContainerDescriptor methodsFor: 'recovered'!
serviceUrls
    | recoveredValue0 |
    recoveredValue0 := serviceUrls.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20008754; bytecode file offset 0x69858"
!SstWSContainerDescriptor methodsFor: 'recovered'!
configuration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    configuration := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200087a8; bytecode file offset 0x698bc"
!SstWSContainerDescriptor methodsFor: 'recovered'!
serviceUrls: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    serviceUrls := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000f990; bytecode file offset 0x70a68"
!SstWSContainerDescriptor methodsFor: 'recovered'!
containerUsing: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) creationAction.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) creationActionStrategyNamed: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultActionStrategy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


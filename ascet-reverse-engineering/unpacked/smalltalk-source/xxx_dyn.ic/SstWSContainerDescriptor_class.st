"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20009698; bytecode file offset 0x6a768"
!SstWSContainerDescriptor class methodsFor: 'recovered'!
initializeCreationActionStrategies
    (self) addCreateNewStrategy.
    (self) addCreateIfAbsentStrategy.
    (self) addUseExistingStrategy.
    ^self
! !

"xxx_dyn.ic method 0x2001c70c; bytecode file offset 0x7d7f4"
!SstWSContainerDescriptor class methodsFor: 'recovered'!
addUseExistingStrategy
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block2800b8c8Arg1 :block2800b8c8Arg2 | 
    | block2800b8c8Local1 block2800b8c8Value0 block2800b8c8Value1 block2800b8c8Value2 block2800b8c8Value3 block2800b8c8Value4 block2800b8c8Value5 |
    block2800b8c8Value0 := block2800b8c8Arg1.
    block2800b8c8Value1 := (block2800b8c8Value0) name.
    block2800b8c8Local1 := block2800b8c8Value1.
    block2800b8c8Value2 := block2800b8c8Arg2.
    block2800b8c8Value3 := block2800b8c8Local1.
    block2800b8c8Value4 := [
    | block2800b8c8Block17Value0 block2800b8c8Block17Value1 block2800b8c8Block17Value2 block2800b8c8Block17Value3 |
    block2800b8c8Block17Value0 := SstWSDeploymentManager.
    block2800b8c8Block17Value1 := block2800b8c8Local1.
    block2800b8c8Block17Value2 := ('Container named %1 not found.') bindWith: (block2800b8c8Block17Value1).
    block2800b8c8Block17Value3 := (block2800b8c8Block17Value0) fatalDeploymentError: (block2800b8c8Block17Value2).
    block2800b8c8Block17Value3
].
    block2800b8c8Value5 := (block2800b8c8Value2) containerNamed: (block2800b8c8Value3) ifNone: (block2800b8c8Value4).
    block2800b8c8Value5
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := WSUseExisting.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) addCreationActionStrategy: (recoveredStack1) named: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001cefc; bytecode file offset 0x7dfe4"
!SstWSContainerDescriptor class methodsFor: 'recovered'!
addCreateNewStrategy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block2800b958Arg1 :block2800b958Arg2 | 
    | block2800b958Value0 block2800b958Value1 block2800b958Value2 block2800b958Value3 |
    block2800b958Value0 := [
    | block2800b958Block4Value0 block2800b958Block4Value1 block2800b958Block4Value2 block2800b958Block4Value3 block2800b958Block4Value4 block2800b958Block4Value5 |
    block2800b958Block4Value0 := block2800b958Arg2.
    block2800b958Block4Value1 := block2800b958Arg1.
    block2800b958Block4Value2 := (block2800b958Block4Value1) name.
    block2800b958Block4Value3 := block2800b958Arg1.
    block2800b958Block4Value4 := (block2800b958Block4Value3) configuration.
    block2800b958Block4Value5 := (block2800b958Block4Value0) createContainerNamed: (block2800b958Block4Value2) using: (block2800b958Block4Value4).
    block2800b958Block4Value5
].
    block2800b958Value1 := ExSstSetupError.
    block2800b958Value2 := [:block2800b958Block26Arg1 | 
    | block2800b958Block26Value0 block2800b958Block26Value1 block2800b958Block26Value2 |
    block2800b958Block26Value0 := block2800b958Arg2.
    block2800b958Block26Value1 := block2800b958Block26Arg1.
    block2800b958Block26Value2 := (block2800b958Block26Value0) nonFatalDeploymentError: (block2800b958Block26Value1).
    block2800b958Block26Value2
].
    block2800b958Value3 := (block2800b958Value0) when: (block2800b958Value1) do: (block2800b958Value2).
    block2800b958Value3
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := WSCreateNew.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) addCreationActionStrategy: (recoveredStack1) named: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001e550; bytecode file offset 0x7f630"
!SstWSContainerDescriptor class methodsFor: 'recovered'!
addCreateIfAbsentStrategy
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) name.
    recoveredBlock4Local1 := recoveredBlock4Value1.
    recoveredBlock4Value2 := WSCreateNew.
    recoveredBlock4Value3 := (self) creationActionStrategyNamed: (recoveredBlock4Value2).
    recoveredBlock4Local2 := recoveredBlock4Value3.
    recoveredBlock4Value4 := recoveredBlock4Arg2.
    recoveredBlock4Value5 := recoveredBlock4Local1.
    recoveredBlock4Value6 := [
    | recoveredBlock4Block29Value0 recoveredBlock4Block29Value1 recoveredBlock4Block29Value2 recoveredBlock4Block29Value3 |
    recoveredBlock4Block29Value0 := recoveredBlock4Local2.
    recoveredBlock4Block29Value1 := recoveredBlock4Arg1.
    recoveredBlock4Block29Value2 := recoveredBlock4Arg2.
    recoveredBlock4Block29Value3 := (recoveredBlock4Block29Value0) value: (recoveredBlock4Block29Value1) value: (recoveredBlock4Block29Value2).
    recoveredBlock4Block29Value3
].
    recoveredBlock4Value7 := (recoveredBlock4Value4) containerNamed: (recoveredBlock4Value5) ifNone: (recoveredBlock4Value6).
    recoveredBlock4Value7
].
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := WSCreateIfAbsent.
    (self) addCreationActionStrategy: (recoveredValue1) named: (recoveredValue2).
    ^self
! !


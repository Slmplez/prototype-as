"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ETargetCommonToolbox.ic method 0x20000000; bytecode file offset 0x1d88"
!TGTargetExperimentalCommonToolbox class methodsFor: 'recovered'!
initializeToolboxAfterLoad
    ^self
! !

"ETargetCommonToolbox.ic method 0x20000010; bytecode file offset 0x1dc8"
!TGTargetExperimentalCommonToolbox class methodsFor: 'recovered'!
toolboxDescriptor
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasToolboxDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ASCET Experimental Target (Common)'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'TIP-ExpTargetCommon'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 'TGTargetExperimentalCommonToolboxRT'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) packageName: (recoveredStack3) application: (recoveredStack4) fileName: (recoveredStack5).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'toolboxOptions'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [:block28000138Arg1 | 
    | block28000138Value0 block28000138Value1 |
    block28000138Value0 := ASDExperimentalTargetOptions.
    block28000138Value1 := (block28000138Value0) instance.
    block28000138Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) addOptionType: (recoveredStack2) getBlock: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'toolboxOptions'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := [:block2800015cArg1 | 
    | block2800015cValue0 block2800015cValue1 |
    block2800015cValue0 := ASDGenericHardwareConfigurationOptions.
    block2800015cValue1 := (block2800015cValue0) instance.
    block2800015cValue1
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) addOptionType: (recoveredStack2) getBlock: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


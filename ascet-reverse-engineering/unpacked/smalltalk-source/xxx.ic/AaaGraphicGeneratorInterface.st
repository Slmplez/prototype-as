"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx.ic method 0x20000650; bytecode file offset 0x15118"
!AaaGraphicGeneratorInterface methodsFor: 'recovered'!
generateByCommandLine: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) generateByCommandLine: (recoveredValue0) iniFile: (nil) isHeadless: (true).
    ^recoveredValue1
! !

"xxx.ic method 0x200056b8; bytecode file offset 0x1a1b0"
!AaaGraphicGeneratorInterface methodsFor: 'recovered'!
generateByCommandLine: recoveredArg1 iniFile: recoveredArg2 isHeadless: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) createResultOkay.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'ASDXMLGraphicsGeneratorSetup'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := AaaResult.
    recoveredBlock19Value1 := (recoveredBlock19Value0) createGraphicGeneratorNotAvailable.
    ^recoveredBlock19Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateByCommandLine: (recoveredStack2) iniFile: (recoveredStack3) isHeadless: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:block28000e18Arg1 | 
    | block28000e18Value0 block28000e18Value1 |
    block28000e18Value0 := block28000e18Arg1.
    block28000e18Value1 := (block28000e18Value0) result.
    block28000e18Value1
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := [
    | block28000e3cValue0 block28000e3cValue1 |
    block28000e3cValue0 := AaaResult.
    block28000e3cValue1 := (block28000e3cValue0) createInvalidOperation.
    block28000e3cValue1
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNotNil: (recoveredStack2) ifNil: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


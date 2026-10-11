"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20052500; bytecode file offset 0x94f0e0"
!EtasSoftwareManager methodsFor: 'recovered'!
availableComponents
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) components.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (recoveredValue1) asOrderedCollection.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057228; bytecode file offset 0x956284"
!EtasSoftwareManager methodsFor: 'recovered'!
isComponentAvailable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) components.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200658ec; bytecode file offset 0x963428"
!EtasSoftwareManager methodsFor: 'recovered'!
components
    | recoveredValue0 |
    recoveredValue0 := components.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ab904; bytecode file offset 0x9a8250"
!EtasSoftwareManager methodsFor: 'recovered'!
getComponent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) components.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bd5c8; bytecode file offset 0x9b9e88"
!EtasSoftwareManager methodsFor: 'recovered'!
registerComponent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) components.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200be3dc; bytecode file offset 0x9bb178"
!EtasSoftwareManager methodsFor: 'recovered'!
components: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    components := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201674d0; bytecode file offset 0xa63e94"
!EtasSoftwareManager methodsFor: 'recovered'!
getComponentVersion: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) components.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280ce604Arg1 | 
    | block280ce604Value0 block280ce604Value1 |
    block280ce604Value0 := block280ce604Arg1.
    block280ce604Value1 := (block280ce604Value0) version.
    block280ce604Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20167540; bytecode file offset 0xa63e94"
!EtasSoftwareManager methodsFor: 'recovered'!
getComponentBasePath: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) components.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280ce694Arg1 | 
    | block280ce694Value0 block280ce694Value1 |
    block280ce694Value0 := block280ce694Arg1.
    block280ce694Value1 := (block280ce694Value0) basePath.
    block280ce694Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e0310; bytecode file offset 0xadcbe0"
!EtasSoftwareManager methodsFor: 'recovered'!
registerComponentName: recoveredArg1 version: recoveredArg2 basePath: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := EtasSoftwareComponent.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) name: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) version: (recoveredValue6).
    recoveredValue7 := recoveredArg3.
    (recoveredValue1) basePath: (recoveredValue7).
    recoveredValue8 := (self) components.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x201f05f0; bytecode file offset 0xaecec4"
!EtasSoftwareManager methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) components: (recoveredValue1).
    recoveredValue2 := EtasSoftwareComponent.
    recoveredValue3 := (recoveredValue2) allSubclasses.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) create.
    recoveredBlock13Value2 := (self) registerComponent: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20256cd8; bytecode file offset 0xb535ac"
!EtasSoftwareManager methodsFor: 'recovered'!
getExecutablePath: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) components.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280df500Arg1 | 
    | block280df500Stack0 block280df500Stack1 block280df500Stack2 block280df500Stack3 block280df500PC block280df500Step block280df500Done block280df500Result |
    block280df500Stack0 := self.
    block280df500PC := 4.
    block280df500Done := false.
    [block280df500Done not] whileTrue: [
        block280df500Step := block280df500PC.
        block280df500Step = 4 ifTrue: [
            block280df500Stack1 := block280df500Arg1.
            block280df500PC := 5.
        ].
        block280df500Step = 5 ifTrue: [
            block280df500Stack1 := (block280df500Stack1) basePath.
            block280df500PC := 6.
        ].
        block280df500Step = 6 ifTrue: [
            (block280df500Stack1 ~~ nil) ifTrue: [block280df500PC := 14] ifFalse: [block280df500PC := 10].
        ].
        block280df500Step = 10 ifTrue: [
            block280df500Stack1 := nil.
            block280df500PC := 11.
        ].
        block280df500Step = 11 ifTrue: [
            block280df500PC := 23.
        ].
        block280df500Step = 14 ifTrue: [
            block280df500Stack1 := block280df500Arg1.
            block280df500PC := 15.
        ].
        block280df500Step = 15 ifTrue: [
            block280df500Stack1 := (block280df500Stack1) basePath.
            block280df500PC := 16.
        ].
        block280df500Step = 16 ifTrue: [
            block280df500Stack1 := (block280df500Stack1) asPathname.
            block280df500PC := 18.
        ].
        block280df500Step = 18 ifTrue: [
            block280df500Stack2 := block280df500Arg1.
            block280df500PC := 19.
        ].
        block280df500Step = 19 ifTrue: [
            block280df500Stack2 := (block280df500Stack2) executableName.
            block280df500PC := 21.
        ].
        block280df500Step = 21 ifTrue: [
            block280df500Stack1 := (block280df500Stack1) , (block280df500Stack2).
            block280df500PC := 23.
        ].
        block280df500Step = 23 ifTrue: [
            block280df500Result := block280df500Stack1.
            block280df500Done := true.
        ].
    ].
    block280df500Result
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


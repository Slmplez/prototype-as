"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004f68; bytecode file offset 0x90206c"
!SGMdAUTOSARAddressMethodCollector methodsFor: 'recovered'!
visitMdlBaseClassTypedElement: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20028064; bytecode file offset 0x934580"
!SGMdAUTOSARAddressMethodCollector methodsFor: 'recovered'!
addressMethods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) addressMethodTable.
    recoveredValue1 := (recoveredValue0) keys.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20129b6c; bytecode file offset 0xa26468"
!SGMdAUTOSARAddressMethodCollector methodsFor: 'recovered'!
addressMethodTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := addressMethodTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            addressMethodTable := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := addressMethodTable.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014647c; bytecode file offset 0xa42d40"
!SGMdAUTOSARAddressMethodCollector methodsFor: 'recovered'!
addAddressMethod: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) addressMethodTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    'Defined'
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20167d7c; bytecode file offset 0xa64644"
!SGMdAUTOSARAddressMethodCollector methodsFor: 'recovered'!
mdlProjectInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) generatorFactory.
    recoveredValue1 := (recoveredValue0) codeGeneratorStrategy.
    recoveredValue2 := (recoveredValue1) memoryClassesAll.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) addAddressMethod: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !


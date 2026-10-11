"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200007ec; bytecode file offset 0x619a4"
!SstWsdlPortType methodsFor: 'recovered'!
allOperations
    | recoveredValue0 |
    recoveredValue0 := (self) operations.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20001264; bytecode file offset 0x626a4"
!SstWsdlPortType methodsFor: 'recovered'!
subElementSelectors
    ^#('operations')
! !

"xxx_dyn.ic method 0x20004120; bytecode file offset 0x65264"
!SstWsdlPortType methodsFor: 'recovered'!
operations
    | recoveredValue0 |
    recoveredValue0 := operations.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20008650; bytecode file offset 0x6978c"
!SstWsdlPortType methodsFor: 'recovered'!
operations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    operations := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20009bc0; bytecode file offset 0x6ac8c"
!SstWsdlPortType methodsFor: 'recovered'!
addOperation: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) operations.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000ab3c; bytecode file offset 0x6bc84"
!SstWsdlPortType methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) operations: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20010308; bytecode file offset 0x713f4"
!SstWsdlPortType methodsFor: 'recovered'!
operationNamed: recoveredArg1 withArguments: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) allOperations.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) name.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !


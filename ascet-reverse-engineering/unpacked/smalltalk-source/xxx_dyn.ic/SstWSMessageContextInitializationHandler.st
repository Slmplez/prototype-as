"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20004e40; bytecode file offset 0x65fa4"
!SstWSMessageContextInitializationHandler methodsFor: 'recovered'!
invoke: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) initializeContext: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20004e4c; bytecode file offset 0x65fa4"
!SstWSMessageContextInitializationHandler methodsFor: 'recovered'!
initializeContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setPortAndBindingAndOperationUsing: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x2000cb8c; bytecode file offset 0x6dc64"
!SstWSMessageContextInitializationHandler methodsFor: 'recovered'!
portsIn: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) ports.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800a80cArg1 | 
    | block2800a80cValue0 block2800a80cValue1 block2800a80cValue2 |
    block2800a80cValue0 := block2800a80cArg1.
    block2800a80cValue1 := (block2800a80cValue0) binding.
    block2800a80cValue2 := (block2800a80cValue1) isSoapBinding.
    block2800a80cValue2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2002365c; bytecode file offset 0x84748"
!SstWSMessageContextInitializationHandler methodsFor: 'recovered'!
chooseTargetPort: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := WSOperationName.
    recoveredValue2 := (recoveredValue0) propertyNamed: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := WSOperationArguments.
    recoveredValue5 := (recoveredValue3) propertyNamed: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := (recoveredBlock25Value0) binding.
    recoveredBlock25Value2 := recoveredLocal2.
    recoveredBlock25Value3 := recoveredLocal1.
    recoveredBlock25Value4 := (recoveredBlock25Value1) operationNamed: (recoveredBlock25Value2) withArguments: (recoveredBlock25Value3).
    recoveredBlock25Value5 := recoveredBlock25Value4.
    recoveredLocal3 := recoveredBlock25Value5.
    recoveredBlock25Value6 := (recoveredBlock25Value4) notNil.
    recoveredBlock25Value6
].
    recoveredValue8 := [].
    recoveredValue9 := (recoveredValue6) detect: (recoveredValue7) ifNone: (recoveredValue8).
    recoveredLocal4 := recoveredValue9.
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 |
    recoveredBlock58Value0 := recoveredArg2.
    recoveredBlock58Value1 := recoveredBlock58Arg1.
    recoveredBlock58Value2 := WSOperation.
    recoveredBlock58Value3 := (recoveredBlock58Value0) addProperty: (recoveredBlock58Value1) named: (recoveredBlock58Value2).
    recoveredBlock58Value3
].
    (recoveredValue10) ifNotNil: (recoveredValue11).
    recoveredValue12 := recoveredLocal4.
    ^recoveredValue12
! !

"xxx_dyn.ic method 0x2002c480; bytecode file offset 0x8d59c"
!SstWSMessageContextInitializationHandler methodsFor: 'recovered'!
setPortAndBindingAndOperationUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := WSImplementation.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) propertyNamed: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) portsIn: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) chooseTargetPort: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 'No port found for %1'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := WSOperationName.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) propertyNamed: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := WSOperation.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) propertyNamed: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock73Value0 recoveredBlock73Value1 recoveredBlock73Value2 recoveredBlock73Value3 recoveredBlock73Value4 recoveredBlock73Value5 |
    recoveredBlock73Value0 := recoveredArg1.
    recoveredBlock73Value1 := WSOperationName.
    recoveredBlock73Value2 := (recoveredBlock73Value0) propertyNamed: (recoveredBlock73Value1).
    recoveredBlock73Value3 := (recoveredBlock73Value2) printString.
    recoveredBlock73Value4 := ('The operation %1 is not defined') bindWith: (recoveredBlock73Value3).
    (self) error: (recoveredBlock73Value4).
    recoveredBlock73Value5 := recoveredArg1.
    ^recoveredBlock73Value5
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) binding.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindingOperationFor: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock114Value0 recoveredBlock114Value1 recoveredBlock114Value2 recoveredBlock114Value3 recoveredBlock114Value4 recoveredBlock114Value5 |
    recoveredBlock114Value0 := recoveredArg1.
    recoveredBlock114Value1 := WSOperationName.
    recoveredBlock114Value2 := (recoveredBlock114Value0) propertyNamed: (recoveredBlock114Value1).
    recoveredBlock114Value3 := (recoveredBlock114Value2) printString.
    recoveredBlock114Value4 := ('The binding operation %1 is not defined') bindWith: (recoveredBlock114Value3).
    (self) error: (recoveredBlock114Value4).
    recoveredBlock114Value5 := recoveredArg1.
    ^recoveredBlock114Value5
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) bindingOperation: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := WSPort.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) addProperty: (recoveredStack1) named: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) soapLocation.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstAsUrl.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := WSServiceLocation.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) addProperty: (recoveredStack1) named: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


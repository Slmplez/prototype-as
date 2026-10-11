"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002370; bytecode file offset 0x8ffcfc"
!Class methodsFor: 'recovered'!
abrAsClass
    ^self
! !

"ASDBase.ic method 0x20019244; bytecode file offset 0x92209c"
!Class methodsFor: 'recovered'!
abtInterfaceSpecSelector
    ^'IS_instanceInterfaceSpec'
! !

"ASDBase.ic method 0x200627f8; bytecode file offset 0x95f8b0"
!Class methodsFor: 'recovered'!
abtCalculatesRuntimeInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) abtInterfaceSpecSelector.
    recoveredValue2 := (recoveredValue0) includesSelector: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2012ca88; bytecode file offset 0xa2937c"
!Class methodsFor: 'recovered'!
nilInstances
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstances.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c9d2cArg1 | 
    | block280c9d2cValue0 block280c9d2cValue1 |
    block280c9d2cValue0 := block280c9d2cArg1.
    block280c9d2cValue1 := (block280c9d2cValue0) become: (nil).
    block280c9d2cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20176050; bytecode file offset 0xa72934"
!Class methodsFor: 'recovered'!
abtInterfaceSpecSelector: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isSBString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'IS_'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtInterfaceSpecSelector.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20206b30; bytecode file offset 0xb033f8"
!Class methodsFor: 'recovered'!
abtCalculateRuntimeInterfaceSpec
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) IS_instanceInterfaceSpec.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := AbtRunInterfacesApp.
    recoveredValue2 := (recoveredValue1) interfaceSpecExtensions.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredLocal1.
    recoveredBlock11Value2 := (self) perform: (recoveredBlock11Value0) with: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !


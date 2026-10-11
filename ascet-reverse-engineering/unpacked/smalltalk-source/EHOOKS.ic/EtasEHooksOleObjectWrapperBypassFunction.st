"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x2000029c; bytecode file offset 0xf474"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
identifier
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('Identifier').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x2000031c; bytecode file offset 0xf474"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
bypassContainer
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('BypassContainer').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x2000033c; bytecode file offset 0xf474"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('Name').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200007c4; bytecode file offset 0xf99c"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) propertyAt: ('Name') put: (recoveredValue0).
    ^recoveredValue1
! !

"EHOOKS.ic method 0x200007f4; bytecode file offset 0xf99c"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) propertyAt: ('Identifier') put: (recoveredValue0).
    ^recoveredValue1
! !

"EHOOKS.ic method 0x20000814; bytecode file offset 0xf99c"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
bypassContainer: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) propertyAt: ('BypassContainer') put: (recoveredValue0).
    ^recoveredValue1
! !

"EHOOKS.ic method 0x20001a7c; bytecode file offset 0x10ca4"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
inputs
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Inputs'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperVariableCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001b1c; bytecode file offset 0x10ca4"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
outputs
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Outputs'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperVariableCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


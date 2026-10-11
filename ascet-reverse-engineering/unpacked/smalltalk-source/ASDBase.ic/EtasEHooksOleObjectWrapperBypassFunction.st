"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20043b8c; bytecode file offset 0x9451f8"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
control
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('Control').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043e7c; bytecode file offset 0x9451f8"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('Name').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200448ac; bytecode file offset 0x9451f8"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
bypassContainer
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('BypassContainer').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200454dc; bytecode file offset 0x9451f8"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
forceWrites
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('ForceWrites').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045d5c; bytecode file offset 0x9451f8"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
indicator
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('Indicator').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200463ec; bytecode file offset 0x9451f8"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
identifier
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('Identifier').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004676c; bytecode file offset 0x9451f8"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
enabler
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('Enabler').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200933d4; bytecode file offset 0x98fed0"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
control: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) propertyAt: ('Control') put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093444; bytecode file offset 0x98fed0"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) propertyAt: ('Identifier') put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093474; bytecode file offset 0x98fed0"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
bypassContainer: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) propertyAt: ('BypassContainer') put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093484; bytecode file offset 0x98fed0"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
enabler: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) propertyAt: ('Enabler') put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093554; bytecode file offset 0x98fed0"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
forceWrites: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) propertyAt: ('ForceWrites') put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200935b4; bytecode file offset 0x98fed0"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) propertyAt: ('Name') put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093614; bytecode file offset 0x98fed0"
!EtasEHooksOleObjectWrapperBypassFunction methodsFor: 'recovered'!
indicator: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) propertyAt: ('Indicator') put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201dd974; bytecode file offset 0xada320"
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

"ASDBase.ic method 0x201dd9b4; bytecode file offset 0xada320"
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


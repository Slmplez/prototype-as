"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x20000cdc; bytecode file offset 0xffa8"
!EtasEHooksOleObjectWrapperApplication methodsFor: 'recovered'!
start
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Start') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000d18; bytecode file offset 0xffa8"
!EtasEHooksOleObjectWrapperApplication methodsFor: 'recovered'!
quit
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Quit') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000d54; bytecode file offset 0xffa8"
!EtasEHooksOleObjectWrapperApplication methodsFor: 'recovered'!
isRunning
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('IsRunning') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000d90; bytecode file offset 0xffa8"
!EtasEHooksOleObjectWrapperApplication methodsFor: 'recovered'!
hide
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Hide') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20001afc; bytecode file offset 0x10ca4"
!EtasEHooksOleObjectWrapperApplication methodsFor: 'recovered'!
scripting
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Scripting'.
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
            recoveredStack0 := EtasEHooksOleObjectWrapperScripting.
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


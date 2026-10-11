"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x20000d2c; bytecode file offset 0xffa8"
!EtasEHooksOleObjectWrapperScripting methodsFor: 'recovered'!
quit
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Quit') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000d68; bytecode file offset 0xffa8"
!EtasEHooksOleObjectWrapperScripting methodsFor: 'recovered'!
hasProject
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('HasProject') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000df4; bytecode file offset 0xffa8"
!EtasEHooksOleObjectWrapperScripting methodsFor: 'recovered'!
hide
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Hide') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000e1c; bytecode file offset 0xffa8"
!EtasEHooksOleObjectWrapperScripting methodsFor: 'recovered'!
closeProject
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('CloseProject') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000e58; bytecode file offset 0xffa8"
!EtasEHooksOleObjectWrapperScripting methodsFor: 'recovered'!
show
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Show') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200017c4; bytecode file offset 0x10908"
!EtasEHooksOleObjectWrapperScripting methodsFor: 'recovered'!
openProject: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: ('OpenProject') withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"EHOOKS.ic method 0x20001a3c; bytecode file offset 0x10ca4"
!EtasEHooksOleObjectWrapperScripting methodsFor: 'recovered'!
project
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Project'.
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
            recoveredStack0 := EtasEHooksOleObjectWrapperProject.
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

"EHOOKS.ic method 0x20001e24; bytecode file offset 0x10f84"
!EtasEHooksOleObjectWrapperScripting methodsFor: 'recovered'!
createProject: recoveredArg1 file: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredLocal1 := recoveredValue1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) invoke: ('CreateProject') withArguments: (recoveredValue6) returnType: (true).
    ^recoveredValue7
! !


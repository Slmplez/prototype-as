"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20003e6c; bytecode file offset 0x64fe8"
!SstWSOperationHandlerDescriptor methodsFor: 'recovered'!
input
    | recoveredValue0 |
    recoveredValue0 := input.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003f70; bytecode file offset 0x650c4"
!SstWSOperationHandlerDescriptor methodsFor: 'recovered'!
output
    | recoveredValue0 |
    recoveredValue0 := output.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000402c; bytecode file offset 0x65178"
!SstWSOperationHandlerDescriptor methodsFor: 'recovered'!
fault
    | recoveredValue0 |
    recoveredValue0 := fault.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20008374; bytecode file offset 0x69508"
!SstWSOperationHandlerDescriptor methodsFor: 'recovered'!
input: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    input := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200084a8; bytecode file offset 0x695c4"
!SstWSOperationHandlerDescriptor methodsFor: 'recovered'!
output: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    output := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008584; bytecode file offset 0x69688"
!SstWSOperationHandlerDescriptor methodsFor: 'recovered'!
fault: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fault := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20015fac; bytecode file offset 0x77084"
!SstWSOperationHandlerDescriptor methodsFor: 'recovered'!
handlerForReference: recoveredArg1 container: recoveredArg2 using: recoveredArg3 inNamespace: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := SstWSNoOperationHandler.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) createClassFor: (recoveredStack2) using: (recoveredStack3) inNamespace: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolveReferenceFor: (recoveredStack2) using: (recoveredStack3) inNamespace: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20018db8; bytecode file offset 0x79e98"
!SstWSOperationHandlerDescriptor methodsFor: 'recovered'!
buildHandlerComponentsFor: recoveredArg1 in: recoveredArg2 using: recoveredArg3 inNamespace: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) input.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (self) handlerForReference: (recoveredValue1) container: (recoveredValue2) using: (recoveredValue3) inNamespace: (recoveredValue4).
    (recoveredValue0) inputHandler: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) output.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := recoveredArg3.
    recoveredValue10 := recoveredArg4.
    recoveredValue11 := (self) handlerForReference: (recoveredValue7) container: (recoveredValue8) using: (recoveredValue9) inNamespace: (recoveredValue10).
    (recoveredValue6) outputHandler: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (self) fault.
    recoveredValue14 := recoveredArg2.
    recoveredValue15 := recoveredArg3.
    recoveredValue16 := recoveredArg4.
    recoveredValue17 := (self) handlerForReference: (recoveredValue13) container: (recoveredValue14) using: (recoveredValue15) inNamespace: (recoveredValue16).
    (recoveredValue12) faultHandler: (recoveredValue17).
    ^self
! !


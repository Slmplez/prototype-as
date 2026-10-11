"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054338; bytecode file offset 0x951190"
!EtasUndoRedoCommand class methodsFor: 'recovered'!
logging: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Logging := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20105140; bytecode file offset 0xa01a28"
!EtasUndoRedoCommand class methodsFor: 'recovered'!
logging
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Logging.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            Logging := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := Logging.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2025cc88; bytecode file offset 0xb59558"
!EtasUndoRedoCommand class methodsFor: 'recovered'!
undoRedo: recoveredArg1 newState: recoveredArg2 oldState: recoveredArg3 receiver: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := DirectedMessage.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := Array.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := recoveredArg4.
    recoveredValue8 := (recoveredValue2) selector: (recoveredValue3) arguments: (recoveredValue6) receiver: (recoveredValue7).
    (recoveredValue1) undo: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := DirectedMessage.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := Array.
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := (recoveredValue12) with: (recoveredValue13).
    recoveredValue15 := recoveredArg4.
    recoveredValue16 := (recoveredValue10) selector: (recoveredValue11) arguments: (recoveredValue14) receiver: (recoveredValue15).
    (recoveredValue9) redo: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !


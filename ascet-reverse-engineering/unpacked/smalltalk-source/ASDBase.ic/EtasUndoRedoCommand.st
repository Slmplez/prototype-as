"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20040000; bytecode file offset 0x93d278"
!EtasUndoRedoCommand methodsFor: 'recovered'!
undoReceiver
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := undo.
    recoveredValue1 := (recoveredValue0) receiver.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040e04; bytecode file offset 0x93d83c"
!EtasUndoRedoCommand methodsFor: 'recovered'!
redoReceiver
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := redo.
    recoveredValue1 := (recoveredValue0) receiver.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200659c4; bytecode file offset 0x963428"
!EtasUndoRedoCommand methodsFor: 'recovered'!
undo
    | recoveredValue0 |
    recoveredValue0 := undo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200678fc; bytecode file offset 0x9646f8"
!EtasUndoRedoCommand methodsFor: 'recovered'!
redo
    | recoveredValue0 |
    recoveredValue0 := redo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068a9c; bytecode file offset 0x965b90"
!EtasUndoRedoCommand methodsFor: 'recovered'!
filter
    | recoveredValue0 |
    recoveredValue0 := filter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069d40; bytecode file offset 0x966bdc"
!EtasUndoRedoCommand methodsFor: 'recovered'!
modifyCallback
    | recoveredValue0 |
    recoveredValue0 := modifyCallback.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a434; bytecode file offset 0x967a18"
!EtasUndoRedoCommand methodsFor: 'recovered'!
tabIndex
    | recoveredValue0 |
    recoveredValue0 := tabIndex.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b0738; bytecode file offset 0x9acffc"
!EtasUndoRedoCommand methodsFor: 'recovered'!
monitor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) printMonitor.
    (recoveredValue1) addText: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b563c; bytecode file offset 0x9b1ef8"
!EtasUndoRedoCommand methodsFor: 'recovered'!
logging
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) logging.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200be0e4; bytecode file offset 0x9bb178"
!EtasUndoRedoCommand methodsFor: 'recovered'!
undo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    undo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bed48; bytecode file offset 0x9bc0b4"
!EtasUndoRedoCommand methodsFor: 'recovered'!
redo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    redo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf884; bytecode file offset 0x9bd228"
!EtasUndoRedoCommand methodsFor: 'recovered'!
addFilter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    filter := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0094; bytecode file offset 0x9bd228"
!EtasUndoRedoCommand methodsFor: 'recovered'!
filter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    filter := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1388; bytecode file offset 0x9bdf14"
!EtasUndoRedoCommand methodsFor: 'recovered'!
modifyCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    modifyCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1974; bytecode file offset 0x9beac8"
!EtasUndoRedoCommand methodsFor: 'recovered'!
tabIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tabIndex := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c20d4; bytecode file offset 0x9beac8"
!EtasUndoRedoCommand methodsFor: 'recovered'!
addTabIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tabIndex := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20145df0; bytecode file offset 0xa426b8"
!EtasUndoRedoCommand methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) printMonitor.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201a3e04; bytecode file offset 0xaa06c4"
!EtasUndoRedoCommand methodsFor: 'recovered'!
sendUndo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := undo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) send.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := modifyCallback.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := undo.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := modifyCallback.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) perform: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := undo.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a3f84; bytecode file offset 0xaa0844"
!EtasUndoRedoCommand methodsFor: 'recovered'!
sendRedo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := redo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) send.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := modifyCallback.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := redo.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := modifyCallback.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) perform: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := redo.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20349e38; bytecode file offset 0xc46718"
!EtasUndoRedoCommand methodsFor: 'recovered'!
printMonitor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := undo.
    recoveredValue1 := (recoveredValue0) receiver.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := (recoveredValue3) , ('	').
    recoveredValue5 := undo.
    recoveredValue6 := (recoveredValue5) receiver.
    recoveredValue7 := (recoveredValue6) name.
    recoveredValue8 := (recoveredValue4) , (recoveredValue7).
    recoveredValue9 := (recoveredValue8) , ('	').
    recoveredValue10 := undo.
    recoveredValue11 := (recoveredValue10) selector.
    recoveredValue12 := undo.
    recoveredValue13 := (recoveredValue12) selector.
    recoveredValue14 := (recoveredValue13) size.
    recoveredValue15 := (recoveredValue14) - (5).
    recoveredValue16 := (recoveredValue11) copyFrom: (1) to: (recoveredValue15).
    recoveredValue17 := (recoveredValue9) , (recoveredValue16).
    recoveredValue18 := (recoveredValue17) , (':	').
    recoveredValue19 := undo.
    recoveredValue20 := (recoveredValue19) arguments.
    recoveredValue21 := (recoveredValue20) printString.
    recoveredValue22 := (recoveredValue18) , (recoveredValue21).
    recoveredValue23 := (recoveredValue22) , ('	').
    recoveredValue24 := tabIndex.
    recoveredValue25 := (recoveredValue24) printString.
    recoveredValue26 := (recoveredValue23) , (recoveredValue25).
    ^recoveredValue26
! !


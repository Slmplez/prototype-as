"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20001c1c; bytecode file offset 0x7de10"
!CwTextUndoManager methodsFor: 'recovered'!
reset
    (self) initializeConnection.
    ^self
! !

"winsys.ic method 0x20002d78; bytecode file offset 0x7efc0"
!CwTextUndoManager methodsFor: 'recovered'!
undoText
    | recoveredValue0 |
    recoveredValue0 := undoText.
    ^recoveredValue0
! !

"winsys.ic method 0x20003060; bytecode file offset 0x7f220"
!CwTextUndoManager methodsFor: 'recovered'!
redoText
    | recoveredValue0 |
    recoveredValue0 := redoText.
    ^recoveredValue0
! !

"winsys.ic method 0x200031c0; bytecode file offset 0x7f418"
!CwTextUndoManager methodsFor: 'recovered'!
undoable
    | recoveredValue0 |
    recoveredValue0 := undoable.
    ^recoveredValue0
! !

"winsys.ic method 0x200033e0; bytecode file offset 0x7f5b8"
!CwTextUndoManager methodsFor: 'recovered'!
redoable
    | recoveredValue0 |
    recoveredValue0 := redoable.
    ^recoveredValue0
! !

"winsys.ic method 0x20003440; bytecode file offset 0x7f720"
!CwTextUndoManager methodsFor: 'recovered'!
stateChangedBlock
    | recoveredValue0 |
    recoveredValue0 := stateChangedBlock.
    ^recoveredValue0
! !

"winsys.ic method 0x20003650; bytecode file offset 0x7f878"
!CwTextUndoManager methodsFor: 'recovered'!
inserting
    | recoveredValue0 |
    recoveredValue0 := inserting.
    ^recoveredValue0
! !

"winsys.ic method 0x20003770; bytecode file offset 0x7f9b8"
!CwTextUndoManager methodsFor: 'recovered'!
startCollecting
    | recoveredValue0 |
    recoveredValue0 := startCollecting.
    ^recoveredValue0
! !

"winsys.ic method 0x20003870; bytecode file offset 0x7fac0"
!CwTextUndoManager methodsFor: 'recovered'!
startPosition
    | recoveredValue0 |
    recoveredValue0 := startPosition.
    ^recoveredValue0
! !

"winsys.ic method 0x20003938; bytecode file offset 0x7fbb0"
!CwTextUndoManager methodsFor: 'recovered'!
endPosition
    | recoveredValue0 |
    recoveredValue0 := endPosition.
    ^recoveredValue0
! !

"winsys.ic method 0x2000740c; bytecode file offset 0x836b4"
!CwTextUndoManager methodsFor: 'recovered'!
undoText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    undoText := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007714; bytecode file offset 0x838d4"
!CwTextUndoManager methodsFor: 'recovered'!
redoText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    redoText := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007ae0; bytecode file offset 0x83ce8"
!CwTextUndoManager methodsFor: 'recovered'!
stateChangedBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stateChangedBlock := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007c30; bytecode file offset 0x83df0"
!CwTextUndoManager methodsFor: 'recovered'!
inserting: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    inserting := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007cf8; bytecode file offset 0x83ed0"
!CwTextUndoManager methodsFor: 'recovered'!
startCollecting: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startCollecting := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007d90; bytecode file offset 0x83f98"
!CwTextUndoManager methodsFor: 'recovered'!
startPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startPosition := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007e18; bytecode file offset 0x84048"
!CwTextUndoManager methodsFor: 'recovered'!
endPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    endPosition := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000b9d8; bytecode file offset 0x87ba4"
!CwTextUndoManager methodsFor: 'recovered'!
buttonEvent: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) button.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Button1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) initializeConnection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000cae4; bytecode file offset 0x88cb8"
!CwTextUndoManager methodsFor: 'recovered'!
keyEvent: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) arrows.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) keysym.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) initializeConnection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000d254; bytecode file offset 0x89420"
!CwTextUndoManager methodsFor: 'recovered'!
undo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) undoable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) undoOrRedo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) undoable: (recoveredStack1) redoable: (recoveredStack2).
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

"winsys.ic method 0x2000d27c; bytecode file offset 0x89448"
!CwTextUndoManager methodsFor: 'recovered'!
redo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) redoable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) undoOrRedo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) undoable: (recoveredStack1) redoable: (recoveredStack2).
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

"winsys.ic method 0x20014004; bytecode file offset 0x901dc"
!CwTextUndoManager methodsFor: 'recovered'!
initializeConnection
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := String.
    recoveredValue1 := (recoveredValue0) new.
    (self) undoText: (recoveredValue1).
    recoveredValue2 := String.
    recoveredValue3 := (recoveredValue2) new.
    (self) redoText: (recoveredValue3).
    (self) startCollecting: (true).
    (self) undoable: (false) redoable: (false).
    ^self
! !

"winsys.ic method 0x20019c88; bytecode file offset 0x95e90"
!CwTextUndoManager methodsFor: 'recovered'!
disconnectFromOwner: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := ButtonPressMask.
    (recoveredValue1) removeEventHandler: (recoveredValue2) receiver: (self) selector: ('buttonEvent:clientData:callData:') clientData: (nil).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := KeyPressMask.
    (recoveredValue3) removeEventHandler: (recoveredValue4) receiver: (self) selector: ('keyEvent:clientData:callData:') clientData: (nil).
    recoveredValue5 := XmNmodifyVerifyCallback.
    (recoveredValue0) removeCallback: (recoveredValue5) receiver: (self) selector: ('modifyVerify:clientData:callData:') clientData: (nil).
    ^self
! !

"winsys.ic method 0x20019cb0; bytecode file offset 0x95e90"
!CwTextUndoManager methodsFor: 'recovered'!
connectToOwner: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := ButtonPressMask.
    (recoveredValue1) addEventHandler: (recoveredValue2) receiver: (self) selector: ('buttonEvent:clientData:callData:') clientData: (nil).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := KeyPressMask.
    (recoveredValue3) addEventHandler: (recoveredValue4) receiver: (self) selector: ('keyEvent:clientData:callData:') clientData: (nil).
    recoveredValue5 := XmNmodifyVerifyCallback.
    (recoveredValue0) addCallback: (recoveredValue5) receiver: (self) selector: ('modifyVerify:clientData:callData:') clientData: (nil).
    ^self
! !

"winsys.ic method 0x2001ca84; bytecode file offset 0x98c4c"
!CwTextUndoManager methodsFor: 'recovered'!
undoable: recoveredArg1 redoable: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := undoable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := redoable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) stateChangedBlock.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            undoable := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            redoable := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2003b7f0; bytecode file offset 0xb79fc"
!CwTextUndoManager methodsFor: 'recovered'!
undoOrRedo
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) owner.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredLocal5 := recoveredBlock6Stack0.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) startPosition.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredLocal2 := recoveredBlock6Stack0.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) endPosition.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            (recoveredBlock6Stack0 == nil) ifTrue: [recoveredBlock6PC := 53] ifFalse: [recoveredBlock6PC := 30].
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal5.
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack2 := recoveredLocal2.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack3 := recoveredLocal1.
            recoveredBlock6PC := 40.
        ].
        recoveredBlock6Step = 40 ifTrue: [
            recoveredBlock6Stack4 := recoveredLocal2.
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) - (recoveredBlock6Stack4).
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) + (1).
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) getSubstring: (recoveredBlock6Stack2) numChars: (recoveredBlock6Stack3).
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            (recoveredBlock6Stack0) undoText: (recoveredBlock6Stack1).
            recoveredBlock6PC := 49.
        ].
        recoveredBlock6Step = 49 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 50.
        ].
        recoveredBlock6Step = 50 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 51.
        ].
        recoveredBlock6Step = 51 ifTrue: [
            (recoveredBlock6Stack0) endPosition: (recoveredBlock6Stack1).
            recoveredBlock6PC := 53.
        ].
        recoveredBlock6Step = 53 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 54.
        ].
        recoveredBlock6Step = 54 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) undoText.
            recoveredBlock6PC := 56.
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) size.
            recoveredBlock6PC := 58.
        ].
        recoveredBlock6Step = 58 ifTrue: [
            recoveredLocal4 := recoveredBlock6Stack0.
            recoveredBlock6PC := 61.
        ].
        recoveredBlock6Step = 61 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal5.
            recoveredBlock6PC := 64.
        ].
        recoveredBlock6Step = 64 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) getLastPosition.
            recoveredBlock6PC := 66.
        ].
        recoveredBlock6Step = 66 ifTrue: [
            recoveredLocal3 := recoveredBlock6Stack0.
            recoveredBlock6PC := 69.
        ].
        recoveredBlock6Step = 69 ifTrue: [
            recoveredBlock6Stack0 := redoText.
            recoveredBlock6PC := 71.
        ].
        recoveredBlock6Step = 71 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) size.
            recoveredBlock6PC := 73.
        ].
        recoveredBlock6Step = 73 ifTrue: [
            recoveredBlock6Stack1 := 0.
            recoveredBlock6PC := 75.
        ].
        recoveredBlock6Step = 75 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) > (recoveredBlock6Stack1).
            recoveredBlock6PC := 76.
        ].
        recoveredBlock6Step = 76 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 80] ifFalse: [recoveredBlock6PC := 124].
        ].
        recoveredBlock6Step = 80 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal4.
            recoveredBlock6PC := 83.
        ].
        recoveredBlock6Step = 83 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal3.
            recoveredBlock6PC := 86.
        ].
        recoveredBlock6Step = 86 ifTrue: [
            (recoveredBlock6Stack0 ~~ recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 102] ifFalse: [recoveredBlock6PC := 90].
        ].
        recoveredBlock6Step = 90 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal5.
            recoveredBlock6PC := 93.
        ].
        recoveredBlock6Step = 93 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 94.
        ].
        recoveredBlock6Step = 94 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) redoText.
            recoveredBlock6PC := 96.
        ].
        recoveredBlock6Step = 96 ifTrue: [
            (recoveredBlock6Stack0) value: (recoveredBlock6Stack1).
            recoveredBlock6PC := 98.
        ].
        recoveredBlock6Step = 98 ifTrue: [
            recoveredBlock6PC := 121.
        ].
        recoveredBlock6Step = 102 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal5.
            recoveredBlock6PC := 105.
        ].
        recoveredBlock6Step = 105 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal2.
            recoveredBlock6PC := 108.
        ].
        recoveredBlock6Step = 108 ifTrue: [
            recoveredBlock6Stack2 := recoveredLocal2.
            recoveredBlock6PC := 111.
        ].
        recoveredBlock6Step = 111 ifTrue: [
            recoveredBlock6Stack3 := recoveredLocal4.
            recoveredBlock6PC := 114.
        ].
        recoveredBlock6Step = 114 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) + (recoveredBlock6Stack3).
            recoveredBlock6PC := 115.
        ].
        recoveredBlock6Step = 115 ifTrue: [
            recoveredBlock6Stack3 := self.
            recoveredBlock6PC := 116.
        ].
        recoveredBlock6Step = 116 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) redoText.
            recoveredBlock6PC := 118.
        ].
        recoveredBlock6Step = 118 ifTrue: [
            (recoveredBlock6Stack0) replace: (recoveredBlock6Stack1) toPos: (recoveredBlock6Stack2) value: (recoveredBlock6Stack3).
            recoveredBlock6PC := 121.
        ].
        recoveredBlock6Step = 121 ifTrue: [
            recoveredBlock6PC := 185.
        ].
        recoveredBlock6Step = 124 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 125.
        ].
        recoveredBlock6Step = 125 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) inserting.
            recoveredBlock6PC := 127.
        ].
        recoveredBlock6Step = 127 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 130] ifFalse: [recoveredBlock6PC := 174].
        ].
        recoveredBlock6Step = 130 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal4.
            recoveredBlock6PC := 133.
        ].
        recoveredBlock6Step = 133 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal3.
            recoveredBlock6PC := 136.
        ].
        recoveredBlock6Step = 136 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) = (recoveredBlock6Stack1).
            recoveredBlock6PC := 137.
        ].
        recoveredBlock6Step = 137 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 140] ifFalse: [recoveredBlock6PC := 152].
        ].
        recoveredBlock6Step = 140 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal5.
            recoveredBlock6PC := 143.
        ].
        recoveredBlock6Step = 143 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 144.
        ].
        recoveredBlock6Step = 144 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) redoText.
            recoveredBlock6PC := 146.
        ].
        recoveredBlock6Step = 146 ifTrue: [
            (recoveredBlock6Stack0) value: (recoveredBlock6Stack1).
            recoveredBlock6PC := 148.
        ].
        recoveredBlock6Step = 148 ifTrue: [
            recoveredBlock6PC := 170.
        ].
        recoveredBlock6Step = 152 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal5.
            recoveredBlock6PC := 155.
        ].
        recoveredBlock6Step = 155 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal2.
            recoveredBlock6PC := 158.
        ].
        recoveredBlock6Step = 158 ifTrue: [
            recoveredBlock6Stack2 := recoveredLocal2.
            recoveredBlock6PC := 161.
        ].
        recoveredBlock6Step = 161 ifTrue: [
            recoveredBlock6Stack3 := recoveredLocal4.
            recoveredBlock6PC := 164.
        ].
        recoveredBlock6Step = 164 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) + (recoveredBlock6Stack3).
            recoveredBlock6PC := 165.
        ].
        recoveredBlock6Step = 165 ifTrue: [
            recoveredBlock6Stack3 := ''.
            recoveredBlock6PC := 167.
        ].
        recoveredBlock6Step = 167 ifTrue: [
            (recoveredBlock6Stack0) replace: (recoveredBlock6Stack1) toPos: (recoveredBlock6Stack2) value: (recoveredBlock6Stack3).
            recoveredBlock6PC := 170.
        ].
        recoveredBlock6Step = 170 ifTrue: [
            recoveredBlock6PC := 185.
        ].
        recoveredBlock6Step = 174 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal5.
            recoveredBlock6PC := 177.
        ].
        recoveredBlock6Step = 177 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal2.
            recoveredBlock6PC := 180.
        ].
        recoveredBlock6Step = 180 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 181.
        ].
        recoveredBlock6Step = 181 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) undoText.
            recoveredBlock6PC := 183.
        ].
        recoveredBlock6Step = 183 ifTrue: [
            (recoveredBlock6Stack0) insert: (recoveredBlock6Stack1) value: (recoveredBlock6Stack2).
            recoveredBlock6PC := 185.
        ].
        recoveredBlock6Step = 185 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal5.
            recoveredBlock6PC := 188.
        ].
        recoveredBlock6Step = 188 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal2.
            recoveredBlock6PC := 191.
        ].
        recoveredBlock6Step = 191 ifTrue: [
            (recoveredBlock6Stack0) showPosition: (recoveredBlock6Stack1).
            recoveredBlock6PC := 193.
        ].
        recoveredBlock6Step = 193 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 194.
        ].
        recoveredBlock6Step = 194 ifTrue: [
            recoveredBlock6Stack1 := true.
            recoveredBlock6PC := 195.
        ].
        recoveredBlock6Step = 195 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) startCollecting: (recoveredBlock6Stack1).
            recoveredBlock6PC := 197.
        ].
        recoveredBlock6Step = 197 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x2003e68c; bytecode file offset 0xba894"
!CwTextUndoManager methodsFor: 'recovered'!
modifyVerify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) startPos.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) endPos.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) text.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) undoable: (recoveredStack1) redoable: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) startCollecting.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) startCollecting: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) startPosition: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) redoText: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) inserting: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) lineDelimiter.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) endPosition: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) endPosition: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) startCollecting: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) startPosition: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) undoText: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 236.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLastPosition.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredPC := 145.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSubstring: (recoveredStack1) numChars: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) inserting: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) startPosition: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1) startCollecting: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) undoText: (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) redoText: (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredPC := 236.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) redoText: (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) lineDelimiter.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) endPosition: (recoveredStack1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredPC := 225.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack0) endPosition: (recoveredStack1).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredPC := 236.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) undoText: (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) endPosition: (recoveredStack1).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) startCollecting.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) endPosition: (recoveredStack1).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


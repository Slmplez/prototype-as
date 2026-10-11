"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20029914; bytecode file offset 0x934580"
!EtasScintillaTextUndoManager methodsFor: 'recovered'!
undo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) sciUndo.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002aed4; bytecode file offset 0x934580"
!EtasScintillaTextUndoManager methodsFor: 'recovered'!
undoable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) sciCanUndo.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ce04; bytecode file offset 0x934580"
!EtasScintillaTextUndoManager methodsFor: 'recovered'!
redo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) sciRedo.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037154; bytecode file offset 0x934580"
!EtasScintillaTextUndoManager methodsFor: 'recovered'!
redoable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) sciCanRedo.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e6660; bytecode file offset 0x9e30bc"
!EtasScintillaTextUndoManager methodsFor: 'recovered'!
reset
    | recoveredValue0 |
    super reset.
    recoveredValue0 := (self) owner.
    (recoveredValue0) sciEmptyUndoBuffer.
    ^self
! !


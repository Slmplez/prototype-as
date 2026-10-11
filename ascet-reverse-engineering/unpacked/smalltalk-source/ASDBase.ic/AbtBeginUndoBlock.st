"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001dd8; bytecode file offset 0x8ffcfc"
!AbtBeginUndoBlock methodsFor: 'recovered'!
redo
    ^self
! !

"ASDBase.ic method 0x200029d8; bytecode file offset 0x8ffcfc"
!AbtBeginUndoBlock methodsFor: 'recovered'!
undo
    ^self
! !

"ASDBase.ic method 0x20078424; bytecode file offset 0x9757c8"
!AbtBeginUndoBlock methodsFor: 'recovered'!
isBeginUndoBlock
    ^true
! !

"ASDBase.ic method 0x2007f0ec; bytecode file offset 0x97c330"
!AbtBeginUndoBlock methodsFor: 'recovered'!
isEndUndoBlock
    ^false
! !

"ASDBase.ic method 0x2008a36c; bytecode file offset 0x986c24"
!AbtBeginUndoBlock methodsFor: 'recovered'!
execute
    | recoveredValue0 |
    recoveredValue0 := stackHolder.
    (recoveredValue0) executedOperation: (self).
    ^self
! !

"ASDBase.ic method 0x200bdf6c; bytecode file offset 0x9bb178"
!AbtBeginUndoBlock methodsFor: 'recovered'!
stackHolder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stackHolder := recoveredValue0.
    ^self
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002678; bytecode file offset 0x8ffcfc"
!AbtEndUndoBlock methodsFor: 'recovered'!
undo
    ^self
! !

"ASDBase.ic method 0x20003368; bytecode file offset 0x8ffcfc"
!AbtEndUndoBlock methodsFor: 'recovered'!
redo
    ^self
! !

"ASDBase.ic method 0x200770c4; bytecode file offset 0x9757c8"
!AbtEndUndoBlock methodsFor: 'recovered'!
isEndUndoBlock
    ^true
! !

"ASDBase.ic method 0x200797d4; bytecode file offset 0x97c330"
!AbtEndUndoBlock methodsFor: 'recovered'!
isBeginUndoBlock
    ^false
! !

"ASDBase.ic method 0x2008a360; bytecode file offset 0x986c24"
!AbtEndUndoBlock methodsFor: 'recovered'!
execute
    | recoveredValue0 |
    recoveredValue0 := stackHolder.
    (recoveredValue0) executedOperation: (self).
    ^self
! !

"ASDBase.ic method 0x200bda04; bytecode file offset 0x9bb178"
!AbtEndUndoBlock methodsFor: 'recovered'!
stackHolder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stackHolder := recoveredValue0.
    ^self
! !


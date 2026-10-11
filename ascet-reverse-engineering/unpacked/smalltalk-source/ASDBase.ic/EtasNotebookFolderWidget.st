"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ca90; bytecode file offset 0x92209c"
!EtasNotebookFolderWidget methodsFor: 'recovered'!
contentsPageName
    ^'Components'
! !

"ASDBase.ic method 0x2007ecbc; bytecode file offset 0x97c330"
!EtasNotebookFolderWidget methodsFor: 'recovered'!
isAddPossible
    ^false
! !

"ASDBase.ic method 0x201d7b50; bytecode file offset 0xad441c"
!EtasNotebookFolderWidget methodsFor: 'recovered'!
selectedItemsForDelete
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super selectedItemsForDelete.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [:block280d5a74Arg1 | 
    | block280d5a74Stack0 block280d5a74Stack1 block280d5a74Stack2 block280d5a74Stack3 block280d5a74PC block280d5a74Step block280d5a74Done block280d5a74Result |
    block280d5a74Stack0 := self.
    block280d5a74PC := 4.
    block280d5a74Done := false.
    [block280d5a74Done not] whileTrue: [
        block280d5a74Step := block280d5a74PC.
        block280d5a74Step = 4 ifTrue: [
            block280d5a74Stack1 := false.
            block280d5a74PC := 5.
        ].
        block280d5a74Step = 5 ifTrue: [
            block280d5a74Stack2 := block280d5a74Arg1.
            block280d5a74PC := 6.
        ].
        block280d5a74Step = 6 ifTrue: [
            block280d5a74Stack2 := (block280d5a74Stack2) isFolder.
            block280d5a74PC := 7.
        ].
        block280d5a74Step = 7 ifTrue: [
            (block280d5a74Stack2) ifTrue: [block280d5a74PC := 10] ifFalse: [block280d5a74PC := 14].
        ].
        block280d5a74Step = 10 ifTrue: [
            block280d5a74PC := 11.
        ].
        block280d5a74Step = 11 ifTrue: [
            block280d5a74Stack1 := block280d5a74Arg1.
            block280d5a74PC := 12.
        ].
        block280d5a74Step = 12 ifTrue: [
            block280d5a74Stack1 := (block280d5a74Stack1) isLibrary.
            block280d5a74PC := 14.
        ].
        block280d5a74Step = 14 ifTrue: [
            block280d5a74Result := block280d5a74Stack1.
            block280d5a74Done := true.
        ].
    ].
    block280d5a74Result
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


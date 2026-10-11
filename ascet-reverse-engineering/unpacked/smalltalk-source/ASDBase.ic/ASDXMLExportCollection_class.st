"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20294248; bytecode file offset 0xb90b24"
!ASDXMLExportCollection class methodsFor: 'recovered'!
createFor: recoveredArg1 roots: recoveredArg2 destDir: recoveredArg3 exportController: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDXMLExportCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) exportController: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [:block280e2f80Arg1 | 
    | block280e2f80Stack0 block280e2f80Stack1 block280e2f80Stack2 block280e2f80Stack3 block280e2f80PC block280e2f80Step block280e2f80Done block280e2f80Result |
    block280e2f80Stack0 := self.
    block280e2f80PC := 4.
    block280e2f80Done := false.
    [block280e2f80Done not] whileTrue: [
        block280e2f80Step := block280e2f80PC.
        block280e2f80Step = 4 ifTrue: [
            block280e2f80Stack1 := block280e2f80Arg1.
            block280e2f80PC := 5.
        ].
        block280e2f80Step = 5 ifTrue: [
            block280e2f80Stack2 := [:block280e2fa4Arg1 | 
    nil
].
            block280e2f80PC := 7.
        ].
        block280e2f80Step = 7 ifTrue: [
            block280e2f80PC := 12.
        ].
        block280e2f80Step = 12 ifTrue: [
            block280e2f80Stack1 := (block280e2f80Stack1) getObjectIfUndefined: (block280e2f80Stack2).
            block280e2f80PC := 14.
        ].
        block280e2f80Step = 14 ifTrue: [
            block280e2f80Result := block280e2f80Stack1.
            block280e2f80Done := true.
        ].
    ].
    block280e2f80Result
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) collectItems: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) performAllChecks: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


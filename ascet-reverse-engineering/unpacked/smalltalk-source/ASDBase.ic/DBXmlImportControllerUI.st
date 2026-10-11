"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2038ddcc; bytecode file offset 0xc8a6c0"
!DBXmlImportControllerUI methodsFor: 'recovered'!
importFromFiles: recoveredArg1 components: recoveredArg2 importFolder: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSCMActive.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASDXMLImportOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionUseDirectAMDImport.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280f36c0Arg1 | 
    | block280f36c0Stack0 block280f36c0Stack1 block280f36c0Stack2 block280f36c0Stack3 block280f36c0Stack4 block280f36c0PC block280f36c0Step block280f36c0Done block280f36c0Result |
    block280f36c0Stack0 := self.
    block280f36c0PC := 4.
    block280f36c0Done := false.
    [block280f36c0Done not] whileTrue: [
        block280f36c0Step := block280f36c0PC.
        block280f36c0Step = 4 ifTrue: [
            block280f36c0Stack1 := true.
            block280f36c0PC := 5.
        ].
        block280f36c0Step = 5 ifTrue: [
            block280f36c0Stack2 := block280f36c0Arg1.
            block280f36c0PC := 6.
        ].
        block280f36c0Step = 6 ifTrue: [
            block280f36c0Stack2 := (block280f36c0Stack2) asLowercase.
            block280f36c0PC := 8.
        ].
        block280f36c0Step = 8 ifTrue: [
            block280f36c0Stack3 := 'main.xml'.
            block280f36c0PC := 10.
        ].
        block280f36c0Step = 10 ifTrue: [
            block280f36c0Stack2 := (block280f36c0Stack2) includesSubstring: (block280f36c0Stack3).
            block280f36c0PC := 12.
        ].
        block280f36c0Step = 12 ifTrue: [
            (block280f36c0Stack2) ifTrue: [block280f36c0PC := 24] ifFalse: [block280f36c0PC := 16].
        ].
        block280f36c0Step = 16 ifTrue: [
            block280f36c0PC := 17.
        ].
        block280f36c0Step = 17 ifTrue: [
            block280f36c0Stack1 := block280f36c0Arg1.
            block280f36c0PC := 18.
        ].
        block280f36c0Step = 18 ifTrue: [
            block280f36c0Stack1 := (block280f36c0Stack1) asLowercase.
            block280f36c0PC := 20.
        ].
        block280f36c0Step = 20 ifTrue: [
            block280f36c0Stack2 := 'main.amd'.
            block280f36c0PC := 22.
        ].
        block280f36c0Step = 22 ifTrue: [
            block280f36c0Stack1 := (block280f36c0Stack1) includesSubstring: (block280f36c0Stack2).
            block280f36c0PC := 24.
        ].
        block280f36c0Step = 24 ifTrue: [
            block280f36c0Result := block280f36c0Stack1.
            block280f36c0Done := true.
        ].
    ].
    block280f36c0Result
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) handleIssues: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDBInterfaceGlobal.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) directImport: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := super importFromFiles: (recoveredStack2) components: (recoveredStack3) importFolder: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2009b928; bytecode file offset 0x998260"
!RBUIInfoControllerRT class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := GlobalInfoController.
    (recoveredValue0) InstanceCreationSelector: ('createInstance').
    ^self
! !

"ASDBase.ic method 0x20281ecc; bytecode file offset 0xb7e7b0"
!RBUIInfoControllerRT class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := GlobalInfoController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) InstanceCreationSelector.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280e13f0Arg1 | 
    | block280e13f0Stack0 block280e13f0Stack1 block280e13f0Stack2 block280e13f0Stack3 block280e13f0Stack4 block280e13f0PC block280e13f0Step block280e13f0Done block280e13f0Result |
    block280e13f0Stack0 := self.
    block280e13f0PC := 4.
    block280e13f0Done := false.
    [block280e13f0Done not] whileTrue: [
        block280e13f0Step := block280e13f0PC.
        block280e13f0Step = 4 ifTrue: [
            block280e13f0Stack1 := nil.
            block280e13f0PC := 5.
        ].
        block280e13f0Step = 5 ifTrue: [
            block280e13f0Stack2 := block280e13f0Arg1.
            block280e13f0PC := 6.
        ].
        block280e13f0Step = 6 ifTrue: [
            block280e13f0Stack3 := 'createInstance'.
            block280e13f0PC := 8.
        ].
        block280e13f0Step = 8 ifTrue: [
            block280e13f0Stack2 := (block280e13f0Stack2) equals: (block280e13f0Stack3).
            block280e13f0PC := 10.
        ].
        block280e13f0Step = 10 ifTrue: [
            (block280e13f0Stack2) ifTrue: [block280e13f0PC := 14] ifFalse: [block280e13f0PC := 24].
        ].
        block280e13f0Step = 14 ifTrue: [
            block280e13f0PC := 15.
        ].
        block280e13f0Step = 15 ifTrue: [
            block280e13f0Stack1 := Transcript.
            block280e13f0PC := 17.
        ].
        block280e13f0Step = 17 ifTrue: [
            block280e13f0Stack2 := block280e13f0Stack1.
            block280e13f0PC := 18.
        ].
        block280e13f0Step = 18 ifTrue: [
            (block280e13f0Stack2) cr.
            block280e13f0PC := 20.
        ].
        block280e13f0Step = 20 ifTrue: [
            block280e13f0Stack2 := 'INFO: Redefined Info Controller''s InstanceCreationSelector: from #createInstance to #createUIInstance.'.
            block280e13f0PC := 22.
        ].
        block280e13f0Step = 22 ifTrue: [
            block280e13f0Stack1 := (block280e13f0Stack1) show: (block280e13f0Stack2).
            block280e13f0PC := 24.
        ].
        block280e13f0Step = 24 ifTrue: [
            block280e13f0Result := block280e13f0Stack1.
            block280e13f0Done := true.
        ].
    ].
    block280e13f0Result
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := GlobalInfoController.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'createUIInstance'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) InstanceCreationSelector: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


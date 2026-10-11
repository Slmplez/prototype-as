"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000010; bytecode file offset 0x232e0"
!NlsImageSupport class methodsFor: 'recovered'!
_PRAGMA_NlsCatNLSa
    ^self
! !

"cfsnls.ic method 0x20003124; bytecode file offset 0x26374"
!NlsImageSupport class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatNLSa.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"cfsnls.ic method 0x20008cb0; bytecode file offset 0x2bf04"
!NlsImageSupport class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) localize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := EsNlsImageStartUp.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) messageCatalogStartUpError: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block280047f0Arg1 | 
    | block280047f0Stack0 block280047f0Stack1 block280047f0Stack2 block280047f0Stack3 block280047f0PC block280047f0Step block280047f0Done block280047f0Result |
    block280047f0Stack0 := self.
    block280047f0PC := 4.
    block280047f0Done := false.
    [block280047f0Done not] whileTrue: [
        block280047f0Step := block280047f0PC.
        block280047f0Step = 4 ifTrue: [
            block280047f0Stack1 := nil.
            block280047f0PC := 5.
        ].
        block280047f0Step = 5 ifTrue: [
            block280047f0Stack2 := block280047f0Arg1.
            block280047f0PC := 6.
        ].
        block280047f0Step = 6 ifTrue: [
            block280047f0Stack2 := (block280047f0Stack2) isNlsPool.
            block280047f0PC := 8.
        ].
        block280047f0Step = 8 ifTrue: [
            (block280047f0Stack2) ifTrue: [block280047f0PC := 12] ifFalse: [block280047f0PC := 23].
        ].
        block280047f0Step = 12 ifTrue: [
            block280047f0Stack2 := block280047f0Arg1.
            block280047f0PC := 13.
        ].
        block280047f0Step = 13 ifTrue: [
            block280047f0Stack2 := (block280047f0Stack2) resident.
            block280047f0PC := 15.
        ].
        block280047f0Step = 15 ifTrue: [
            (block280047f0Stack2) ifTrue: [block280047f0PC := 18] ifFalse: [block280047f0PC := 23].
        ].
        block280047f0Step = 18 ifTrue: [
            block280047f0PC := 19.
        ].
        block280047f0Step = 19 ifTrue: [
            block280047f0Stack1 := block280047f0Arg1.
            block280047f0PC := 20.
        ].
        block280047f0Step = 20 ifTrue: [
            block280047f0Stack2 := false.
            block280047f0PC := 21.
        ].
        block280047f0Step = 21 ifTrue: [
            block280047f0Stack1 := (block280047f0Stack1) makeResident: (block280047f0Stack2).
            block280047f0PC := 23.
        ].
        block280047f0Step = 23 ifTrue: [
            block280047f0Result := block280047f0Stack1.
            block280047f0Done := true.
        ].
    ].
    block280047f0Result
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20008f54; bytecode file offset 0x2c1ac"
!NlsImageSupport class methodsFor: 'recovered'!
removing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := NlsCatNLSa.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) addLineDelimiters.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:block28004814Arg1 | 
    | block28004814Stack0 block28004814Stack1 block28004814Stack2 block28004814Stack3 block28004814PC block28004814Step block28004814Done block28004814Result |
    block28004814Stack0 := self.
    block28004814PC := 4.
    block28004814Done := false.
    [block28004814Done not] whileTrue: [
        block28004814Step := block28004814PC.
        block28004814Step = 4 ifTrue: [
            block28004814Stack1 := nil.
            block28004814PC := 5.
        ].
        block28004814Step = 5 ifTrue: [
            block28004814Stack2 := block28004814Arg1.
            block28004814PC := 6.
        ].
        block28004814Step = 6 ifTrue: [
            block28004814Stack2 := (block28004814Stack2) isNlsPool.
            block28004814PC := 8.
        ].
        block28004814Step = 8 ifTrue: [
            (block28004814Stack2) ifTrue: [block28004814PC := 12] ifFalse: [block28004814PC := 17].
        ].
        block28004814Step = 12 ifTrue: [
            block28004814PC := 13.
        ].
        block28004814Step = 13 ifTrue: [
            block28004814Stack1 := block28004814Arg1.
            block28004814PC := 14.
        ].
        block28004814Step = 14 ifTrue: [
            block28004814Stack2 := true.
            block28004814PC := 15.
        ].
        block28004814Step = 15 ifTrue: [
            block28004814Stack1 := (block28004814Stack1) makeResident: (block28004814Stack2).
            block28004814PC := 17.
        ].
        block28004814Step = 17 ifTrue: [
            block28004814Result := block28004814Stack1.
            block28004814Done := true.
        ].
    ].
    block28004814Result
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


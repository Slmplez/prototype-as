"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022a0c; bytecode file offset 0x92209c"
!ASDTreePane class methodsFor: 'recovered'!
requiredAPIPolicy
    ^#('iconHierarchyPolicy' 'closePane:')
! !

"ASDBase.ic method 0x20054710; bytecode file offset 0x951190"
!ASDTreePane class methodsFor: 'recovered'!
searchStrings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    SearchStrings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2018d1ac; bytecode file offset 0xa89a74"
!ASDTreePane class methodsFor: 'recovered'!
searchStrings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SearchStrings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280d1400Value0 block280d1400Value1 block280d1400Value2 |
    block280d1400Value0 := OrderedCollection.
    block280d1400Value1 := (block280d1400Value0) new.
    block280d1400Value2 := block280d1400Value1.
    SearchStrings := block280d1400Value2.
    block280d1400Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := SearchStrings.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201cb460; bytecode file offset 0xac7d28"
!ASDTreePane class methodsFor: 'recovered'!
searchMode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SearchMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ASDTreePaneSearchOptions.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) optionLastUsedSearchMode: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            SearchMode := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) changed.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d6d70; bytecode file offset 0xbd3640"
!ASDTreePane class methodsFor: 'recovered'!
searchMode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SearchMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280e63d0Stack0 block280e63d0Stack1 block280e63d0Stack2 block280e63d0Stack3 block280e63d0PC block280e63d0Step block280e63d0Done block280e63d0Result |
    block280e63d0Stack0 := self.
    block280e63d0PC := 4.
    block280e63d0Done := false.
    [block280e63d0Done not] whileTrue: [
        block280e63d0Step := block280e63d0PC.
        block280e63d0Step = 4 ifTrue: [
            block280e63d0Stack1 := ASDTreePaneSearchOptions.
            block280e63d0PC := 6.
        ].
        block280e63d0Step = 6 ifTrue: [
            block280e63d0Stack1 := (block280e63d0Stack1) instance.
            block280e63d0PC := 7.
        ].
        block280e63d0Step = 7 ifTrue: [
            block280e63d0Stack1 := (block280e63d0Stack1) optionDefaultSearchMode.
            block280e63d0PC := 9.
        ].
        block280e63d0Step = 9 ifTrue: [
            block280e63d0Stack2 := 99.
            block280e63d0PC := 12.
        ].
        block280e63d0Step = 12 ifTrue: [
            block280e63d0Stack1 := (block280e63d0Stack1) = (block280e63d0Stack2).
            block280e63d0PC := 13.
        ].
        block280e63d0Step = 13 ifTrue: [
            (block280e63d0Stack1) ifTrue: [block280e63d0PC := 16] ifFalse: [block280e63d0PC := 28].
        ].
        block280e63d0Step = 16 ifTrue: [
            block280e63d0Stack1 := ASDTreePaneSearchOptions.
            block280e63d0PC := 18.
        ].
        block280e63d0Step = 18 ifTrue: [
            block280e63d0Stack1 := (block280e63d0Stack1) instance.
            block280e63d0PC := 19.
        ].
        block280e63d0Step = 19 ifTrue: [
            block280e63d0Stack1 := (block280e63d0Stack1) optionLastUsedSearchMode.
            block280e63d0PC := 21.
        ].
        block280e63d0Step = 21 ifTrue: [
            block280e63d0Stack2 := block280e63d0Stack1.
            block280e63d0PC := 22.
        ].
        block280e63d0Step = 22 ifTrue: [
            SearchMode := block280e63d0Stack2.
            block280e63d0PC := 24.
        ].
        block280e63d0Step = 24 ifTrue: [
            block280e63d0PC := 36.
        ].
        block280e63d0Step = 28 ifTrue: [
            block280e63d0Stack1 := ASDTreePaneSearchOptions.
            block280e63d0PC := 30.
        ].
        block280e63d0Step = 30 ifTrue: [
            block280e63d0Stack1 := (block280e63d0Stack1) instance.
            block280e63d0PC := 31.
        ].
        block280e63d0Step = 31 ifTrue: [
            block280e63d0Stack1 := (block280e63d0Stack1) optionDefaultSearchMode.
            block280e63d0PC := 33.
        ].
        block280e63d0Step = 33 ifTrue: [
            block280e63d0Stack2 := block280e63d0Stack1.
            block280e63d0PC := 34.
        ].
        block280e63d0Step = 34 ifTrue: [
            SearchMode := block280e63d0Stack2.
            block280e63d0PC := 36.
        ].
        block280e63d0Step = 36 ifTrue: [
            block280e63d0Result := block280e63d0Stack1.
            block280e63d0Done := true.
        ].
    ].
    block280e63d0Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := SearchMode.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20150840; bytecode file offset 0xa4d108"
!CwTextSearchDialog methodsFor: 'recovered'!
openWithEtasFonts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) textWidget: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            super openWithEtasFonts.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030be74; bytecode file offset 0xc0873c"
!CwTextSearchDialog methodsFor: 'recovered'!
initializeEtasPrompter
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    super initializeEtasPrompter.
    recoveredValue0 := searchText.
    (recoveredValue0) addTabGroup.
    recoveredValue1 := replaceText.
    (recoveredValue1) addTabGroup.
    recoveredValue2 := forwardToggle.
    (recoveredValue2) addTabGroup.
    recoveredValue3 := ('Kli') == ('Call_55459').
    recoveredValue4 := caseToggle.
    (recoveredValue4) addTabGroup.
    recoveredValue5 := wrapToggle.
    (recoveredValue5) addTabGroup.
    recoveredValue6 := searchButton.
    (recoveredValue6) addTabGroup.
    recoveredValue7 := replaceSearchButton.
    (recoveredValue7) addTabGroup.
    recoveredValue8 := replaceButton.
    (recoveredValue8) addTabGroup.
    recoveredValue9 := replaceAllButton.
    (recoveredValue9) addTabGroup.
    recoveredValue10 := closeButton.
    (recoveredValue10) addTabGroup.
    ^self
! !


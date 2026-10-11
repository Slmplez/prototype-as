"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20070ac8; bytecode file offset 0x96d3ec"
!EtasIconListSelectionPrompter methodsFor: 'recovered'!
selectedItems
    | recoveredValue0 |
    recoveredValue0 := selectedItems.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007bc04; bytecode file offset 0x97c330"
!EtasIconListSelectionPrompter methodsFor: 'recovered'!
nextTimeButtonVisible
    ^false
! !

"ASDBase.ic method 0x200c71a8; bytecode file offset 0x9c3a8c"
!EtasIconListSelectionPrompter methodsFor: 'recovered'!
selectedItems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedItems := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010c208; bytecode file offset 0xa08aec"
!EtasIconListSelectionPrompter methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 |
    super initializeAfterCreate.
    recoveredValue0 := (self) list.
    recoveredValue1 := (self) selectedItems.
    (recoveredValue0) selectedItems: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011157c; bytecode file offset 0xa0de3c"
!EtasIconListSelectionPrompter methodsFor: 'recovered'!
listDefaultAction: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) buttons.
    recoveredValue1 := (recoveredValue0) at: (2).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    (self) ok: (recoveredValue1) clientData: (recoveredValue2) callData: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20135cac; bytecode file offset 0xa32570"
!EtasIconListSelectionPrompter methodsFor: 'recovered'!
ok: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super ok: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    recoveredValue3 := (self) list.
    recoveredValue4 := (recoveredValue3) selectedItems.
    selectedItems := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x202fc928; bytecode file offset 0xbf9204"
!EtasIconListSelectionPrompter methodsFor: 'recovered'!
createScrolledListInForm: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'list'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [:block280e91f0Arg1 | 
    | block280e91f0Value0 block280e91f0Value1 block280e91f0Value2 |
    block280e91f0Value0 := block280e91f0Arg1.
    block280e91f0Value1 := block280e91f0Value0.
    (block280e91f0Value1) height: (100).
    block280e91f0Value2 := block280e91f0Value0.
    (block280e91f0Value2) itemHeight: (18).
    block280e91f0Value0
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            list := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := list.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := XmNvisualInfoCallback.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := 'listVisual:clientData:callData:'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := 'listDefaultAction:clientData:callData:'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := list.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


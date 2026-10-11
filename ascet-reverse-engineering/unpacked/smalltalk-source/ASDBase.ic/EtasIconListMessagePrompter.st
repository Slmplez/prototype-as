"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200706d0; bytecode file offset 0x96d06c"
!EtasIconListMessagePrompter methodsFor: 'recovered'!
visualCallbackStringBlock
    | recoveredValue0 |
    recoveredValue0 := visualCallbackStringBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200708e4; bytecode file offset 0x96d218"
!EtasIconListMessagePrompter methodsFor: 'recovered'!
visualCallbackIconBlock
    | recoveredValue0 |
    recoveredValue0 := visualCallbackIconBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c6d00; bytecode file offset 0x9c36ec"
!EtasIconListMessagePrompter methodsFor: 'recovered'!
visualCallbackStringBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visualCallbackStringBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6f7c; bytecode file offset 0x9c38d8"
!EtasIconListMessagePrompter methodsFor: 'recovered'!
visualCallbackIconBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visualCallbackIconBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201793a8; bytecode file offset 0xa75c74"
!EtasIconListMessagePrompter methodsFor: 'recovered'!
listVisual: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (self) visualCallbackStringBlock.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) item.
    recoveredValue4 := (recoveredValue1) value: (recoveredValue3).
    (recoveredValue0) label: (recoveredValue4).
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (self) visualCallbackIconBlock.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue7) item.
    recoveredValue9 := (recoveredValue6) value: (recoveredValue8).
    (recoveredValue5) icon: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x20297874; bytecode file offset 0xb94148"
!EtasIconListMessagePrompter methodsFor: 'recovered'!
createScrolledListInForm: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack3 := [:block280e3424Arg1 | 
    | block280e3424Value0 block280e3424Value1 block280e3424Value2 |
    block280e3424Value0 := block280e3424Arg1.
    block280e3424Value1 := block280e3424Value0.
    (block280e3424Value1) height: (100).
    block280e3424Value2 := block280e3424Value0.
    (block280e3424Value2) itemHeight: (18).
    block280e3424Value0
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
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := 'listVisual:clientData:callData:'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := list.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


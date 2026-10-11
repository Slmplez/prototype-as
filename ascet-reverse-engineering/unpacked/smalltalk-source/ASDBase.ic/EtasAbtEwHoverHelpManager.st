"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200fa600; bytecode file offset 0x9f6ec4"
!EtasAbtEwHoverHelpManager methodsFor: 'recovered'!
createTagWidgets
    | recoveredValue0 recoveredValue1 |
    super createTagWidgets.
    recoveredValue0 := tagLabelWidget.
    recoveredValue1 := (recoveredValue0) osWidget.
    (recoveredValue1) setTooltipFont.
    ^self
! !

"ASDBase.ic method 0x202ed0a4; bytecode file offset 0xbe9984"
!EtasAbtEwHoverHelpManager methodsFor: 'recovered'!
keyPressed: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_87080'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := recoveredArg2.
    recoveredBlock10Value2 := recoveredArg3.
    recoveredBlock10Value3 := super keyPressed: (recoveredBlock10Value0) clientData: (recoveredBlock10Value1) callData: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := [:block280e7ed0Arg1 | 
    | block280e7ed0Value0 block280e7ed0Value1 block280e7ed0Value2 |
    block280e7ed0Value0 := System.
    (block280e7ed0Value0) logError: ('error in hoversupport...').
    block280e7ed0Value1 := block280e7ed0Arg1.
    block280e7ed0Value2 := (block280e7ed0Value1) exitWith: (nil).
    block280e7ed0Value2
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


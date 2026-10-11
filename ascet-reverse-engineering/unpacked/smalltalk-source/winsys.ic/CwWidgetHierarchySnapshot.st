"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20002ac0; bytecode file offset 0x7ed00"
!CwWidgetHierarchySnapshot methodsFor: 'recovered'!
owner
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"winsys.ic method 0x20002d68; bytecode file offset 0x7efc0"
!CwWidgetHierarchySnapshot methodsFor: 'recovered'!
widgetSnapshots
    | recoveredValue0 |
    recoveredValue0 := widgetSnapshots.
    ^recoveredValue0
! !

"winsys.ic method 0x20002e28; bytecode file offset 0x7f220"
!CwWidgetHierarchySnapshot methodsFor: 'recovered'!
restartSelector
    | recoveredValue0 |
    recoveredValue0 := restartSelector.
    ^recoveredValue0
! !

"winsys.ic method 0x20006cfc; bytecode file offset 0x82ec8"
!CwWidgetHierarchySnapshot methodsFor: 'recovered'!
restart
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (self) restartSelector.
    (recoveredValue0) perform: (recoveredValue1) with: (self).
    ^self
! !

"winsys.ic method 0x2000721c; bytecode file offset 0x8346c"
!CwWidgetHierarchySnapshot methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000732c; bytecode file offset 0x836b4"
!CwWidgetHierarchySnapshot methodsFor: 'recovered'!
widgetSnapshots: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    widgetSnapshots := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007614; bytecode file offset 0x838d4"
!CwWidgetHierarchySnapshot methodsFor: 'recovered'!
restartSelector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    restartSelector := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000cf40; bytecode file offset 0x8910c"
!CwWidgetHierarchySnapshot methodsFor: 'recovered'!
relocalize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetSnapshots.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28008aa0Arg1 | 
    | block28008aa0Value0 block28008aa0Value1 |
    block28008aa0Value0 := block28008aa0Arg1.
    block28008aa0Value1 := (block28008aa0Value0) relocalize.
    block28008aa0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20023974; bytecode file offset 0x9fb5c"
!CwWidgetHierarchySnapshot methodsFor: 'recovered'!
restoreResourcesForWidgets: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSnapshots.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := NlsCatCWa.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSnapshots.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:block28009118Arg1 :block28009118Arg2 | 
    | block28009118Value0 block28009118Value1 block28009118Value2 |
    block28009118Value0 := block28009118Arg2.
    block28009118Value1 := [:block28009118Block7Arg1 | 
    | block28009118Block7Value0 block28009118Block7Value1 block28009118Block7Value2 block28009118Block7Value3 |
    block28009118Block7Value0 := block28009118Block7Arg1.
    block28009118Block7Value1 := block28009118Arg1.
    block28009118Block7Value2 := (block28009118Block7Value1) resourceSnapshots.
    block28009118Block7Value3 := (block28009118Block7Value0) restoreResourcesFromSnapshots: (block28009118Block7Value2).
    block28009118Block7Value3
].
    block28009118Value2 := (block28009118Value0) setValuesBlock: (block28009118Value1).
    block28009118Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) with: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


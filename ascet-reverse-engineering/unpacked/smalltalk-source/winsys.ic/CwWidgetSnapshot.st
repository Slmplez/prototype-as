"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200029b0; bytecode file offset 0x7ed00"
!CwWidgetSnapshot methodsFor: 'recovered'!
widgetReference
    | recoveredValue0 |
    recoveredValue0 := widgetReference.
    ^recoveredValue0
! !

"winsys.ic method 0x20002dd8; bytecode file offset 0x7efc0"
!CwWidgetSnapshot methodsFor: 'recovered'!
resourceSnapshots
    | recoveredValue0 |
    recoveredValue0 := resourceSnapshots.
    ^recoveredValue0
! !

"winsys.ic method 0x20007244; bytecode file offset 0x8346c"
!CwWidgetSnapshot methodsFor: 'recovered'!
widgetReference: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    widgetReference := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000747c; bytecode file offset 0x836b4"
!CwWidgetSnapshot methodsFor: 'recovered'!
resourceSnapshots: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    resourceSnapshots := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000cf2c; bytecode file offset 0x8910c"
!CwWidgetSnapshot methodsFor: 'recovered'!
relocalize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := resourceSnapshots.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28008a7cArg1 | 
    | block28008a7cValue0 block28008a7cValue1 |
    block28008a7cValue0 := block28008a7cArg1.
    block28008a7cValue1 := (block28008a7cValue0) relocalize.
    block28008a7cValue1
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


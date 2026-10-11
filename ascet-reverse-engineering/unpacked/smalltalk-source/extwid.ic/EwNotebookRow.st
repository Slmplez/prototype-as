"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000c58; bytecode file offset 0x52154"
!EwNotebookRow methodsFor: 'recovered'!
firstTab
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tabs.
    recoveredValue1 := (recoveredValue0) first.
    ^recoveredValue1
! !

"extwid.ic method 0x20001514; bytecode file offset 0x522e8"
!EwNotebookRow methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := tabs.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"extwid.ic method 0x20001520; bytecode file offset 0x522e8"
!EwNotebookRow methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := tabs.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"extwid.ic method 0x20001c28; bytecode file offset 0x52a74"
!EwNotebookRow methodsFor: 'recovered'!
includes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) tabs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x20002664; bytecode file offset 0x534f0"
!EwNotebookRow methodsFor: 'recovered'!
x
    | recoveredValue0 |
    recoveredValue0 := x.
    ^recoveredValue0
! !

"extwid.ic method 0x200027ac; bytecode file offset 0x53678"
!EwNotebookRow methodsFor: 'recovered'!
y
    | recoveredValue0 |
    recoveredValue0 := y.
    ^recoveredValue0
! !

"extwid.ic method 0x20002924; bytecode file offset 0x53810"
!EwNotebookRow methodsFor: 'recovered'!
tabs
    | recoveredValue0 |
    recoveredValue0 := tabs.
    ^recoveredValue0
! !

"extwid.ic method 0x2000595c; bytecode file offset 0x56720"
!EwNotebookRow methodsFor: 'recovered'!
currentWidth: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    currentWidth := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    availableWidth := recoveredValue1.
    ^self
! !

"extwid.ic method 0x200062b0; bytecode file offset 0x5710c"
!EwNotebookRow methodsFor: 'recovered'!
x: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    x := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006470; bytecode file offset 0x57284"
!EwNotebookRow methodsFor: 'recovered'!
y: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    y := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000af40; bytecode file offset 0x5bd0c"
!EwNotebookRow methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    tabs := recoveredValue1.
    currentWidth := 0.
    availableWidth := 0.
    ^self
! !

"extwid.ic method 0x2000b63c; bytecode file offset 0x5c40c"
!EwNotebookRow methodsFor: 'recovered'!
addTab: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) tabs.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := availableWidth.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) width.
    recoveredValue5 := (recoveredValue2) - (recoveredValue4).
    recoveredValue6 := (recoveredValue5) + (-1).
    availableWidth := recoveredValue6.
    ^self
! !

"extwid.ic method 0x2000e1cc; bytecode file offset 0x5ef9c"
!EwNotebookRow methodsFor: 'recovered'!
canAdd: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tabs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := availableWidth.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


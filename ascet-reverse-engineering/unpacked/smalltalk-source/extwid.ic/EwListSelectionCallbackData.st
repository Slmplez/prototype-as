"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20001578; bytecode file offset 0x5233c"
!EwListSelectionCallbackData methodsFor: 'recovered'!
resetSelectedItems
    selectedItems := nil.
    ^self
! !

"extwid.ic method 0x20001988; bytecode file offset 0x52794"
!EwListSelectionCallbackData methodsFor: 'recovered'!
getSelectedItems
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) selectedItems.
    recoveredValue2 := (recoveredValue1) asArray.
    ^recoveredValue2
! !

"extwid.ic method 0x20002c6c; bytecode file offset 0x53ae8"
!EwListSelectionCallbackData methodsFor: 'recovered'!
selectedItemCount
    | recoveredValue0 |
    recoveredValue0 := selectedItemCount.
    ^recoveredValue0
! !

"extwid.ic method 0x20002d74; bytecode file offset 0x53c68"
!EwListSelectionCallbackData methodsFor: 'recovered'!
selectedItemPositions
    | recoveredValue0 |
    recoveredValue0 := selectedItemPositions.
    ^recoveredValue0
! !

"extwid.ic method 0x20002f5c; bytecode file offset 0x53da8"
!EwListSelectionCallbackData methodsFor: 'recovered'!
widget
    | recoveredValue0 |
    recoveredValue0 := widget.
    ^recoveredValue0
! !

"extwid.ic method 0x200067cc; bytecode file offset 0x576a8"
!EwListSelectionCallbackData methodsFor: 'recovered'!
selectedItemCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedItemCount := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000697c; bytecode file offset 0x577e8"
!EwListSelectionCallbackData methodsFor: 'recovered'!
selectedItemPositions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedItemPositions := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006ae8; bytecode file offset 0x578dc"
!EwListSelectionCallbackData methodsFor: 'recovered'!
widget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    widget := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000a1bc; bytecode file offset 0x5af84"
!EwListSelectionCallbackData methodsFor: 'recovered'!
selectedItems
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSelectedItems.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            selectedItems := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := selectedItems.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


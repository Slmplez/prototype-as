"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200002d0; bytecode file offset 0x510b4"
!EwIconAreaTargetAdapter methodsFor: 'recovered'!
insertionEmphasisFrom: recoveredArg1 to: recoveredArg2
    ^self
! !

"extwid.ic method 0x20018c44; bytecode file offset 0x69a28"
!EwIconAreaTargetAdapter methodsFor: 'recovered'!
setTargetInfoOn: recoveredArg1 atX: recoveredArg2 y: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (0) @ (0).
    recoveredValue2 := (recoveredValue0) translateCoords: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) widget.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) x.
    recoveredValue7 := (recoveredValue4) - (recoveredValue6).
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) y.
    recoveredValue11 := (recoveredValue8) - (recoveredValue10).
    recoveredValue12 := (recoveredValue7) @ (recoveredValue11).
    recoveredValue13 := (recoveredValue3) itemAtPoint: (recoveredValue12).
    recoveredLocal2 := recoveredValue13.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := recoveredValue14.
    recoveredValue16 := recoveredLocal2.
    (recoveredValue15) itemUnderCursor: (recoveredValue16).
    (recoveredValue14) insertionIndex: (nil).
    ^self
! !

"extwid.ic method 0x20036cb0; bytecode file offset 0x87af0"
!EwIconAreaTargetAdapter methodsFor: 'recovered'!
configureForDefaultDragAndDrop
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1ER70JN'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := XmNdragOverCallback.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 :recoveredBlock13Arg3 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg3.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg3.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) sourceWidget.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack3 := self.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) widget.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            (recoveredBlock13Stack2 ~~ recoveredBlock13Stack3) ifTrue: [recoveredBlock13PC := 40] ifFalse: [recoveredBlock13PC := 30].
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack2 := Array.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack3 := XmMOVE.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) with: (recoveredBlock13Stack3).
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack2 := #().
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) vote: (recoveredBlock13Stack2).
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := 'value:value:value:'.
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
            recoveredStack1 := XmNdropCallback.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := [:block28005eecArg1 :block28005eecArg2 :block28005eecArg3 | 
    | block28005eecLocal1 block28005eecValue0 block28005eecValue1 block28005eecValue2 block28005eecValue3 block28005eecValue4 block28005eecValue5 block28005eecValue6 block28005eecValue7 block28005eecValue8 block28005eecValue9 block28005eecValue10 block28005eecValue11 block28005eecValue12 block28005eecValue13 block28005eecValue14 block28005eecValue15 block28005eecValue16 block28005eecValue17 block28005eecValue18 block28005eecValue19 block28005eecValue20 block28005eecValue21 |
    block28005eecValue0 := block28005eecArg3.
    block28005eecValue1 := (block28005eecValue0) event.
    block28005eecValue2 := (block28005eecValue1) xRoot.
    block28005eecValue3 := block28005eecArg3.
    block28005eecValue4 := (block28005eecValue3) event.
    block28005eecValue5 := (block28005eecValue4) yRoot.
    block28005eecValue6 := (block28005eecValue2) @ (block28005eecValue5).
    block28005eecValue7 := block28005eecArg1.
    block28005eecValue8 := (block28005eecValue7) widget.
    block28005eecValue9 := (0) @ (0).
    block28005eecValue10 := (block28005eecValue8) translateCoords: (block28005eecValue9).
    block28005eecValue11 := (block28005eecValue6) - (block28005eecValue10).
    block28005eecValue12 := block28005eecArg1.
    block28005eecValue13 := (block28005eecValue12) widget.
    block28005eecValue14 := (block28005eecValue13) visibleOrigin.
    block28005eecValue15 := (block28005eecValue11) + (block28005eecValue14).
    block28005eecLocal1 := block28005eecValue15.
    block28005eecValue16 := block28005eecArg3.
    block28005eecValue17 := (block28005eecValue16) sourceItems.
    block28005eecValue18 := block28005eecArg3.
    block28005eecValue19 := (block28005eecValue18) offsets.
    block28005eecValue20 := [:block28005eecBlock55Arg1 :block28005eecBlock55Arg2 | 
    | block28005eecBlock55Local1 block28005eecBlock55Local2 block28005eecBlock55Stack0 block28005eecBlock55Stack1 block28005eecBlock55Stack2 block28005eecBlock55Stack3 block28005eecBlock55Stack4 block28005eecBlock55Stack5 block28005eecBlock55PC block28005eecBlock55Step block28005eecBlock55Done block28005eecBlock55Result |
    block28005eecBlock55Stack0 := nil.
    block28005eecBlock55PC := 62.
    block28005eecBlock55Done := false.
    [block28005eecBlock55Done not] whileTrue: [
        block28005eecBlock55Step := block28005eecBlock55PC.
        block28005eecBlock55Step = 62 ifTrue: [
            block28005eecBlock55Stack1 := block28005eecArg1.
            block28005eecBlock55PC := 65.
        ].
        block28005eecBlock55Step = 65 ifTrue: [
            block28005eecBlock55Stack1 := (block28005eecBlock55Stack1) widget.
            block28005eecBlock55PC := 67.
        ].
        block28005eecBlock55Step = 67 ifTrue: [
            block28005eecBlock55Stack1 := (block28005eecBlock55Stack1) labelsAreToTheBottom.
            block28005eecBlock55PC := 69.
        ].
        block28005eecBlock55Step = 69 ifTrue: [
            (block28005eecBlock55Stack1) ifTrue: [block28005eecBlock55PC := 72] ifFalse: [block28005eecBlock55PC := 124].
        ].
        block28005eecBlock55Step = 72 ifTrue: [
            block28005eecBlock55Stack1 := block28005eecArg1.
            block28005eecBlock55PC := 75.
        ].
        block28005eecBlock55Step = 75 ifTrue: [
            block28005eecBlock55Stack1 := (block28005eecBlock55Stack1) widget.
            block28005eecBlock55PC := 77.
        ].
        block28005eecBlock55Step = 77 ifTrue: [
            block28005eecBlock55Stack2 := block28005eecBlock55Arg1.
            block28005eecBlock55PC := 78.
        ].
        block28005eecBlock55Step = 78 ifTrue: [
            block28005eecBlock55Stack1 := (block28005eecBlock55Stack1) nodeForItem: (block28005eecBlock55Stack2).
            block28005eecBlock55PC := 80.
        ].
        block28005eecBlock55Step = 80 ifTrue: [
            block28005eecBlock55Local2 := block28005eecBlock55Stack1.
            block28005eecBlock55PC := 81.
        ].
        block28005eecBlock55Step = 81 ifTrue: [
            block28005eecBlock55Stack1 := block28005eecBlock55Local2.
            block28005eecBlock55PC := 82.
        ].
        block28005eecBlock55Step = 82 ifTrue: [
            block28005eecBlock55Stack1 := (block28005eecBlock55Stack1) iconBox.
            block28005eecBlock55PC := 84.
        ].
        block28005eecBlock55Step = 84 ifTrue: [
            block28005eecBlock55Stack1 := (block28005eecBlock55Stack1) origin.
            block28005eecBlock55PC := 86.
        ].
        block28005eecBlock55Step = 86 ifTrue: [
            block28005eecBlock55Stack1 := (block28005eecBlock55Stack1) x.
            block28005eecBlock55PC := 88.
        ].
        block28005eecBlock55Step = 88 ifTrue: [
            block28005eecBlock55Stack2 := block28005eecBlock55Local2.
            block28005eecBlock55PC := 89.
        ].
        block28005eecBlock55Step = 89 ifTrue: [
            block28005eecBlock55Stack2 := (block28005eecBlock55Stack2) left.
            block28005eecBlock55PC := 91.
        ].
        block28005eecBlock55Step = 91 ifTrue: [
            block28005eecBlock55Stack1 := (block28005eecBlock55Stack1) - (block28005eecBlock55Stack2).
            block28005eecBlock55PC := 92.
        ].
        block28005eecBlock55Step = 92 ifTrue: [
            block28005eecBlock55Stack2 := 0.
            block28005eecBlock55PC := 94.
        ].
        block28005eecBlock55Step = 94 ifTrue: [
            block28005eecBlock55Stack1 := (block28005eecBlock55Stack1) max: (block28005eecBlock55Stack2).
            block28005eecBlock55PC := 96.
        ].
        block28005eecBlock55Step = 96 ifTrue: [
            block28005eecBlock55Stack2 := 0.
            block28005eecBlock55PC := 98.
        ].
        block28005eecBlock55Step = 98 ifTrue: [
            block28005eecBlock55Stack1 := (block28005eecBlock55Stack1) @ (block28005eecBlock55Stack2).
            block28005eecBlock55PC := 100.
        ].
        block28005eecBlock55Step = 100 ifTrue: [
            block28005eecBlock55Local1 := block28005eecBlock55Stack1.
            block28005eecBlock55PC := 101.
        ].
        block28005eecBlock55Step = 101 ifTrue: [
            block28005eecBlock55Stack1 := block28005eecArg1.
            block28005eecBlock55PC := 104.
        ].
        block28005eecBlock55Step = 104 ifTrue: [
            block28005eecBlock55Stack1 := (block28005eecBlock55Stack1) widget.
            block28005eecBlock55PC := 106.
        ].
        block28005eecBlock55Step = 106 ifTrue: [
            block28005eecBlock55Stack2 := block28005eecBlock55Arg1.
            block28005eecBlock55PC := 107.
        ].
        block28005eecBlock55Step = 107 ifTrue: [
            block28005eecBlock55Stack3 := block28005eecBlock55Arg2.
            block28005eecBlock55PC := 108.
        ].
        block28005eecBlock55Step = 108 ifTrue: [
            block28005eecBlock55Stack4 := block28005eecLocal1.
            block28005eecBlock55PC := 111.
        ].
        block28005eecBlock55Step = 111 ifTrue: [
            block28005eecBlock55Stack3 := (block28005eecBlock55Stack3) + (block28005eecBlock55Stack4).
            block28005eecBlock55PC := 112.
        ].
        block28005eecBlock55Step = 112 ifTrue: [
            block28005eecBlock55Stack4 := block28005eecBlock55Local1.
            block28005eecBlock55PC := 113.
        ].
        block28005eecBlock55Step = 113 ifTrue: [
            block28005eecBlock55Stack3 := (block28005eecBlock55Stack3) - (block28005eecBlock55Stack4).
            block28005eecBlock55PC := 114.
        ].
        block28005eecBlock55Step = 114 ifTrue: [
            block28005eecBlock55Stack1 := (block28005eecBlock55Stack1) moveItem: (block28005eecBlock55Stack2) to: (block28005eecBlock55Stack3).
            block28005eecBlock55PC := 116.
        ].
        block28005eecBlock55Step = 116 ifTrue: [
            block28005eecBlock55Stack2 := nil.
            block28005eecBlock55PC := 117.
        ].
        block28005eecBlock55Step = 117 ifTrue: [
            block28005eecBlock55Stack3 := block28005eecBlock55Stack2.
            block28005eecBlock55PC := 118.
        ].
        block28005eecBlock55Step = 118 ifTrue: [
            block28005eecBlock55Local2 := block28005eecBlock55Stack3.
            block28005eecBlock55PC := 119.
        ].
        block28005eecBlock55Step = 119 ifTrue: [
            block28005eecBlock55Local1 := block28005eecBlock55Stack2.
            block28005eecBlock55PC := 120.
        ].
        block28005eecBlock55Step = 120 ifTrue: [
            block28005eecBlock55PC := 137.
        ].
        block28005eecBlock55Step = 124 ifTrue: [
            block28005eecBlock55Stack1 := block28005eecArg1.
            block28005eecBlock55PC := 127.
        ].
        block28005eecBlock55Step = 127 ifTrue: [
            block28005eecBlock55Stack1 := (block28005eecBlock55Stack1) widget.
            block28005eecBlock55PC := 129.
        ].
        block28005eecBlock55Step = 129 ifTrue: [
            block28005eecBlock55Stack2 := block28005eecBlock55Arg1.
            block28005eecBlock55PC := 130.
        ].
        block28005eecBlock55Step = 130 ifTrue: [
            block28005eecBlock55Stack3 := block28005eecBlock55Arg2.
            block28005eecBlock55PC := 131.
        ].
        block28005eecBlock55Step = 131 ifTrue: [
            block28005eecBlock55Stack4 := block28005eecLocal1.
            block28005eecBlock55PC := 134.
        ].
        block28005eecBlock55Step = 134 ifTrue: [
            block28005eecBlock55Stack3 := (block28005eecBlock55Stack3) + (block28005eecBlock55Stack4).
            block28005eecBlock55PC := 135.
        ].
        block28005eecBlock55Step = 135 ifTrue: [
            block28005eecBlock55Stack1 := (block28005eecBlock55Stack1) moveItem: (block28005eecBlock55Stack2) to: (block28005eecBlock55Stack3).
            block28005eecBlock55PC := 137.
        ].
        block28005eecBlock55Step = 137 ifTrue: [
            block28005eecBlock55Result := block28005eecBlock55Stack1.
            block28005eecBlock55Done := true.
        ].
    ].
    block28005eecBlock55Result
].
    block28005eecValue21 := (block28005eecValue17) with: (block28005eecValue19) do: (block28005eecValue20).
    block28005eecValue21
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := 'value:value:value:'.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


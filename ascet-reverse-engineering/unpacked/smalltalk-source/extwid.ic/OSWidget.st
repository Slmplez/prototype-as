"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200340a8; bytecode file offset 0x84ed4"
!OSWidget methodsFor: 'recovered'!
ewScroll: recoveredArg1 destX: recoveredArg2 destY: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := handle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SwInvalidate.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := SwErase.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := SwScrollchildren.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := OSRect.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) top.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := (recoveredStack5) bottom.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) setRect: (recoveredStack2) nTop: (recoveredStack3) nRight: (recoveredStack4) nBottom: (recoveredStack5).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := handle.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := (recoveredStack4) top.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack8 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) scrollWindowEx: (recoveredStack2) dy: (recoveredStack3) lprcScroll: (recoveredStack4) lprcClip: (recoveredStack5) hrgnUpdate: (recoveredStack6) lprcUpdate: (recoveredStack7) fuScroll: (recoveredStack8).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) isComposite.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := [:recoveredBlock95Arg1 | 
    | recoveredBlock95Local1 recoveredBlock95Stack0 recoveredBlock95Stack1 recoveredBlock95Stack2 recoveredBlock95Stack3 recoveredBlock95Stack4 recoveredBlock95Stack5 recoveredBlock95Stack6 recoveredBlock95PC recoveredBlock95Step recoveredBlock95Done recoveredBlock95Result |
    recoveredBlock95Stack0 := self.
    recoveredBlock95PC := 102.
    recoveredBlock95Done := false.
    [recoveredBlock95Done not] whileTrue: [
        recoveredBlock95Step := recoveredBlock95PC.
        recoveredBlock95Step = 102 ifTrue: [
            recoveredBlock95Stack1 := recoveredArg1.
            recoveredBlock95PC := 105.
        ].
        recoveredBlock95Step = 105 ifTrue: [
            recoveredBlock95Stack2 := recoveredBlock95Arg1.
            recoveredBlock95PC := 106.
        ].
        recoveredBlock95Step = 106 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) x.
            recoveredBlock95PC := 108.
        ].
        recoveredBlock95Step = 108 ifTrue: [
            recoveredBlock95Stack3 := recoveredBlock95Arg1.
            recoveredBlock95PC := 109.
        ].
        recoveredBlock95Step = 109 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) y.
            recoveredBlock95PC := 111.
        ].
        recoveredBlock95Step = 111 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) @ (recoveredBlock95Stack3).
            recoveredBlock95PC := 113.
        ].
        recoveredBlock95Step = 113 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) containsPoint: (recoveredBlock95Stack2).
            recoveredBlock95PC := 115.
        ].
        recoveredBlock95Step = 115 ifTrue: [
            recoveredBlock95Stack2 := recoveredArg1.
            recoveredBlock95PC := 118.
        ].
        recoveredBlock95Step = 118 ifTrue: [
            recoveredBlock95Stack3 := recoveredBlock95Arg1.
            recoveredBlock95PC := 119.
        ].
        recoveredBlock95Step = 119 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) x.
            recoveredBlock95PC := 121.
        ].
        recoveredBlock95Step = 121 ifTrue: [
            recoveredBlock95Stack4 := recoveredBlock95Arg1.
            recoveredBlock95PC := 122.
        ].
        recoveredBlock95Step = 122 ifTrue: [
            recoveredBlock95Stack4 := (recoveredBlock95Stack4) width.
            recoveredBlock95PC := 124.
        ].
        recoveredBlock95Step = 124 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) + (recoveredBlock95Stack4).
            recoveredBlock95PC := 125.
        ].
        recoveredBlock95Step = 125 ifTrue: [
            recoveredBlock95Stack4 := recoveredBlock95Arg1.
            recoveredBlock95PC := 126.
        ].
        recoveredBlock95Step = 126 ifTrue: [
            recoveredBlock95Stack4 := (recoveredBlock95Stack4) y.
            recoveredBlock95PC := 128.
        ].
        recoveredBlock95Step = 128 ifTrue: [
            recoveredBlock95Stack5 := recoveredBlock95Arg1.
            recoveredBlock95PC := 129.
        ].
        recoveredBlock95Step = 129 ifTrue: [
            recoveredBlock95Stack5 := (recoveredBlock95Stack5) height.
            recoveredBlock95PC := 131.
        ].
        recoveredBlock95Step = 131 ifTrue: [
            recoveredBlock95Stack4 := (recoveredBlock95Stack4) + (recoveredBlock95Stack5).
            recoveredBlock95PC := 132.
        ].
        recoveredBlock95Step = 132 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) @ (recoveredBlock95Stack4).
            recoveredBlock95PC := 134.
        ].
        recoveredBlock95Step = 134 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) containsPoint: (recoveredBlock95Stack3).
            recoveredBlock95PC := 136.
        ].
        recoveredBlock95Step = 136 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) xor: (recoveredBlock95Stack2).
            recoveredBlock95PC := 138.
        ].
        recoveredBlock95Step = 138 ifTrue: [
            recoveredBlock95Local1 := recoveredBlock95Stack1.
            recoveredBlock95PC := 139.
        ].
        recoveredBlock95Step = 139 ifTrue: [
            recoveredBlock95Stack1 := recoveredBlock95Arg1.
            recoveredBlock95PC := 140.
        ].
        recoveredBlock95Step = 140 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) isShell.
            recoveredBlock95PC := 142.
        ].
        recoveredBlock95Step = 142 ifTrue: [
            (recoveredBlock95Stack1) ifTrue: [recoveredBlock95PC := 149] ifFalse: [recoveredBlock95PC := 146].
        ].
        recoveredBlock95Step = 146 ifTrue: [
            recoveredBlock95Stack1 := recoveredBlock95Arg1.
            recoveredBlock95PC := 147.
        ].
        recoveredBlock95Step = 147 ifTrue: [
            (recoveredBlock95Stack1) updateRect.
            recoveredBlock95PC := 149.
        ].
        recoveredBlock95Step = 149 ifTrue: [
            recoveredBlock95Stack1 := nil.
            recoveredBlock95PC := 150.
        ].
        recoveredBlock95Step = 150 ifTrue: [
            recoveredBlock95Stack2 := recoveredBlock95Local1.
            recoveredBlock95PC := 151.
        ].
        recoveredBlock95Step = 151 ifTrue: [
            (recoveredBlock95Stack2) ifTrue: [recoveredBlock95PC := 154] ifFalse: [recoveredBlock95PC := 161].
        ].
        recoveredBlock95Step = 154 ifTrue: [
            recoveredBlock95PC := 155.
        ].
        recoveredBlock95Step = 155 ifTrue: [
            recoveredBlock95Stack1 := recoveredBlock95Arg1.
            recoveredBlock95PC := 156.
        ].
        recoveredBlock95Step = 156 ifTrue: [
            recoveredBlock95Stack2 := recoveredBlock95Stack1.
            recoveredBlock95PC := 157.
        ].
        recoveredBlock95Step = 157 ifTrue: [
            (recoveredBlock95Stack2) resizeAllChildren.
            recoveredBlock95PC := 159.
        ].
        recoveredBlock95Step = 159 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) redrawAll.
            recoveredBlock95PC := 161.
        ].
        recoveredBlock95Step = 161 ifTrue: [
            recoveredBlock95Result := recoveredBlock95Stack1.
            recoveredBlock95Done := true.
        ].
    ].
    recoveredBlock95Result
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !


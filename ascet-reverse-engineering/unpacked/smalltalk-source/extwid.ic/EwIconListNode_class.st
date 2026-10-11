"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x2002ed1c; bytecode file offset 0x7fb1c"
!EwIconListNode class methodsFor: 'recovered'!
getItemHeightFor: recoveredArg1 at: recoveredArg2 in: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemHeight.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemHeight.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) getVisualInfoFor: (recoveredStack2) position: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualInfoCalldata.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) icon.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualInfoCalldata.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) rc.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) ewHeightUsing: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) rc.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) ewHeightUsing: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) emphasis.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) emphasisPolicy.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := XmTOGETHER.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelOrientation.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := XmRIGHT.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) marginHeight.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := (recoveredStack2) marginHeight.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) innerMargin.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !


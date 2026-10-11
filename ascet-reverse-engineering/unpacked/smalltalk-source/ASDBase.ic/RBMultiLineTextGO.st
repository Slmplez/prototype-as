"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006ebac; bytecode file offset 0x96b8a0"
!RBMultiLineTextGO methodsFor: 'recovered'!
text
    | recoveredValue0 |
    recoveredValue0 := text.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2019bd34; bytecode file offset 0xa98670"
!RBMultiLineTextGO methodsFor: 'recovered'!
changeToActiveState: recoveredArg1 display: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBUnmovableWrapper.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWith: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphObject: (recoveredStack2) changeToSensitivePointWrapper: (recoveredStack3) display: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b046c; bytecode file offset 0xbacd50"
!RBMultiLineTextGO methodsFor: 'recovered'!
doubleClickAction
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDBDECommentDialog.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) text.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := 'Edit Comment'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := (recoveredStack5) getBDEController.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := (recoveredStack5) itemIsModifiable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := (recoveredStack5) not.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack6 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2) text: (recoveredStack3) title: (recoveredStack4) readOnly: (recoveredStack5) useDefaults: (recoveredStack6).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptAtCurrentMousePosition.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) changeStarted.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) text: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) giveRedisplayRects.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) displayRects: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053873c; bytecode file offset 0xe3504c"
!RBMultiLineTextGO methodsFor: 'recovered'!
logicFrame
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) font.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) queryFont.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidth: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) text.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := Character.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubStrings: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Local1 recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37Stack4 recoveredBlock37Stack5 recoveredBlock37Stack6 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack2 := self.
            recoveredBlock37PC := 46.
        ].
        recoveredBlock37Step = 46 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) font.
            recoveredBlock37PC := 47.
        ].
        recoveredBlock37Step = 47 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) queryFont.
            recoveredBlock37PC := 48.
        ].
        recoveredBlock37Step = 48 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Arg1.
            recoveredBlock37PC := 49.
        ].
        recoveredBlock37Step = 49 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) getReplacedTabString.
            recoveredBlock37PC := 51.
        ].
        recoveredBlock37Step = 51 ifTrue: [
            recoveredBlock37Stack4 := CldtConstants.
            recoveredBlock37PC := 53.
        ].
        recoveredBlock37Step = 53 ifTrue: [
            recoveredBlock37Stack5 := 'Cr'.
            recoveredBlock37PC := 55.
        ].
        recoveredBlock37Step = 55 ifTrue: [
            recoveredBlock37Stack4 := (recoveredBlock37Stack4) at: (recoveredBlock37Stack5).
            recoveredBlock37PC := 57.
        ].
        recoveredBlock37Step = 57 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) upToLast: (recoveredBlock37Stack4).
            recoveredBlock37PC := 59.
        ].
        recoveredBlock37Step = 59 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) textWidth: (recoveredBlock37Stack3).
            recoveredBlock37PC := 61.
        ].
        recoveredBlock37Step = 61 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Stack2.
            recoveredBlock37PC := 62.
        ].
        recoveredBlock37Step = 62 ifTrue: [
            recoveredBlock37Local1 := recoveredBlock37Stack3.
            recoveredBlock37PC := 63.
        ].
        recoveredBlock37Step = 63 ifTrue: [
            recoveredBlock37Stack3 := recoveredLocal5.
            recoveredBlock37PC := 66.
        ].
        recoveredBlock37Step = 66 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) > (recoveredBlock37Stack3).
            recoveredBlock37PC := 67.
        ].
        recoveredBlock37Step = 67 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 70] ifFalse: [recoveredBlock37PC := 76].
        ].
        recoveredBlock37Step = 70 ifTrue: [
            recoveredBlock37PC := 71.
        ].
        recoveredBlock37Step = 71 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local1.
            recoveredBlock37PC := 72.
        ].
        recoveredBlock37Step = 72 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Stack1.
            recoveredBlock37PC := 73.
        ].
        recoveredBlock37Step = 73 ifTrue: [
            recoveredLocal5 := recoveredBlock37Stack2.
            recoveredBlock37PC := 76.
        ].
        recoveredBlock37Step = 76 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) font.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) queryFont.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) alignment.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := 'TaCenter'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) alignment.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := 'TaLeft'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) alignment.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := 'TaRight'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) corner: (recoveredStack1).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205694ac; bytecode file offset 0xe65de0"
!RBMultiLineTextGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) initializeGC.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) displayDebuggingPoint: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineStyle.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := RBLineStyle.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) lineStyle: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) setGC: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) font.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) queryFont.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) text.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := Character.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubStrings: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:recoveredBlock84Arg1 :recoveredBlock84Arg2 | 
    | recoveredBlock84Stack0 recoveredBlock84Stack1 recoveredBlock84Stack2 recoveredBlock84Stack3 recoveredBlock84Stack4 recoveredBlock84Stack5 recoveredBlock84Stack6 recoveredBlock84Stack7 recoveredBlock84PC recoveredBlock84Step recoveredBlock84Done recoveredBlock84Result |
    recoveredBlock84Stack0 := self.
    recoveredBlock84PC := 90.
    recoveredBlock84Done := false.
    [recoveredBlock84Done not] whileTrue: [
        recoveredBlock84Step := recoveredBlock84PC.
        recoveredBlock84Step = 90 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) alignment.
            recoveredBlock84PC := 92.
        ].
        recoveredBlock84Step = 92 ifTrue: [
            recoveredBlock84Stack1 := 'TaCenter'.
            recoveredBlock84PC := 94.
        ].
        recoveredBlock84Step = 94 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) = (recoveredBlock84Stack1).
            recoveredBlock84PC := 95.
        ].
        recoveredBlock84Step = 95 ifTrue: [
            (recoveredBlock84Stack0) ifTrue: [recoveredBlock84PC := 98] ifFalse: [recoveredBlock84PC := 134].
        ].
        recoveredBlock84Step = 98 ifTrue: [
            recoveredBlock84Stack0 := self.
            recoveredBlock84PC := 99.
        ].
        recoveredBlock84Step = 99 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) position.
            recoveredBlock84PC := 100.
        ].
        recoveredBlock84Step = 100 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) x.
            recoveredBlock84PC := 102.
        ].
        recoveredBlock84Step = 102 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal2.
            recoveredBlock84PC := 105.
        ].
        recoveredBlock84Step = 105 ifTrue: [
            recoveredBlock84Stack2 := 2.
            recoveredBlock84PC := 107.
        ].
        recoveredBlock84Step = 107 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) // (recoveredBlock84Stack2).
            recoveredBlock84PC := 108.
        ].
        recoveredBlock84Step = 108 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) - (recoveredBlock84Stack1).
            recoveredBlock84PC := 109.
        ].
        recoveredBlock84Step = 109 ifTrue: [
            recoveredBlock84Stack1 := self.
            recoveredBlock84PC := 110.
        ].
        recoveredBlock84Step = 110 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) position.
            recoveredBlock84PC := 111.
        ].
        recoveredBlock84Step = 111 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) y.
            recoveredBlock84PC := 113.
        ].
        recoveredBlock84Step = 113 ifTrue: [
            recoveredBlock84Stack2 := recoveredLocal1.
            recoveredBlock84PC := 116.
        ].
        recoveredBlock84Step = 116 ifTrue: [
            recoveredBlock84Stack3 := 4.
            recoveredBlock84PC := 118.
        ].
        recoveredBlock84Step = 118 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) // (recoveredBlock84Stack3).
            recoveredBlock84PC := 119.
        ].
        recoveredBlock84Step = 119 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) - (recoveredBlock84Stack2).
            recoveredBlock84PC := 120.
        ].
        recoveredBlock84Step = 120 ifTrue: [
            recoveredBlock84Stack2 := recoveredBlock84Arg2.
            recoveredBlock84PC := 121.
        ].
        recoveredBlock84Step = 121 ifTrue: [
            recoveredBlock84Stack3 := recoveredLocal1.
            recoveredBlock84PC := 124.
        ].
        recoveredBlock84Step = 124 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) * (recoveredBlock84Stack3).
            recoveredBlock84PC := 125.
        ].
        recoveredBlock84Step = 125 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) + (recoveredBlock84Stack2).
            recoveredBlock84PC := 126.
        ].
        recoveredBlock84Step = 126 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) @ (recoveredBlock84Stack1).
            recoveredBlock84PC := 128.
        ].
        recoveredBlock84Step = 128 ifTrue: [
            recoveredLocal3 := recoveredBlock84Stack0.
            recoveredBlock84PC := 131.
        ].
        recoveredBlock84Step = 131 ifTrue: [
            recoveredBlock84PC := 204.
        ].
        recoveredBlock84Step = 134 ifTrue: [
            recoveredBlock84Stack0 := self.
            recoveredBlock84PC := 135.
        ].
        recoveredBlock84Step = 135 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) alignment.
            recoveredBlock84PC := 137.
        ].
        recoveredBlock84Step = 137 ifTrue: [
            recoveredBlock84Stack1 := 'TaRight'.
            recoveredBlock84PC := 139.
        ].
        recoveredBlock84Step = 139 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) = (recoveredBlock84Stack1).
            recoveredBlock84PC := 140.
        ].
        recoveredBlock84Step = 140 ifTrue: [
            (recoveredBlock84Stack0) ifTrue: [recoveredBlock84PC := 144] ifFalse: [recoveredBlock84PC := 178].
        ].
        recoveredBlock84Step = 144 ifTrue: [
            recoveredBlock84Stack0 := self.
            recoveredBlock84PC := 145.
        ].
        recoveredBlock84Step = 145 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) position.
            recoveredBlock84PC := 146.
        ].
        recoveredBlock84Step = 146 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) x.
            recoveredBlock84PC := 148.
        ].
        recoveredBlock84Step = 148 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal2.
            recoveredBlock84PC := 151.
        ].
        recoveredBlock84Step = 151 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) - (recoveredBlock84Stack1).
            recoveredBlock84PC := 152.
        ].
        recoveredBlock84Step = 152 ifTrue: [
            recoveredBlock84Stack1 := self.
            recoveredBlock84PC := 153.
        ].
        recoveredBlock84Step = 153 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) position.
            recoveredBlock84PC := 154.
        ].
        recoveredBlock84Step = 154 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) y.
            recoveredBlock84PC := 156.
        ].
        recoveredBlock84Step = 156 ifTrue: [
            recoveredBlock84Stack2 := recoveredLocal1.
            recoveredBlock84PC := 159.
        ].
        recoveredBlock84Step = 159 ifTrue: [
            recoveredBlock84Stack3 := 4.
            recoveredBlock84PC := 161.
        ].
        recoveredBlock84Step = 161 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) // (recoveredBlock84Stack3).
            recoveredBlock84PC := 162.
        ].
        recoveredBlock84Step = 162 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) - (recoveredBlock84Stack2).
            recoveredBlock84PC := 163.
        ].
        recoveredBlock84Step = 163 ifTrue: [
            recoveredBlock84Stack2 := recoveredBlock84Arg2.
            recoveredBlock84PC := 164.
        ].
        recoveredBlock84Step = 164 ifTrue: [
            recoveredBlock84Stack3 := recoveredLocal1.
            recoveredBlock84PC := 167.
        ].
        recoveredBlock84Step = 167 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) * (recoveredBlock84Stack3).
            recoveredBlock84PC := 168.
        ].
        recoveredBlock84Step = 168 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) + (recoveredBlock84Stack2).
            recoveredBlock84PC := 169.
        ].
        recoveredBlock84Step = 169 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) @ (recoveredBlock84Stack1).
            recoveredBlock84PC := 171.
        ].
        recoveredBlock84Step = 171 ifTrue: [
            recoveredLocal3 := recoveredBlock84Stack0.
            recoveredBlock84PC := 174.
        ].
        recoveredBlock84Step = 174 ifTrue: [
            recoveredBlock84PC := 204.
        ].
        recoveredBlock84Step = 178 ifTrue: [
            recoveredBlock84Stack0 := self.
            recoveredBlock84PC := 179.
        ].
        recoveredBlock84Step = 179 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) position.
            recoveredBlock84PC := 180.
        ].
        recoveredBlock84Step = 180 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) x.
            recoveredBlock84PC := 182.
        ].
        recoveredBlock84Step = 182 ifTrue: [
            recoveredBlock84Stack1 := self.
            recoveredBlock84PC := 183.
        ].
        recoveredBlock84Step = 183 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) position.
            recoveredBlock84PC := 184.
        ].
        recoveredBlock84Step = 184 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) y.
            recoveredBlock84PC := 186.
        ].
        recoveredBlock84Step = 186 ifTrue: [
            recoveredBlock84Stack2 := recoveredLocal1.
            recoveredBlock84PC := 189.
        ].
        recoveredBlock84Step = 189 ifTrue: [
            recoveredBlock84Stack3 := 4.
            recoveredBlock84PC := 191.
        ].
        recoveredBlock84Step = 191 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) // (recoveredBlock84Stack3).
            recoveredBlock84PC := 192.
        ].
        recoveredBlock84Step = 192 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) - (recoveredBlock84Stack2).
            recoveredBlock84PC := 193.
        ].
        recoveredBlock84Step = 193 ifTrue: [
            recoveredBlock84Stack2 := recoveredBlock84Arg2.
            recoveredBlock84PC := 194.
        ].
        recoveredBlock84Step = 194 ifTrue: [
            recoveredBlock84Stack3 := recoveredLocal1.
            recoveredBlock84PC := 197.
        ].
        recoveredBlock84Step = 197 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) * (recoveredBlock84Stack3).
            recoveredBlock84PC := 198.
        ].
        recoveredBlock84Step = 198 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) + (recoveredBlock84Stack2).
            recoveredBlock84PC := 199.
        ].
        recoveredBlock84Step = 199 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) @ (recoveredBlock84Stack1).
            recoveredBlock84PC := 201.
        ].
        recoveredBlock84Step = 201 ifTrue: [
            recoveredLocal3 := recoveredBlock84Stack0.
            recoveredBlock84PC := 204.
        ].
        recoveredBlock84Step = 204 ifTrue: [
            recoveredBlock84Stack0 := recoveredArg1.
            recoveredBlock84PC := 207.
        ].
        recoveredBlock84Step = 207 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) window.
            recoveredBlock84PC := 209.
        ].
        recoveredBlock84Step = 209 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal4.
            recoveredBlock84PC := 212.
        ].
        recoveredBlock84Step = 212 ifTrue: [
            recoveredBlock84Stack2 := recoveredLocal3.
            recoveredBlock84PC := 215.
        ].
        recoveredBlock84Step = 215 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) x.
            recoveredBlock84PC := 217.
        ].
        recoveredBlock84Step = 217 ifTrue: [
            recoveredBlock84Stack3 := recoveredLocal3.
            recoveredBlock84PC := 220.
        ].
        recoveredBlock84Step = 220 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) y.
            recoveredBlock84PC := 222.
        ].
        recoveredBlock84Step = 222 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Arg1.
            recoveredBlock84PC := 223.
        ].
        recoveredBlock84Step = 223 ifTrue: [
            recoveredBlock84Stack4 := (recoveredBlock84Stack4) getReplacedTabString.
            recoveredBlock84PC := 225.
        ].
        recoveredBlock84Step = 225 ifTrue: [
            recoveredBlock84Stack5 := CldtConstants.
            recoveredBlock84PC := 227.
        ].
        recoveredBlock84Step = 227 ifTrue: [
            recoveredBlock84Stack6 := 'Cr'.
            recoveredBlock84PC := 229.
        ].
        recoveredBlock84Step = 229 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) at: (recoveredBlock84Stack6).
            recoveredBlock84PC := 231.
        ].
        recoveredBlock84Step = 231 ifTrue: [
            recoveredBlock84Stack4 := (recoveredBlock84Stack4) upToLast: (recoveredBlock84Stack5).
            recoveredBlock84PC := 233.
        ].
        recoveredBlock84Step = 233 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) drawString: (recoveredBlock84Stack1) x: (recoveredBlock84Stack2) y: (recoveredBlock84Stack3) string: (recoveredBlock84Stack4).
            recoveredBlock84PC := 236.
        ].
        recoveredBlock84Step = 236 ifTrue: [
            recoveredBlock84Result := recoveredBlock84Stack0.
            recoveredBlock84Done := true.
        ].
    ].
    recoveredBlock84Result
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

